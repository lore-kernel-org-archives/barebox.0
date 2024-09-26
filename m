Delivery-date: Thu, 26 Sep 2024 07:40:16 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sthEd-002smV-1p
	for lore@lore.pengutronix.de;
	Thu, 26 Sep 2024 07:40:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sthEd-0005P8-VF
	for lore@pengutronix.de; Thu, 26 Sep 2024 07:40:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Zl4PjHhhDaPSMMIEb9YodzsPgPWiZSLPGFFvdhTcd1o=; b=g/Bzm4ToYRDjbGXxpXbv6zwLIN
	WTl7U6SE7pSS4Tt9dsBea5ff+wiDWwUN251K+jFEV+q+sL9SOy2ehxtCHpIP9XgXQPnRfLwx5x7Yr
	boTIUF6+IuYQ56z/rYRL1wimIStgGoiQ0Loq7MXuL/UARmLBIdb0lg51w6M3ziVh0zqSbpOgQzbNW
	+hPm5l3IYam97wb8Q43NwZN4nihoIKbTH3xIvGYtsdfaVU4qtOF7HYE28BZ8GVGBJwEV82mXuCR+U
	ZLG1MYncIIYCQUJzNNn6u6r81N+0XAlO+bFU/iET6d7hFmu1fR4I1BPl9/axKzhYEgmDAMI2oXev9
	atYpT5Ag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sthEA-00000007Feg-0wL6;
	Thu, 26 Sep 2024 05:39:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sthE7-00000007FeL-10sH
	for barebox@lists.infradead.org;
	Thu, 26 Sep 2024 05:39:44 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sthE5-00059c-TM; Thu, 26 Sep 2024 07:39:41 +0200
Message-ID: <5979bc0b-16e5-4ef6-abdf-59f53460b729@pengutronix.de>
Date: Thu, 26 Sep 2024 07:39:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 "open list:BAREBOX" <barebox@lists.infradead.org>
References: <20240925-graphics-v1-0-f1fe5d2cceec@pengutronix.de>
 <20240925-graphics-v1-5-f1fe5d2cceec@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240925-graphics-v1-5-f1fe5d2cceec@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240925_223943_319480_D008FAA6 
X-CRM114-Status: GOOD (  20.01  )
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
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,PDS_OTHER_BAD_TLD,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 5/5] fbconsole: actually store rows/cols
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 25.09.24 16:34, Sascha Hauer wrote:
> struct fbc_priv has rows and cols fields, but they do not actually
> store the rows and columns, but instead the actual values minus one.
> Change this to make the code better understandable.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  drivers/video/fbconsole.c | 24 ++++++++++++------------
>  1 file changed, 12 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/video/fbconsole.c b/drivers/video/fbconsole.c
> index d3615bc07f..01a091d07a 100644
> --- a/drivers/video/fbconsole.c
> +++ b/drivers/video/fbconsole.c
> @@ -200,7 +200,7 @@ static void printchar(struct fbc_priv *priv, int c)
>  		if (priv->x > 0) {
>  			priv->x--;
>  		} else if (priv->y > 0) {
> -			priv->x = priv->cols;
> +			priv->x = priv->cols - 1;
>  			priv->y--;
>  		}
>  		break;
> @@ -226,26 +226,26 @@ static void printchar(struct fbc_priv *priv, int c)
>  				priv->font->width, priv->font->height);
>  
>  		priv->x++;
> -		if (priv->x > priv->cols) {
> +		if (priv->x >= priv->cols) {
>  			priv->y++;
>  			priv->x = 0;
>  		}
>  	}
>  
> -	if (priv->y > priv->rows) {
> +	if (priv->y >= priv->rows) {
>  		void *buf;
>  		void *adr;
>  		u32 line_length = priv->fb->line_length;
>  		int line_height = line_length * priv->font->height;
>  		int width = priv->fb->xres - priv->margin.left - priv->margin.right;
> -		int height = (priv->rows + 1) * priv->font->height;
> +		int height = priv->rows * priv->font->height;
>  
>  		buf = gui_screen_render_buffer(priv->sc);
>  		adr = buf + priv->margin.top * line_length;
>  
>  		if (!priv->margin.left && !priv->margin.right) {
> -			memcpy(adr, adr + line_height, line_height * priv->rows);
> -			memset(adr + line_height * priv->rows, 0, line_height);
> +			memcpy(adr, adr + line_height, line_height * (priv->rows - 1));
> +			memset(adr + line_height * (priv->rows - 1), 0, line_height);
>  		} else {
>  			int bpp = priv->fb->bits_per_pixel >> 3;
>  			int y;
> @@ -264,7 +264,7 @@ static void printchar(struct fbc_priv *priv, int c)
>  
>  		gu_screen_blit_area(priv->sc, priv->margin.left, priv->margin.top,
>  				width, height);
> -		priv->y = priv->rows;
> +		priv->y = priv->rows - 1;
>  	}
>  
>  	show_cursor(priv, priv->x, priv->y);
> @@ -364,10 +364,10 @@ static void fbc_parse_csi(struct fbc_priv *priv)
>  		show_cursor(priv, priv->x, priv->y);
>  
>  		pos = simple_strtoul(priv->csi, &end, 10);
> -		priv->y = clamp(pos - 1, 0, (int) priv->rows);
> +		priv->y = clamp(pos - 1, 0, (int) priv->rows - 1);
>  
>  		pos = simple_strtoul(end + 1, NULL, 10);
> -		priv->x = clamp(pos - 1, 0, (int) priv->cols);
> +		priv->x = clamp(pos - 1, 0, (int) priv->cols - 1);
>  
>  		show_cursor(priv, priv->x, priv->y);
>  	case 'K':
> @@ -469,8 +469,8 @@ static int setup_font(struct fbc_priv *priv)
>  
>  	priv->font = font;
>  
> -	priv->rows = height / priv->font->height - 1;
> -	priv->cols = width / priv->font->width - 1;
> +	priv->rows = height / priv->font->height;
> +	priv->cols = width / priv->font->width;
>  
>  	return 0;
>  }
> @@ -495,7 +495,7 @@ static int fbc_open(struct console_device *cdev)
>  	priv->state = LIT;
>  
>  	dev_info(priv->cdev.dev, "framebuffer console %dx%d activated\n",
> -		priv->cols + 1, priv->rows + 1);
> +		priv->cols, priv->rows);
>  
>  	priv->active = true;
>  
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


