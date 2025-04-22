Delivery-date: Tue, 22 Apr 2025 17:30:22 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u7FZm-0046Vp-2G
	for lore@lore.pengutronix.de;
	Tue, 22 Apr 2025 17:30:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u7FZm-000474-1f
	for lore@pengutronix.de; Tue, 22 Apr 2025 17:30:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9qpPTZBgLmV8p+QbF8ItZNgjQ3+3dq4rQpOhMCnebwM=; b=4vRzUw3/XOQPrN9bsHfAblJ+Qg
	o3hhZnobO54dFjozAXLmbOGLSzrJy69xPN2od7A8JQfEjAf4KaQk4HBAsn6AjIyh4RGbme06pSwPV
	I0T7Ct0EiOt22eNCDDITlT0PXws8lfU2zYKtSllQOHDXAEDCq/cZhDyaaXgtmKjKJ9vHYDiIrBJ0R
	LvdEMGRIgxkAT8bYfLyxPThAUgGci89sWXnT7W5Y7r0ckKXlUpBky/wnHXjTu3UZk0D801vkpbH7z
	IOBLa5O6C/G8Mg8fBASCh8ggOr63vQXgqOHjAhUrhTR1CqeMyufN7BSP8Dni+Y531E832pZiuvGRa
	1tFlbbMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7FYx-00000007isd-327d;
	Tue, 22 Apr 2025 15:29:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7EOc-00000007S01-1YCW
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 14:14:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1u7EOa-0004gi-Tr; Tue, 22 Apr 2025 16:14:44 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1u7EOa-001ZCI-2M;
	Tue, 22 Apr 2025 16:14:44 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1u7EOa-00FAXZ-22;
	Tue, 22 Apr 2025 16:14:44 +0200
Date: Tue, 22 Apr 2025 16:14:44 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <aAekVBdaunlO0eSW@pengutronix.de>
References: <20250422075519.219029-1-a.fatoum@pengutronix.de>
 <20250422075519.219029-2-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250422075519.219029-2-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250422_071446_411375_CDC37DE6 
X-CRM114-Status: GOOD (  25.10  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master 2/4] ARM: Layerscape: fix compilation of LS1028
 without LS1046
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Apr 22, 2025 at 09:55:17AM +0200, Ahmad Fatoum wrote:
> From: Ahmad Fatoum <a.fatoum@barebox.org>
> 
> Definitions inside icid.c are needed for both LS1046 and LS1028, so make
> sure it's compiled unconditionally.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
> ---
>  arch/arm/mach-layerscape/Makefile | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/mach-layerscape/Makefile b/arch/arm/mach-layerscape/Makefile
> index 10e1c031b953..095d3e4eae57 100644
> --- a/arch/arm/mach-layerscape/Makefile
> +++ b/arch/arm/mach-layerscape/Makefile
> @@ -3,7 +3,7 @@
>  obj- := __dummy__.o
>  lwl-y += errata.o
>  lwl-$(CONFIG_ARCH_LS1046) += lowlevel.o lowlevel-ls1046a.o
> -obj-$(CONFIG_ARCH_LS1046) += icid.o
> +obj-y += icid.o

This breaks compilation of layerscape_v7_defconfig. icic.c must not be
compiled for LS1021. I fixed this with the following.

Sascha

-------------------------------8<------------------------------

>From bb416fc27329e04935dc45b76a5e853583272783 Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 22 Apr 2025 16:00:56 +0200
Subject: [PATCH] ARM: Layerscape: fix icid compilation for 32bit layerscape

icid.c has to be compiled for LS1028 and LS1046a, but not for LS1021.
Introduce an extra Kconfig symbol selected from the SoCs that need it.

Fixes: 7458e41a4c98 ("ARM: Layerscape: fix compilation of LS1028 without LS1046")
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-layerscape/Kconfig  | 5 +++++
 arch/arm/mach-layerscape/Makefile | 2 +-
 2 files changed, 6 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-layerscape/Kconfig b/arch/arm/mach-layerscape/Kconfig
index 0f559863ec..c24f948c1d 100644
--- a/arch/arm/mach-layerscape/Kconfig
+++ b/arch/arm/mach-layerscape/Kconfig
@@ -2,18 +2,23 @@
 
 if ARCH_LAYERSCAPE
 
+config ARCH_LAYERSCAPE_ICID
+	bool
+
 config ARCH_LS1028
 	bool
 	select CPU_V8
 	select SYS_SUPPORTS_64BIT_KERNEL
 	select ARM_ATF
 	select FIRMWARE_LS1028A_ATF
+	select ARCH_LAYERSCAPE_ICID
 
 config ARCH_LS1046
 	bool
 	select CPU_V8
 	select ARM_ATF
 	select SYS_SUPPORTS_64BIT_KERNEL
+	select ARCH_LAYERSCAPE_ICID
 
 if 64BIT
 
diff --git a/arch/arm/mach-layerscape/Makefile b/arch/arm/mach-layerscape/Makefile
index 095d3e4eae..e49701bf18 100644
--- a/arch/arm/mach-layerscape/Makefile
+++ b/arch/arm/mach-layerscape/Makefile
@@ -3,7 +3,7 @@
 obj- := __dummy__.o
 lwl-y += errata.o
 lwl-$(CONFIG_ARCH_LS1046) += lowlevel.o lowlevel-ls1046a.o
-obj-y += icid.o
+obj-$(CONFIG_ARCH_LAYERSCAPE_ICID) += icid.o
 obj-pbl-y += boot.o soc.o
 pbl-y += xload-qspi.o xload.o
 pbl-$(CONFIG_ARCH_LS1028) += tzc400.o
-- 
2.39.5


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


