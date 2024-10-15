Delivery-date: Tue, 15 Oct 2024 09:48:12 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0cHs-004a28-0w
	for lore@lore.pengutronix.de;
	Tue, 15 Oct 2024 09:48:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0cHr-00055x-N6
	for lore@pengutronix.de; Tue, 15 Oct 2024 09:48:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=f17KxiMyKnYuIBVdtHD2x+GkQzlaqPvpCCqoG3y3+Pg=; b=RcHDG7+9k02SM86lO2MI9TMRAq
	YqhJpX7UFin43lQg3yW+gYcNN7bB4WJOnVvSJVns51NXCEnOFPHvo5YQdGKLnc7AmRJiTMDGwdBUG
	5uGMBRb2v28bYYXUO9N1YhcsIfRYIBWXTwKaZ5ZECmELsBL8Igs3d99OVd4vrPugYBuOV0I5u5PRk
	TIQRIrsGxZ9bhhU9sBMfwlJ8anzil6KsEeLIa5sPu/84B5QwMzlhmOCyXHSUDOTRmRYL0Pslt/Qu7
	lYScaIri1sH7LtLkVnWaNSoybmJRpuHFGMw6+dPDAKXaM/aErpf8GuhAjHTfdkWBz0JswD06PZsLI
	z2eI+WKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0cHI-00000007NkQ-0tHM;
	Tue, 15 Oct 2024 07:47:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0cH7-00000007Ngl-0YKG
	for barebox@lists.infradead.org;
	Tue, 15 Oct 2024 07:47:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1t0cH5-0004xG-Ez; Tue, 15 Oct 2024 09:47:23 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1t0cH5-001ymE-1A; Tue, 15 Oct 2024 09:47:23 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1t0cH4-00CbJp-34;
	Tue, 15 Oct 2024 09:47:22 +0200
Date: Tue, 15 Oct 2024 09:47:22 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum via B4 Relay <devnull+a.fatoum.barebox.org@kernel.org>
Cc: BAREBOX <barebox@lists.infradead.org>,
	Ahmad Fatoum <a.fatoum@barebox.org>
Message-ID: <Zw4eCkcezQBu55b9@pengutronix.de>
References: <20241014-usb_kbd-polling_interval-v1-1-92309deabaf2@barebox.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241014-usb_kbd-polling_interval-v1-1-92309deabaf2@barebox.org>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241015_004725_194569_CC637B5C 
X-CRM114-Status: GOOD (  20.97  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] input: usb_kbd: make polling interval configurable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Oct 14, 2024 at 05:32:38PM +0200, Ahmad Fatoum via B4 Relay wrote:
> From: Ahmad Fatoum <a.fatoum@barebox.org>
> 
> We currently use whatever polling interval the keyboard reports, but in
> some keyboard it can be useful to set a lower interval, e.g. for better
> control of the snake in the barebox demo[1].
> 
> Add a parameter to make this possible.
> 
> [1]: https://fosstodon.org/@barebox/112983807569839989
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
> ---
>  drivers/input/usb_kbd.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/drivers/input/usb_kbd.c b/drivers/input/usb_kbd.c
> index 2e75aabf3da4..d47e760a89ee 100644
> --- a/drivers/input/usb_kbd.c
> +++ b/drivers/input/usb_kbd.c
> @@ -169,6 +169,11 @@ static int usb_kbd_probe(struct usb_device *usbdev,
>  	data->intpktsize = min(usb_maxpacket(usbdev, data->intpipe),
>  			       USB_KBD_BOOT_REPORT_SIZE);
>  	data->intinterval = data->ep->bInterval;
> +
> +	dev_add_param_uint32(&usbdev->dev, "polling_interval",
> +			     NULL, NULL, &data->intinterval, "%u",
> +			     NULL);

Should be polling_interval_ms to make it more clear what is expected
here.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


