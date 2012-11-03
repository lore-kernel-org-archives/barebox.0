Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 20.mo5.mail-out.ovh.net ([91.121.55.239]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TUYFo-0005er-Pv
 for barebox@lists.infradead.org; Sat, 03 Nov 2012 07:34:53 +0000
Received: from mail644.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 14019FFA416
 for <barebox@lists.infradead.org>; Sat,  3 Nov 2012 08:42:07 +0100 (CET)
Date: Sat, 3 Nov 2012 08:32:43 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121103073243.GV29599@game.jcrosoft.org>
References: <1351776162-23461-1-git-send-email-plagnioj@jcrosoft.com>
 <1351777973-26024-1-git-send-email-plagnioj@jcrosoft.com>
 <20121102201535.GO1641@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121102201535.GO1641@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/1 v2] input: add qt1070 touch keyboard support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

> > +}
> > +
> > +static int __init qt1070_probe(struct device_d *dev)
> > +{
> > +	struct console_device *cdev;
> > +	struct qt1070_data *data;
> > +	u8 fw_version, chip_id;
> > +	int ret;
> > +	char buf[6];
> > +
> > +	data = xzalloc(sizeof(*data));
> > +	data->client = to_i2c_client(dev);
> > +
> > +	ret = qt1070_read(data, QT1070_READ_CHIP_ID, &chip_id);
> > +	if (ret) {
> > +		dev_err(dev, "can not read chip id (%d)\n", ret);
> > +		goto err;
> > +	}
> > +
> > +	if (chip_id != QT1070_CHIP_ID) {
> > +		dev_err(dev, "unsupported id 0x%x\n", chip_id);
> > +		ret = -ENXIO;
> > +		goto err;
> > +	}
> > +
> > +	ret = qt1070_read(data, QT1070_FW_VERSION, &fw_version);
> > +	if (ret) {
> > +		dev_err(dev, "can not read firmware version (%d)\n", ret);
> > +		goto err;
> > +	}
> > +
> > +	sprintf(buf, "0x%x", fw_version);
> > +	dev_add_param_fixed(dev, "fw_version", buf);
> > +	sprintf(buf, "0x%x", chip_id);
> > +	dev_add_param_fixed(dev, "chip_ip", buf);
> > +
> > +	/* Calibrate device */
> > +	qt1070_write(data, QT1070_CALIBRATE_CMD, 1);
> > +	if (ret) {
> > +		dev_err(dev, "can not calibreate the chip (%d)\n", ret);
> 
> s/calibreate/calibrate/
> 
> > +		goto err;
> > +	}
> > +	mdelay(QT1070_CAL_TIME);
> > +
> > +	/* Soft reset */
> > +	ret = qt1070_write(data, QT1070_RESET, 1);
> > +	if (ret) {
> > +		dev_err(dev, "can not reset the chip (%d)\n", ret);
> > +		goto err;
> > +	}
> > +	mdelay(QT1070_RESET_TIME);
> > +
> 
> This delays the boot by about half a second. If you register
> a poller anyway you could use it to wait until the reset finished.
ok
> 
> > +	memcpy(data->code, default_code, sizeof(int) * ARRAY_SIZE(default_code));
> > +	if (dev->platform_data) {
> > +		struct qt1070_platform_data *pdata = dev->platform_data;
> > +
> > +		memcpy(data->code, pdata->code, sizeof(int) * pdata->nb_code);
> > +	}
> > +
> > +	data->fifo_size = 50;
> 
> I wonder if such a deep fifo is useful. If the user
> plays with the buttons when and nobody empties the fifo
> at that time you will end up with 50 old button presses
> in the fifo. It may be better to just store the last button
> in a variable. This would also fix the problem that when
> the fifo is full you discard the newest buttons. It's
> better to drop the oldest buttons.
no the touch can report 7 keys at the same time so I put 50.

If we pessed 2 times 7 keys before barebox read we have 14 * sifeod(int) = 56
bytes so I think 50 is ok

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
