Delivery-date: Wed, 22 Nov 2023 19:13:04 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r5rih-004gJ8-2O
	for lore@lore.pengutronix.de;
	Wed, 22 Nov 2023 19:13:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r5rih-0001Fv-Ni
	for lore@pengutronix.de; Wed, 22 Nov 2023 19:13:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QI2yGpsOzb0gzTo4RABcK13VXAmPlbNjfwLEAfcvIqE=; b=hMyqCXlE1hYOsikMqU8sqVTO0y
	OcU+l1nai1iOF1p2TcEI3uTbOpXIxtkVOu75euAL9evWsCdH+q/s3AUzqbZi4SAJ00DJ+guvKqS/X
	vwg/RRpm29vNQx9gZMMMdLNWlawwG/LOcjNq046HkJdaRx8VuBLTK6+t0TvS+oMjiP3kTU6vPv+m6
	6rhjo2e+/8u36w6ST37FGNJD3RN5Dh6kxcNqTiDsKSgiEEd+GOLk0Hk3ohZwYWXPz4zjK1E0Ajpjy
	qZQ7mqr/cTPZcXNqxopbjzybuSu1G0NXDZoTRW145u6C+vawVjIINcg8RRrxWVYvP/nTYAc9SuXhn
	uOJUbZYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5rhG-002lpj-0o;
	Wed, 22 Nov 2023 18:11:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5rh6-002lm0-2u
	for barebox@lists.infradead.org;
	Wed, 22 Nov 2023 18:11:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r5rh3-0000bl-Hd; Wed, 22 Nov 2023 19:11:21 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r5rh3-00As1A-4q; Wed, 22 Nov 2023 19:11:21 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r5rh3-002Wed-05;
	Wed, 22 Nov 2023 19:11:21 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 22 Nov 2023 19:11:15 +0100
Message-Id: <20231122181116.591131-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231122181116.591131-1-a.fatoum@pengutronix.de>
References: <20231122181116.591131-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_101124_955562_7689E8D2 
X-CRM114-Status: GOOD (  10.30  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 6/7] ARM: stm32mp: init: don't print STM32MP15 CPU type
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

TF-A already reads the OTP and unconditionally prints at a higher log
level:

  NOTICE:  CPU: STM32MP157AAA Rev.B

barebox reads the OTP again via the secure monitor only to print:

  stm32mp-init: detected STM32MP157AAA Rev.B

which doesn't add any extra information, so drop it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-stm32mp/init.c | 45 ++----------------------------------
 1 file changed, 2 insertions(+), 43 deletions(-)

diff --git a/arch/arm/mach-stm32mp/init.c b/arch/arm/mach-stm32mp/init.c
index 90f331ecd0dd..2b0a665220ce 100644
--- a/arch/arm/mach-stm32mp/init.c
+++ b/arch/arm/mach-stm32mp/init.c
@@ -97,11 +97,6 @@ static void setup_boot_mode(u32 boot_ctx)
 	bootsource_set_raw(src, instance);
 }
 
-static u32 get_cpu_revision(void)
-{
-	return (stm32mp_read_idc() & DBGMCU_IDC_REV_ID_MASK) >> DBGMCU_IDC_REV_ID_SHIFT;
-}
-
 static int get_cpu_package(u32 *pkg)
 {
 	int ret = bsec_read_field(BSEC_OTP_PKG, pkg);
@@ -161,107 +156,71 @@ static int stm32mp15_fixup_pkg(struct device_node *root, void *_pkg)
 
 static int stm32mp15_setup_cpu_type(void)
 {
-	const char *cputypestr, *cpupkgstr, *cpurevstr;
 	unsigned long cpufixupctx = 0, pkgfixupctx = 0;
-	int cputype, silicon_revision, package;
+	int cputype, package;
 	int ret;
 
 	__stm32mp15_get_cpu_type(&cputype);
 	switch (cputype) {
 	case CPU_STM32MP157Fxx:
-		cputypestr = "157F";
 		cpufixupctx = FIXUP_CPU_MASK(2, 800);
 		break;
 	case CPU_STM32MP157Dxx:
-		cputypestr = "157D";
 		cpufixupctx = FIXUP_CPU_MASK(2, 800);
 		break;
 	case CPU_STM32MP157Cxx:
-		cputypestr = "157C";
 		cpufixupctx = FIXUP_CPU_MASK(2, 650);
 		break;
 	case CPU_STM32MP157Axx:
-		cputypestr = "157A";
 		cpufixupctx = FIXUP_CPU_MASK(2, 650);
 		break;
 	case CPU_STM32MP153Fxx:
-		cputypestr = "153F";
 		cpufixupctx = FIXUP_CPU_MASK(2, 800);
 		break;
 	case CPU_STM32MP153Dxx:
-		cputypestr = "153D";
 		cpufixupctx = FIXUP_CPU_MASK(2, 800);
 		break;
 	case CPU_STM32MP153Cxx:
-		cputypestr = "153C";
 		cpufixupctx = FIXUP_CPU_MASK(2, 650);
 		break;
 	case CPU_STM32MP153Axx:
-		cputypestr = "153A";
 		cpufixupctx = FIXUP_CPU_MASK(2, 650);
 		break;
 	case CPU_STM32MP151Cxx:
-		cputypestr = "151C";
 		cpufixupctx = FIXUP_CPU_MASK(1, 650);
 		break;
 	case CPU_STM32MP151Axx:
-		cputypestr = "151A";
 		cpufixupctx = FIXUP_CPU_MASK(1, 650);
 		break;
 	case CPU_STM32MP151Fxx:
-		cputypestr = "151F";
 		cpufixupctx = FIXUP_CPU_MASK(1, 800);
 		break;
 	case CPU_STM32MP151Dxx:
-		cputypestr = "151D";
 		cpufixupctx = FIXUP_CPU_MASK(1, 800);
 		break;
 	default:
-		cputypestr = "????";
 		break;
 	}
 
 	get_cpu_package(&package);
 	switch (package) {
 	case PKG_AA_LBGA448:
-		cpupkgstr = "AA";
 		pkgfixupctx = STM32MP_PKG_AA;
 		break;
 	case PKG_AB_LBGA354:
-		cpupkgstr = "AB";
 		pkgfixupctx = STM32MP_PKG_AB;
 		break;
 	case PKG_AC_TFBGA361:
-		cpupkgstr = "AC";
 		pkgfixupctx = STM32MP_PKG_AC;
 		break;
 	case PKG_AD_TFBGA257:
-		cpupkgstr = "AD";
 		pkgfixupctx = STM32MP_PKG_AD;
 		break;
 	default:
-		cpupkgstr = "??";
 		break;
 	}
 
-	silicon_revision = get_cpu_revision();
-	switch (silicon_revision) {
-	case CPU_REV_A:
-		cpurevstr = "A";
-		break;
-	case CPU_REV_B:
-		cpurevstr = "B";
-		break;
-	case CPU_REV_Z:
-		cpurevstr = "Z";
-		break;
-	default:
-		cpurevstr = "?";
-	}
-
-	pr_debug("cputype = 0x%x, package = 0x%x, revision = 0x%x\n",
-		 cputype, package, silicon_revision);
-	pr_info("detected STM32MP%s%s Rev.%s\n", cputypestr, cpupkgstr, cpurevstr);
+	pr_debug("cputype = 0x%x, package = 0x%x\n", cputype, package);
 
 	if (cpufixupctx) {
 		ret = of_register_fixup(stm32mp15_fixup_cpus, (void*)cpufixupctx);
-- 
2.39.2



