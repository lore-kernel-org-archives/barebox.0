Delivery-date: Wed, 14 Jun 2023 16:21:20 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q9RNC-006klB-8l
	for lore@lore.pengutronix.de; Wed, 14 Jun 2023 16:21:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q9RN9-00020F-TZ
	for lore@pengutronix.de; Wed, 14 Jun 2023 16:21:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6g13HCKI8daj3IlmNHyhs1fZmi+QTxXULYNoapA7iHY=; b=Le9W2XXdLgM1eY4EVwHRTRTMn+
	/jNRAg8VR2IQ9YwuVOZk4oPEZfb4yuemy8IvoXJBpVeEGDM4iwqTX7V1w1ImSHkCYnKlcveneCmAo
	mDm8SdyIic93OyY7GXZ7OY8ylNYRRmILFUg1acgrmBdq3vlOxD8v9VdfHEE2aKWYKerLK7fIGPYh+
	IRVhWEdWf59cmxTh0HJJmktvRmlPqR4cuH9ZM7eJf+o8jMfI3MjEwcMV5Aa97sk0ueaCPd4zLVjgp
	EF7nsoLet1TazAQv5PVD8dq/dCIVOHVXXe4Q414nv1sKAguX2+FexweZH5xlKI88hCkTkqy1g6K7J
	aQgM0Jnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9RMC-00BtBc-1N;
	Wed, 14 Jun 2023 14:20:20 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9RM9-00BtAI-1K
	for barebox@lists.infradead.org;
	Wed, 14 Jun 2023 14:20:18 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q9RM8-0001Xk-5I; Wed, 14 Jun 2023 16:20:16 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q9RM7-0001sH-Tu; Wed, 14 Jun 2023 16:20:15 +0200
Date: Wed, 14 Jun 2023 16:20:15 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230614142015.GA18491@pengutronix.de>
References: <20230614090338.4192368-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230614090338.4192368-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230614_072017_448774_969265FD 
X-CRM114-Status: GOOD (  19.17  )
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
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] video: panel-ilitek-ili9341: drop #define DEBUG
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Jun 14, 2023 at 11:03:38AM +0200, Ahmad Fatoum wrote:
> This is a left-over from development and shouldn't be necessary for
> regular builds.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/video/panel-ilitek-ili9341.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/video/panel-ilitek-ili9341.c b/drivers/video/panel-ilitek-ili9341.c
> index 7202773b5189..1f9c4254855d 100644
> --- a/drivers/video/panel-ilitek-ili9341.c
> +++ b/drivers/video/panel-ilitek-ili9341.c
> @@ -12,7 +12,7 @@
>   *
>   * Derived from Linux drivers/drm/gpu/panel/panel-ilitek-ili9341.c
>   */
> -#define DEBUG 1
> +
>  #include <common.h>
>  #include <linux/bitops.h>
>  #include <gpiod.h>
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


