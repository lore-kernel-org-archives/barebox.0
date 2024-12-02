Delivery-date: Mon, 02 Dec 2024 13:45:40 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tI5o3-0035Tg-2R
	for lore@lore.pengutronix.de;
	Mon, 02 Dec 2024 13:45:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tI5o3-0006a4-Ni
	for lore@pengutronix.de; Mon, 02 Dec 2024 13:45:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=l8AotDIzJKRrKVUXwVo428wHeeEFtnaxmNrzbXFpsQY=; b=tCGfxaOxsl5fFeD5GomnmI0F61
	8noy4MiuqnXzyr4srckfjgixPM8SY1BygcALpMRtKa9fne9GblDMUr0elpHaXV3WzYMsAxY4kWtXm
	KDlXOo7OCGgIJVVDsOSrY+uXnfMNI3QfzrjWNNxX6QPN2/qpZEaXIBCLwFY0R49B+LunQWLKRBFks
	nW6lKonLBaAsPGZPbGUGU0lLLOh77A/ScpYKzqyA9IZieUh2DFxDlIfa1nqksuX/8273Rvk2v/Ll1
	JmUwwclymsmht9qbO0lqFylh1n8K98MwLN+BvkGBfxzV+kk8JP4YgT9ugRq9KKJy6CKt6YKyFQXOA
	a8f4N/+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tI5nW-000000067SW-22uZ;
	Mon, 02 Dec 2024 12:45:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tI5ge-000000066MV-0xrG
	for barebox@lists.infradead.org;
	Mon, 02 Dec 2024 12:38:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1tI5gc-0005F7-O9; Mon, 02 Dec 2024 13:37:58 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tI5gb-001Iaw-2Z;
	Mon, 02 Dec 2024 13:37:58 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tI5gc-00AaG7-1Y;
	Mon, 02 Dec 2024 13:37:58 +0100
Date: Mon, 2 Dec 2024 13:37:58 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Z02qJkAKxY246Knm@pengutronix.de>
References: <20241202113729.599540-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241202113729.599540-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241202_043800_262209_7E90F476 
X-CRM114-Status: GOOD (  19.24  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] fixup! stdio: stub out basprintf and friends when
 built for PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Dec 02, 2024 at 12:37:28PM +0100, Ahmad Fatoum wrote:
> asprintf and vasprintf return only -1 as error code, so have the stub
> follow suit for symmetry.
> 
> No functional change expected.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  include/stdio.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/include/stdio.h b/include/stdio.h
> index 03cd3d281890..883b06529fdc 100644
> --- a/include/stdio.h
> +++ b/include/stdio.h
> @@ -32,7 +32,7 @@ static inline char *basprintf(const char *fmt, ...)
>  }
>  static inline int asprintf(char **strp, const char *fmt, ...)
>  {
> -	return -ENOMEM;
> +	return -1;
>  }
>  static inline char *bvasprintf(const char *fmt, va_list ap)
>  {
> @@ -40,7 +40,7 @@ static inline char *bvasprintf(const char *fmt, va_list ap)
>  }
>  static inline int vasprintf(char **strp, const char *fmt, va_list ap)
>  {
> -	return -ENOMEM;
> +	return -1;
>  }
>  #endif
>  
> -- 
> 2.39.5
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


