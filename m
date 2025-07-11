Delivery-date: Fri, 11 Jul 2025 09:53:38 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ua8Ze-00GKCw-1w
	for lore@lore.pengutronix.de;
	Fri, 11 Jul 2025 09:53:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ua8Zd-000309-HS
	for lore@pengutronix.de; Fri, 11 Jul 2025 09:53:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rTndI6DJcRrWKbSxTvDp1HpiwZNXJtTWOhkuo1ADCP4=; b=plm5qcPdQKvakwBYUCc4puLaGu
	98aCZ3fVahXYvmsc4bZQJIlibZObHCV9FpvQRo/Ub5RSkwVavW6D6IOdLt3sQSqy0tTu3tYiS0/QP
	JllOLM028hpdkL5z6pDcfFFz8qOQMRBimn8o+LxLZ/dVZ1/h6T2DmBa/3wi23CGFrJazz/rK3YGCj
	S7Lbqel0oYpOs9f9eMX0xq2RRGTbJcy6HUfHhAiJmE9LK4WygEvcZEqygIwuGgdCDni/u9P3CqNLz
	e6w4Qq76Mlo1hiO57/KQ4XOK6u0+ybIycLUF1xmlWUqNJUgwaXuwvq9PzcOBV1HlRFrQWk5/Rkru2
	uUUQGjmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ua8Z2-0000000E2RP-3Gb1;
	Fri, 11 Jul 2025 07:53:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ua8Et-0000000DzDw-2gB1
	for barebox@lists.infradead.org;
	Fri, 11 Jul 2025 07:32:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ua8Es-0006Al-DA; Fri, 11 Jul 2025 09:32:10 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ua8Es-007skk-0i;
	Fri, 11 Jul 2025 09:32:10 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ua8Er-00GXtT-1w;
	Fri, 11 Jul 2025 09:32:10 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 11 Jul 2025 09:32:05 +0200
Message-Id: <20250711073208.3926688-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250711073208.3926688-1-a.fatoum@pengutronix.de>
References: <20250711073208.3926688-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250711_003211_864692_BA95C923 
X-CRM114-Status: GOOD (  24.51  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 1/4] Documentation: devel: porting: split out architecture intro
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

In preparation for adding a debugging chapter, move the parts in the
porting guide that are equally applicable to debugging to its separate
file, so they can be referenced easily.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - no change
---
 Documentation/devel/architecture.rst | 78 ++++++++++++++++++++++++++
 Documentation/devel/porting.rst      | 83 +++-------------------------
 2 files changed, 85 insertions(+), 76 deletions(-)
 create mode 100644 Documentation/devel/architecture.rst

diff --git a/Documentation/devel/architecture.rst b/Documentation/devel/architecture.rst
new file mode 100644
index 000000000000..83556095098a
--- /dev/null
+++ b/Documentation/devel/architecture.rst
@@ -0,0 +1,78 @@
+.. _architecture:
+
+####################
+barebox architecture
+####################
+
+The usual barebox binary consists of two parts. A prebootloader doing
+the bare minimum initialization and then the proper barebox binary.
+
+barebox proper
+==============
+
+This is the main part of barebox and, like a multi-platform Linux kernel,
+is platform-agnostic: The program starts, registers its drivers and tries
+to match the drivers with the devices it discovers at runtime.
+It initializes file systems and common management facilities and finally
+starts an init process. barebox knows no privilege separation and the
+init process is built into barebox.
+The default init is the :ref:`Hush`, but can be overridden if required.
+
+For such a platform-agnostic program to work, it must receive external
+input about what kind of devices are available: For example, is there a
+timer? At what address and how often does it tick? For most barebox
+architectures this hardware description is provided in the form
+of a flattened device tree (FDT). As part of barebox' initialization
+procedure, it unflattens (parses) the device tree and starts probing
+(matching) the devices described within with the drivers that are being
+registered.
+
+The device tree can also describe the RAM available in the system. As
+walking the device tree itself consumes RAM, barebox proper needs to
+be passed information about an initial memory region for use as stack
+and for dynamic allocations. When barebox has probed the memory banks,
+the whole memory will become available.
+
+As result of this design, the same barebox proper binary can be reused for
+many different boards. Unlike Linux, which can expect a bootloader to pass
+it the device tree, barebox *is* the bootloader. For this reason, barebox
+proper is prefixed with what is called a prebootloader (PBL). The PBL
+handles the low-level details that need to happen before invoking barebox
+proper.
+
+Prebootloader (PBL)
+===================
+
+The :ref:`prebootloader <pbl>` is a small chunk of code whose objective is
+to prepare the environment for barebox proper to execute. This means:
+
+ - Setting up a stack
+ - Determining a memory region for initial allocations
+ - Provide the device tree
+ - Jump to barebox proper
+
+The prebootloader often runs from a constrained medium like a small
+(tens of KiB) on-chip SRAM or sometimes even directly from flash.
+
+If the size constraints allow, the PBL will contain the barebox proper
+binary in compressed form. After ensuring any external DRAM can be
+addressed, it will unpack barebox proper there and call it with the
+necessary arguments: an initial memory region and the FDT.
+
+If this is not feasible, the PBL will contain drivers to chain load
+barebox proper from the storage medium. As this is usually the same
+storage medium the PBL itself was loaded from, shortcuts can often
+be taken: e.g. a SD-Card could already be in the correct mode, so the
+PBL driver can just read the blocks without having to reinitialize
+the SD-card.
+
+barebox images
+==============
+
+In a typical build, the barebox build process generates multiple images
+(:ref:`multi_image`).  All enabled PBLs are each linked with the same
+barebox proper binary and then the resulting images are processed to be
+in the format expected by the loader.
+
+The loader is often a BootROM, but maybe another first stage bootloader
+or a hardware debugger.
diff --git a/Documentation/devel/porting.rst b/Documentation/devel/porting.rst
index 9dab2a301f2a..88847f42a8f7 100644
--- a/Documentation/devel/porting.rst
+++ b/Documentation/devel/porting.rst
@@ -15,83 +15,14 @@ about porting barebox to new hardware.
 Introduction
 ************
 
-Your usual barebox binary consists of two parts. A prebootloader doing
-the bare minimum initialization and then the proper barebox binary.
+Before starting your barebox port, you'll want to familiarize yourself with
+key concepts of the :ref:`barebox architecture <architecture>`  namely the
+prebootloader, barebox proper and the multi-image support.
 
-barebox proper
-==============
-
-This is the main part of barebox and, like a multi-platform Linux kernel,
-is platform-agnostic: The program starts, registers its drivers and tries
-to match the drivers with the devices it discovers at runtime.
-It initializes file systems and common management facilities and finally
-starts an init process. barebox knows no privilege separation and the
-init process is built into barebox.
-The default init is the :ref:`Hush`, but can be overridden if required.
-
-For such a platform-agnostic program to work, it must receive external
-input about what kind of devices are available: For example, is there a
-timer? At what address and how often does it tick? For most barebox
-architectures this hardware description is provided in the form
-of a flattened device tree (FDT). As part of barebox' initialization
-procedure, it unflattens (parses) the device tree and starts probing
-(matching) the devices described within with the drivers that are being
-registered.
-
-The device tree can also describe the RAM available in the system. As
-walking the device tree itself consumes RAM, barebox proper needs to
-be passed information about an initial memory region for use as stack
-and for dynamic allocations. When barebox has probed the memory banks,
-the whole memory will become available.
-
-As result of this design, the same barebox proper binary can be reused for
-many different boards. Unlike Linux, which can expect a bootloader to pass
-it the device tree, barebox *is* the bootloader. For this reason, barebox
-proper is prefixed with what is called a prebootloader (PBL). The PBL
-handles the low-level details that need to happen before invoking barebox
-proper.
-
-Prebootloader (PBL)
-===================
-
-The :ref:`prebootloader <pbl>` is a small chunk of code whose objective is
-to prepare the environment for barebox proper to execute. This means:
-
- - Setting up a stack
- - Determining a memory region for initial allocations
- - Provide the device tree
- - Jump to barebox proper
-
-The prebootloader often runs from a constrained medium like a small
-(tens of KiB) on-chip SRAM or sometimes even directly from flash.
-
-If the size constraints allow, the PBL will contain the barebox proper
-binary in compressed form. After ensuring any external DRAM can be
-addressed, it will unpack barebox proper there and call it with the
-necessary arguments: an initial memory region and the FDT.
-
-If this is not feasible, the PBL will contain drivers to chain load
-barebox proper from the storage medium. As this is usually the same
-storage medium the PBL itself was loaded from, shortcuts can often
-be taken: e.g. a SD-Card could already be in the correct mode, so the
-PBL driver can just read the blocks without having to reinitialize
-the SD-card.
-
-barebox images
-==============
-
-In a typical build, the barebox build process generates multiple images
-(:ref:`multi_image`).  All enabled PBLs are each linked with the same
-barebox proper binary and then the resulting images are processed to be
-in the format expected by the loader.
-
-The loader is often a BootROM, but maybe another first stage bootloader
-or a hardware debugger.
-
-Let us now put these new concepts into practice. We will start by adding
-a new board for a platform, for which similar boards already exist.
-Then we'll look at adding a new SoC, then a new SoC family and finally
-a new architecture.
+Once you've read through, let us now put these new concepts into practice.
+We will start by adding a new board for a platform, for which similar boards
+already exist.  Then we'll look at adding a new SoC, then a new SoC family
+and finally a new architecture.
 
 **********************
 Porting to a new board
-- 
2.39.5



