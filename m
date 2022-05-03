Delivery-date: Tue, 03 May 2022 10:17:17 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nlnif-000OJx-At
	for lore@lore.pengutronix.de; Tue, 03 May 2022 10:17:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nlnic-00032b-Nz
	for lore@pengutronix.de; Tue, 03 May 2022 10:17:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6sfVtZM/37LTFuCB+M6YxjHNuvoQQXkoWg2/juVFSYE=; b=WHk8uHSMZwe88H
	zKRC9zLD6LCqwN0nEAcXjzZ97WCYACu4i8vXduy2lDb0RhqYuRXyCqPgXuSPzOluQGZlUoe6R3S4t
	PNiE07ngGBcbVnNK4mX9vDy1yFOqnZS2cq1WoUuT3OzfcBk1PjZVg9cejJpSrD8bStghGQY4aQUgX
	Es4BDDTqa7vwUlRYsvQTLg1sd8pTEkd30P02jrU3jUYbt0wwE+bKdVvVOB3XN+OVCE2xz3GZ8YCIR
	yNC0SCw9SFPhJBGX083nXjG5663J+AuYW/AmloGYtgyD4kS9L0SzCfKGzVNRpa4haU36+B1t0BFvD
	DeBPEcaZvnbwFXykTLNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nlngs-004Z1q-2f; Tue, 03 May 2022 08:15:26 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nlngm-004Z0S-HG
 for barebox@lists.infradead.org; Tue, 03 May 2022 08:15:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nlngi-0002gD-I3; Tue, 03 May 2022 10:15:16 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1nlngj-0004lF-6h; Tue, 03 May 2022 10:15:15 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1nlngh-00Gudh-1E; Tue, 03 May 2022 10:15:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  3 May 2022 10:15:14 +0200
Message-Id: <20220503081514.4030925-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220503_011520_931293_AB012F63 
X-CRM114-Status: GOOD (  11.53  )
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
Cc: =?UTF-8?q?J=C3=BCrgen=20Borleis?= <jbe@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] ARM: karo-tx6x: Fix DCD check operations
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

In f04deb4018 was discovered that we used the wrong names for the check
operations. What we named "while_all_bits_clear" really was the
operation "until_all_bits_clear" and likewise for the other operations,
so this patch renamed the operations from "while_*" to "until_*".
Additionally it was assumed that the users have the correct textual
logic, but were compiled to the wrong result. At least for the Karo TX6X
boards it was the other way round though: The texts were wrong, but the
result was correct. This means, although they had the wrong text, the
result was working on the hardware. Now f04deb4018 replaced
"while_all_bits_clear" with "until_all_bits_set" and with this broke
the DCD tables. Fix this by replacing them with the correct commands.

Fixes: f04deb4018 ("i.MX/DCD compiler and interpreter: logic is different")
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 .../boards/karo-tx6x/1600mhz_4x128mx16.imxcfg | 24 +++++++++----------
 .../karo-tx6x/flash-header-tx6dl-512m.imxcfg  | 11 ++++-----
 .../karo-tx6x/flash-header-tx6q-1g.imxcfg     | 18 +++++++-------
 .../karo-tx6x/flash-header-tx6qp-2g.imxcfg    | 18 +++++++-------
 4 files changed, 35 insertions(+), 36 deletions(-)

diff --git a/arch/arm/boards/karo-tx6x/1600mhz_4x128mx16.imxcfg b/arch/arm/boards/karo-tx6x/1600mhz_4x128mx16.imxcfg
index f11387b023..bd869ec29e 100644
--- a/arch/arm/boards/karo-tx6x/1600mhz_4x128mx16.imxcfg
+++ b/arch/arm/boards/karo-tx6x/1600mhz_4x128mx16.imxcfg
@@ -2,13 +2,13 @@
 
 /* MDMISC	mirroring	interleaved (row/bank/col) */
 wm 32 MX6_MMDC_P0_MDMISC		0x00000742
-check 32 until_all_bits_set MX6_MMDC_P0_MDMISC 0x00000002
+check 32 until_all_bits_clear MX6_MMDC_P0_MDMISC 0x00000002
 
 wm 32 MX6_MMDC_P0_MDSCR			0x00008000
-check 32 until_any_bit_set MX6_MMDC_P0_MDSCR 0x00004000
+check 32 until_any_bit_clear MX6_MMDC_P0_MDSCR 0x00004000
 
 wm 32 MX6_MMDC_P0_MDCTL			0x831a0000
-check 32 until_any_bit_set MX6_MMDC_P0_MDMISC 0x40000000
+check 32 until_any_bit_clear MX6_MMDC_P0_MDMISC 0x40000000
 
 wm 32 MX6_MMDC_P0_MDCFG0		0x3f435333
 wm 32 MX6_MMDC_P0_MDCFG1		0x926e8a63
@@ -36,7 +36,7 @@ wm 32 MX6_MMDC_P0_MDSCR			0x04008010
 wm 32 MX6_MMDC_P0_MDSCR			0x04008040
 
 wm 32 MX6_MMDC_P0_MPZQHWCTRL		0xA1390001
-check 32 until_all_bits_set MX6_MMDC_P0_MPZQHWCTRL 0x00010000
+check 32 until_all_bits_clear MX6_MMDC_P0_MPZQHWCTRL 0x00010000
 wm 32 MX6_MMDC_P0_MPZQHWCTRL		0xA1380000
 
 wm 32 MX6_MMDC_P0_MPWLDECTRL0	0x001e001e
@@ -64,11 +64,11 @@ wm 32 MX6_MMDC_P1_MPWRDLCTL		0x40404040
 wm 32 MX6_MMDC_P0_MPMUR0		0x00000800
 
 wm 32 MX6_MMDC_P0_MPDGCTRL0		0x80000000
-check 32 until_all_bits_set MX6_MMDC_P0_MPDGCTRL0 0x80000000
+check 32 until_all_bits_clear MX6_MMDC_P0_MPDGCTRL0 0x80000000
 wm 32 MX6_MMDC_P0_MPDGCTRL0		0x80000000
-check 32 until_all_bits_set MX6_MMDC_P0_MPDGCTRL0 0x80000000
+check 32 until_all_bits_clear MX6_MMDC_P0_MPDGCTRL0 0x80000000
 wm 32 MX6_MMDC_P0_MPDGCTRL0		0x50800000
-check 32 until_all_bits_set MX6_MMDC_P0_MPDGCTRL0 0x10001000
+check 32 until_all_bits_clear MX6_MMDC_P0_MPDGCTRL0 0x10001000
 
 wm 32 MX6_IOM_DRAM_SDQS0		0x00000030
 wm 32 MX6_IOM_DRAM_SDQS1		0x00000030
@@ -83,16 +83,16 @@ wm 32 MX6_MMDC_P0_MDSCR			0x04008050
 wm 32 MX6_MMDC_P0_MPRDDLHWCTL		0x00000030
 wm 32 MX6_MMDC_P1_MPRDDLHWCTL		0x00000030
 
-check 32 until_all_bits_set MX6_MMDC_P0_MPRDDLHWCTL 0x0000001f
-check 32 until_all_bits_set MX6_MMDC_P1_MPRDDLHWCTL 0x0000001f
+check 32 until_all_bits_clear MX6_MMDC_P0_MPRDDLHWCTL 0x0000001f
+check 32 until_all_bits_clear MX6_MMDC_P1_MPRDDLHWCTL 0x0000001f
 
 wm 32 MX6_MMDC_P0_MDSCR			0x04008050
 wm 32 MX6_MMDC_P0_MPWRDLHWCTL		0x00000030
-check 32 until_all_bits_set MX6_MMDC_P0_MPWRDLHWCTL 0x0000001f
+check 32 until_all_bits_clear MX6_MMDC_P0_MPWRDLHWCTL 0x0000001f
 
 wm 32 MX6_MMDC_P0_MDSCR			0x04008050
 wm 32 MX6_MMDC_P1_MPWRDLHWCTL		0x00000030
-check 32 until_all_bits_set MX6_MMDC_P1_MPWRDLHWCTL 0x0000001f
+check 32 until_all_bits_clear MX6_MMDC_P1_MPWRDLHWCTL 0x0000001f
 wm 32 MX6_MMDC_P0_MDSCR			0x00008033
 wm 32 MX6_MMDC_P0_MPZQHWCTRL		0xa138002b
 wm 32 MX6_MMDC_P0_MDREF			0x00001800
@@ -100,4 +100,4 @@ wm 32 MX6_MMDC_P0_MAPSR			0x00001006
 wm 32 MX6_MMDC_P0_MDPDC			0x0002556d
 wm 32 MX6_MMDC_P1_MDPDC			0x0002556d
 wm 32 MX6_MMDC_P0_MDSCR			0x00000000
-check 32 until_all_bits_set MX6_MMDC_P0_MDSCR 0x00004000
+check 32 until_all_bits_clear MX6_MMDC_P0_MDSCR 0x00004000
diff --git a/arch/arm/boards/karo-tx6x/flash-header-tx6dl-512m.imxcfg b/arch/arm/boards/karo-tx6x/flash-header-tx6dl-512m.imxcfg
index c327b5f0c1..51f600d490 100644
--- a/arch/arm/boards/karo-tx6x/flash-header-tx6dl-512m.imxcfg
+++ b/arch/arm/boards/karo-tx6x/flash-header-tx6dl-512m.imxcfg
@@ -94,11 +94,10 @@ wm 32 MX6_MMDC_P0_MPRDDQBY2DL 0x33333333
 wm 32 MX6_MMDC_P0_MPRDDQBY3DL 0x33333333
 wm 32 MX6_MMDC_P0_MPMUR0 0x00000800
 wm 32 MX6_MMDC_P0_MDMISC 0x00000742
-check 32 until_all_bits_set MX6_MMDC_P0_MDMISC 0x00000002
+check 32 until_all_bits_clear MX6_MMDC_P0_MDMISC 0x00000002
 wm 32 MX6_MMDC_P0_MDSCR 0x00008000
 check 32 until_any_bit_set MX6_MMDC_P0_MDSCR 0x00004000
 wm 32 MX6_MMDC_P0_MDCTL 0x83190000
-check 32 until_any_bit_set MX6_MMDC_P0_MDMISC 0x40000000
 wm 32 MX6_MMDC_P0_MDCFG0 0x3f435333
 wm 32 MX6_MMDC_P0_MDCFG1 0xb66e8a63
 wm 32 MX6_MMDC_P0_MDCFG2 0x01ff00db
@@ -119,7 +118,7 @@ wm 32 MX6_MMDC_P0_MAPSR 0x00000001
 wm 32 MX6_MMDC_P0_MDSCR 0x04008010
 wm 32 MX6_MMDC_P0_MDSCR 0x04008040
 wm 32 MX6_MMDC_P0_MPZQHWCTRL 0xa1390001
-check 32 until_all_bits_set MX6_MMDC_P0_MPZQHWCTRL 0x00010000
+check 32 until_all_bits_clear MX6_MMDC_P0_MPZQHWCTRL 0x00010000
 wm 32 MX6_MMDC_P0_MPZQHWCTRL 0xa1380000
 wm 32 MX6_MMDC_P0_MDSCR 0x00048033
 wm 32 MX6_IOM_DRAM_SDQS0 0x00000030
@@ -128,14 +127,14 @@ wm 32 MX6_IOM_DRAM_SDQS2 0x00000030
 wm 32 MX6_IOM_DRAM_SDQS3 0x00000030
 wm 32 MX6_MMDC_P0_MDSCR 0x04008050
 wm 32 MX6_MMDC_P0_MPRDDLHWCTL 0x00000030
-check 32 until_all_bits_set MX6_MMDC_P0_MPRDDLHWCTL 0x0000001f
+check 32 until_all_bits_clear MX6_MMDC_P0_MPRDDLHWCTL 0x0000001f
 wm 32 MX6_MMDC_P0_MDSCR 0x04008050
 wm 32 MX6_MMDC_P0_MPWRDLHWCTL 0x00000030
-check 32 until_all_bits_set MX6_MMDC_P0_MPWRDLHWCTL 0x0000001f
+check 32 until_all_bits_clear MX6_MMDC_P0_MPWRDLHWCTL 0x0000001f
 wm 32 MX6_MMDC_P0_MDSCR 0x00008033
 wm 32 MX6_MMDC_P0_MPZQHWCTRL 0xa138002b
 wm 32 MX6_MMDC_P0_MDREF 0x00001800
 wm 32 MX6_MMDC_P0_MAPSR 0x00001000
 wm 32 MX6_MMDC_P0_MDPDC 0x0002556d
 wm 32 MX6_MMDC_P0_MDSCR 0x00000000
-check 32 until_all_bits_set MX6_MMDC_P0_MDSCR 0x00004000
+check 32 until_all_bits_clear MX6_MMDC_P0_MDSCR 0x00004000
diff --git a/arch/arm/boards/karo-tx6x/flash-header-tx6q-1g.imxcfg b/arch/arm/boards/karo-tx6x/flash-header-tx6q-1g.imxcfg
index 9c8196d4da..697ce45480 100644
--- a/arch/arm/boards/karo-tx6x/flash-header-tx6q-1g.imxcfg
+++ b/arch/arm/boards/karo-tx6x/flash-header-tx6q-1g.imxcfg
@@ -121,11 +121,11 @@ wm 32 MX6_MMDC_P1_MPRDDQBY3DL 0x33333333
 wm 32 MX6_MMDC_P0_MPMUR0 0x00000800
 wm 32 MX6_MMDC_P1_MPMUR0 0x00000800
 wm 32 MX6_MMDC_P0_MDMISC 0x00000742
-check 32 until_all_bits_set MX6_MMDC_P0_MDMISC 0x00000002
+check 32 until_all_bits_clear MX6_MMDC_P0_MDMISC 0x00000002
 wm 32 MX6_MMDC_P0_MDSCR 0x00008000
-check 32 until_any_bit_set MX6_MMDC_P0_MDSCR 0x00004000
+check 32 until_any_bit_clear MX6_MMDC_P0_MDSCR 0x00004000
 wm 32 MX6_MMDC_P0_MDCTL 0x831a0000
-check 32 until_any_bit_set MX6_MMDC_P0_MDMISC 0x40000000
+check 32 until_any_bit_clear MX6_MMDC_P0_MDMISC 0x40000000
 wm 32 MX6_MMDC_P0_MDCFG0 0x545a79a4
 wm 32 MX6_MMDC_P0_MDCFG1 0xff538e64
 wm 32 MX6_MMDC_P0_MDCFG2 0x01ff00dd
@@ -147,7 +147,7 @@ wm 32 MX6_MMDC_P0_MAPSR 0x00000001
 wm 32 MX6_MMDC_P0_MDSCR 0x04008010
 wm 32 MX6_MMDC_P0_MDSCR 0x04008040
 wm 32 MX6_MMDC_P0_MPZQHWCTRL 0xa1390001
-check 32 until_all_bits_set MX6_MMDC_P0_MPZQHWCTRL 0x00010000
+check 32 until_all_bits_clear MX6_MMDC_P0_MPZQHWCTRL 0x00010000
 wm 32 MX6_MMDC_P0_MPZQHWCTRL 0xa1380000
 wm 32 MX6_MMDC_P0_MDSCR 0x00048033
 wm 32 MX6_IOM_DRAM_SDQS0 0x00000030
@@ -161,19 +161,19 @@ wm 32 MX6_IOM_DRAM_SDQS7 0x00000030
 wm 32 MX6_MMDC_P0_MDSCR 0x04008050
 wm 32 MX6_MMDC_P0_MPRDDLHWCTL 0x00000030
 wm 32 MX6_MMDC_P1_MPRDDLHWCTL 0x00000030
-check 32 until_all_bits_set MX6_MMDC_P0_MPRDDLHWCTL 0x0000001f
-check 32 until_all_bits_set MX6_MMDC_P1_MPRDDLHWCTL 0x0000001f
+check 32 until_all_bits_clear MX6_MMDC_P0_MPRDDLHWCTL 0x0000001f
+check 32 until_all_bits_clear MX6_MMDC_P1_MPRDDLHWCTL 0x0000001f
 wm 32 MX6_MMDC_P0_MDSCR 0x04008050
 wm 32 MX6_MMDC_P0_MPWRDLHWCTL 0x00000030
-check 32 until_all_bits_set MX6_MMDC_P0_MPWRDLHWCTL 0x0000001f
+check 32 until_all_bits_clear MX6_MMDC_P0_MPWRDLHWCTL 0x0000001f
 wm 32 MX6_MMDC_P0_MDSCR 0x04008050
 wm 32 MX6_MMDC_P1_MPWRDLHWCTL 0x00000030
-check 32 until_all_bits_set MX6_MMDC_P1_MPWRDLHWCTL 0x0000001f
+check 32 until_all_bits_clear MX6_MMDC_P1_MPWRDLHWCTL 0x0000001f
 wm 32 MX6_MMDC_P0_MDSCR 0x00008033
 wm 32 MX6_MMDC_P0_MPZQHWCTRL 0xa138002b
 wm 32 MX6_MMDC_P0_MDREF 0x00001800
 wm 32 MX6_MMDC_P0_MAPSR 0x00001000
 wm 32 MX6_MMDC_P0_MDPDC 0x00025576
 wm 32 MX6_MMDC_P0_MDSCR 0x00000000
-check 32 until_all_bits_set MX6_MMDC_P0_MDSCR 0x00004000
+check 32 until_all_bits_clear MX6_MMDC_P0_MDSCR 0x00004000
 
diff --git a/arch/arm/boards/karo-tx6x/flash-header-tx6qp-2g.imxcfg b/arch/arm/boards/karo-tx6x/flash-header-tx6qp-2g.imxcfg
index c242193a62..8756e8dfb5 100644
--- a/arch/arm/boards/karo-tx6x/flash-header-tx6qp-2g.imxcfg
+++ b/arch/arm/boards/karo-tx6x/flash-header-tx6qp-2g.imxcfg
@@ -130,11 +130,11 @@ wm 32 MX6_MMDC_P1_MPRDDQBY3DL 0x33333333
 wm 32 MX6_MMDC_P0_MPMUR0 0x00000800
 wm 32 MX6_MMDC_P1_MPMUR0 0x00000800
 wm 32 MX6_MMDC_P0_MDMISC 0x00000742
-check 32 until_all_bits_set MX6_MMDC_P0_MDMISC 0x00000002
+check 32 until_all_bits_clear MX6_MMDC_P0_MDMISC 0x00000002
 wm 32 MX6_MMDC_P0_MDSCR 0x00008000
-check 32 until_any_bit_set MX6_MMDC_P0_MDSCR 0x00004000
+check 32 until_any_bit_clear MX6_MMDC_P0_MDSCR 0x00004000
 wm 32 MX6_MMDC_P0_MDCTL 0x841a0000
-check 32 until_any_bit_set MX6_MMDC_P0_MDMISC 0x40000000
+check 32 until_any_bit_clear MX6_MMDC_P0_MDMISC 0x40000000
 wm 32 MX6_MMDC_P0_MDCFG0 0x898f78f4
 wm 32 MX6_MMDC_P0_MDCFG1 0xff328e64
 wm 32 MX6_MMDC_P0_MDCFG2 0x01ff00db
@@ -157,7 +157,7 @@ wm 32 MX6_MMDC_P0_MAPSR 0x00000001
 wm 32 MX6_MMDC_P0_MDSCR 0x04008010
 wm 32 MX6_MMDC_P0_MDSCR 0x04008040
 wm 32 MX6_MMDC_P0_MPZQHWCTRL 0xa1390001
-check 32 until_all_bits_set MX6_MMDC_P0_MPZQHWCTRL 0x00010000
+check 32 until_all_bits_clear MX6_MMDC_P0_MPZQHWCTRL 0x00010000
 wm 32 MX6_MMDC_P0_MPZQHWCTRL 0xa1380000
 wm 32 MX6_MMDC_P0_MDSCR 0x00048033
 wm 32 MX6_IOM_DRAM_SDQS0 0x00000030
@@ -171,18 +171,18 @@ wm 32 MX6_IOM_DRAM_SDQS7 0x00000030
 wm 32 MX6_MMDC_P0_MDSCR 0x04008050
 wm 32 MX6_MMDC_P0_MPRDDLHWCTL 0x00000030
 wm 32 MX6_MMDC_P1_MPRDDLHWCTL 0x00000030
-check 32 until_all_bits_set MX6_MMDC_P0_MPRDDLHWCTL 0x0000001f
-check 32 until_all_bits_set MX6_MMDC_P1_MPRDDLHWCTL 0x0000001f
+check 32 until_all_bits_clear MX6_MMDC_P0_MPRDDLHWCTL 0x0000001f
+check 32 until_all_bits_clear MX6_MMDC_P1_MPRDDLHWCTL 0x0000001f
 wm 32 MX6_MMDC_P0_MDSCR 0x04008050
 wm 32 MX6_MMDC_P0_MPWRDLHWCTL 0x00000030
-check 32 until_all_bits_set MX6_MMDC_P0_MPWRDLHWCTL 0x0000001f
+check 32 until_all_bits_clear MX6_MMDC_P0_MPWRDLHWCTL 0x0000001f
 wm 32 MX6_MMDC_P0_MDSCR 0x04008050
 wm 32 MX6_MMDC_P1_MPWRDLHWCTL 0x00000030
-check 32 until_all_bits_set MX6_MMDC_P1_MPWRDLHWCTL 0x0000001f
+check 32 until_all_bits_clear MX6_MMDC_P1_MPWRDLHWCTL 0x0000001f
 wm 32 MX6_MMDC_P0_MDSCR 0x00008033
 wm 32 MX6_MMDC_P0_MPZQHWCTRL 0xa138002b
 wm 32 MX6_MMDC_P0_MDREF 0x00001800
 wm 32 MX6_MMDC_P0_MAPSR 0x00001000
 wm 32 MX6_MMDC_P0_MDPDC 0x00025576
 wm 32 MX6_MMDC_P0_MDSCR 0x00000000
-check 32 until_all_bits_set MX6_MMDC_P0_MDSCR 0x00004000
+check 32 until_all_bits_clear MX6_MMDC_P0_MDSCR 0x00004000
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

