Delivery-date: Wed, 05 Apr 2023 13:15:26 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pk16r-00Aoqo-SG
	for lore@lore.pengutronix.de; Wed, 05 Apr 2023 13:15:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pk16r-0003Wk-Qp
	for lore@pengutronix.de; Wed, 05 Apr 2023 13:15:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=quhbUYTnCnEjoYb/zFPQC4hFtSg5caDftXCcuzhxvkM=; b=HEvWkzEMBv2Yyv9sguxwI7G7ev
	XIKngNtpVrCsl8LUZTGTLgQbjxk0SyfbKpomzgcpMxDihe3OpceY/0bDYlzfAyadiMUokdnJkWaWz
	sgHElZhZcsi9jA/kZQm8xVfyu70amhz2+ZOSDieuHkhsvQUOE5SYkTPE0LwkHngExr5txuDwx31nj
	eXLmu7Ywz4KkM3196sLlTHbMKwJYnccuPM/xyHukyqGbtVCpObu1qL5M2y1SiwgFGHXW/XnKk1E0Q
	mapxe5r/jO4sb74BAQWpwC6iPgbO/Ic8/xWUOzsFtVvAucz9USX1s9cLbkaxtC1pzzaPVT917zw5Y
	ywVGHUZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pk15X-004Dca-0f;
	Wed, 05 Apr 2023 11:14:03 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pk15U-004DbR-1f
	for barebox@lists.infradead.org;
	Wed, 05 Apr 2023 11:14:01 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pk15Q-00033j-Sa; Wed, 05 Apr 2023 13:13:56 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pk15Q-0005WQ-Ko; Wed, 05 Apr 2023 13:13:56 +0200
Date: Wed, 5 Apr 2023 13:13:56 +0200
To: Philipp Zabel <p.zabel@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230405111356.GZ19113@pengutronix.de>
References: <20230403121844.3447836-1-p.zabel@pengutronix.de>
 <20230403121844.3447836-2-p.zabel@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230403121844.3447836-2-p.zabel@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230405_041400_550290_06EE0CDF 
X-CRM114-Status: GOOD (  20.58  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/3] video: fbconsole: add optional damage tracking
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Apr 03, 2023 at 02:18:43PM +0200, Philipp Zabel wrote:
> Annotate framebuffer updates with damage rectangles so drivers may
> implement partial updates for displays with an integrated framebuffer.
> 
> Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
> ---
>  drivers/video/fbconsole.c | 32 ++++++++++++++++++++++++++++----
>  1 file changed, 28 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/video/fbconsole.c b/drivers/video/fbconsole.c
> index 070378aa2352..25d7ea685ff6 100644
> --- a/drivers/video/fbconsole.c
> +++ b/drivers/video/fbconsole.c
> @@ -18,6 +18,7 @@ enum state_t {
>  struct fbc_priv {
>  	struct console_device cdev;
>  	struct fb_info *fb;
> +	struct fb_rect rect;
>  
>  	struct screen *sc;
>  
> @@ -60,9 +61,11 @@ static int fbc_tstc(struct console_device *cdev)
>  static void cls(struct fbc_priv *priv)
>  {
>  	void *buf = gui_screen_render_buffer(priv->sc);
> +	struct fb_info *fb = priv->fb;
>  
>  	memset(buf, 0, priv->fb->line_length * priv->fb->yres);
>  	gu_screen_blit(priv->sc);
> +	fb_damage(fb, &priv->rect);
>  }
>  
>  struct rgb {
> @@ -139,13 +142,20 @@ static void drawchar(struct fbc_priv *priv, int x, int y, int c)
>  static void video_invertchar(struct fbc_priv *priv, int x, int y)
>  {
>  	void *buf;
> +	struct fb_rect rect;
> +
> +	rect.x1 = x * priv->font->width;
> +	rect.y1 = y * priv->font->height;
> +	rect.x2 = rect.x1 + priv->font->width;
> +	rect.y2 = rect.y1 + priv->font->height;
>  
>  	buf = gui_screen_render_buffer(priv->sc);
>  
> -	gu_invert_area(priv->fb, buf, x * priv->font->width, y * priv->font->height,
> +	gu_invert_area(priv->fb, buf, rect.x1, rect.y1,
>  			priv->font->width, priv->font->height);
> -	gu_screen_blit_area(priv->sc, x * priv->font->width, y * priv->font->height,
> +	gu_screen_blit_area(priv->sc, rect.x1, rect.y1,
>  			priv->font->width, priv->font->height);
> +	fb_damage(priv->fb, &rect);

Does it make sense to call fb_damage() from gu_screen_blit_area() and
gu_screen_blit() instead?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


