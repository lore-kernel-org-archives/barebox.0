Delivery-date: Thu, 04 May 2023 10:59:54 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1puUod-004N8O-39
	for lore@lore.pengutronix.de; Thu, 04 May 2023 10:59:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1puUoa-000815-EK
	for lore@pengutronix.de; Thu, 04 May 2023 10:59:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ryBv73IGDO6pFyDoq4XzCoI28H9BeuDsMWutBtACrBk=; b=dX5dODnhAsYQr+reU04ro1JkpQ
	cOz0ilpZ/JNe4wFEUZsxdI5XoFAeCZ/YRV+YQYBYhqpxZjW2I6Lnow3vNsSdwplFZVx+gxeowAAVb
	4cq1uaJwjUXZnaQ8vjmfk6ph3rzMByfJV9SpWYnvPnQP/Rr3toJsWkUAhZwUCGpB/mp3RGldfKZ23
	JXUAqIk4sV2EvTYCICWPqcb+RQ3WW9Au7cOLjuY5kykIILIqNo4NpZ0A94jz4zO58OCZUiOx6nZYJ
	d1dfo3S3O+TMmi3r7AE8xDRa6bgCRd0mjRPIyW4zt9j5bNmRv/lfFvtL9IWLhe7Bj8LTcZPTI7+wo
	gjGt9VHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1puUnL-007Bav-29;
	Thu, 04 May 2023 08:58:35 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1puUnH-007BZi-2p
	for barebox@lists.infradead.org;
	Thu, 04 May 2023 08:58:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1puUnF-0007ml-S7; Thu, 04 May 2023 10:58:29 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1puUnF-0011Na-73; Thu, 04 May 2023 10:58:29 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1puUnE-005TrK-Hz; Thu, 04 May 2023 10:58:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  4 May 2023 10:58:27 +0200
Message-Id: <20230504085827.484198-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230504085827.484198-1-s.hauer@pengutronix.de>
References: <20230504085827.484198-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230504_015832_223572_4A7B6415 
X-CRM114-Status: GOOD (  18.48  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/1] Add GitHub CI
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This adds the necessary bits and pieces to build and test barebox with
GitHub actions.

Currently barebox is build tested in all architectures and all
defconfigs. Additionally labgrid-pytest runs for architectures we have
Qemu support for.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 .github/workflows/container.yml           | 32 ++++++++
 .github/workflows/test-defconfigs.yml     | 44 +++++++++++
 .github/workflows/test-labgrid-pytest.yml | 70 ++++++++++++++++++
 test/Containerfile                        | 89 +++++++++++++++++++++++
 test/generate-dummy-fw.sh                 | 62 ++++++++++++++++
 test/kconfig/disable_size_check.kconf     |  1 +
 test/kconfig/disable_target_tools.kconf   |  5 ++
 test/kconfig/enable_self_test.kconf       |  5 ++
 8 files changed, 308 insertions(+)
 create mode 100644 .github/workflows/container.yml
 create mode 100644 .github/workflows/test-defconfigs.yml
 create mode 100644 .github/workflows/test-labgrid-pytest.yml
 create mode 100644 test/Containerfile
 create mode 100755 test/generate-dummy-fw.sh
 create mode 100644 test/kconfig/disable_size_check.kconf
 create mode 100644 test/kconfig/disable_target_tools.kconf
 create mode 100644 test/kconfig/enable_self_test.kconf

diff --git a/.github/workflows/container.yml b/.github/workflows/container.yml
new file mode 100644
index 0000000000..434745ae61
--- /dev/null
+++ b/.github/workflows/container.yml
@@ -0,0 +1,32 @@
+name: build ci container
+
+on:
+  push:
+    branches:
+      - 'master'
+      - 'ci'
+    paths:
+      - 'test/Containerfile'
+  workflow_dispatch: {}
+
+jobs:
+  build:
+    runs-on: ubuntu-latest
+    steps:
+    - uses: actions/checkout@v2
+    - id: build-image
+      uses: redhat-actions/buildah-build@v2
+      with:
+        image: barebox-ci
+        tags: latest
+        dockerfiles: |
+          ./test/Containerfile
+    - id: push-to-github
+      uses: redhat-actions/push-to-registry@v2
+      with:
+        image: ${{ steps.build-image.outputs.image }}
+        tags: ${{ steps.build-image.outputs.tags }}
+        registry: ghcr.io/${{ github.repository }}
+        username: ${{ github.actor }}
+        password: ${{ github.token }}
+    - run: echo "Image pushed to ${{ steps.push-to-github.outputs.registry-paths }}"
diff --git a/.github/workflows/test-defconfigs.yml b/.github/workflows/test-defconfigs.yml
new file mode 100644
index 0000000000..108e54d289
--- /dev/null
+++ b/.github/workflows/test-defconfigs.yml
@@ -0,0 +1,44 @@
+name: build all defconfigs
+
+on: [push, pull_request]
+
+jobs:
+  build:
+    runs-on: ubuntu-latest
+    container:
+      image: ghcr.io/barebox/barebox/barebox-ci:latest
+      # allow mounting and devtmpfs in the container
+      options: --user=root --privileged -v /dev:/dev
+
+    strategy:
+      matrix:
+        arch: [mips, powerpc, riscv, sandbox, x86 ]
+        regex: ["*"]
+        include:
+          - arch: arm
+            regex: "[a-b]*"
+          - arch: arm
+            regex: "[c-m]*"
+          - arch: arm
+            regex: "[n-q]*"
+          - arch: arm
+            regex: "[r-z]*"
+
+    steps:
+    - name: Checkout code
+      uses: actions/checkout@v2
+
+    - name: Build
+      run: |
+        export ARCH=${{matrix.arch}}
+
+        export CROSS_COMPILE_arm=/opt/gcc-12.2.0-nolibc/arm-linux-gnueabi/bin/arm-linux-gnueabi-
+        export CROSS_COMPILE_arm64=/opt/gcc-12.2.0-nolibc/aarch64-linux/bin/aarch64-linux-
+        export CROSS_COMPILE_mips=/opt/gcc-12.2.0-nolibc/mips-linux/bin/mips-linux-
+        export CROSS_COMPILE_powerpc=/opt/gcc-12.2.0-nolibc/powerpc-linux/bin/powerpc-linux-
+        export CROSS_COMPILE_riscv=/opt/gcc-12.2.0-nolibc/riscv32-linux/bin/riscv32-linux-
+
+        ./test/generate-dummy-fw.sh
+
+        ./MAKEALL -O build-${{matrix.arch}} -k test/kconfig/disable_size_check.kconf \
+                -k test/kconfig/disable_target_tools.kconf -e '${{matrix.regex}}'
diff --git a/.github/workflows/test-labgrid-pytest.yml b/.github/workflows/test-labgrid-pytest.yml
new file mode 100644
index 0000000000..2c74150066
--- /dev/null
+++ b/.github/workflows/test-labgrid-pytest.yml
@@ -0,0 +1,70 @@
+name: test images with labgrid-pytest
+
+on: [push, pull_request]
+
+jobs:
+  labgrid-pytest:
+    runs-on: ubuntu-latest
+    container:
+      image: ghcr.io/barebox/barebox/barebox-ci:latest
+      # allow mounting and devtmpfs in the container
+      options: --user=root --privileged -v /dev:/dev
+
+    strategy:
+      matrix:
+
+        include:
+          - ARCH: arm
+            lgenv: 'test/arm/*@multi_v7_defconfig.yaml'
+            defconfig: multi_v7_defconfig
+
+          - ARCH: arm
+            lgenv: test/arm/multi_v8_defconfig.yaml
+            defconfig: multi_v8_defconfig
+
+          - ARCH: mips
+            lgenv: test/mips/qemu-malta_defconfig.yaml
+            defconfig: qemu-malta_defconfig
+
+          - ARCH: x86
+            lgenv: test/x86/efi_defconfig.yaml
+            defconfig: efi_defconfig
+
+          - ARCH: riscv
+            lgenv: test/riscv/qemu@virt32_defconfig.yaml
+            defconfig: virt32_defconfig
+
+    steps:
+    - name: Checkout code
+      uses: actions/checkout@v2
+
+    - name: Build
+      run: |
+        export ARCH=${{matrix.arch}}
+
+        export CROSS_COMPILE_arm=/opt/gcc-12.2.0-nolibc/arm-linux-gnueabi/bin/arm-linux-gnueabi-
+        export CROSS_COMPILE_arm64=/opt/gcc-12.2.0-nolibc/aarch64-linux/bin/aarch64-linux-
+        export CROSS_COMPILE_mips=/opt/gcc-12.2.0-nolibc/mips-linux/bin/mips-linux-
+        export CROSS_COMPILE_powerpc=/opt/gcc-12.2.0-nolibc/powerpc-linux/bin/powerpc-linux-
+        export CROSS_COMPILE_riscv=/opt/gcc-12.2.0-nolibc/riscv32-linux/bin/riscv32-linux-
+
+        ./test/generate-dummy-fw.sh
+
+        ./MAKEALL -O build-${{matrix.arch}} -k test/kconfig/enable_self_test.kconf \
+                -k test/kconfig/disable_target_tools.kconf ${{matrix.defconfig}}
+
+        if [ ${{matrix.arch}} = "x86" ]; then
+          cp /usr/share/ovmf/OVMF.fd build-${{matrix.arch}}
+        fi
+
+        if [ ${{matrix.arch}} = "riscv" ]; then
+          cp /usr/share/qemu/opensbi-riscv32-generic-fw_dynamic.bin build-${{matrix.arch}}
+        fi
+    - name: labgrid-pytest
+      run: |
+        export KBUILD_OUTPUT=build-${{matrix.arch}}
+
+        for i in ${{matrix.lgenv}}; do
+          echo "Testing $i"
+          labgrid-pytest --lg-env $i test/py --verbosity=1 --lg-log
+        done
diff --git a/test/Containerfile b/test/Containerfile
new file mode 100644
index 0000000000..8c9502c0a1
--- /dev/null
+++ b/test/Containerfile
@@ -0,0 +1,89 @@
+# SPDX-License-Identifier: GPL-2.0+
+# This Containerfile is used to build an image containing basic stuff to be used
+# to build barebox and run our test suites.
+
+FROM debian:bullseye
+MAINTAINER Sascha Hauer <s.hauer@pengutronix.de>
+LABEL Description="This image is for building and testing barebox inside a container"
+
+# Make sure apt is happy
+ENV DEBIAN_FRONTEND=noninteractive
+
+# Update and install things from apt now
+RUN apt-get update && apt-get install -y \
+	automake \
+	autopoint \
+	bc \
+	binutils-dev \
+	bison \
+	build-essential \
+	coreutils \
+	cpio \
+	cppcheck \
+	curl \
+	erofs-utils \
+	expect \
+	flex \
+	gawk \
+	gdisk \
+	git \
+	imagemagick \
+	libc6-i386 \
+	libgit2-dev \
+	libguestfs-tools \
+	liblz4-tool \
+	libseccomp-dev \
+	libssl-dev \
+	libtool \
+	libudev-dev \
+	libusb-1.0-0-dev \
+	lzma-alone \
+	lzop \
+	mount \
+	openssl \
+	pkg-config \
+	rpm2cpio \
+	util-linux \
+	uuid-dev \
+	zip \
+	wget \
+	qemu-system-arm \
+	qemu-system-misc \
+	qemu-system-mips \
+	qemu-system-x86 \
+	qemu-system-common \
+	ovmf \
+	python3 \
+	python3-pip \
+	python3-virtualenv \
+	python3-setuptools \
+	virtualenv \
+	microcom \
+	sudo \
+	libyaml-tiny-perl \
+	libyaml-libyaml-perl \
+	&& rm -rf /var/lib/apt/lists/*
+
+# Manually install the kernel.org Crosstool based toolchains for gcc-12.2.0
+RUN wget -O - https://mirrors.edge.kernel.org/pub/tools/crosstool/files/bin/x86_64/12.2.0/x86_64-gcc-12.2.0-nolibc-aarch64-linux.tar.xz | tar -C /opt -xJ
+RUN wget -O - https://mirrors.edge.kernel.org/pub/tools/crosstool/files/bin/x86_64/12.2.0/x86_64-gcc-12.2.0-nolibc-arm-linux-gnueabi.tar.xz | tar -C /opt -xJ
+RUN wget -O - https://mirrors.edge.kernel.org/pub/tools/crosstool/files/bin/x86_64/12.2.0/x86_64-gcc-12.2.0-nolibc-i386-linux.tar.xz | tar -C /opt -xJ
+RUN wget -O - https://mirrors.edge.kernel.org/pub/tools/crosstool/files/bin/x86_64/12.2.0/x86_64-gcc-12.2.0-nolibc-mips-linux.tar.xz | tar -C /opt -xJ
+RUN wget -O - https://mirrors.edge.kernel.org/pub/tools/crosstool/files/bin/x86_64/12.2.0/x86_64-gcc-12.2.0-nolibc-powerpc-linux.tar.xz | tar -C /opt -xJ
+RUN wget -O - https://mirrors.edge.kernel.org/pub/tools/crosstool/files/bin/x86_64/12.2.0/x86_64-gcc-12.2.0-nolibc-riscv64-linux.tar.xz | tar -C /opt -xJ
+RUN wget -O - https://mirrors.edge.kernel.org/pub/tools/crosstool/files/bin/x86_64/12.2.0/x86_64-gcc-12.2.0-nolibc-riscv32-linux.tar.xz | tar -C /opt -xJ
+
+RUN wget "https://github.com/qemu/qemu/blob/v5.2.0/pc-bios/opensbi-riscv32-generic-fw_dynamic.bin?raw=true" -O /usr/share/qemu/opensbi-riscv32-generic-fw_dynamic.bin
+
+# Create our user/group
+RUN useradd -m -U barebox
+RUN echo barebox ALL=NOPASSWD: ALL > /etc/sudoers.d/barebox
+
+# install labgrid
+RUN cd /tmp && \
+    git clone --depth 1 -b v23.0 https://github.com/labgrid-project/labgrid && \
+    cd labgrid && \
+    pip3 install . && \
+    ln -s $(which pytest) /usr/local/bin/labgrid-pytest;
+
+USER barebox:barebox
diff --git a/test/generate-dummy-fw.sh b/test/generate-dummy-fw.sh
new file mode 100755
index 0000000000..5005197891
--- /dev/null
+++ b/test/generate-dummy-fw.sh
@@ -0,0 +1,62 @@
+#!/bin/sh
+#
+# Generate dummy firmware files for compile tests
+#
+
+FW_NXP_LPDDR4="
+	firmware/lpddr4_pmu_train_1d_dmem.bin
+	firmware/lpddr4_pmu_train_1d_imem.bin
+	firmware/lpddr4_pmu_train_2d_dmem.bin
+	firmware/lpddr4_pmu_train_2d_imem.bin
+"
+
+FW_NXP_DDR4="
+	firmware/ddr4_dmem_1d.bin
+	firmware/ddr4_dmem_2d.bin
+	firmware/ddr4_imem_1d.bin
+	firmware/ddr4_imem_2d.bin
+"
+
+FW_BL31="
+	firmware/imx8mm-bl31.bin
+	firmware/imx8mn-bl31.bin
+	firmware/imx8mp-bl31.bin
+	firmware/imx8mq-bl31.bin
+	firmware/rk3568-bl31.bin
+"
+
+FW_ROCKCHIP_SDRAM_INIT="
+	arch/arm/boards/pine64-quartz64/sdram-init.bin
+	arch/arm/boards/radxa-rock3/sdram-init.bin
+	arch/arm/boards/rockchip-rk3568-bpi-r2pro/sdram-init.bin
+	arch/arm/boards/rockchip-rk3568-evb/sdram-init.bin
+"
+
+FW_MVEBU_BINARY0="
+	arch/arm/boards/globalscale-mirabox/binary.0
+	arch/arm/boards/lenovo-ix4-300d/binary.0
+	arch/arm/boards/marvell-armada-xp-db/binary.0
+	arch/arm/boards/marvell-armada-xp-gp/binary.0
+	arch/arm/boards/netgear-rn104/binary.0
+	arch/arm/boards/netgear-rn2120/binary.0
+	arch/arm/boards/plathome-openblocks-ax3/binary.0
+	arch/arm/boards/turris-omnia/binary.0
+"
+
+FW_NXP_LAYERSCAPE="
+	firmware/fsl_fman_ucode_ls1046_r1.0_106_4_18.bin
+	firmware/ppa-ls1046a.bin
+"
+
+FW="
+	$FW_NXP_LPDDR4
+	$FW_NXP_DDR4
+	$FW_BL31
+	$FW_ROCKCHIP_SDRAM_INIT
+	$FW_MVEBU_BINARY0
+	$FW_NXP_LAYERSCAPE
+"
+
+for i in $FW; do
+	echo "Dummy firmware generated for $i" > $i
+done
diff --git a/test/kconfig/disable_size_check.kconf b/test/kconfig/disable_size_check.kconf
new file mode 100644
index 0000000000..3819f8a32c
--- /dev/null
+++ b/test/kconfig/disable_size_check.kconf
@@ -0,0 +1 @@
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0xffffffff
diff --git a/test/kconfig/disable_target_tools.kconf b/test/kconfig/disable_target_tools.kconf
new file mode 100644
index 0000000000..55cb99b891
--- /dev/null
+++ b/test/kconfig/disable_target_tools.kconf
@@ -0,0 +1,5 @@
+# CONFIG_IMD_TARGET is not set
+# CONFIG_KERNEL_INSTALL_TARGET is not set
+# CONFIG_BAREBOXENV_TARGET is not set
+# CONFIG_BAREBOXCRC32_TARGET is not set
+# CONFIG_MVEBU_KWBOOT_TARGET is not set
diff --git a/test/kconfig/enable_self_test.kconf b/test/kconfig/enable_self_test.kconf
new file mode 100644
index 0000000000..f5cd7821b9
--- /dev/null
+++ b/test/kconfig/enable_self_test.kconf
@@ -0,0 +1,5 @@
+CONFIG_SELFTEST_ENABLE_ALL=y
+CONFIG_TEST=y
+CONFIG_CMD_SELFTEST=y
+CONFIG_SELFTEST=y
+
-- 
2.39.2



