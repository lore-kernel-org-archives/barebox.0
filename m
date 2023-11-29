Delivery-date: Wed, 29 Nov 2023 12:54:33 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r8J9E-00DD2d-1w
	for lore@lore.pengutronix.de;
	Wed, 29 Nov 2023 12:54:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r8J9E-0007PF-KZ
	for lore@pengutronix.de; Wed, 29 Nov 2023 12:54:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=vpd5kAXUph8Dlczl/+JCUjah8a3RzvQMsdSphMraJz4=; b=lA/yDQ1V19vRN8qT3w+RTXWkLN
	HAjnB7Q7QBV1dWLeepZmacjmdDGeR+BmtbHBAclEEfoCtcVofjjPC/RXNCeSBBsl6NozOuzoFcY6K
	3AS6xAZ19hAX4ulynhfTXhAiDDk+dQkI61cyLZtAzPvtiw62q5RNy9D82t4s+r49vlgZjV6NDPq5q
	jhxohugJtc1CtJFSqpAPcw70OdlcttwmIzyww8fYzebDdOEUuSajlIIOctaEt7DTDtFq9uuLwWTYH
	nl4QJIYM+uT87h7eZZpRRN0nrJTVzDXv5FrZzP4eJRDRZeRfOEpFqwmnqFLVTaRm2zsieG2YhEw1G
	743fYBaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8J7p-008Bkw-2B;
	Wed, 29 Nov 2023 11:53:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r8J7m-008Bjc-1e
	for barebox@lists.infradead.org;
	Wed, 29 Nov 2023 11:53:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r8J7l-0007CB-4r; Wed, 29 Nov 2023 12:53:01 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r8J7k-00COQX-Oh; Wed, 29 Nov 2023 12:53:00 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r8J7k-006Skj-2C;
	Wed, 29 Nov 2023 12:53:00 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 29 Nov 2023 12:52:55 +0100
Message-Id: <20231129115255.1538958-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231129_035302_549332_4A8F11FA 
X-CRM114-Status: GOOD (  14.81  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] Documentation: user: barebox: make barebox chainloading clearer
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

barebox images are designed to be chainloadable and can be loaded as if
they were a kernel by other bootloaders. The documentation lists
examples for two ways to achieve this with U-Boot preinstalled on the
board. They are not as clear as they could be as the resulting uImage
is called image in the mkimage line, but barebox.bin later on. This is
unfortunate as the build results in a barebox.bin already, which
corresponds to barebox proper in PBL setups. Rename it to barebox.uImage
instead and while at it note that booti isn't applicable to arm32.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/user/barebox.rst | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/Documentation/user/barebox.rst b/Documentation/user/barebox.rst
index c95adb78bb83..80f0f96a98de 100644
--- a/Documentation/user/barebox.rst
+++ b/Documentation/user/barebox.rst
@@ -212,7 +212,8 @@ like a Linux kernel that is passed an external device tree. For example:
 
   U-Boot: tftp $kernel_addr barebox-dt-2nd.img
   U-Boot: tftp $fdt_addr my-board.dtb
-  U-Boot: booti $kernel_addr - $fdt_addr
+  U-Boot: bootm $kernel_addr - $fdt_addr # On 32-bit ARM
+  U-Boot: booti $kernel_addr - $fdt_addr # for other platforms
 
 For non-DT enabled-bootloaders or other architectures, often the normal barebox
 binaries can also be used as they are designed to be startable second stage
@@ -224,7 +225,7 @@ converted to uImage format using the mkimage tool provided with U-Boot:
 .. code-block:: console
 
   sh: mkimage -n barebox -A arm -T kernel -C none -a 0x80000000 -d \
-      build/images/barebox-freescale-imx53-loco.img image
+      build/images/barebox-freescale-imx53-loco.img barebox.uImage
 
 U-Boot expects the start address of the binary to be given in the image using the
 ``-a`` option. The address depends on the board and must be an address which isn't
@@ -233,7 +234,7 @@ image for that board. The image can then be started with ``bootm``:
 
 .. code-block:: console
 
-  U-Boot: tftp $load_addr barebox.bin
+  U-Boot: tftp $load_addr barebox.uImage
   U-Boot: bootm $load_addr
 
 With barebox already running on your board, this can be used to chainload
-- 
2.39.2



