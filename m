Delivery-date: Thu, 11 Jan 2024 12:50:31 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNtZv-00Cw1f-2M
	for lore@lore.pengutronix.de;
	Thu, 11 Jan 2024 12:50:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNtZu-0002Ic-9o
	for lore@pengutronix.de; Thu, 11 Jan 2024 12:50:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LVTUMrFAJGvrqRAQp24BJEOI7XCL8I6TbAaZgMpZg9A=; b=Q8BWnas3SWvZvmO1GeEi6YA1hO
	meLs7dZboK2HMFMKfO75qVmmWOVQmhyy4ny51NIhEIbcKih5QZOaTEAaz+D8jugbwnJL62tW3P9ZR
	Au2H4JHjBHFD/MXygT2m3iLPdzEcB7MoIXOXWjqIVlnyNVg5/RwvcZqf8LNxpn7ay6MeJdcbKSeE1
	OBRiuIJC1tUdaYYG2qXWp1Aan9lea1dUS0sYGpjSBPW1PotKEX8owSyiQrnWgN/WU7vm3ax2/wqTe
	WsTkr26YifORwGrWdFeusWHAlpmDq8HhujXRmTdHtVceOflCo/h/vc7g1643Zu6f7bxGxjn8t3Qny
	mO3yQktw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNtYY-00HSjQ-0Q;
	Thu, 11 Jan 2024 11:49:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNtYP-00HSam-15
	for barebox@lists.infradead.org;
	Thu, 11 Jan 2024 11:49:01 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1rNtYK-000137-Mu
	for barebox@lists.infradead.org; Thu, 11 Jan 2024 12:48:52 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu, 11 Jan 2024 12:48:30 +0100
Message-Id: <20240111114841.2676939-8-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240111114841.2676939-1-m.felsch@pengutronix.de>
References: <20240111114841.2676939-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240111_034857_603966_F638800D 
X-CRM114-Status: GOOD (  13.00  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 07/18] common: add OPTEE_SHM_SIZE to configure optee shared memory
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

An size of 4M seems quite large and upstream OP-TEE code mostly uses 2M
for all i.MX platforms. However keep the 4M as default but make it
configurable for integrators which want to use the autom. OF fixup
logic.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/mach-imx/imx8m.c | 2 +-
 common/Kconfig            | 9 +++++++++
 2 files changed, 10 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/imx8m.c b/arch/arm/mach-imx/imx8m.c
index c7c799c64bc4..90dc12ca18cc 100644
--- a/arch/arm/mach-imx/imx8m.c
+++ b/arch/arm/mach-imx/imx8m.c
@@ -68,7 +68,7 @@ static int imx8m_init(const char *cputypestr)
 	if (IS_ENABLED(CONFIG_PBL_OPTEE) && tzc380_is_enabled() &&
 	    !of_find_node_by_path_from(NULL, "/firmware/optee")) {
 		static struct of_optee_fixup_data optee_fixup_data = {
-			.shm_size = SZ_4M,
+			.shm_size = CONFIG_OPTEE_SHM_SIZE,
 			.method = "smc",
 		};
 
diff --git a/common/Kconfig b/common/Kconfig
index 1de76651fddf..5b5da6224752 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1136,6 +1136,15 @@ config OPTEE_SIZE
 	  Can be smaller than the actual size used by OP-TEE, this is used to prevent
 	  barebox from allocating memory in this area.
 
+config OPTEE_SHM_SIZE
+	hex
+	default 0x400000
+	prompt "OP-TEE Shared Memory Size"
+	depends on HAVE_OPTEE
+	help
+	  Size to reserve in main memory for OP-TEE shared memory communication.
+	  Can be used for fixing up the OP-TEE OF node.
+
 config BOOTM_OPTEE
 	bool
 	prompt "support booting OP-TEE"
-- 
2.39.2



