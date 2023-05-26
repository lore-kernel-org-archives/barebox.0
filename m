Delivery-date: Fri, 26 May 2023 08:56:04 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q2RMs-00Ej3d-3B
	for lore@lore.pengutronix.de; Fri, 26 May 2023 08:56:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q2RMp-0001M2-J0
	for lore@pengutronix.de; Fri, 26 May 2023 08:56:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uU25OWWNrWEj8fgRHcnHJd/0uhoPyX+hDNMxdka0jlE=; b=3AW5B5HC1E49mzNQ1LD2poHpKX
	NbxA8aMNJ3M0JP3rdvb4l99FrnWo2yVWiHr2/4UBLy2csKM6IXeBgK+zCXirrsvhGZN1ifKs8SVKf
	LOhz7ftNU/NYPLvCszIWa5lyBWe0jfuxk8Gt9hALV0jNc2OhIyWZv9deHRjqRDTOYLr1LA0EauHzn
	IEXKLVQVYptr5EFaBHnS5pjcrWm5feNveeFkqD1MwFDmw/iP89W7M6Jl8pg3fIW7TthLpzSAm/KrD
	/FWBk/X4q/9lkh5MWPhh9xRFtu0LcRAeIWM81VGum9rkbupvs65o04dkQSi/HQrMfkAP7Rd3tHrny
	EtxhJmvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q2RLa-001KFN-1r;
	Fri, 26 May 2023 06:54:46 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q2RLX-001KDV-0p
	for barebox@lists.infradead.org;
	Fri, 26 May 2023 06:54:44 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q2RLQ-0000x6-R8; Fri, 26 May 2023 08:54:36 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q2RLQ-0007XK-GU; Fri, 26 May 2023 08:54:36 +0200
Date: Fri, 26 May 2023 08:54:36 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230526065436.GQ17518@pengutronix.de>
References: <20230526063746.1155297-1-a.fatoum@pengutronix.de>
 <20230526063746.1155297-4-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230526063746.1155297-4-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230525_235443_314350_A057E7C2 
X-CRM114-Status: GOOD (  27.49  )
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
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 3/7] include: sync <linux/linkage.h> with Linux
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, May 26, 2023 at 08:37:42AM +0200, Ahmad Fatoum wrote:
> Linux has added new SYM_ macros in the assembly code and deprecated
> ENTRY/PROC. Import the necessary definitions to make kernel code
> porting easier.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  common/Kconfig          |   6 +
>  include/linux/linkage.h | 321 ++++++++++++++++++++++++++++++++++++----
>  2 files changed, 298 insertions(+), 29 deletions(-)
> 
> diff --git a/common/Kconfig b/common/Kconfig
> index ce94718c848a..5346ba5a623c 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -1710,3 +1710,9 @@ config DDR_SPD
>  
>  config HAVE_ARCH_ASAN
>  	bool
> +
> +config ARCH_USE_SYM_ANNOTATIONS
> +	bool
> +	help
> +	  This is selected by architectures that exclusively use the new SYM_
> +	  macros in their assembly code and not the deprecated ENTRY/PROC.
> diff --git a/include/linux/linkage.h b/include/linux/linkage.h
> index efb2d6fa407b..c262c7b36907 100644
> --- a/include/linux/linkage.h
> +++ b/include/linux/linkage.h
> @@ -3,9 +3,16 @@
>  #ifndef _LINUX_LINKAGE_H
>  #define _LINUX_LINKAGE_H
>  
> -#include <linux/compiler.h>
> +#include <linux/compiler_types.h>
> +#include <linux/stringify.h>
> +#include <linux/export.h>

This breaks compilation zylonite310_defconfig. include/linux/export.h is
not safe for being included from assembly files when CONFIG_MODULES is
enabled. We could drop this inclusion here as linux/export.h doesn't
contain anything useful for assembly code. However, I added the
following instead to not trap into this again should linux/linkage.h
be updated again.

Sascha

>From 36b3448b724db0ed1888d61de7069df0ebcfcdc1 Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 26 May 2023 08:48:55 +0200
Subject: [PATCH] include: make linux/export.h safe for being included from
 assembly

include/linux/linkage.h is included from assembly files and itself
includes linux/export.h, so add #ifndef __ASSEMBLY__ protection
to that file as well.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/linux/export.h | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/include/linux/export.h b/include/linux/export.h
index 88d318bd8a..90f6ada2d5 100644
--- a/include/linux/export.h
+++ b/include/linux/export.h
@@ -2,6 +2,8 @@
 #ifndef _LINUX_EXPORT_H
 #define _LINUX_EXPORT_H
 
+#ifndef __ASSEMBLY__
+
 #define THIS_MODULE	0
 
 #ifdef CONFIG_MODULES
@@ -36,4 +38,6 @@ struct kernel_symbol
 
 #endif /* CONFIG_MODULES */
 
+#endif /* __ASSEMBLY__ */
+
 #endif /* _LINUX_EXPORT_H */
-- 
2.39.2

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


