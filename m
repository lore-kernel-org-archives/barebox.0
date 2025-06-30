Delivery-date: Mon, 30 Jun 2025 09:47:03 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uW9EF-00CYDo-0d
	for lore@lore.pengutronix.de;
	Mon, 30 Jun 2025 09:47:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uW9EE-0005oW-CR
	for lore@pengutronix.de; Mon, 30 Jun 2025 09:47:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BqGdtCDPnMy33i7qzD2SNnBj0cOjUszgAW+wzYlkccc=; b=zn15Fl1Q1XmH1fP+paDI8dMzTm
	db1o6JkyWoEErPFYn/PkvDjq2PgW0c6AbOn6AKxUFWfRkQMfaFwOL61C7FFB5cGNATE7DSFZuzgX5
	jYPzeZvJZT7zs7ksXkXzOgy94aN44rMWK7i+yl0HZ9cU7T76f3mguALpGW/A05nEzVK4jZJiADxkO
	Q9SzEIX0QEVrvyuq1W3RBA3ofdcoYwwmLDwQ8cyHKCrv0ivW/ZpLbwUF7QZcdCi777Ylc54mJZDkT
	wYChDM8PnSSpsylKVTevL/qRqUgE8rfRYRq9gXwFBxZCjbldmVfaS6v1eInfgo2zfrI1tmRStTljH
	NRNEqjmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uW9Di-00000001Ug7-3Ecp;
	Mon, 30 Jun 2025 07:46:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uW9DB-00000001UUi-3P5d
	for barebox@lists.infradead.org;
	Mon, 30 Jun 2025 07:45:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uW9D2-0004OC-Lp; Mon, 30 Jun 2025 09:45:48 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uW9D2-00648M-0r;
	Mon, 30 Jun 2025 09:45:48 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uW9D2-004Sjo-0S;
	Mon, 30 Jun 2025 09:45:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 30 Jun 2025 09:45:48 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250630-arm-optee-early-helper-v2-6-c8cce3ae42b0@pengutronix.de>
References: <20250630-arm-optee-early-helper-v2-0-c8cce3ae42b0@pengutronix.de>
In-Reply-To: <20250630-arm-optee-early-helper-v2-0-c8cce3ae42b0@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1751269547; l=1501;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=fDTHHqLPUHnkHgyrFsDbvp12oJW+vH7FuceP/R5Tio8=;
 b=pUItydeSAk7TP5Xw2jfAvPlRzYwIxhC53IR3UmpQWrdo4w/F8jtmR1TFIn5S+fBSxwLfGrYOA
 RtBd3c2gq7zA7svuyRH3RVV0RgPqZIaUS2FHV2e4wKNtYm6cpkdhl7s
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250630_004557_874659_72691B11 
X-CRM114-Status: GOOD (  12.23  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 06/14] ARM: i.MX: add config symbol for TZASC
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

So far we build tzasc.c by default on i.MX8M. We need this only when
CONFIG_PBL_OPTEE is enabled though, so add a config symbol for the TZASC
and let it depend on PBL_OPTEE.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/Kconfig  | 5 +++++
 arch/arm/mach-imx/Makefile | 2 +-
 2 files changed, 6 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 02b9fb4dac9f6fa1f4b64799a17a7c642dc96ed7..34c8a077d32d0b87d0b804fd36c6a1693f0071a9 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -46,6 +46,11 @@ config ARCH_IMX_SCRATCHMEM
 	def_bool y
 	depends on ARCH_IMX8M || ARCH_IMX9
 
+config ARCH_IMX_TZASC
+	bool
+	depends on ARCH_IMX8M
+	default y if PBL_OPTEE
+
 #
 # PMIC configuration found on i.MX51 Babbadge board
 #
diff --git a/arch/arm/mach-imx/Makefile b/arch/arm/mach-imx/Makefile
index 23f51fc660197c2da923697e0c303eec8c85e2b4..f81fa18e9214d7c3b60d04454bfb73eda0a6b5f4 100644
--- a/arch/arm/mach-imx/Makefile
+++ b/arch/arm/mach-imx/Makefile
@@ -21,7 +21,7 @@ obj-pbl-$(CONFIG_ARCH_IMX8M) += imx8m.o
 obj-pbl-$(CONFIG_ARCH_IMX_SCRATCHMEM) += scratch.o
 obj-$(CONFIG_ARCH_IMX9) += imx9.o imx-v3-image.o
 lwl-$(CONFIG_ARCH_IMX_ATF) += atf.o
-obj-pbl-$(CONFIG_ARCH_IMX8M) += tzasc.o
+obj-pbl-$(CONFIG_ARCH_IMX_TZASC) += tzasc.o
 obj-pbl-$(CONFIG_ARCH_IMX_ROMAPI) += romapi.o
 obj-$(CONFIG_IMX_IIM)	+= iim.o
 obj-$(CONFIG_NAND_IMX) += nand.o

-- 
2.39.5



