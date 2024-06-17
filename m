Delivery-date: Mon, 17 Jun 2024 13:37:29 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sJAfx-007Ygl-1a
	for lore@lore.pengutronix.de;
	Mon, 17 Jun 2024 13:37:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sJAfw-0007BF-Qf
	for lore@pengutronix.de; Mon, 17 Jun 2024 13:37:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YWG/aw0Fq+zC0e6Ba7BaPB55MxBBoiypO9ATaU8s5i0=; b=swtoYUfAWRcPy034OoyE3cb5pj
	pGt8DQOJWuTdz3FAX3gc6CSaT9kGTPCRH4f0owa+f/IrFqvBiPZaWNYzbBLpnzasMsgaIH2JrmkrO
	jR9JgRbdsHofxxZ8GbsA5u1KuiXqCRSQGSwESGem3P8M+boEs2GJ/LOKkU2J53E/K4qUoT4hgmthL
	S0zqfIryi1h4aFCVQzuZWwYrmFTssJXchS87Cf9mAs0LmlvJ0Uyq6HiFiCS6u5IJNVybgg2vy65sl
	hTS/+kg8QnZnE6c5j4axYwtrqkXZ82fZzvtoAkctUI0y7ui0h8YlOD/z7MCdtdcr7Bh9EcN00l+Pf
	Xlns9UkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJAfQ-0000000AVic-0Lys;
	Mon, 17 Jun 2024 11:36:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJAfA-0000000AVWS-4AwU
	for barebox@lists.infradead.org;
	Mon, 17 Jun 2024 11:36:44 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1sJAf8-0006ab-Gt; Mon, 17 Jun 2024 13:36:38 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon, 17 Jun 2024 13:36:31 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240617-v2024-05-0-topic-socfpga-arria10-xloader-v1-9-48a6eba4bb5e@pengutronix.de>
References: <20240617-v2024-05-0-topic-socfpga-arria10-xloader-v1-0-48a6eba4bb5e@pengutronix.de>
In-Reply-To: <20240617-v2024-05-0-topic-socfpga-arria10-xloader-v1-0-48a6eba4bb5e@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240617_043641_115578_EEE1FD3D 
X-CRM114-Status: GOOD (  11.00  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 09/14] ARM: arria10: mark image in OCRAM as valid
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The bootrom checks on warm reset if there is already a valid image in
ocram and boots it. Otherwise the next boot slot is loaded.

When barebox gets to this stage, mark it as successfully loaded to ocram.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/mach-socfpga/arria10-generic.c       | 4 ++++
 include/mach/socfpga/arria10-system-manager.h | 5 +++--
 2 files changed, 7 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-socfpga/arria10-generic.c b/arch/arm/mach-socfpga/arria10-generic.c
index fc2ef3e292..d7ce6d84ab 100644
--- a/arch/arm/mach-socfpga/arria10-generic.c
+++ b/arch/arm/mach-socfpga/arria10-generic.c
@@ -74,6 +74,10 @@ static int arria10_generic_init(void)
 	pr_debug("Register restart handler\n");
 	restart_handler_register_fn("soc", arria10_restart_soc);
 
+	/* mark image in OCRAM as valid and finally disable the l4wd0 */
+	writel(ARRIA10_SYSMGR_ROM_INITSWSTATE_VALID, ARRIA10_SYSMGR_ROM_INITSWSTATE);
+	arria10_watchdog_disable();
+
 	return 0;
 }
 postcore_initcall(arria10_generic_init);
diff --git a/include/mach/socfpga/arria10-system-manager.h b/include/mach/socfpga/arria10-system-manager.h
index 536baf6bc3..b0654408a5 100644
--- a/include/mach/socfpga/arria10-system-manager.h
+++ b/include/mach/socfpga/arria10-system-manager.h
@@ -52,7 +52,8 @@
 #define ARRIA10_SYSMGR_NOC_IDLESTATUS		(ARRIA10_SYSMGR_ADDR + 0xd4)
 #define ARRIA10_SYSMGR_FPGA2SOC_CTRL		(ARRIA10_SYSMGR_ADDR + 0xd8)
 
-#define ARRIA10_SYSMGR_ROM_INITSWLASTLD		(ARRIA10_SYSMGR_ADDR + 0x10)
+#define ARRIA10_SYSMGR_ROM_INITSWSTATE		(ARRIA10_SYSMGR_ADDR + 0x20c)
+#define ARRIA10_SYSMGR_ROM_INITSWLASTLD		(ARRIA10_SYSMGR_ADDR + 0x210)
 #define ARRIA10_SYSMGR_ROM_ISW0			(ARRIA10_SYSMGR_ADDR + 0x230)
 #define ARRIA10_SYSMGR_ROM_ISW1			(ARRIA10_SYSMGR_ADDR + 0x234)
 #define ARRIA10_SYSMGR_ROM_ISW2			(ARRIA10_SYSMGR_ADDR + 0x238)
@@ -62,7 +63,7 @@
 #define ARRIA10_SYSMGR_ROM_ISW6			(ARRIA10_SYSMGR_ADDR + 0x248)
 #define ARRIA10_SYSMGR_ROM_ISW7			(ARRIA10_SYSMGR_ADDR + 0x24c)
 
-
+#define ARRIA10_SYSMGR_ROM_INITSWSTATE_VALID	0x49535756
 
 #define ARRIA10_SYSMGR_BOOTINFO_BSEL_MASK	0x00007000
 #define ARRIA10_SYSMGR_BOOTINFO_BSEL_SHIFT	12

-- 
2.43.2



