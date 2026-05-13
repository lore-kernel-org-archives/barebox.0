Delivery-date: Wed, 13 May 2026 14:24:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wN8da-001FkP-2K
	for lore@lore.pengutronix.de;
	Wed, 13 May 2026 14:24:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wN8da-0005X0-1p
	for lore@pengutronix.de; Wed, 13 May 2026 14:24:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=dISGezghRZt/x7kZNND6A2eBstgWMfsMK2b1rI93qzE=; b=bjBZWJuyLOwKPvsN/9o7wg9sen
	r5NhsjJ2KCvsxPiQB5bYWMVqY50coKBFAsh8uQ7+iwfhx6a+SyHYi3gk7Qae+ZmGQ/FeUqcVjCIT6
	wqEBNJ5c0ZVxrv8yb8x7Yhcq9f88D/BjuWgFoCVIqqcoeebIc/DA0m6X99V8E2PmmPXvV8uhOEgiw
	yH7zYMlIFFT5AsJ9Qw0smqGAmhp9x/E5hojOvkuvOmAcmG4XWwGul2LtbJ7rPfLEpRxUJWSuGzU4/
	HaSwUhORqDLr/H7pgFF5AXM/aoDYJjRzqOJ4mea4Sv5WKM4JsceJ/qHCdmmNRFVq6Qx696iTF79Yh
	xznJngmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wN8cQ-00000002TOO-0nJv;
	Wed, 13 May 2026 12:23:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wN8cN-00000002TNg-2u6B
	for barebox@lists.infradead.org;
	Wed, 13 May 2026 12:23:16 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1wN8cM-00051Q-5p; Wed, 13 May 2026 14:23:14 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Wed, 13 May 2026 14:23:14 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260513-socfpga-axe5-phy-reset-v1-1-170199f652c5@pengutronix.de>
X-B4-Tracking: v=1; b=H4sIADFtBGoC/x3MQQqAIBBA0avErBvQxKiuEi3MxppNiRNhRHdPW
 r7F/w8IJSaBoXog0cXCx16g6wr85vaVkJdiaFTTKqsNyuFDXB26TBbjdmMioRM7bWYXjO+W3kO
 JY6LA+R+P0/t+dXdN6GgAAAA=
X-Change-ID: 20260513-socfpga-axe5-phy-reset-813baf3c8d9c
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>, 
 Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260513_052315_743090_2E63E0B7 
X-CRM114-Status: GOOD (  13.08  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH] arm: socfpga: axe5-eagle: move PHY reset to board code
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The AXE5 Eagle low level code configures the Ethernet pinmux and PHY
reset. This code is executed in EL3 and in EL1, and the PHY reset is
toggled and waited for twice.

There is no reason to perform the pinmux and reset in the low level
code, but it actually belongs into the board code.

It would be even better to let the responsible drivers do the reset, but
due to the limited binary size, it's not possible to enable the GPIO
driver for Agilex 5 in barebox.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 arch/arm/boards/arrow-axe5-eagle/board.c    | 23 +++++++++++++++++++++++
 arch/arm/boards/arrow-axe5-eagle/lowlevel.c | 18 ------------------
 2 files changed, 23 insertions(+), 18 deletions(-)

diff --git a/arch/arm/boards/arrow-axe5-eagle/board.c b/arch/arm/boards/arrow-axe5-eagle/board.c
index b0c4b2034a77..b197367f45e4 100644
--- a/arch/arm/boards/arrow-axe5-eagle/board.c
+++ b/arch/arm/boards/arrow-axe5-eagle/board.c
@@ -5,8 +5,31 @@
 #include <bbu.h>
 #include <mach/socfpga/soc64-regs.h>
 
+static void axe5_ethernet_phy_reset(void)
+{
+	writel(0x14, SOCFPGA_PINMUX_ADDRESS + 0x224);
+	writel(0x14, SOCFPGA_PINMUX_ADDRESS + 0x228);
+	writel(0x14, SOCFPGA_PINMUX_ADDRESS + 0x23c);
+	writel(0x14, SOCFPGA_PINMUX_ADDRESS + 0x234);
+	writel(0x14, SOCFPGA_PINMUX_ADDRESS + 0x248);
+	writel(0x14, SOCFPGA_PINMUX_ADDRESS + 0x24c);
+
+	writel(0x410, 0x10c03304);
+	writel(0x410, 0x10c03300);
+	/*
+	 * reset the phy via GPIO10. We currently haven't got enough space
+	 * to enable the gpio driver in barebox.
+	 */
+	writel(0x000, 0x10c03300);
+	/* FIXME:  can this be decreased? */
+	mdelay(1000);
+	writel(0x410, 0x10c03300);
+}
+
 static int axe5_probe(struct device *dev)
 {
+	axe5_ethernet_phy_reset();
+
 	return 0;
 }
 
diff --git a/arch/arm/boards/arrow-axe5-eagle/lowlevel.c b/arch/arm/boards/arrow-axe5-eagle/lowlevel.c
index ffa5620413f6..316ea5219d05 100644
--- a/arch/arm/boards/arrow-axe5-eagle/lowlevel.c
+++ b/arch/arm/boards/arrow-axe5-eagle/lowlevel.c
@@ -23,24 +23,6 @@ static noinline void axe5_eagle_continue(void)
 
 	pr_debug("Lowlevel init done\n");
 
-	writel(0x14, SOCFPGA_PINMUX_ADDRESS + 0x224);
-	writel(0x14, SOCFPGA_PINMUX_ADDRESS + 0x228);
-	writel(0x14, SOCFPGA_PINMUX_ADDRESS + 0x23c);
-	writel(0x14, SOCFPGA_PINMUX_ADDRESS + 0x234);
-	writel(0x14, SOCFPGA_PINMUX_ADDRESS + 0x248);
-	writel(0x14, SOCFPGA_PINMUX_ADDRESS + 0x24c);
-
-	writel(0x410, 0x10c03304);
-	writel(0x410, 0x10c03300);
-	/*
-	 * reset the phy via GPIO10. We currently haven't got enough space
-	 * to enable the gpio driver in barebox.
-	 */
-	writel(0x000, 0x10c03300);
-	/* FIXME:  can this be decreased? */
-	mdelay(1000);
-	writel(0x410, 0x10c03300);
-
 	agilex5_barebox_entry(__dtb_z_socfpga_agilex5_axe5_eagle_start);
 }
 

---
base-commit: 2cb5e0014a37160731ad6eb6d7f7d846394db362
change-id: 20260513-socfpga-axe5-phy-reset-813baf3c8d9c

Best regards,
-- 
Michael Tretter <m.tretter@pengutronix.de>



