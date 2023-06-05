Delivery-date: Mon, 05 Jun 2023 08:37:46 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q63qd-00BSJQ-BN
	for lore@lore.pengutronix.de; Mon, 05 Jun 2023 08:37:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q63qa-0004HD-N4
	for lore@pengutronix.de; Mon, 05 Jun 2023 08:37:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=L9/9FlVdb8NJZnqPWxVLeeB8p2w8AdIHWiOek7eh/vk=; b=4DMnHHPaTB0WAutuMuTLA80h0c
	0AI9Kv1lPsCym23vVCDPuOlXx5/765Y5FFMx8Nh4L+M4lCjX1MqLCnzjFGxRAH6+pcn5+wIeyIvrB
	v+2dDFDwDwKB+LOZx5pfycScW4MfBJ3L757gGaYKP9kXm3pB5/8QiwDTbFamo8A85dlNcwai0/IrU
	ZJdMeSR4HAdSGVqRZdLbpMyvZsSscUVWjgqoSCmnkweMvjZbfWpWR+8NQ2lkVKDm5z2Of/PAFFJw+
	CVy2BtyC2mvascvt2M4FZsovoDoAteSqpFTlAjFTV5iy8Ul35K6qlNE+dc3gFru/musfi2je3JnDl
	glUd9SPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q63pW-00ENF5-1D;
	Mon, 05 Jun 2023 06:36:38 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q63pO-00EN7z-1p
	for barebox@lists.infradead.org;
	Mon, 05 Jun 2023 06:36:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q63pN-0003WK-Am; Mon, 05 Jun 2023 08:36:29 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q63pM-005CtS-KO; Mon, 05 Jun 2023 08:36:28 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q63pK-005pNr-Df; Mon, 05 Jun 2023 08:36:26 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  5 Jun 2023 08:36:11 +0200
Message-Id: <20230605063623.1254764-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230605063623.1254764-1-a.fatoum@pengutronix.de>
References: <20230605063623.1254764-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230604_233630_604475_4C6A5B23 
X-CRM114-Status: GOOD (  10.69  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 02/14] test/Containerfile: reduce duplication in cross toolchain handling
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

ENV directive in OCI will result in the container having the environment
variable defined. Let's use that instead of duplicating it across
workflows.

Also the many wget's to get the kernel toolchains are not that readable,
so define a function and call it to make it easier to see what is what.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 .github/workflows/test-defconfigs.yml     |  6 ------
 .github/workflows/test-labgrid-pytest.yml |  6 ------
 test/Containerfile                        | 25 +++++++++++++++--------
 3 files changed, 17 insertions(+), 20 deletions(-)

diff --git a/.github/workflows/test-defconfigs.yml b/.github/workflows/test-defconfigs.yml
index 108e54d289a0..71e440793ce5 100644
--- a/.github/workflows/test-defconfigs.yml
+++ b/.github/workflows/test-defconfigs.yml
@@ -32,12 +32,6 @@ jobs:
       run: |
         export ARCH=${{matrix.arch}}
 
-        export CROSS_COMPILE_arm=/opt/gcc-12.2.0-nolibc/arm-linux-gnueabi/bin/arm-linux-gnueabi-
-        export CROSS_COMPILE_arm64=/opt/gcc-12.2.0-nolibc/aarch64-linux/bin/aarch64-linux-
-        export CROSS_COMPILE_mips=/opt/gcc-12.2.0-nolibc/mips-linux/bin/mips-linux-
-        export CROSS_COMPILE_powerpc=/opt/gcc-12.2.0-nolibc/powerpc-linux/bin/powerpc-linux-
-        export CROSS_COMPILE_riscv=/opt/gcc-12.2.0-nolibc/riscv32-linux/bin/riscv32-linux-
-
         ./test/generate-dummy-fw.sh
 
         ./MAKEALL -O build-${{matrix.arch}} -k test/kconfig/disable_size_check.kconf \
diff --git a/.github/workflows/test-labgrid-pytest.yml b/.github/workflows/test-labgrid-pytest.yml
index 2c741500663e..399de6dc077a 100644
--- a/.github/workflows/test-labgrid-pytest.yml
+++ b/.github/workflows/test-labgrid-pytest.yml
@@ -42,12 +42,6 @@ jobs:
       run: |
         export ARCH=${{matrix.arch}}
 
-        export CROSS_COMPILE_arm=/opt/gcc-12.2.0-nolibc/arm-linux-gnueabi/bin/arm-linux-gnueabi-
-        export CROSS_COMPILE_arm64=/opt/gcc-12.2.0-nolibc/aarch64-linux/bin/aarch64-linux-
-        export CROSS_COMPILE_mips=/opt/gcc-12.2.0-nolibc/mips-linux/bin/mips-linux-
-        export CROSS_COMPILE_powerpc=/opt/gcc-12.2.0-nolibc/powerpc-linux/bin/powerpc-linux-
-        export CROSS_COMPILE_riscv=/opt/gcc-12.2.0-nolibc/riscv32-linux/bin/riscv32-linux-
-
         ./test/generate-dummy-fw.sh
 
         ./MAKEALL -O build-${{matrix.arch}} -k test/kconfig/enable_self_test.kconf \
diff --git a/test/Containerfile b/test/Containerfile
index 8c9502c0a190..ff08cc1a7841 100644
--- a/test/Containerfile
+++ b/test/Containerfile
@@ -64,14 +64,17 @@ RUN apt-get update && apt-get install -y \
 	libyaml-libyaml-perl \
 	&& rm -rf /var/lib/apt/lists/*
 
-# Manually install the kernel.org Crosstool based toolchains for gcc-12.2.0
-RUN wget -O - https://mirrors.edge.kernel.org/pub/tools/crosstool/files/bin/x86_64/12.2.0/x86_64-gcc-12.2.0-nolibc-aarch64-linux.tar.xz | tar -C /opt -xJ
-RUN wget -O - https://mirrors.edge.kernel.org/pub/tools/crosstool/files/bin/x86_64/12.2.0/x86_64-gcc-12.2.0-nolibc-arm-linux-gnueabi.tar.xz | tar -C /opt -xJ
-RUN wget -O - https://mirrors.edge.kernel.org/pub/tools/crosstool/files/bin/x86_64/12.2.0/x86_64-gcc-12.2.0-nolibc-i386-linux.tar.xz | tar -C /opt -xJ
-RUN wget -O - https://mirrors.edge.kernel.org/pub/tools/crosstool/files/bin/x86_64/12.2.0/x86_64-gcc-12.2.0-nolibc-mips-linux.tar.xz | tar -C /opt -xJ
-RUN wget -O - https://mirrors.edge.kernel.org/pub/tools/crosstool/files/bin/x86_64/12.2.0/x86_64-gcc-12.2.0-nolibc-powerpc-linux.tar.xz | tar -C /opt -xJ
-RUN wget -O - https://mirrors.edge.kernel.org/pub/tools/crosstool/files/bin/x86_64/12.2.0/x86_64-gcc-12.2.0-nolibc-riscv64-linux.tar.xz | tar -C /opt -xJ
-RUN wget -O - https://mirrors.edge.kernel.org/pub/tools/crosstool/files/bin/x86_64/12.2.0/x86_64-gcc-12.2.0-nolibc-riscv32-linux.tar.xz | tar -C /opt -xJ
+ENV GCC_VERSION=12.2.0
+
+# Manually install the kernel.org Crosstool based toolchains
+RUN korg_crosstool_dl() { wget -O - https://mirrors.edge.kernel.org/pub/tools/crosstool/files/bin/${1}/${2}/${1}-gcc-${2}-nolibc-${3}.tar.xz | tar -C /opt -xJ ; } && \
+    korg_crosstool_dl x86_64 ${GCC_VERSION} arm-linux-gnueabi && \
+    korg_crosstool_dl x86_64 ${GCC_VERSION} aarch64-linux     && \
+    korg_crosstool_dl x86_64 ${GCC_VERSION} i386-linux        && \
+    korg_crosstool_dl x86_64 ${GCC_VERSION} mips-linux        && \
+    korg_crosstool_dl x86_64 ${GCC_VERSION} powerpc-linux     && \
+    korg_crosstool_dl x86_64 ${GCC_VERSION} riscv32-linux     && \
+    korg_crosstool_dl x86_64 ${GCC_VERSION} riscv64-linux
 
 RUN wget "https://github.com/qemu/qemu/blob/v5.2.0/pc-bios/opensbi-riscv32-generic-fw_dynamic.bin?raw=true" -O /usr/share/qemu/opensbi-riscv32-generic-fw_dynamic.bin
 
@@ -86,4 +89,10 @@ RUN cd /tmp && \
     pip3 install . && \
     ln -s $(which pytest) /usr/local/bin/labgrid-pytest;
 
+ENV CROSS_COMPILE_arm=/opt/gcc-${GCC_VERSION}-nolibc/arm-linux-gnueabi/bin/arm-linux-gnueabi-
+ENV CROSS_COMPILE_arm64=/opt/gcc-${GCC_VERSION}-nolibc/aarch64-linux/bin/aarch64-linux-
+ENV CROSS_COMPILE_mips=/opt/gcc-${GCC_VERSION}-nolibc/mips-linux/bin/mips-linux-
+ENV CROSS_COMPILE_powerpc=/opt/gcc-${GCC_VERSION}-nolibc/powerpc-linux/bin/powerpc-linux-
+ENV CROSS_COMPILE_riscv=/opt/gcc-${GCC_VERSION}-nolibc/riscv32-linux/bin/riscv32-linux-
+
 USER barebox:barebox
-- 
2.39.2



