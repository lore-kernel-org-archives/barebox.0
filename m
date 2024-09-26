Delivery-date: Thu, 26 Sep 2024 07:28:33 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sth3I-002sav-0e
	for lore@lore.pengutronix.de;
	Thu, 26 Sep 2024 07:28:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sth3I-00005U-Mf
	for lore@pengutronix.de; Thu, 26 Sep 2024 07:28:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oJ8Cu9Wc/9vsXEhpL5c7wTX5GujguQ3fQzfZHpjZWtk=; b=gQZ5vt11/Jacm5BaXBFKBtU/19
	lNhrQ0SV/pCgvAnKmSeiolo5x0SQhym2nacxtYnNf5jnSf6MEfWylQ7lOeaf/Quq1I3m1f+I/mZe/
	QjTxjd1l/gVt50LnyxC6J6IrVpIzaT8d7n17U7PL1ZEyMsCYz5fhR5w1cQn6Spg0siePn9viXh8oy
	34rOT7G8TOao3ezJtS8+qtw7pb2+l9zhGalf9NBmvshrUCeDK4tWtmfpBwlyPrQBrOZKeL7wUlV/Q
	dRhcLRNDrSGyS2nQRv3p3omekOWWZIBMLOOO9GsO3ZaHcmVXNKkUmh9KKXyG0ORKJ1tl/poy/pE3M
	aMGxKiEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sth2g-00000007EVt-2I2c;
	Thu, 26 Sep 2024 05:27:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sth1W-00000007EPq-01Tw
	for barebox@lists.infradead.org;
	Thu, 26 Sep 2024 05:26:44 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sth1U-0007ha-4l; Thu, 26 Sep 2024 07:26:40 +0200
Message-ID: <239d4bc5-4cd0-48b7-8907-24dff31c9362@pengutronix.de>
Date: Thu, 26 Sep 2024 07:26:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 "open list:BAREBOX" <barebox@lists.infradead.org>
References: <20240925-graphics-v1-0-f1fe5d2cceec@pengutronix.de>
 <20240925-graphics-v1-1-f1fe5d2cceec@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240925-graphics-v1-1-f1fe5d2cceec@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240925_222642_076405_00D1436A 
X-CRM114-Status: GOOD (  16.80  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/5] graphic_utils: Clip to screen boundaries
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 25.09.24 16:34, Sascha Hauer wrote:
> Do not render the parts of the image that are outside the screen
> boundaries to prevent memory corruptions.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  lib/gui/graphic_utils.c | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/lib/gui/graphic_utils.c b/lib/gui/graphic_utils.c
> index d91a7f3550..93ef1214f9 100644
> --- a/lib/gui/graphic_utils.c
> +++ b/lib/gui/graphic_utils.c
> @@ -229,6 +229,9 @@ void gu_rgba_blend(struct fb_info *info, struct image *img, void* buf, int heigh
>  	line_length = info->line_length;
>  
>  	for (y = 0; y < height; y++) {
> +		if (y + starty >= info->yres)
> +			break;
> +
>  		adr = buf + (y + starty) * line_length +
>  				startx * (info->bits_per_pixel >> 3);
>  		image = img->data + (y * img->width *img_byte_per_pixel);
> @@ -236,6 +239,9 @@ void gu_rgba_blend(struct fb_info *info, struct image *img, void* buf, int heigh
>  		for (x = 0; x < width; x++) {
>  			uint8_t *pixel = image;
>  
> +			if (x + startx >= info->xres)
> +				break;
> +
>  			if (is_rgba)
>  				gu_set_rgba_pixel(info, adr, pixel[0], pixel[1],
>  						pixel[2], pixel[3]);
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


