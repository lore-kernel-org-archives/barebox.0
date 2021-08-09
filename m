Delivery-date: Mon, 09 Aug 2021 20:10:36 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mD9jQ-0001h9-OY
	for lore@lore.pengutronix.de; Mon, 09 Aug 2021 20:10:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mD9jM-0005MM-9D
	for lore@pengutronix.de; Mon, 09 Aug 2021 20:10:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=yQYKhwIY5FyAk93S/nCLXhdBu7Kwqx+iZELtsq69JXs=; b=20flfprLLspgkPRXUqR9I9MlLY
	CfVOwa+qmdqBp9OLpuHdoKo25sS+9H0NgUnu9Pw4uLXVwv4uuiz4/3/q/AbKYc7UNxXyUZwokpIC8
	03tMODE9st0iXYUWRejzxHIPtbKjGypqSTbBxGaUsdjCpzLmjgPiBz5qgVQJyyUJna358/6uCH7gP
	5UFd6PdojN/C2UknctM3MLtfkIr1hESUspnYBO82GKWpY102eyeE5TxNGdxLOE7j/uNNLDkpk15+4
	5O+78TUFUpNPw0O1hqf6u4iCvII+1i1Sk36dWQKK+/noEcyp4F8ae2cNeFWJkbeyI36SZ2uuWKqlM
	cvMt5yQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mD9hk-001eiN-Bs; Mon, 09 Aug 2021 18:08:52 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mD9hc-001ehU-RO
 for barebox@lists.infradead.org; Mon, 09 Aug 2021 18:08:48 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mD9ha-00056F-VO; Mon, 09 Aug 2021 20:08:42 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mD9ha-0004YR-MA; Mon, 09 Aug 2021 20:08:42 +0200
Date: Mon, 9 Aug 2021 20:08:42 +0200
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210809180842.GB11515@pengutronix.de>
References: <20210805152251.1902158-1-u.kleine-koenig@pengutronix.de>
 <20210805152251.1902158-2-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210805152251.1902158-2-u.kleine-koenig@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 20:04:26 up 172 days, 21:28, 81 users,  load average: 0.18, 0.29,
 0.27
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210809_110844_930719_3C66A64C 
X-CRM114-Status: GOOD (  32.55  )
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
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/2] imx-usb-loader: Add support for i.MX8MP
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Aug 05, 2021 at 05:22:51PM +0200, Uwe Kleine-K=F6nig wrote:
> From: Uwe Kleine-Koenig <u.kleine-koenig@pengutronix.de>
> =

> The i.MX8MP uses a protocol similar to the MXS. The relevant differences
> are:
> =

>  - Maximal transfer size is 1020
>  - HID reports must be sent to EP1 instead of using a control transfer
>  - The FW_DOWNLOAD command must not be send.
> =

> Signed-off-by: Uwe Kleine-Koenig <u.kleine-koenig@pengutronix.de>
> ---
>  scripts/imx/imx-usb-loader.c | 65 +++++++++++++++++++++++-------------
>  1 file changed, 42 insertions(+), 23 deletions(-)
> =

> diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
> index 3e96c86f2f29..40a85ee26105 100644
> --- a/scripts/imx/imx-usb-loader.c
> +++ b/scripts/imx/imx-usb-loader.c
> @@ -71,6 +71,7 @@ struct mach_id {
>  #define DEV_IMX		0
>  #define DEV_MXS		1
>  	unsigned char dev_type;
> +	unsigned char hid_endpoint;
>  };
>  =

>  struct usb_work {
> @@ -177,6 +178,13 @@ static const struct mach_id imx_ids[] =3D {
>  		.header_type =3D HDR_MX53,
>  		.mode =3D MODE_HID,
>  		.max_transfer =3D 1024,
> +	}, {
> +		.vid =3D 0x1fc9,
> +		.pid =3D 0x0146,
> +		.name =3D "i.MX8MP",
> +		.max_transfer =3D 1020,
> +		.dev_type =3D DEV_MXS,
> +		.hid_endpoint =3D 1,
>  	}, {
>  		.vid =3D 0x1fc9,
>  		.pid =3D 0x012b,
> @@ -522,15 +530,24 @@ static int transfer(int report, unsigned char *p, u=
nsigned cnt, int *last_trans)
>  =

>  		if (report < 3) {
>  			memcpy(&tmp[1], p, cnt);
> -			err =3D libusb_control_transfer(usb_dev_handle,
> -					CTRL_OUT,
> -					HID_SET_REPORT,
> -					(HID_REPORT_TYPE_OUTPUT << 8) | report,
> -					0,
> -					tmp, cnt + 1, 1000);
> -			*last_trans =3D (err > 0) ? err - 1 : 0;
> -			if (err > 0)
> -				err =3D 0;
> +			if (mach_id->hid_endpoint) {
> +				int trans;
> +				err =3D libusb_interrupt_transfer(usb_dev_handle,
> +						mach_id->hid_endpoint, tmp, cnt + 1, &trans, 1000);
> +				if (err =3D=3D 0 && last_trans)

last_trans is assumed to be non NULL throughout this function, so there
shouldn't be a need to check it here.

> +					*last_trans =3D trans - 1;
> +			} else {
> +				err =3D libusb_control_transfer(usb_dev_handle,
> +						CTRL_OUT,
> +						HID_SET_REPORT,
> +						(HID_REPORT_TYPE_OUTPUT << 8) | report,
> +						0,
> +						tmp, cnt + 1, 1000);
> +				if (err > 0) {
> +					*last_trans =3D err - 1;
> +					err =3D 0;
> +				}

Previously *last_trans was set unconditionally, with this patch you only
set it when err > 0. I don't know if this makes a difference, but I
would expect this change in a separate patch.

Sascha

-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

