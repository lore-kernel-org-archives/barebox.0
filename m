Delivery-date: Thu, 15 Feb 2024 17:31:06 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1raedd-007dB7-3A
	for lore@lore.pengutronix.de;
	Thu, 15 Feb 2024 17:31:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1raedc-0005iF-3k
	for lore@pengutronix.de; Thu, 15 Feb 2024 17:31:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dcPiM71A9Rq7MZWxmY6zT13PDCZ4fSBfvjFsR6LZoNE=; b=cdn/ygWGxfp7d0/VLtGMycEXG1
	Sv+crBXl6sfVx1ZehW/j1/lBwSeelNUqgw0N7WUFt1Lka0qHPr4gM7UCqoFibVLG2E9pizM5+i6vb
	uvV5IhVRLzAtjhueHcWiQ2n6JO8RU5wR5wsNwvbxwDlYcyiOP8JrCFLQ4SYkkFjRdT0k+JGKIk8ob
	ehMGKMLQtGVrX85PNuDfwCik6TSWk4XYnbBXVpzLkM1n/w4RnMouLZ3ZhpJeVpf3+zi2FthdI0QZB
	5s3/W8rgJM4Zhh3ZF4YmQEMJlJGqnTlg7osGrKhWzHNOWITcwk+1vCJko5N1Qe+4matzom7QGAn5E
	tvhiz0NQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raed5-0000000GyUn-2i3B;
	Thu, 15 Feb 2024 16:30:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raecw-0000000GyPA-3ILY
	for barebox@lists.infradead.org;
	Thu, 15 Feb 2024 16:30:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1raecn-0005H5-J5; Thu, 15 Feb 2024 17:30:13 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1raecn-000uzR-5x; Thu, 15 Feb 2024 17:30:13 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1raecn-009YG0-0J;
	Thu, 15 Feb 2024 17:30:13 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Sam Ravnborg <sam@ravnborg.org>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 15 Feb 2024 17:29:58 +0100
Message-Id: <20240215163009.2172795-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240215163009.2172795-1-a.fatoum@pengutronix.de>
References: <20240215163009.2172795-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240215_083022_854470_0EE36EEF 
X-CRM114-Status: GOOD (  11.49  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v3 04/15] ARM: at91: use AT91 header instead of generic barebox ARM's
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Prior to the multi-arch (really multi-platform) rework, ENTRY_FUNCTION
used to be overrideable according to selected machine/SoC family. Now
that there is no single selected family, board code needs to be explicit
in choosing the SoC-appropriate ENTRY_FUNCTION. This was done for nearly
all AT91 boards in-tree, but three were missed, which is what's fixed
here.

This breakage likewise affects all out-of-tree boards, which will
misbehave after an update to a newer barebox when used as first stage.
Fixing that might be more effort though, so let's just fix what we got
in-tree.

Fixes: 4331e488f363 ("ARM: at91: Use ENTRY_FUNCTION_HEAD")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v3:
  - new patch
---
 arch/arm/boards/at91sam9263ek/lowlevel_init.c | 5 ++---
 arch/arm/boards/at91sam9x5ek/lowlevel.c       | 5 ++---
 arch/arm/boards/skov-arm9cpu/lowlevel.c       | 4 ++--
 3 files changed, 6 insertions(+), 8 deletions(-)

diff --git a/arch/arm/boards/at91sam9263ek/lowlevel_init.c b/arch/arm/boards/at91sam9263ek/lowlevel_init.c
index 3e1f471d8e5f..aea772c7431c 100644
--- a/arch/arm/boards/at91sam9263ek/lowlevel_init.c
+++ b/arch/arm/boards/at91sam9263ek/lowlevel_init.c
@@ -6,8 +6,7 @@
 
 #include <linux/sizes.h>
 
-#include <asm/barebox-arm.h>
-
+#include <mach/at91/barebox-arm.h>
 #include <mach/at91/at91sam926x_board_init.h>
 #include <mach/at91/at91sam9263_matrix.h>
 
@@ -117,7 +116,7 @@ static void __bare_init at91sam9263ek_init(void *fdt)
 
 extern char __dtb_z_at91sam9263ek_start[];
 
-ENTRY_FUNCTION(start_at91sam9263ek, r0, r1, r2)
+AT91_ENTRY_FUNCTION(start_at91sam9263ek, r0, r1, r2)
 {
 	void *fdt;
 
diff --git a/arch/arm/boards/at91sam9x5ek/lowlevel.c b/arch/arm/boards/at91sam9x5ek/lowlevel.c
index 350c99100ee7..5dbac307acfd 100644
--- a/arch/arm/boards/at91sam9x5ek/lowlevel.c
+++ b/arch/arm/boards/at91sam9x5ek/lowlevel.c
@@ -3,14 +3,13 @@
 #include <common.h>
 #include <linux/sizes.h>
 #include <mach/at91/at91_ddrsdrc.h>
-#include <asm/barebox-arm-head.h>
-#include <asm/barebox-arm.h>
+#include <mach/at91/barebox-arm.h>
 #include <io.h>
 #include <debug_ll.h>
 
 extern char __dtb_z_at91sam9x5ek_start[];
 
-ENTRY_FUNCTION(start_at91sam9x5ek, r0, r1, r2)
+AT91_ENTRY_FUNCTION(start_at91sam9x5ek, r0, r1, r2)
 {
 	void *fdt;
 
diff --git a/arch/arm/boards/skov-arm9cpu/lowlevel.c b/arch/arm/boards/skov-arm9cpu/lowlevel.c
index bde5b80e6c1c..82abfb4021a9 100644
--- a/arch/arm/boards/skov-arm9cpu/lowlevel.c
+++ b/arch/arm/boards/skov-arm9cpu/lowlevel.c
@@ -3,10 +3,10 @@
 
 #include <linux/sizes.h>
 
-#include <asm/barebox-arm.h>
 
 #include <mach/at91/at91sam926x_board_init.h>
 #include <mach/at91/at91sam9263_matrix.h>
+#include <mach/at91/barebox-arm.h>
 
 #define MASTER_PLL_MUL		171
 #define MASTER_PLL_DIV		14
@@ -114,7 +114,7 @@ static void __bare_init skov_arm9cpu_init(void *fdt)
 
 extern char __dtb_at91_skov_arm9cpu_start[];
 
-ENTRY_FUNCTION(start_skov_arm9cpu, r0, r1, r2)
+AT91_ENTRY_FUNCTION(start_skov_arm9cpu, r0, r1, r2)
 {
 	void *fdt;
 
-- 
2.39.2



