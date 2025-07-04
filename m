Delivery-date: Fri, 04 Jul 2025 16:48:32 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uXhiK-00E1NP-0m
	for lore@lore.pengutronix.de;
	Fri, 04 Jul 2025 16:48:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uXhiJ-0006xd-72
	for lore@pengutronix.de; Fri, 04 Jul 2025 16:48:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EYh7gAVHYhV7QyKJvfhHxt3s9CmaEZSBJ68N/fjz8w8=; b=fowiGPjf/mHXHt
	7LX893fkCJD1UyUDVPogvHWjoqIq+4fmJbLUiheV4fvDlsd6+mBcVOMqhHc5kPkk31yH+WalMklWI
	dWwe7GhreS2IJ2Y3kh1CcGmfX2+PrTO6d/xbC3+53J52SytwRD3Bci//65Ul8hZt0c7wc/rLKoTej
	T+uOEP25iqee8Ux4cimwLVZ2lxapb17ZArPFLbqluyS/eRSGBMWdG7DXqgK8uY+QyGEciIJQjQAlT
	9j+H3GQ/i9ZmcCkM1z3v/vQI2LRkZINYrzgUgCaOFz0w8En23w9FLJ71oKZRIUWkV4+x+/ux0GV9E
	w/8Jln4aA4x+XPaPeHLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uXhhc-0000000Ei6i-3I4x;
	Fri, 04 Jul 2025 14:47:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uXhYF-0000000Egqr-2A63
	for barebox@lists.infradead.org;
	Fri, 04 Jul 2025 14:38:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uXhYE-0003Gy-6h; Fri, 04 Jul 2025 16:38:06 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uXhYC-006mUd-2z;
	Fri, 04 Jul 2025 16:38:04 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uXhYC-00BWbQ-10;
	Fri, 04 Jul 2025 16:38:04 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri,  4 Jul 2025 16:38:01 +0200
Message-Id: <20250704143803.2740813-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250704143803.2740813-1-a.fatoum@pengutronix.de>
References: <20250704143803.2740813-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250704_073807_713775_502C38D6 
X-CRM114-Status: GOOD (  24.10  )
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
Cc: David Picard <david.picard@clermont.in2p3.fr>, Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] Documentation: devel: porting: split out architecture intro
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

In preparation for adding a debugging chapter, move the parts in the
porting guide that are equally applicable to debugging to its separate
file, so they can be referenced easily.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
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



