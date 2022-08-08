Delivery-date: Mon, 08 Aug 2022 14:21:48 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oL1lS-00G9Y4-Pm
	for lore@lore.pengutronix.de; Mon, 08 Aug 2022 14:21:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oL1lT-0001TK-81
	for lore@pengutronix.de; Mon, 08 Aug 2022 14:21:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+Ae1JGXhWeblh6Qhp33shp+alNhLedtx5DGsHxmRcxk=; b=RHhyvaV+TQlWsSPpk+1wYlCxjW
	KqdzV87qa3k7kKGA6P4gLAlX6/ZofFUgtyzZRpHz3TX1lNXeIzn8fs9i/iBYPHOPxiRs0CXwXhBoW
	5bmmRRZhS9IGoxAndmfnlV8A8hJrv61Qnath/egiKObRCJ5hIQIY6cdGGNludy3RkW+TRlUT69tQv
	su6EdJDDbz7NJHlLsMkxdLXsp/IUfDR6UQFIiz5y5/sW3X0mpDu1DZC3a/SAFMQTmMvINFxI1Mvq4
	4gM2Pg1RjXaBCHz0bAvYFA8N73EE8O3NUSo4EhNkDHe2KFi9DvoFdtgbnAZSr8SAsepCgtCO/Cweu
	pc+IMyQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oL1k7-00DbqX-Ik; Mon, 08 Aug 2022 12:20:24 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oL1jv-00Dbn3-SB
	for barebox@lists.infradead.org; Mon, 08 Aug 2022 12:20:15 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oL1ju-000117-7i; Mon, 08 Aug 2022 14:20:10 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oL1jt-0000HO-U2; Mon, 08 Aug 2022 14:20:09 +0200
Date: Mon, 8 Aug 2022 14:20:09 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20220808122009.GP2387@pengutronix.de>
References: <20220714072722.2863571-1-s.hauer@pengutronix.de>
 <20220714072722.2863571-8-s.hauer@pengutronix.de>
 <20220729093336.bndoyouyojwldgow@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220729093336.bndoyouyojwldgow@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 14:19:24 up 131 days, 49 min, 86 users,  load average: 0.22, 0.13,
 0.10
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220808_052011_976911_57C18FA2 
X-CRM114-Status: GOOD (  32.33  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 07/12] imx-usb-loader: Add i.MX8MP support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Jul 29, 2022 at 11:33:36AM +0200, Marco Felsch wrote:
> Hi Sascha,
> 
> please see below.
> 
> On 22-07-14, Sascha Hauer wrote:
> > For the i.MX8MP NXP dropped the SDP protocol used on other SoCs.
> > Instead the image is just sent straight to the device.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  scripts/imx/imx-usb-loader.c | 37 +++++++++++++++++++++++++++---------
> >  1 file changed, 28 insertions(+), 9 deletions(-)
> > 
> > diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
> > index 5f7dc3bc0b..974ff741bf 100644
> > --- a/scripts/imx/imx-usb-loader.c
> > +++ b/scripts/imx/imx-usb-loader.c
> > @@ -74,6 +74,7 @@ struct mach_id {
> >  #define DEV_IMX		0
> >  #define DEV_MXS		1
> >  	unsigned char dev_type;
> > +	unsigned char hid_endpoint;
> >  };
> >  
> >  struct usb_work {
> > @@ -180,6 +181,14 @@ static const struct mach_id imx_ids[] = {
> >  		.header_type = HDR_MX53,
> >  		.mode = MODE_HID,
> >  		.max_transfer = 1024,
> > +	}, {
> > +		.vid = 0x1fc9,
> > +		.pid = 0x0146,
> > +		.name = "i.MX8MP",
> > +		.header_type = HDR_MX53,
> > +		.max_transfer = 1020,
> > +		.mode = MODE_HID,
> > +		.hid_endpoint = 1,
> >  	}, {
> >  		.vid = 0x1fc9,
> >  		.pid = 0x012b,
> > @@ -470,15 +479,22 @@ static int transfer(int report, unsigned char *p, unsigned cnt, int *last_trans)
> >  
> >  		if (report < 3) {
> >  			memcpy(&tmp[1], p, cnt);
> > -			err = libusb_control_transfer(usb_dev_handle,
> > -					CTRL_OUT,
> > -					HID_SET_REPORT,
> > -					(HID_REPORT_TYPE_OUTPUT << 8) | report,
> > -					0,
> > -					tmp, cnt + 1, 1000);
> > -			*last_trans = (err > 0) ? err - 1 : 0;
> > -			if (err > 0)
> > -				err = 0;
> > +			if (mach_id->hid_endpoint) {
> > +				int trans;
> > +				err = libusb_interrupt_transfer(usb_dev_handle,
> > +						mach_id->hid_endpoint, tmp, cnt + 1, &trans, 1000);
> > +				*last_trans = trans - 1;
> > +			} else {
> > +				err = libusb_control_transfer(usb_dev_handle,
> > +						CTRL_OUT,
> > +						HID_SET_REPORT,
> > +						(HID_REPORT_TYPE_OUTPUT << 8) | report,
> > +						0,
> > +						tmp, cnt + 1, 1000);
> > +				*last_trans = (err > 0) ? err - 1 : 0;
> > +				if (err > 0)
> > +					err = 0;
> > +			}
> >  		} else {
> >  			*last_trans = 0;
> >  			memset(&tmp[1], 0, cnt);
> > @@ -1353,6 +1369,9 @@ static int do_irom_download(struct usb_work *curr, int verify)
> >  
> >  	header_offset = ret;
> >  
> > +	if (mach_id->hid_endpoint)
> > +		return send_file(buf + header_offset, fsize - header_offset);
>                          ^
> This function is defined nowhere and the compiler aborts. Did you forget
> to send a patch defining this function?

Should be send_buf(). I renamed this function at some point during
rebasing.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


