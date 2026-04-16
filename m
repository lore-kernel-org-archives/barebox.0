Delivery-date: Thu, 16 Apr 2026 11:49:02 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDJLK-00Cm66-1K
	for lore@lore.pengutronix.de;
	Thu, 16 Apr 2026 11:49:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDJLI-0001KR-MR
	for lore@pengutronix.de; Thu, 16 Apr 2026 11:49:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=okrbSIztIfiJqTWjg/+K4O44KQBxAuDkUEE1mxAoQd0=; b=zyS3w/6aHQpSBhwqJtkIUnVhPA
	TYv596uQwlY0uoDInkw/7cWnHGZQUW3CBmQcyX076pu2euD/qtKuOPV5ckH0KdvFq3xgX9b23+L5r
	oxZSF0rHBWFw5QptW+F2aY1dKCP5X/CU0Y9XGqobbL7PFez1L/cNhMSLfuQgDZxPeDvTWyqMCOr3h
	DtUj4KQUVDlW7HRPqider4NdniEorL3TXjfef2CxAHk0nDpBib4aHyn+3Pqn/PRzO9/diAXAEBDhN
	pVphs0CCprpuWcwmbok6u/5Hxhdst1jJ6niMn50MDSRWHAu8j5C3v6fwyK4fLCuapR3/SWCVDGJlZ
	FV6XHjuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDJKe-00000002GRT-27yA;
	Thu, 16 Apr 2026 09:48:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDJKa-00000002GO7-3WLp
	for barebox@lists.infradead.org;
	Thu, 16 Apr 2026 09:48:19 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1wDJKX-0000o5-29; Thu, 16 Apr 2026 11:48:13 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Thu, 16 Apr 2026 11:48:05 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260416-socfpga-agilex5-sdram-v1-1-07556aa7219f@pengutronix.de>
References: <20260416-socfpga-agilex5-sdram-v1-0-07556aa7219f@pengutronix.de>
In-Reply-To: <20260416-socfpga-agilex5-sdram-v1-0-07556aa7219f@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>, 
 Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260416_024816_907540_F8AED82C 
X-CRM114-Status: UNSURE (   8.02  )
X-CRM114-Notice: Please train this message.
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
Subject: [PATCH 1/9] arm: socfpga: agilex5: cleanup TF-A loading
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Use local variables for the bl31 and bl33 address to be able to change
these more easily and consistently.

Print the TF-A memory locations to the logs.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 arch/arm/mach-socfpga/atf.c | 18 ++++++++++--------
 1 file changed, 10 insertions(+), 8 deletions(-)

diff --git a/arch/arm/mach-socfpga/atf.c b/arch/arm/mach-socfpga/atf.c
index d0f57d95415e..98460472227e 100644
--- a/arch/arm/mach-socfpga/atf.c
+++ b/arch/arm/mach-socfpga/atf.c
@@ -11,23 +11,25 @@
 
 void __noreturn agilex5_load_and_start_image_via_tfa(unsigned long memsize)
 {
-	unsigned long atf_dest = AGILEX5_ATF_BL31_BASE_ADDR;
-	void __noreturn (*bl31)(void) = (void *)atf_dest;
+	void *bl31 = (void *)AGILEX5_ATF_BL31_BASE_ADDR;
+	void *bl33 = (void *)AGILEX5_ATF_BL33_BASE_ADDR;
 	struct fwobj tfa;
 
-	pr_debug("Load TFA\n");
-
-	memcpy((void *)AGILEX5_ATF_BL33_BASE_ADDR, __image_start, barebox_image_size);
+	pr_debug("copy bl33 to %p from %p (%zu bytes)\n",
+		 bl33, __image_start, barebox_image_size);
+	memcpy(bl33, __image_start, barebox_image_size);
 
 	get_builtin_firmware(agilex5_bl31_bin, &tfa);
 
+	pr_debug("copy bl31 to %p from %p (%zu bytes)\n",
+		 bl31, tfa.data, tfa.size);
 	memcpy(bl31, tfa.data, tfa.size);
 
 	asm volatile("msr sp_el2, %0" : :
-		     "r" (AGILEX5_ATF_BL33_BASE_ADDR - 16) :
+		     "r" (bl33 - 16) :
 		     "cc");
 
-	pr_debug("Jumping to @0x%08lx\n", atf_dest);
-	bl31_entry((uintptr_t)bl31, 0, AGILEX5_ATF_BL33_BASE_ADDR, 0);
+	pr_debug("Jump to bl31 0x%p\n", bl31);
+	bl31_entry((uintptr_t)bl31, 0, (uintptr_t)bl33, 0);
 	__builtin_unreachable();
 }

-- 
2.47.3



