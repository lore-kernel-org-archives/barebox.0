Delivery-date: Fri, 04 Jul 2025 16:48:31 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uXhiJ-00E1N3-0k
	for lore@lore.pengutronix.de;
	Fri, 04 Jul 2025 16:48:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uXhiI-0006sK-42
	for lore@pengutronix.de; Fri, 04 Jul 2025 16:48:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CfUiz68h40j60mbauYOedMlm9u+wbcGeYHG4lWo+ls0=; b=yaArrkBDV1LDG3
	18MvFMei+Xnox1nEzDpDMFhlmwxdGQS8ZUm7hdiBVZYpTwDae0QsM1LgoFDgKjArJ17C29KZkA7te
	VJeu+oHcMeb513LOWWoMS70BabRVZh+c/eckqJs8vXv4UIzx+Vl2LU9ZA0rnafzTlvv/2kKFjKO2P
	lNAYUq6pXVVh57zeooVyAa5sJr9iQCqWhNecneIbhyPCZcgomPA4IRf0IzaCmb8cKzCU2CMSoDBNR
	c7P3fJlkhgk23ZxmX5WzT5fCzVjIsYNi6tIE168yUaRCEGyr1rrmtFFA1KcRTr8wClxXMkF6KrL13
	IF3ktqqhskkdD3nu1epA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uXhhd-0000000Ei7u-4Bxk;
	Fri, 04 Jul 2025 14:47:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uXhYV-0000000Egw8-1zFL
	for barebox@lists.infradead.org;
	Fri, 04 Jul 2025 14:38:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uXhYE-0003Hk-6h; Fri, 04 Jul 2025 16:38:06 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uXhYC-006mUg-3A;
	Fri, 04 Jul 2025 16:38:04 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uXhYC-00BWbQ-1A;
	Fri, 04 Jul 2025 16:38:04 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri,  4 Jul 2025 16:38:02 +0200
Message-Id: <20250704143803.2740813-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250704143803.2740813-1-a.fatoum@pengutronix.de>
References: <20250704143803.2740813-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250704_073823_677151_AD1BE867 
X-CRM114-Status: GOOD (  28.99  )
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
Subject: [PATCH 2/3] Documentation: devel: architecture: detail first/second stage handling
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

barebox is at mercy of the BootROM in relation to how its first/second
stages need to be structured. In the optimal case, the user need not
about it, but when issues arises, it becomes very important to know
_where_ the issue occurs.

Let's add some general background information about that.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/devel/architecture.rst | 136 +++++++++++++++++++++++++--
 1 file changed, 129 insertions(+), 7 deletions(-)

diff --git a/Documentation/devel/architecture.rst b/Documentation/devel/architecture.rst
index 83556095098a..b557ec830dc7 100644
--- a/Documentation/devel/architecture.rst
+++ b/Documentation/devel/architecture.rst
@@ -60,19 +60,141 @@ addressed, it will unpack barebox proper there and call it with the
 necessary arguments: an initial memory region and the FDT.
 
 If this is not feasible, the PBL will contain drivers to chain load
-barebox proper from the storage medium. As this is usually the same
-storage medium the PBL itself was loaded from, shortcuts can often
-be taken: e.g. a SD-Card could already be in the correct mode, so the
-PBL driver can just read the blocks without having to reinitialize
-the SD-card.
+barebox proper from the storage medium, usually the same
+storage medium the PBL itself was loaded from.
 
 barebox images
 ==============
 
 In a typical build, the barebox build process generates multiple images
-(:ref:`multi_image`).  All enabled PBLs are each linked with the same
-barebox proper binary and then the resulting images are processed to be
+(:ref:`multi_image`).  Normally, all enabled PBLs are each linked with the
+same barebox proper binary and then the resulting images are processed to be
 in the format expected by the loader.
 
 The loader is often a BootROM, but maybe another first stage bootloader
 or a hardware debugger.
+
+Ideally, a single image is all that's needed to boot into barebox.
+Depending on BootROM, this may not be possible, because the BootROM hardcodes
+assumptions about the image that it loads. This is often the case with
+BootROMs that boot from a file system (often FAT): They expect a ``BOOT.BIN``
+file, ``MLO`` or similarly named file that does not exceed a fixed file size,
+because that file needs to be loaded into the small on-chip SRAM available on
+the SoC. In such cases, most barebox functionality will be located in a separate
+image, e.g. ``barebox.bin``, which is loaded by ``BOOT.BIN``, once DRAM has
+been successfully set up.
+
+There are two ways we generate such small first stage bootloaders in barebox:
+
+Old way: ≥ 2 configs
+---------------------
+
+The old way is to have a dedicated barebox first stage config that builds a
+very small non-interactive barebox for use as first stage.
+Due to size constraints, the first stage config is usually board-specific, while
+the second-stage config can target multiple boards at once.
+
+In this setup, each of the first and second stage each consist of their own
+prebootloader and barebox proper.
+
+* first stage prebootloader: Does DRAM setup and extracts first stage
+  barebox proper into DRAM.
+
+* first stage barebox proper: runs in DRAM and chainloads the second stage binary.
+
+* first stage prebootloader: is already running in DRAM, so it doesn't need to do
+  any hardware setup and instead directly extract second stage barebox proper
+
+* second stage barebox proper: your usual barebox experience, which can have an
+  interactive shell and boot an operating system
+
+An Example for this is ``am335x_mlo_defconfig``.
+
+New way: single config
+----------------------
+
+The new way avoids having a dedicated barebox first stage config by doing both
+the low level first stage setup and the chainloading from the same barebox
+prebootloader. Despite the prebootloader lacking nearly all driver frameworks found
+in barebox proper this is often made possible by reusing the hardware set up
+by the BootROM:
+
+BootROMs usually don't deinitialize hardware before jumping to the first stage
+bootloader. That means that the barebox prebootloader could just keep reusing
+the pre-configured SD-Card and host controller for example and issue read block
+commands right away without having to reinitialize the SD-card.
+
+In this setup, only one prebootloader binary will be built. Depending on
+the bootflow defined by the BootROM, it may be executed more than once however:
+
+BootROM loads directly into DRAM
+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
+
+Some BootROMs have built-in support for executing multiple programs and
+loading them to different locations. In that case, a full second stage
+barebox binary can be loaded as second stage with the first stage RAM
+setup handled outside barebox.
+
+An example for Mask ROM loading one image into SRAM and another afterwards
+into DRAM are the boards in ``rockchip_v8_defconfig``: A DRAM setup blob
+is loaded as first stage followed by barebox directly into DRAM as second
+stage.
+
+A slightly different example are what most boards in ``imx_v7_defconfig``
+are doing: The i.MX bootrom can execute the bytecode located in the DCD
+(Device Configuration Data) table that's part of the bootloader header.
+This byte code has simple memory read/write and control flow primitives
+that are sufficient to setup a DDR2/DDR3 DRAM, so that barebox can be
+loaded into it right away.
+
+The option of being loaded into SRAM first and chainloading from there
+is also available, but not used frequently for the 32-bit i.MX platforms.
+For the 64-bit platforms with (LP)DDR4, the RAM controller setup is
+too complex to express with DCD opcodes, leading to the approach described
+below.
+
+BootROM loads into SRAM from offset
+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
+
+For BootROMs, where the first stage bootloader is loaded from a raw offset
+on the boot medium, the barebox image is usually a single binary, which
+is processed as follows:
+
+* The BootROM reads the first X bytes containing the prebootloader (and
+  some truncated barebox proper content) into the on-chip SRAM and executes
+  it.
+
+* The prebootloader will set up DRAM and then chainload the whole of barebox
+  proper into it. The offset and size of barebox proper are compiled into
+  the PBL, so it knows where to look.
+
+* The prebootloader will then invoke itself again, but this time while running
+  from DRAM. The re-executed prebootloader detects that it's running in DRAM
+  or at a lower exception level and will then proceed to extract barebox
+  proper to the end of the initial memory region and execute it.
+
+And example for this is the ``imx_v8_defconfig``.
+
+.. note:: Some SoCs like the i.MX8M Nano and Plus provide a boot API in ROM
+  that can be used by the prebootloader to effortlessly chainload the second stage
+  cutting down complexity in the prebootloader greatly. Thanks BootROM authors!
+
+BootROM loads into SRAM from file
+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
+
+When the BootROM expects a file, it most often does a size check,
+necessitating a second binary for the whole of barebox proper.
+
+The boot flow then looks as follows:
+
+* The BootROM reads the first binary, which includes only the prebootloader
+  from the file system into on-chip SRAM and executes it
+
+* The prebootloader will set up DRAM and then load the second binary
+  into it. It has no knowledge of its offsets and sizes, but gets that
+  information out of the FAT filesystem.
+
+* The second stage binary contains both its own prebootloader and a barebox
+  binary. The second stage prebootloader does not need to do any special
+  hardware setup, so it will proceed to extract barebox proper to the end of
+  the initial memory region and execute it.
-- 
2.39.5



