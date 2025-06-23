Delivery-date: Tue, 24 Jun 2025 03:38:51 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uTscd-00ARpk-2k
	for lore@lore.pengutronix.de;
	Tue, 24 Jun 2025 03:38:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uTscd-0005O8-91
	for lore@pengutronix.de; Tue, 24 Jun 2025 03:38:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=maz6gtb1PDo5q0KcZ3LhV9ZLjamcwmHVxPx/WjZe0no=; b=ahsiaGcTfGM8tNQR+uX/laibsO
	wiKFNkut3wB4okLKM1obSzePX5XzN/Hby6xPkhexGr3n0WweAgYEA40qG3H7vhn0ToPC/7HgFs9IO
	qpgjWaih7KHKgXLFNyxPUcY+6Bs8Zsg9akhd3gQdBD2/AgI9OIZSP2S3MRUMAzdu71cVkMSn3NxGo
	4fFJPuA9XDESIs4Ko9WbrWvzgDw4wijxBIpAtvwXI5IOW9MuR9VGbZGwKKF0Ls0RxWo9Mj5grODUu
	/WRQ3fdLwnDq4dVxkon3dt4ZYwdUlUvZvhaujF6xcW0/eb2OOfPP3cUv7MgLakKntfDInL5dtnqZK
	rgMLXMUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTscM-00000004NhU-1m2o;
	Tue, 24 Jun 2025 01:38:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTpD4-0000000443a-0SKX
	for barebox@lists.infradead.org;
	Mon, 23 Jun 2025 22:00:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <m.grzeschik@pengutronix.de>)
	id 1uTpD1-0005q1-1k
	for barebox@lists.infradead.org; Tue, 24 Jun 2025 00:00:11 +0200
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <m.grzeschik@pengutronix.de>)
	id 1uTpD0-0050fh-2m
	for barebox@lists.infradead.org;
	Tue, 24 Jun 2025 00:00:10 +0200
Received: from localhost ([::1] helo=dude04.red.stw.pengutronix.de)
	by dude04.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <m.grzeschik@pengutronix.de>)
	id 1uTpD0-00GM9V-2S
	for barebox@lists.infradead.org;
	Tue, 24 Jun 2025 00:00:10 +0200
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 24 Jun 2025 00:00:09 +0200
Message-Id: <20250623220009.3898126-1-m.grzeschik@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250623_150014_150057_D5A65A49 
X-CRM114-Status: GOOD (  11.33  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH v2] arch: arm: imx: esdctl: limit ram to 1GB on imx93 in case OPTEE is enabled
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

In MX93 the ELE (Edge Lock Enclave) is limited to communicate with
messages addressed under 1.5GB. The ELE can not reach the memory between
(0xE0000000-0xFFFFFFFF).

So we limit the usable memory in case OPTEE is used.

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>

---
v1 -> v2: moved the limitation to be active in imx93_barebox_entry only
---
 arch/arm/mach-imx/esdctl.c | 15 +++++++++++++--
 1 file changed, 13 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
index 4b67b52ca45..c79d7c29245 100644
--- a/arch/arm/mach-imx/esdctl.c
+++ b/arch/arm/mach-imx/esdctl.c
@@ -1046,9 +1046,20 @@ void __noreturn imx7d_barebox_entry(void *boarddata)
 
 void __noreturn imx93_barebox_entry(void *boarddata)
 {
+	resource_size_t mem = 0;
+
 	imx93_init_scratch_space(false);
 	optee_set_membase(imx_scratch_get_optee_hdr());
 
-	barebox_arm_entry(MX9_DDR_CSD1_BASE_ADDR,
-			  imx9_ddrc_sdram_size(), boarddata);
+	mem = imx9_ddrc_sdram_size();
+	/* In MX93 the ELE is limited to comunicate with messages
+	 * under 1.5GB address space. This limits the overal memory
+	 * to be 1GB in case OPTEE is used.
+	 */
+	if (IS_ENABLED(CONFIG_PBL_OPTEE)) {
+	        if (mem > 0x40000000)
+	                mem = 0x40000000;
+	}
+
+	barebox_arm_entry(MX9_DDR_CSD1_BASE_ADDR, mem, boarddata);
 }
-- 
2.39.5



