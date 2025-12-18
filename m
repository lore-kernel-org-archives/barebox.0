Delivery-date: Thu, 18 Dec 2025 22:36:26 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWLfe-00CyUi-2b
	for lore@lore.pengutronix.de;
	Thu, 18 Dec 2025 22:36:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWLfe-0004Ed-1l
	for lore@pengutronix.de; Thu, 18 Dec 2025 22:36:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=uB6kvD3stQ/QusfMW1WFi8NQ6JPL0jIDXR4bLBVAJdQ=; b=0eqHPX3umHA3kS/T00ct2zlKR3
	CS9FyTQFD1l4zAyRWBO5HS0KM+8vNuLVa4BZerNbPuM4ZuPyJnB4JCZdhtxCka9FuQ/n/KHI34LSY
	Wto+zaGslu32f1HsSZdV+s0NBNvLtSrEjCBZFpjOr3+pEAzSIP9DVm6pOvPVz/HczXb4HLri+Sl3b
	7ua9+HkwnkikFUwVT7Ss/MhDe4LoyFwBIMtDJ+y9lgljvOWQzOw/DH0gYOOa0Qry2p5tV4ONilrGB
	KnDhg8feZDgsbbRHy7bSC0zeCkAYsI3WNIGIMa+I/oBTdVhEU20gMA8ebtNhLLaaMDXuduwlh+YXS
	0Mj1OLRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWLf7-00000009DQH-0IvR;
	Thu, 18 Dec 2025 21:35:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWLf2-00000009DOd-3dq0
	for barebox@lists.infradead.org;
	Thu, 18 Dec 2025 21:35:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWLf1-00041X-0N; Thu, 18 Dec 2025 22:35:47 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWLf0-006Ls8-2d;
	Thu, 18 Dec 2025 22:35:46 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWLf0-0000000E03K-3161;
	Thu, 18 Dec 2025 22:35:46 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 18 Dec 2025 22:33:07 +0100
Message-ID: <20251218213542.3263658-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251218_133548_918004_75664527 
X-CRM114-Status: GOOD (  11.70  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v3 1/4] Documentation: split Rockchip documentation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We have a separate rk3288.rst as well as rockchip.rst for all the rest.
Split this up into a rk3188.rst and a rk35xx.rst, so we do not mix older
32bit docs with the doc for the newer SoCs.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - new patch
---
 Documentation/boards/rk3188.rst               | 47 +++++++++++++++++
 .../boards/{rockchip.rst => rk35xx.rst}       | 52 +------------------
 2 files changed, 49 insertions(+), 50 deletions(-)
 create mode 100644 Documentation/boards/rk3188.rst
 rename Documentation/boards/{rockchip.rst => rk35xx.rst} (71%)

diff --git a/Documentation/boards/rk3188.rst b/Documentation/boards/rk3188.rst
new file mode 100644
index 000000000000..a5599c6d5f48
--- /dev/null
+++ b/Documentation/boards/rk3188.rst
@@ -0,0 +1,47 @@
+Rockchip RK3188
+===============
+
+Radxa Rock
+----------
+
+Radxa Rock is a small SBC based on Rockchip RK3188 SoC.
+See http://radxa.com/Rock for additional information.
+
+Building
+^^^^^^^^
+
+.. code-block:: sh
+
+  make ARCH=arm radxa_rock_defconfig
+  make ARCH=arm
+
+Creating bootable SD card
+^^^^^^^^^^^^^^^^^^^^^^^^^
+
+This will require a DRAM setup blob and additional utilities, see above.
+
+Card layout (block == 0x200 bytes).
+
+============   ==========================================
+Block Number   Name
+============   ==========================================
+0x0000         DOS partition table
+0x0040         RK bootinfo (BootROM check sector)
+0x0044         DRAM setup routine
+0x005C         Bootloader (barebox)
+0x0400         Barebox environment
+0x0800         Free space start
+============   ==========================================
+
+Instructions.
+
+* Make 2 partitions on SD for boot and root filesystems.
+* Checkout and compile https://github.com/apxii/rkboottools
+* Get some RK3188 bootloader from https://github.com/neo-technologies/rockchip-bootloader
+* Run "rk-splitboot RK3188Loader(L)_V2.13.bin" command. (for example).
+  You will get FlashData file with others. It's a DRAM setup blob.
+* Otherwise it can be borrowed from RK U-boot sources from
+  https://github.com/linux-rockchip/u-boot-rockchip/blob/u-boot-rk3188/tools/rk_tools/3188_LPDDR2_300MHz_DDR3_300MHz_20130830.bin
+* Run "rk-makebootable FlashData barebox-radxa-rock.bin rrboot.bin"
+* Insert SD card and run "dd if=rrboot.bin of=</dev/sdcard> bs=$((0x200)) seek=$((0x40))"
+* SD card is ready
diff --git a/Documentation/boards/rockchip.rst b/Documentation/boards/rk35xx.rst
similarity index 71%
rename from Documentation/boards/rockchip.rst
rename to Documentation/boards/rk35xx.rst
index 34b0a0e5aa1a..8776ae3f7c0f 100644
--- a/Documentation/boards/rockchip.rst
+++ b/Documentation/boards/rk35xx.rst
@@ -1,53 +1,5 @@
-Rockchip RK3188
-===============
-
-Radxa Rock
-----------
-
-Radxa Rock is a small SBC based on Rockchip RK3188 SoC.
-See http://radxa.com/Rock for additional information.
-
-Building
-^^^^^^^^
-
-.. code-block:: sh
-
-  make ARCH=arm radxa_rock_defconfig
-  make ARCH=arm
-
-Creating bootable SD card
-^^^^^^^^^^^^^^^^^^^^^^^^^
-
-This will require a DRAM setup blob and additional utilities, see above.
-
-Card layout (block == 0x200 bytes).
-
-============   ==========================================
-Block Number   Name
-============   ==========================================
-0x0000         DOS partition table
-0x0040         RK bootinfo (BootROM check sector)
-0x0044         DRAM setup routine
-0x005C         Bootloader (barebox)
-0x0400         Barebox environment
-0x0800         Free space start
-============   ==========================================
-
-Instructions.
-
-* Make 2 partitions on SD for boot and root filesystems.
-* Checkout and compile https://github.com/apxii/rkboottools
-* Get some RK3188 bootloader from https://github.com/neo-technologies/rockchip-bootloader
-* Run "rk-splitboot RK3188Loader(L)_V2.13.bin" command. (for example).
-  You will get FlashData file with others. It's a DRAM setup blob.
-* Otherwise it can be borrowed from RK U-boot sources from
-  https://github.com/linux-rockchip/u-boot-rockchip/blob/u-boot-rk3188/tools/rk_tools/3188_LPDDR2_300MHz_DDR3_300MHz_20130830.bin
-* Run "rk-makebootable FlashData barebox-radxa-rock.bin rrboot.bin"
-* Insert SD card and run "dd if=rrboot.bin of=</dev/sdcard> bs=$((0x200)) seek=$((0x40))"
-* SD card is ready
-
-Rockchip RK356x
-===============
+RK35xx Rockchip SoCs
+====================
 
 Barebox features support for the Rockchip RK3566 and RK3568 SoCs, where the
 RK3566 can be considered as reduced but largely identical version of the
-- 
2.47.3



