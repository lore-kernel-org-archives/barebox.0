Delivery-date: Sun, 01 Jun 2025 23:02:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uLppZ-002jWS-28
	for lore@lore.pengutronix.de;
	Sun, 01 Jun 2025 23:02:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uLppZ-0002En-2P
	for lore@pengutronix.de; Sun, 01 Jun 2025 23:02:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=amNoRX47bHXxqiG7Mm5qCx/blWZdXzXED4GV0ukFtGg=; b=WJt+vBO47PPAow3GVPS0f1kTyC
	5UOaPbogoLDVTQ5MlPiL/Dd6OCo8S5QpyAPrEotqhZJV5qDJbJyW1JQH0tIKA6Al7NG7EKDqTD30k
	5iqNyN1FNKrIYD8VNoChIQBC4EBzaVRN8aWa63nOdENhahB4WdNRLEtBXVj1KWHKUFLX6w8ZbB0t5
	J9qIoF7yuT8OiB5GLjvaIpwLIibGQfoX2hpD1/GT/J95RLN0emgL3LgKc8vcCHrgaxLzH2oKKUjBK
	lSUCMI9+lsHjP5yi1qZnjC2+PLgjkdr/p99J4ELD+1uZi20+lbFzqbT+SzqVZQjYf8iE8vJk5+NUI
	zBEfJ4hA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uLpp8-00000005xky-3504;
	Sun, 01 Jun 2025 21:02:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uLpp6-00000005xkZ-2m5Z
	for barebox@lists.infradead.org;
	Sun, 01 Jun 2025 21:02:30 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uLpp4-0001vo-3O; Sun, 01 Jun 2025 23:02:26 +0200
Message-ID: <f015b8b8-66b2-46ce-9755-caebafddb2ee@pengutronix.de>
Date: Sun, 1 Jun 2025 23:02:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Ahmad Fatoum <a.fatoum@barebox.org>, barebox@lists.infradead.org
References: <20250601210002.562733-1-a.fatoum@barebox.org>
 <20250601210002.562733-5-a.fatoum@barebox.org>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250601210002.562733-5-a.fatoum@barebox.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250601_140228_708292_2613F014 
X-CRM114-Status: GOOD (  20.90  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,PDS_OTHER_BAD_TLD,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 5/5] fbconsole: reset cursor to origin when changing fonts
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 01.06.25 23:00, Ahmad Fatoum wrote:
> If we switch from one font to another, we update priv->rows and
> priv->cols, but priv->x and priv->y remain at their old values.
> 
> This becomes problematic, when a bigger font is chosen, because the
> coordinates may now exceed the maximum number of rows and lines,
> triggering an out-of-bounds memory access, when they are scaled
> according to the new font.
> 
> Fix this by resetting to (0, 0) whenever the number of columns and rows
> changes. The end result looks neater anyway.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>

Should've made this the first commit. Can this one be applied to master as well?

> ---
>  drivers/video/fbconsole.c | 17 +++++++++++++----
>  1 file changed, 13 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/video/fbconsole.c b/drivers/video/fbconsole.c
> index 167569abd5c1..fd220a6c1e05 100644
> --- a/drivers/video/fbconsole.c
> +++ b/drivers/video/fbconsole.c
> @@ -679,6 +679,7 @@ static int setup_font(struct fbc_priv *priv)
>  	const struct font_desc *font;
>  	unsigned int height = priv->fb->yres - priv->margin.top - priv->margin.bottom;
>  	unsigned int width = priv->fb->xres - priv->margin.left - priv->margin.right;
> +	unsigned int newrows, newcols;
>  
>  	font = find_font_enum(priv->par_font_val);
>  	if (!font) {
> @@ -690,14 +691,22 @@ static int setup_font(struct fbc_priv *priv)
>  	switch (priv->rotation) {
>  	case FBCONSOLE_ROTATE_0:
>  	case FBCONSOLE_ROTATE_180:
> -		priv->rows = height / priv->font->height;
> -		priv->cols = width / priv->font->width;
> +		newrows = height / priv->font->height;
> +		newcols = width / priv->font->width;
>  		break;
>  	case FBCONSOLE_ROTATE_90:
>  	case FBCONSOLE_ROTATE_270:
> -		priv->rows = width / priv->font->height;
> -		priv->cols = height / priv->font->width;
> +		newrows = width / priv->font->height;
> +		newcols = height / priv->font->width;
>  		break;
> +	default:
> +		return -EINVAL;
> +	}
> +
> +	if (priv->rows != newrows || priv->cols != newcols) {
> +		priv->rows = newrows;
> +		priv->cols = newcols;
> +		priv->x = priv->y = 0;
>  	}
>  
>  	return 0;


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


