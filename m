Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TUNeV-0006qh-CI
 for barebox@lists.infradead.org; Fri, 02 Nov 2012 20:15:40 +0000
Date: Fri, 2 Nov 2012 21:15:35 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121102201535.GO1641@pengutronix.de>
References: <1351776162-23461-1-git-send-email-plagnioj@jcrosoft.com>
 <1351777973-26024-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1351777973-26024-1-git-send-email-plagnioj@jcrosoft.com>
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
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Thu, Nov 01, 2012 at 02:52:53PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
> fix typo add when checking the patch
>

select POLLER missing in Kconfig

> +static void qt1070_poller(struct poller_struct *poller)
> +{
> +	struct qt1070_data *data = poller_to_qt_data(poller);
> +	int i;
> +	u8 buf, bt;
> +	u8 mask = 0x1;
> +
> +	qt1070_read(data, QT1070_DET_STATUS, &buf);
> +
> +	if (qt1070_read(data, QT1070_KEY_STATUS, &buf))
> +		return;
> +
> +	if (!buf & !data->previous_state)
> +		return;
> +
> +	for (i = 0; i < QT1070_NB_BUTTONS; i++) {
> +		bt = buf & mask;
> +
> +		if (!bt && data->button_state[i]) {
> +			debug("release key(%d) as %d\n", i, data->code[i]);
> +			kfifo_put(data->recv_fifo, (u_char*)&data->code[i], sizeof(int));
> +		} else if (bt) {
> +			debug("pressed key(%d) as %d\n", i, data->code[i]);
> +		}
> +
> +		data->button_state[i] = bt;
> +		mask <<= 1;
> +	}
> +
> +	data->previous_state = buf;
> +}
> +
> +static int qt1070_tstc(struct console_device *cdev)
> +{
> +	struct qt1070_data *data = cdev_to_qt_data(cdev);
> +
> +	return (kfifo_len(data->recv_fifo) == 0) ? 0 : 1;
> +}
> +
> +static int qt1070_getc(struct console_device *cdev)
> +{
> +	int code = 0;
> +	struct qt1070_data *data = cdev_to_qt_data(cdev);
> +
> +	kfifo_get(data->recv_fifo, (u_char*)&code, sizeof(int));
> +	return code;
> +}
> +
> +static int __init qt1070_probe(struct device_d *dev)
> +{
> +	struct console_device *cdev;
> +	struct qt1070_data *data;
> +	u8 fw_version, chip_id;
> +	int ret;
> +	char buf[6];
> +
> +	data = xzalloc(sizeof(*data));
> +	data->client = to_i2c_client(dev);
> +
> +	ret = qt1070_read(data, QT1070_READ_CHIP_ID, &chip_id);
> +	if (ret) {
> +		dev_err(dev, "can not read chip id (%d)\n", ret);
> +		goto err;
> +	}
> +
> +	if (chip_id != QT1070_CHIP_ID) {
> +		dev_err(dev, "unsupported id 0x%x\n", chip_id);
> +		ret = -ENXIO;
> +		goto err;
> +	}
> +
> +	ret = qt1070_read(data, QT1070_FW_VERSION, &fw_version);
> +	if (ret) {
> +		dev_err(dev, "can not read firmware version (%d)\n", ret);
> +		goto err;
> +	}
> +
> +	sprintf(buf, "0x%x", fw_version);
> +	dev_add_param_fixed(dev, "fw_version", buf);
> +	sprintf(buf, "0x%x", chip_id);
> +	dev_add_param_fixed(dev, "chip_ip", buf);
> +
> +	/* Calibrate device */
> +	qt1070_write(data, QT1070_CALIBRATE_CMD, 1);
> +	if (ret) {
> +		dev_err(dev, "can not calibreate the chip (%d)\n", ret);

s/calibreate/calibrate/

> +		goto err;
> +	}
> +	mdelay(QT1070_CAL_TIME);
> +
> +	/* Soft reset */
> +	ret = qt1070_write(data, QT1070_RESET, 1);
> +	if (ret) {
> +		dev_err(dev, "can not reset the chip (%d)\n", ret);
> +		goto err;
> +	}
> +	mdelay(QT1070_RESET_TIME);
> +

This delays the boot by about half a second. If you register
a poller anyway you could use it to wait until the reset finished.

> +	memcpy(data->code, default_code, sizeof(int) * ARRAY_SIZE(default_code));
> +	if (dev->platform_data) {
> +		struct qt1070_platform_data *pdata = dev->platform_data;
> +
> +		memcpy(data->code, pdata->code, sizeof(int) * pdata->nb_code);
> +	}
> +
> +	data->fifo_size = 50;

I wonder if such a deep fifo is useful. If the user
plays with the buttons when and nobody empties the fifo
at that time you will end up with 50 old button presses
in the fifo. It may be better to just store the last button
in a variable. This would also fix the problem that when
the fifo is full you discard the newest buttons. It's
better to drop the oldest buttons.

> +	data->recv_fifo = kfifo_alloc(data->fifo_size);
> +
> +	data->poller.func = qt1070_poller;
> +
> +	cdev = &data->cdev;
> +	dev->type_data = cdev;

This is unused in the console layer. Please drop.

Sascha


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
