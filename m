Delivery-date: Mon, 13 Dec 2021 23:40:04 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mwtzI-005iyP-TS
	for lore@lore.pengutronix.de; Mon, 13 Dec 2021 23:40:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mwtzH-00045i-4z
	for lore@pengutronix.de; Mon, 13 Dec 2021 23:40:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=QO4pAhSPru5HWv/FcYEIiLhqoT7B++OJdC+5Ncn4yaY=; b=b//t7qLYoS9W4PT1d/iHg2sRZ6
	QEZlsrn+mChkuQSuZIjwz/2f1+GaRyb3Cxf7lkUNCE2ktOpeQzr78COuFMcg+cgGTyw+BaiDFO48+
	XuAlka2zrP/zAg7oAgbuiHV/XngqwEKvgxCxdRf8NWu2ZcSPR9YPs4dWDO7NU4plljgaQ+W0vrc28
	c8ZCLkqfwtlbQhwpsQJnfbyAhztT/4p1d7vr37ml2ltSd6QUbLpsp2dTYUH3JWwhzqmVEDnytyrJD
	X8x0gPhTkNXzD4YBLLFyI0tIF7IKe8IJyyHyi8f3hJD65IhC+1UHVmM2Et8ja6lKh+4uDIuPTXpQ8
	qLxFRGCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mwtxp-00BnR8-Ob; Mon, 13 Dec 2021 22:38:34 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mwtdC-00BffU-LO
 for barebox@lists.infradead.org; Mon, 13 Dec 2021 22:17:16 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mwtdB-0001hM-DU; Mon, 13 Dec 2021 23:17:13 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mwtdB-00048M-4o; Mon, 13 Dec 2021 23:17:13 +0100
Date: Mon, 13 Dec 2021 23:17:13 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20211213221713.GG6003@pengutronix.de>
References: <20211209105817.3518258-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211209105817.3518258-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 23:17:02 up 3 days, 7:02, 33 users, load average: 0.07, 0.07, 0.09
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211213_141714_749543_A7DE8DFD 
X-CRM114-Status: GOOD (  27.44  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] include: <linux/build_bug.h>: define static_assert
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Dec 09, 2021 at 11:58:17AM +0100, Ahmad Fatoum wrote:
> BUILD_BUG_ON can't be used outside of a function, unlike static_assert.
> Import the macro definition.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  include/linux/build_bug.h | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/include/linux/build_bug.h b/include/linux/build_bug.h
> index 43d1fd50d433..40cd504f63ba 100644
> --- a/include/linux/build_bug.h
> +++ b/include/linux/build_bug.h
> @@ -80,4 +80,23 @@
>  
>  #endif	/* __CHECKER__ */
>  
> +/**
> + * static_assert - check integer constant expression at build time
> + *
> + * static_assert() is a wrapper for the C11 _Static_assert, with a
> + * little macro magic to make the message optional (defaulting to the
> + * stringification of the tested expression).
> + *
> + * Contrary to BUILD_BUG_ON(), static_assert() can be used at global
> + * scope, but requires the expression to be an integer constant
> + * expression (i.e., it is not enough that __builtin_constant_p() is
> + * true for expr).
> + *
> + * Also note that BUILD_BUG_ON() fails the build if the condition is
> + * true, while static_assert() fails the build if the expression is
> + * false.
> + */
> +#define static_assert(expr, ...) __static_assert(expr, ##__VA_ARGS__, #expr)
> +#define __static_assert(expr, msg, ...) _Static_assert(expr, msg)
> +
>  #endif	/* _LINUX_BUILD_BUG_H */
> -- 
> 2.30.2
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

