Delivery-date: Mon, 03 Jan 2022 13:07:35 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n4M7j-009o6U-ME
	for lore@lore.pengutronix.de; Mon, 03 Jan 2022 13:07:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n4M7b-0005ZS-GW
	for lore@pengutronix.de; Mon, 03 Jan 2022 13:07:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=st+auT929NIAHxXmqFRn/L8xgzSTst+rr0fwI8xnOzQ=; b=MC2i1gf9IcfcGG
	fD2R3zYXOCHRqJwy4Hq/eKS5WfxVr0Vz3uy5XnUnmCAO1joJaLzmYvklEac9eLFdejbHa/Sb4eVng
	UzejC8ssQSyvLbGgcp27twzA/6YTUdqxG5DiwRc16D+vhZT7p1ZQFlKgxOaBTykKXcaSt81UmEYfr
	IRms3GKsm+0ypKTqVxZ1OT/HrmR+Vv9rGWrySd1BuFQyPCaLo+zqD0pwqZA4faNeh9QWEnBy4pLMX
	VIX325v4lbx08b3yyylh2JNI7wfIKZiEerzXU0i0mAf0B+0G+GymMZka1vbvQRU3dRYRSlcvoLFlD
	UGeqB8nKyp9eIxkNYn8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n4M65-008xw6-3r; Mon, 03 Jan 2022 12:05:53 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n4M5v-008xtt-Vt
 for barebox@lists.infradead.org; Mon, 03 Jan 2022 12:05:45 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1n4M5t-00052P-Vw; Mon, 03 Jan 2022 13:05:42 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1n4M5t-007GW5-78; Mon, 03 Jan 2022 13:05:41 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: ukl@pengutronix.de, rhi@pengutronix.de,
 Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  3 Jan 2022 13:05:31 +0100
Message-Id: <20220103120539.1730644-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220103120539.1730644-1-a.fatoum@pengutronix.de>
References: <20220103120539.1730644-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220103_040544_216758_FF1CE17F 
X-CRM114-Status: UNSURE (   9.20  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 03/11] treewide: add SPDX-License-Identifier for .gitignore
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Makes the files not appear when searching for files that lack
SPDX-License-Identifier.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 .gitignore                                   | 1 +
 Documentation/.gitignore                     | 2 ++
 arch/arm/boards/nxp-imx8mq-evk/.gitignore    | 2 ++
 arch/arm/boards/phytec-som-imx8mq/.gitignore | 2 ++
 arch/arm/boards/qemu-virt/.gitignore         | 2 ++
 arch/arm/crypto/.gitignore                   | 2 ++
 arch/arm/lib32/.gitignore                    | 2 ++
 arch/arm/lib64/.gitignore                    | 2 ++
 arch/mips/lib/.gitignore                     | 2 ++
 arch/mips/pbl/.gitignore                     | 2 ++
 arch/openrisc/cpu/.gitignore                 | 2 ++
 arch/powerpc/boards/.gitignore               | 2 ++
 arch/powerpc/mach-mpc85xx/.gitignore         | 2 ++
 arch/riscv/lib/.gitignore                    | 2 ++
 arch/sandbox/board/.gitignore                | 2 ++
 arch/x86/mach-efi/.gitignore                 | 2 ++
 common/.gitignore                            | 2 ++
 crypto/.gitignore                            | 2 ++
 defaultenv/.gitignore                        | 2 ++
 firmware/.gitignore                          | 2 ++
 images/.gitignore                            | 2 ++
 include/.gitignore                           | 2 ++
 lib/logo/.gitignore                          | 2 ++
 scripts/.gitignore                           | 2 ++
 scripts/dtc/.gitignore                       | 2 ++
 scripts/imx/.gitignore                       | 2 ++
 scripts/mod/.gitignore                       | 2 ++
 scripts/tegra/.gitignore                     | 2 ++
 test/.gitignore                              | 2 ++
 29 files changed, 57 insertions(+)

diff --git a/.gitignore b/.gitignore
index 529bcfc2128e..d551a610d4c0 100644
--- a/.gitignore
+++ b/.gitignore
@@ -1,3 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
 #
 # NOTE! Don't add files that are generated in specific
 # subdirectories here. Add them in the ".gitignore" file
diff --git a/Documentation/.gitignore b/Documentation/.gitignore
index 5c36dc3ec5de..e8b2851d2552 100644
--- a/Documentation/.gitignore
+++ b/Documentation/.gitignore
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 build
 commands
 html
diff --git a/arch/arm/boards/nxp-imx8mq-evk/.gitignore b/arch/arm/boards/nxp-imx8mq-evk/.gitignore
index ef13747c92ee..cafa52b2079a 100644
--- a/arch/arm/boards/nxp-imx8mq-evk/.gitignore
+++ b/arch/arm/boards/nxp-imx8mq-evk/.gitignore
@@ -1 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 *.ddr-phy-fw*
diff --git a/arch/arm/boards/phytec-som-imx8mq/.gitignore b/arch/arm/boards/phytec-som-imx8mq/.gitignore
index ef13747c92ee..cafa52b2079a 100644
--- a/arch/arm/boards/phytec-som-imx8mq/.gitignore
+++ b/arch/arm/boards/phytec-som-imx8mq/.gitignore
@@ -1 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 *.ddr-phy-fw*
diff --git a/arch/arm/boards/qemu-virt/.gitignore b/arch/arm/boards/qemu-virt/.gitignore
index 5d65b54bf17a..3e3932a3bfba 100644
--- a/arch/arm/boards/qemu-virt/.gitignore
+++ b/arch/arm/boards/qemu-virt/.gitignore
@@ -1 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 *.dtb*
diff --git a/arch/arm/crypto/.gitignore b/arch/arm/crypto/.gitignore
index b22a068f76f2..545a1b084d4e 100644
--- a/arch/arm/crypto/.gitignore
+++ b/arch/arm/crypto/.gitignore
@@ -1 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 /sha256-core.S
diff --git a/arch/arm/lib32/.gitignore b/arch/arm/lib32/.gitignore
index d1165788c9ab..03987a700942 100644
--- a/arch/arm/lib32/.gitignore
+++ b/arch/arm/lib32/.gitignore
@@ -1 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 barebox.lds
diff --git a/arch/arm/lib64/.gitignore b/arch/arm/lib64/.gitignore
index d1165788c9ab..03987a700942 100644
--- a/arch/arm/lib64/.gitignore
+++ b/arch/arm/lib64/.gitignore
@@ -1 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 barebox.lds
diff --git a/arch/mips/lib/.gitignore b/arch/mips/lib/.gitignore
index d1165788c9ab..03987a700942 100644
--- a/arch/mips/lib/.gitignore
+++ b/arch/mips/lib/.gitignore
@@ -1 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 barebox.lds
diff --git a/arch/mips/pbl/.gitignore b/arch/mips/pbl/.gitignore
index be604a81bf86..667b44eaf356 100644
--- a/arch/mips/pbl/.gitignore
+++ b/arch/mips/pbl/.gitignore
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 piggy.gzip
 piggy.lzo
 piggy.lz4
diff --git a/arch/openrisc/cpu/.gitignore b/arch/openrisc/cpu/.gitignore
index d1165788c9ab..03987a700942 100644
--- a/arch/openrisc/cpu/.gitignore
+++ b/arch/openrisc/cpu/.gitignore
@@ -1 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 barebox.lds
diff --git a/arch/powerpc/boards/.gitignore b/arch/powerpc/boards/.gitignore
index d1165788c9ab..03987a700942 100644
--- a/arch/powerpc/boards/.gitignore
+++ b/arch/powerpc/boards/.gitignore
@@ -1 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 barebox.lds
diff --git a/arch/powerpc/mach-mpc85xx/.gitignore b/arch/powerpc/mach-mpc85xx/.gitignore
index d1165788c9ab..03987a700942 100644
--- a/arch/powerpc/mach-mpc85xx/.gitignore
+++ b/arch/powerpc/mach-mpc85xx/.gitignore
@@ -1 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 barebox.lds
diff --git a/arch/riscv/lib/.gitignore b/arch/riscv/lib/.gitignore
index d1165788c9ab..03987a700942 100644
--- a/arch/riscv/lib/.gitignore
+++ b/arch/riscv/lib/.gitignore
@@ -1 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 barebox.lds
diff --git a/arch/sandbox/board/.gitignore b/arch/sandbox/board/.gitignore
index d1165788c9ab..03987a700942 100644
--- a/arch/sandbox/board/.gitignore
+++ b/arch/sandbox/board/.gitignore
@@ -1 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 barebox.lds
diff --git a/arch/x86/mach-efi/.gitignore b/arch/x86/mach-efi/.gitignore
index 847e317701f6..0dae36ae58e6 100644
--- a/arch/x86/mach-efi/.gitignore
+++ b/arch/x86/mach-efi/.gitignore
@@ -1,2 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 elf_x86_64_efi.lds
 elf_ia32_efi.lds
diff --git a/common/.gitignore b/common/.gitignore
index 8e0d6c160e8c..e3e3d504dc4b 100644
--- a/common/.gitignore
+++ b/common/.gitignore
@@ -1,2 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 module.lds
 barebox_default_env*
diff --git a/crypto/.gitignore b/crypto/.gitignore
index 92d8af3cf491..3d5e57e7dd37 100644
--- a/crypto/.gitignore
+++ b/crypto/.gitignore
@@ -1,2 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 rsa-keys.h
 rsa-keys.h.tmp
diff --git a/defaultenv/.gitignore b/defaultenv/.gitignore
index 7c338505990d..e2ef3c4205cb 100644
--- a/defaultenv/.gitignore
+++ b/defaultenv/.gitignore
@@ -1,2 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 barebox_default_env*
 barebox_zero_env
diff --git a/firmware/.gitignore b/firmware/.gitignore
index a8a0dcec4472..4f3e56d8b719 100644
--- a/firmware/.gitignore
+++ b/firmware/.gitignore
@@ -1 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 *.bin
diff --git a/images/.gitignore b/images/.gitignore
index 3a9a77dad16e..1aa9620a42d8 100644
--- a/images/.gitignore
+++ b/images/.gitignore
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 *.pbl
 *.pblb
 *.img
diff --git a/include/.gitignore b/include/.gitignore
index 18e58a752ad7..3ac630625dc7 100644
--- a/include/.gitignore
+++ b/include/.gitignore
@@ -1 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 /config.h
diff --git a/lib/logo/.gitignore b/lib/logo/.gitignore
index 0d5475cb7878..800a44c41472 100644
--- a/lib/logo/.gitignore
+++ b/lib/logo/.gitignore
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 barebox-logo-w64.bblogo
 barebox-logo-w64.bblogo.S
 barebox-logo-w240.bblogo
diff --git a/scripts/.gitignore b/scripts/.gitignore
index ae70c92af8a3..6ef43640b79f 100644
--- a/scripts/.gitignore
+++ b/scripts/.gitignore
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 bin2c
 mkimage
 fix_size
diff --git a/scripts/dtc/.gitignore b/scripts/dtc/.gitignore
index 2c0d6a1bf3e1..0079e3f1b516 100644
--- a/scripts/dtc/.gitignore
+++ b/scripts/dtc/.gitignore
@@ -1,2 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 dtc
 fdtget
diff --git a/scripts/imx/.gitignore b/scripts/imx/.gitignore
index 341aec9ee435..dce5c3306c26 100644
--- a/scripts/imx/.gitignore
+++ b/scripts/imx/.gitignore
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 imx-usb-loader
 imx-usb-loader-target
 imx-image
diff --git a/scripts/mod/.gitignore b/scripts/mod/.gitignore
index a6dd5e27e2f5..f507ef8560eb 100644
--- a/scripts/mod/.gitignore
+++ b/scripts/mod/.gitignore
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 elfconfig.h
 mk_elfconfig
 modpost
diff --git a/scripts/tegra/.gitignore b/scripts/tegra/.gitignore
index 5d5891b24389..96cc56e4a790 100644
--- a/scripts/tegra/.gitignore
+++ b/scripts/tegra/.gitignore
@@ -1 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 cbootimage
diff --git a/test/.gitignore b/test/.gitignore
index bee8a64b79a9..1a4103cb05f7 100644
--- a/test/.gitignore
+++ b/test/.gitignore
@@ -1 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 __pycache__
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

