Delivery-date: Mon, 13 Dec 2021 23:40:48 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mwu00-005j0S-S4
	for lore@lore.pengutronix.de; Mon, 13 Dec 2021 23:40:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mwtzy-0004OL-Ne
	for lore@pengutronix.de; Mon, 13 Dec 2021 23:40:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=jzY72vs21daSXNUvM4kB8yab1C72u945YAkjsp389tU=; b=MqcB1Hka9C0Djnm69TLzkJF3X7
	QAQU2s8H9d6cUTzehjkCytamHC3gb3FT/vHkg9PufPyc6SlFr7cMCFVrDk/L96ABCPyuZhrjeoSbM
	EKIvJtvEfnHtPHfFajFugcJjWX4vw4HhLXXJqxiwKn1L9/7DdfH+yd40H+cw2K7Oj6IuHHtY5U2B7
	BOFdfEDugn/oBIC5JGAFN/BiZ9OxVsHFNhTS3jaHR16WqF2779NcNiS5hKmgvacScfvJEv7ueHop/
	g70IOQ3UKLcFidLz6OjdhPSWY9+hws0z7AFynAe3o9sFOkJ/8YfuJI18IDgUOyvMx0NtvkTSzvy62
	I+4uyDYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mwtyX-00Bnj5-Np; Mon, 13 Dec 2021 22:39:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mwtgK-00BgvG-M6
 for barebox@lists.infradead.org; Mon, 13 Dec 2021 22:20:30 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mwtgJ-00022a-EE; Mon, 13 Dec 2021 23:20:27 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mwtgJ-0004FV-3M; Mon, 13 Dec 2021 23:20:27 +0100
Date: Mon, 13 Dec 2021 23:20:27 +0100
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org
Message-ID: <20211213222027.GJ6003@pengutronix.de>
References: <20211211084026.443756-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211211084026.443756-1-ahmad@a3f.at>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 23:20:18 up 3 days, 7:05, 33 users, load average: 0.13, 0.08, 0.09
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211213_142028_768092_1DC189DF 
X-CRM114-Status: GOOD (  21.93  )
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
Subject: Re: [PATCH master] include: linux/printk.h: include <stdarg.h> to
 make header self-contained
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Sat, Dec 11, 2021 at 09:40:26AM +0100, Ahmad Fatoum wrote:
> The point of <linux/printk.h> is to have a minimal self-contained header
> for use where ever printing is required. va_list was used, but not
> defined, remedy this.
> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  include/linux/printk.h | 1 +
>  1 file changed, 1 insertion(+)

Applied, thanks

Sascha

> 
> diff --git a/include/linux/printk.h b/include/linux/printk.h
> index 212041927251..39523b0572a0 100644
> --- a/include/linux/printk.h
> +++ b/include/linux/printk.h
> @@ -4,6 +4,7 @@
>  
>  #include <linux/list.h>
>  #include <printk.h>
> +#include <stdarg.h>
>  
>  #define MSG_EMERG      0    /* system is unusable */
>  #define MSG_ALERT      1    /* action must be taken immediately */
> -- 
> 2.33.0
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

