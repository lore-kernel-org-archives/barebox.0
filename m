Delivery-date: Thu, 26 Sep 2024 07:32:23 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sth70-002sd9-1N
	for lore@lore.pengutronix.de;
	Thu, 26 Sep 2024 07:32:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sth70-0001on-TX
	for lore@pengutronix.de; Thu, 26 Sep 2024 07:32:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QQ76PSAHP4waeBzORFgNz5dqoGjPbXcO4rtZCnM4x78=; b=nm/tUyuHVbr5ht8Vd+1tw11K+3
	JQOEuG1ikpQPYYDiWwlvhzts1T2OCc0b4FboDm2/jaPD8KLFnZ3SCsCKGv1p7HKYrV/NTyhzLrIen
	WXTM/Bgq6bMEcN0i7YShdwRHuManaXGzPnl5Y3CSwfY7xA9Wrl6ljx/+kI/iJTRbXGnhp3aCmc4o7
	s/jBgoGzQ569E1EHXtquah+LIzT7rVrHV15FOD5QQ9A/Rzo5ziojCiIeGYnZ+JSX6qcgzCOCXTQ/p
	uRyagIOliQaRm1c+cbRSYAns9/NnZ60BqahTr/JIVQgWEkpLs6jKQdxJvR3JBMIROz0Y27s7fRKsM
	ENK8G5sQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sth6Y-00000007F12-391U;
	Thu, 26 Sep 2024 05:31:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sth6V-00000007F0A-0OLN
	for barebox@lists.infradead.org;
	Thu, 26 Sep 2024 05:31:52 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sth6T-0001YM-Q8; Thu, 26 Sep 2024 07:31:49 +0200
Message-ID: <3ca957de-45b3-4759-a0c4-7b85e5b309fb@pengutronix.de>
Date: Thu, 26 Sep 2024 07:31:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 "open list:BAREBOX" <barebox@lists.infradead.org>
References: <20240925-graphics-v1-0-f1fe5d2cceec@pengutronix.de>
 <20240925-graphics-v1-2-f1fe5d2cceec@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240925-graphics-v1-2-f1fe5d2cceec@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240925_223151_176068_E8D33A7B 
X-CRM114-Status: GOOD (  21.19  )
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
Subject: Re: [PATCH 2/5] commands: splash: honour line_length
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 25.09.24 16:34, Sascha Hauer wrote:
> the splash command has an option for setting a background colour. This
> doesn't always fill the whole screen as expected.
> 
> struct fb_info has a line_length field that specifies the length in
> bytes of a single line. That length may be bigger than the actually
> visible area as specified by xres. In this case filling the area as
> calculated by xres*yres fills the invisible pixels between xres and
> line_length, but it doesn't fill the whole visible area. Fix this by
> iterating over the lines, filling the visible area of each line.

I have trouble understanding this. What is line_length if not
bytes per pixel multiplied by xres?

As gu_memset_pixel already takes bytes (bits) per pixel into account,
this looked correct to me before your change?

Thanks,
Ahmad

> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  commands/splash.c | 10 +++++++---
>  1 file changed, 7 insertions(+), 3 deletions(-)
> 
> diff --git a/commands/splash.c b/commands/splash.c
> index 2eb7c5dc39..74754392e2 100644
> --- a/commands/splash.c
> +++ b/commands/splash.c
> @@ -62,9 +62,13 @@ static int do_splash(int argc, char *argv[])
>  
>  	buf = gui_screen_render_buffer(sc);
>  
> -	if (do_bg)
> -		gu_memset_pixel(sc->info, buf, bg_color,
> -				sc->s.width * sc->s.height);
> +	if (do_bg) {
> +		int y;
> +		for (y = 0; y < sc->s.height; y++) {
> +			gu_memset_pixel(sc->info, buf + sc->info->line_length * y,
> +					bg_color, sc->s.width);
> +		}
> +	}
>  
>  	ret = image_renderer_file(sc, &s, image_file);
>  	if (ret > 0)
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


