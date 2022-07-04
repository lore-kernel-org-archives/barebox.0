Delivery-date: Mon, 04 Jul 2022 11:26:07 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o8ILD-005QVs-Fd
	for lore@lore.pengutronix.de; Mon, 04 Jul 2022 11:26:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o8ILF-0007kX-Fl
	for lore@pengutronix.de; Mon, 04 Jul 2022 11:26:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=D2ZeNo4a5Q46DF79FpWjmQ/CkzNOOsWEkxXBlePfq1I=; b=1y5uDe0/UF+B42vGIPihuGXt2o
	m4nnLtR3ww3OMtu1hwtO8tZYUvMXvIU0d7xhDgD+C9FXX7QXo/36buKv1yBwU8hhvheMCn25BOb1/
	p90GnMRIoBe4lBpwszELLXbzlO0OoXTIguMUKJdHODVd1qhxelZHmMnhnZ1VPI2fDouoNz2Q1kGvW
	yGswtEAp6+QG6ouUHS3tdVcpsjwL/EbjpUk1vAToL0UUPDh0wnSDnyNXWSiIfTbCs0s4m8Kk/0Flf
	AR/fAi2wqlDoKifWXBZDbNcIXNXAdMl91KEuy34wxOrJ+uw5r91DZUhQjV4n5GOgJANhO/nfPqfs1
	vOmdi7GA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8IJa-006QdB-PU; Mon, 04 Jul 2022 09:24:22 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8IJT-006QaH-Hg
	for barebox@lists.infradead.org; Mon, 04 Jul 2022 09:24:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1o8IJQ-0007Oe-4E; Mon, 04 Jul 2022 11:24:12 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1o8IJL-004LIZ-TY; Mon, 04 Jul 2022 11:24:11 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1o8IJO-000Wkk-Go; Mon, 04 Jul 2022 11:24:10 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: lst@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  4 Jul 2022 11:24:09 +0200
Message-Id: <20220704092409.124836-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220704092409.124836-1-a.fatoum@pengutronix.de>
References: <20220704092409.124836-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220704_022415_626466_9A975F5F 
X-CRM114-Status: GOOD (  12.01  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/2] ARM: i.MX8M: use compressed DTBs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Multi-image build with i.MX8MN-EVK increases size for other board,
because DDR4 firmware will be included for LPDDR4 only PBLs too.

We should fix that with LTO, but until that's done, we can reduce
size a good bit by compressing DTBs. This saves e.g. 27K for the
i.MX8M-EVK (8MQuad).

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/mnt-reform/lowlevel.c            | 4 ++--
 arch/arm/boards/nxp-imx8mm-evk/lowlevel.c        | 4 ++--
 arch/arm/boards/nxp-imx8mp-evk/lowlevel.c        | 4 ++--
 arch/arm/boards/nxp-imx8mq-evk/lowlevel.c        | 4 ++--
 arch/arm/boards/phytec-som-imx8mq/lowlevel.c     | 4 ++--
 arch/arm/boards/protonic-imx8m/lowlevel-prt8mm.c | 4 ++--
 6 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/arch/arm/boards/mnt-reform/lowlevel.c b/arch/arm/boards/mnt-reform/lowlevel.c
index 268dfb611aa8..231c92daf5c7 100644
--- a/arch/arm/boards/mnt-reform/lowlevel.c
+++ b/arch/arm/boards/mnt-reform/lowlevel.c
@@ -18,7 +18,7 @@
 #include <mach/xload.h>
 #include <soc/imx8m/ddr.h>
 
-extern char __dtb_imx8mq_mnt_reform2_start[];
+extern char __dtb_z_imx8mq_mnt_reform2_start[];
 
 #define UART_PAD_CTRL	MUX_PAD_CTRL(MX8MQ_PAD_CTL_DSE_65R)
 
@@ -173,7 +173,7 @@ static __noreturn noinline void mnt_reform_start(void)
 	/*
 	 * Standard entry we hit once we initialized both DDR and ATF
 	 */
-	imx8mq_barebox_entry(__dtb_imx8mq_mnt_reform2_start);
+	imx8mq_barebox_entry(__dtb_z_imx8mq_mnt_reform2_start);
 }
 
 ENTRY_FUNCTION(start_mnt_reform, r0, r1, r2)
diff --git a/arch/arm/boards/nxp-imx8mm-evk/lowlevel.c b/arch/arm/boards/nxp-imx8mm-evk/lowlevel.c
index c2f6206cfd8e..7a1a60d903a7 100644
--- a/arch/arm/boards/nxp-imx8mm-evk/lowlevel.c
+++ b/arch/arm/boards/nxp-imx8mm-evk/lowlevel.c
@@ -23,7 +23,7 @@
 #include <soc/fsl/fsl_udc.h>
 #include <image-metadata.h>
 
-extern char __dtb_imx8mm_evk_start[];
+extern char __dtb_z_imx8mm_evk_start[];
 
 #define UART_PAD_CTRL	MUX_PAD_CTRL(PAD_CTL_DSE_3P3V_45_OHM)
 
@@ -168,7 +168,7 @@ static __noreturn noinline void nxp_imx8mm_evk_start(void)
 	/*
 	 * Standard entry we hit once we initialized both DDR and ATF
 	 */
-	imx8mm_barebox_entry(__dtb_imx8mm_evk_start);
+	imx8mm_barebox_entry(__dtb_z_imx8mm_evk_start);
 }
 
 ENTRY_FUNCTION(start_nxp_imx8mm_evk, r0, r1, r2)
diff --git a/arch/arm/boards/nxp-imx8mp-evk/lowlevel.c b/arch/arm/boards/nxp-imx8mp-evk/lowlevel.c
index c7916e496264..ab01c140b5dd 100644
--- a/arch/arm/boards/nxp-imx8mp-evk/lowlevel.c
+++ b/arch/arm/boards/nxp-imx8mp-evk/lowlevel.c
@@ -23,7 +23,7 @@
 #include <soc/imx8m/ddr.h>
 #include <soc/fsl/fsl_udc.h>
 
-extern char __dtb_imx8mp_evk_start[];
+extern char __dtb_z_imx8mp_evk_start[];
 
 #define UART_PAD_CTRL   MUX_PAD_CTRL(MX8MP_PAD_CTL_DSE6 | \
 				     MX8MP_PAD_CTL_FSEL)
@@ -175,7 +175,7 @@ static __noreturn noinline void nxp_imx8mp_evk_start(void)
 	/*
 	 * Standard entry we hit once we initialized both DDR and ATF
 	 */
-	imx8mp_barebox_entry(__dtb_imx8mp_evk_start);
+	imx8mp_barebox_entry(__dtb_z_imx8mp_evk_start);
 }
 
 ENTRY_FUNCTION(start_nxp_imx8mp_evk, r0, r1, r2)
diff --git a/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c b/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
index 92cc22e022e3..0c9f6345ff30 100644
--- a/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
+++ b/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
@@ -21,7 +21,7 @@
 
 #include "ddr.h"
 
-extern char __dtb_imx8mq_evk_start[];
+extern char __dtb_z_imx8mq_evk_start[];
 
 #define UART_PAD_CTRL	MUX_PAD_CTRL(PAD_CTL_DSE_3P3V_45_OHM)
 
@@ -97,7 +97,7 @@ static __noreturn noinline void nxp_imx8mq_evk_start(void)
 	/*
 	 * Standard entry we hit once we initialized both DDR and ATF
 	 */
-	imx8mq_barebox_entry(__dtb_imx8mq_evk_start);
+	imx8mq_barebox_entry(__dtb_z_imx8mq_evk_start);
 }
 
 ENTRY_FUNCTION(start_nxp_imx8mq_evk, r0, r1, r2)
diff --git a/arch/arm/boards/phytec-som-imx8mq/lowlevel.c b/arch/arm/boards/phytec-som-imx8mq/lowlevel.c
index 05226866f828..d35f9b0d39ae 100644
--- a/arch/arm/boards/phytec-som-imx8mq/lowlevel.c
+++ b/arch/arm/boards/phytec-som-imx8mq/lowlevel.c
@@ -23,7 +23,7 @@
 
 #include "ddr.h"
 
-extern char __dtb_imx8mq_phytec_phycore_som_start[];
+extern char __dtb_z_imx8mq_phytec_phycore_som_start[];
 
 #define UART_PAD_CTRL	MUX_PAD_CTRL(PAD_CTL_DSE_3P3V_45_OHM)
 
@@ -90,7 +90,7 @@ static __noreturn noinline void phytec_phycore_imx8mq_start(void)
 	/*
 	 * Standard entry we hit once we initialized both DDR and ATF
 	 */
-	imx8mq_barebox_entry(__dtb_imx8mq_phytec_phycore_som_start);
+	imx8mq_barebox_entry(__dtb_z_imx8mq_phytec_phycore_som_start);
 }
 
 /*
diff --git a/arch/arm/boards/protonic-imx8m/lowlevel-prt8mm.c b/arch/arm/boards/protonic-imx8m/lowlevel-prt8mm.c
index 24d98fe6c993..848e90dbc1b6 100644
--- a/arch/arm/boards/protonic-imx8m/lowlevel-prt8mm.c
+++ b/arch/arm/boards/protonic-imx8m/lowlevel-prt8mm.c
@@ -15,7 +15,7 @@
 #include <soc/fsl/fsl_udc.h>
 #include <soc/imx8m/ddr.h>
 
-extern char __dtb_imx8mm_prt8mm_start[];
+extern char __dtb_z_imx8mm_prt8mm_start[];
 
 #define UART_PAD_CTRL	MUX_PAD_CTRL(PAD_CTL_DSE_3P3V_45_OHM)
 
@@ -109,7 +109,7 @@ static __noreturn noinline void prt_prt8mm_start(void)
 	/*
 	 * Standard entry we hit once we initialized both DDR and ATF
 	 */
-	imx8mm_barebox_entry(__dtb_imx8mm_prt8mm_start);
+	imx8mm_barebox_entry(__dtb_z_imx8mm_prt8mm_start);
 }
 
 ENTRY_FUNCTION(start_prt_prt8mm, r0, r1, r2)
-- 
2.30.2



