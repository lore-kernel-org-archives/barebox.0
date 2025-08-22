Delivery-date: Sat, 23 Aug 2025 08:31:41 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uphmv-003aED-2s
	for lore@lore.pengutronix.de;
	Sat, 23 Aug 2025 08:31:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uphmu-0004tz-Lq
	for lore@pengutronix.de; Sat, 23 Aug 2025 08:31:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=uBaFIAgh7PCAEWc5I7isJIgXA+wPfzpvXbxKl17rarQ=; b=LcNmA0ogl/s7STeQk2qBNBDuZ5
	ntmQ47feJbceQEK8mJGnt6RfuRxU2kOmF0oiMK6m1f3AShX7irL3bjdm7APF/UbqWre/7XljCaDzf
	Ux85JwDvhyloDi1AQtgAylEJ1V7QSZNcRiMFT5c1Uyr5wWsozL/E35CeNNIgRj9bl4O/w0cLVf2W+
	cL9qPm/AxbLXz0a7LBwE8/pq0RPWCEq7thJ+E5uBzZStc6W9g+HExtHeZZmaJTAJxP2yuqxoSWF1T
	6N1LzOxfijUSjlRqk/ngxHPFK1na2XW7pl9Vvs6KXksHDhJx9E43zK7kAmYAKCeqtxQjxyV3BdjTC
	3woWaXLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uphmN-00000003zqY-4AAl;
	Sat, 23 Aug 2025 06:31:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upSKS-00000002hn7-3uA9
	for barebox@lists.infradead.org;
	Fri, 22 Aug 2025 14:01:18 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1upSKP-0004T9-Kq; Fri, 22 Aug 2025 16:01:13 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: mfe@pengutronix.de,
	sha@pengutronix.de,
	Ahmad Fatoum <a.fatoum@barebox.org>
Date: Fri, 22 Aug 2025 16:01:11 +0200
Message-Id: <20250822140111.811702-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250822_070116_964479_36FB3823 
X-CRM114-Status: GOOD (  10.47  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] ARM: mmu: increase early page table size to 256K for now
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

With recent changes for W^X, the size of our early page tables have grown
in some cases, so they no longer fit into the 64K we reserve for them.

This has been observed in at least two ARM64 platforms:

  - i.MX8M with OP-TEE at start of RAM (on master)
  - Raspberry Pi Zero 2 without OP-TEE (on next)

It's very likely we are overly wasteful of space, but until that's fixed
properly, increase the size reserved for our early page tables.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/arm/include/asm/barebox-arm.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
index da6f5d528338..11be8b85837e 100644
--- a/arch/arm/include/asm/barebox-arm.h
+++ b/arch/arm/include/asm/barebox-arm.h
@@ -26,7 +26,7 @@
 #include <linux/stringify.h>
 #include <pbl/handoff-data.h>
 
-#define ARM_EARLY_PAGETABLE_SIZE	SZ_64K
+#define ARM_EARLY_PAGETABLE_SIZE	SZ_256K
 
 #define handoff_add_arm_machine(machine)				\
 	do {								\
-- 
2.39.5



