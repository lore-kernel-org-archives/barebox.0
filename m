Delivery-date: Fri, 27 Sep 2024 08:16:48 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1su4HX-003ISS-2a
	for lore@lore.pengutronix.de;
	Fri, 27 Sep 2024 08:16:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1su4HY-0008N3-9T
	for lore@pengutronix.de; Fri, 27 Sep 2024 08:16:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0PYVX3ThTrgIh1TkPFUfH4nuAJTSbZyag0UbJlxh+EQ=; b=RgXrZUexisD3D2aY/OdplYiktp
	8/HjR00XtlY/cPH0vD4PFQLC+XiHvlczj1H5iLLkxzuCmTjDlDuWNps/cbSCi4clQf6OfQYL5cgXb
	giAOHbsJMIR9xlTd31Rehpd+Yi6V8Tb7DxGakt1uO5mCSQHZNj2DKQEncBCs01g/fuAW0GHa0AtFK
	a5BfvJiAV3QRnucR+BCGzPTAxHRJGbLoRPoenmvusU37EFv0xQ66X2SePJ5Mic8sNs4WYqRUE1NUy
	1p6H7/54LPv4ALcGB1VpmhrWMO2bfZikWjY4SHBxzzYWOY+d62Hbxz3368TNRpQ7WvMVKrk8eusFR
	kBUCQjGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1su4H7-0000000AAKi-0xVC;
	Fri, 27 Sep 2024 06:16:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1su4H4-0000000AAJx-31AX
	for barebox@lists.infradead.org;
	Fri, 27 Sep 2024 06:16:20 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1su4H3-000887-AL; Fri, 27 Sep 2024 08:16:17 +0200
Message-ID: <ac303060-40ed-431b-a4d8-084c2bb3632c@pengutronix.de>
Date: Fri, 27 Sep 2024 08:16:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 "open list:BAREBOX" <barebox@lists.infradead.org>
References: <20240926-vop2-v1-0-fe0581f2020b@pengutronix.de>
 <20240926-vop2-v1-11-fe0581f2020b@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240926-vop2-v1-11-fe0581f2020b@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240926_231618_794942_C5246B41 
X-CRM114-Status: GOOD (  16.65  )
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
Subject: Re: [PATCH 11/13] fb: print more information on devinfo
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 26.09.24 15:15, Sascha Hauer wrote:
> Print some more information about the framebuffer in the devinfo output:
> - x/y resolution
> - line_length
> - type of framebuffer (overlay, base plane)
> - if it's an overlay, print the base plane
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/video/fb.c | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/drivers/video/fb.c b/drivers/video/fb.c
> index 3677c63e07..f6310498c8 100644
> --- a/drivers/video/fb.c
> +++ b/drivers/video/fb.c
> @@ -264,6 +264,15 @@ static void fb_info(struct device *dev)
>  	printf("Available modes:\n");
>  	fb_print_modes(&info->modes);
>  	fb_print_modes(&info->edid_modes);
> +	if (info->base) {

Having both screen_base and unadorned base in the same struct is confusing.
How about renaming this to base_plane?

Also, to make this a bit more convenient to use, should we make overlays
a "partition" of the original fb device? /dev/fb0 (base), /dev/fb0.\d (overlays).

> +		printf("Type: overlay\n");
> +		printf("base plane: %s\n", dev_name(&info->base->dev));
> +	} else {
> +		printf("Type: primary\n");
> +	}
> +	printf("xres: %u\n", info->xres);
> +	printf("yres: %u\n", info->yres);
> +	printf("line_length: %u\n", info->line_length);
>  }
>  
>  void *fb_get_screen_base(struct fb_info *info)
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


