Delivery-date: Tue, 02 Apr 2024 15:45:45 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rreSP-003eAS-0d
	for lore@lore.pengutronix.de;
	Tue, 02 Apr 2024 15:45:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rreSO-0004Rc-JO
	for lore@pengutronix.de; Tue, 02 Apr 2024 15:45:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tNu41zbvfyvKYiU4oLoQFKpuNVmtjJmFJ9wclbxEAr8=; b=Z4XCIuBdhOU5nKbI2h81sajRXU
	8zgt2Mn6H+U2vTfrwSWGL8FhHXnIlmrDkHDcpTFP013mN7UbcuOPyMfywIq9i8CyblSYSHw/2BrXl
	x+YQUvHA3OGOi39p3QxlMOjG7N51T7xzimRF+h8FkpjIbQ1IEQ/0oAbqJu5qg5ePDvpgu3iXf0qBE
	AMmNhPfbwOteFqCc5CnpvWUFc7GBVQoRb9VQyMupsUp90aH0crHu3OVejd3vafKpVTJ7tEfakJHip
	pY2J0sR/o8vMX5iNZ4C5/ECo7A6ctiW0OPdL/Y5DJbFrxnZYqW7xo7ZzEvhiMpx/yWBdDn/yXhzl5
	skf5xKag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rreRr-0000000BPmK-0FpM;
	Tue, 02 Apr 2024 13:45:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rreRl-0000000BPj4-0dUq
	for barebox@lists.infradead.org;
	Tue, 02 Apr 2024 13:45:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rreRi-0003XH-E7; Tue, 02 Apr 2024 15:45:02 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rreRi-009zgY-1G; Tue, 02 Apr 2024 15:45:02 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rreRh-00FTlX-31;
	Tue, 02 Apr 2024 15:45:01 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  2 Apr 2024 15:45:00 +0200
Message-Id: <20240402134501.3689322-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240402134501.3689322-1-a.fatoum@pengutronix.de>
References: <20240402134501.3689322-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240402_064505_294147_D291C9A7 
X-CRM114-Status: GOOD (  10.98  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 2/3] RISC-V: riscvemu: build overlay as DTSO
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Overlay files shouldn't include the device tree snippets from
CONFIG_EXTERNAL_DTS_FRAGMENTS, which is avoided by using the dtbo rule
instead of the dtb rule that we were using before.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/riscv/boards/riscvemu/Makefile                           | 2 +-
 arch/riscv/boards/riscvemu/board.c                            | 4 ++--
 .../riscvemu/{overlay-of-sram.dts => riscvemu-sram.dtso}      | 0
 3 files changed, 3 insertions(+), 3 deletions(-)
 rename arch/riscv/boards/riscvemu/{overlay-of-sram.dts => riscvemu-sram.dtso} (100%)

diff --git a/arch/riscv/boards/riscvemu/Makefile b/arch/riscv/boards/riscvemu/Makefile
index ec7e89479e77..baada2136ee2 100644
--- a/arch/riscv/boards/riscvemu/Makefile
+++ b/arch/riscv/boards/riscvemu/Makefile
@@ -1,7 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0-only
 
 obj-y += board.o
-obj-y += overlay-of-sram.dtb.o
+obj-y += riscvemu-sram.dtbo.o
 bbenv-$(CONFIG_CMD_TUTORIAL) += defaultenv-riscvemu
 
 clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts *.dtb.z
diff --git a/arch/riscv/boards/riscvemu/board.c b/arch/riscv/boards/riscvemu/board.c
index c1d008ab5d32..afd6608ac522 100644
--- a/arch/riscv/boards/riscvemu/board.c
+++ b/arch/riscv/boards/riscvemu/board.c
@@ -33,7 +33,7 @@ static void __noreturn riscvemu_restart(struct restart_handler *rst)
 	priv->restart(riscv_hartid(), barebox_riscv_boot_dtb());
 }
 
-extern char __dtb_overlay_of_sram_start[];
+extern char __dtbo_riscvemu_sram_start[];
 
 static int riscvemu_probe(struct device *dev)
 {
@@ -42,7 +42,7 @@ static int riscvemu_probe(struct device *dev)
 	struct riscvemu_priv *priv;
 	u64 start;
 
-	overlay = of_unflatten_dtb(__dtb_overlay_of_sram_start, INT_MAX);
+	overlay = of_unflatten_dtb(__dtbo_riscvemu_sram_start, INT_MAX);
 	of_overlay_apply_tree(dev->of_node, overlay);
 	/* of_probe() will happen later at of_populate_initcall */
 
diff --git a/arch/riscv/boards/riscvemu/overlay-of-sram.dts b/arch/riscv/boards/riscvemu/riscvemu-sram.dtso
similarity index 100%
rename from arch/riscv/boards/riscvemu/overlay-of-sram.dts
rename to arch/riscv/boards/riscvemu/riscvemu-sram.dtso
-- 
2.39.2



