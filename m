Delivery-date: Wed, 03 Sep 2025 19:13:34 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1utr39-007j24-0F
	for lore@lore.pengutronix.de;
	Wed, 03 Sep 2025 19:13:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1utr37-0001Gd-Un
	for lore@pengutronix.de; Wed, 03 Sep 2025 19:13:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=w6/uxIFfkQkOV24QAQMpLk7DO4QrhWOyK2p03Tmtguw=; b=EF2lM8EMONNEM2eubGJEgBRpxn
	WbCL36jCq7sG5/BrzigzSgZITanhvmz9/WZwxbK9noy5luiFCu0MbYvAi3JGsFQWJwpH1e9UBhV7m
	QbPZtUShPQj+5pg82PR/OHdKVXe37ZqiIsgisJrYpd0SY4swfPikYIy2RePhO0YtCjVeHVsE3jsRh
	OM8yJUoHe+Q0waqYnGwQvzRx1rR/mDy5eHw015wLGhd/gNHxjVtFMXEeORKYUHcd57lOFhNxNdTtH
	OOESzn3pxvlr1HZ9INxJK1AdlNBotRmhNAlRhCHJ5w0P1EGqWYfp3JH15jDS1rwxXp+ciyKZJrIBT
	zY4FWb1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utr2c-000000079QO-023r;
	Wed, 03 Sep 2025 17:13:02 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utnSd-00000006Zzo-191s
	for barebox@lists.infradead.org;
	Wed, 03 Sep 2025 13:23:40 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-45cb6d8f42cso4211145e9.1
        for <barebox@lists.infradead.org>; Wed, 03 Sep 2025 06:23:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1756905817; x=1757510617; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=w6/uxIFfkQkOV24QAQMpLk7DO4QrhWOyK2p03Tmtguw=;
        b=VZy6EcmdzKSKZc1rPVcLepH77usJMB5bEcfusYKuwE1typt7Ap2CRpmKrKNEQHWh63
         zBoiFJbwM8XbL819N4UgoC84hlM07OzKKOkyAATidDGpP1UIFVuqSYtRXIkIqqC9gw68
         36jTd2KU4eK/uY0AshuOa3XFCQ+4haWdb1unR+iQc3VeYZMZSDn4OFXA+maR7aozgtqj
         b4FAV97sstcRoKo3bdWGNmlhj+WVqT55+DE3CFJmxAqQrnXhYeyFypUpkKZtG66hZcUF
         WaSEB12jyXWfhJtY5xrraub/21wW6a7eJIPFUFmkrL9XZbtcC6kLj/BO3cFOHBKorab/
         FX7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756905817; x=1757510617;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=w6/uxIFfkQkOV24QAQMpLk7DO4QrhWOyK2p03Tmtguw=;
        b=wkGBXOZfNNaPrMX1/jS+l2YRzRmm6y6HBH5eaUNt/CnpdN2I9rsdxQjM8sPvbkLw1x
         rPw3huZCK/1BV18g7bF3nt/PaoBiCFLooqx/sXYeYKwiXElgyMyaLYAtuEUZLUI0f7oE
         Bo9cFoiQw4Qrm2IQHyv8f72qQCcmMoN1hrJ31PeT3iJHBAA14pvsQuB7r72kh0LHk4cM
         23uauGF0pU4K+VeT1iOQzoDo+qqNNj5OaNPeSwC8md02z8ImILmARkEMbvxyuiwN64rp
         BIh2BVsMZnm9RoKe/FFmsSdaNgK6zVnnI24nETcIlEz0cVrKkiaeBpxbXjT9Nm3SkItM
         yQrw==
X-Gm-Message-State: AOJu0YxcQZQNyjo0FpUk2Z8L5Ul+wxXwp9zzDfF33RWVsGjxp07LbwNs
	vQ56/WNn+cHNV/g4TfHi46XaSrG+PB24XVLDykEzDt3LsxrrU7PU/q9b
X-Gm-Gg: ASbGncu5LLTepUec1na/yY8kymeu1BbTaGoAWMmTKDxGcrpVrrNvvt6tOq4OxbXFkM0
	N4ENoZBJ3u/lrT3GDKn7gaXgVviBcg7yXmUldQYJPuj9B8ITx4mYldMyJeSE6gv1ixpYpNKXIGG
	kCxUFg03shcKGNx5JtKpBkCZvbDZmR6uoX8GFmomm5elxHhUw6cyBaIOQ1t/pf5sA20UN/cEZZA
	pnc2vv07I23I91z8G8QBBRC5SqKS2VnBNP24ASJONvMrmBVzKOZDyLyLQzemlo0YQ77boG8jPRW
	MawssMrIhjkSpP9qJS0mO7WyD+3Kc2x+P1bH/icj6LQjxW8RoDQe4aT6wmF18FTvirI/oRZBD9y
	1pPv/D7bmk0AZYsvdG+Q/6mseLqMOUZa4Rti9XoHnKu64+tb17NeXjE41+fQdayOm71sysD5O
X-Google-Smtp-Source: AGHT+IEe4sGrCaOopZTENOz+cJbwXJ0r21V+ku/zPgoNqRcz0YrEwYsFmcsxz7dGGoiXn2Y367xwrg==
X-Received: by 2002:a05:6000:2906:b0:3dc:3610:5463 with SMTP id ffacd0b85a97d-3dc36105539mr3094597f8f.27.1756905817337;
        Wed, 03 Sep 2025 06:23:37 -0700 (PDT)
Received: from localhost (cpc1-brnt4-2-0-cust862.4-2.cable.virginm.net. [86.9.131.95])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3d701622b92sm12376044f8f.58.2025.09.03.06.23.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Sep 2025 06:23:35 -0700 (PDT)
Date: Wed, 3 Sep 2025 14:23:35 +0100
From: Stafford Horne <shorne@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <aLhBVzl4cgK6thGN@antec>
References: <20250903120228.3485457-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250903120228.3485457-1-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250903_062339_310095_8CAA774D 
X-CRM114-Status: GOOD (  14.75  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] openrisc: fix include file protection
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Sep 03, 2025 at 02:02:28PM +0200, Sascha Hauer wrote:
> Fixes:
> 
> arch/openrisc/include/asm/common.h:3: error: header guard '_ASM_COMMON_H' followed by '#define' of a different macro [-Werror=header-guard]
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Thats a good check to have.

Reviewed-by: Stafford Horne <shorne@gmail.com>

> ---
>  arch/openrisc/include/asm/common.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/openrisc/include/asm/common.h b/arch/openrisc/include/asm/common.h
> index 06bb4824a2..320037de32 100644
> --- a/arch/openrisc/include/asm/common.h
> +++ b/arch/openrisc/include/asm/common.h
> @@ -1,6 +1,6 @@
>  /* SPDX-License-Identifier: GPL-2.0-only */
>  
> -#ifndef _ASM_COMMON_H
> +#ifndef __ASM_COMMON_H
>  #define __ASM_COMMON_H
>  
> -#endif /* _ASM_COMMON_H */
> +#endif /* __ASM_COMMON_H */
> -- 
> 2.47.2
> 
> 


