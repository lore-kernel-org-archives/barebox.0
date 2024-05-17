Delivery-date: Fri, 17 May 2024 15:27:49 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7xcj-001lQ2-1b
	for lore@lore.pengutronix.de;
	Fri, 17 May 2024 15:27:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7xci-0003ax-0x
	for lore@pengutronix.de; Fri, 17 May 2024 15:27:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9smvlVEXmmuwiqw/iLAtE6Ajww4Gxgdykq5oU5Y2SCM=; b=ybXKZMfVkY9aX6jM+E9kwg5m9r
	TOMZw3IQ5JRebJC5jnmbZk7J/Me34Fn58eTqVedrKEjRnnmG44MHzB1ubNg7CF/E6NdSCy9pLL/m8
	QzMRoLXBYCZSwS3+JpFHVwxAUMls5s6Ab3gpcSHNwko6JHZ3IPTqvirdOHixf9GNQ57S5Vw0pcUuU
	ZRn81K+hKivRXPgkZIM1hkL9m/LPxwtrYkHmG5xF1AormELrNxmFOljfLs/Suwm+Q9s0v8XdTpIr/
	jg2bx2SPnjCABoZqqKilS8RaQtksgWBvewcVwUY6zA/+N+P0oDJbJ7fn8VjuMgF2e84MP2vYzjIHh
	TsqewrDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7xc8-00000007wq4-3EH7;
	Fri, 17 May 2024 13:27:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7xbx-00000007wjY-3yKa
	for barebox@lists.infradead.org;
	Fri, 17 May 2024 13:27:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7xbt-00032f-G1; Fri, 17 May 2024 15:26:57 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7xbt-001sCC-2v; Fri, 17 May 2024 15:26:57 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7xbt-00DEM4-01;
	Fri, 17 May 2024 15:26:57 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 17 May 2024 15:26:49 +0200
Message-Id: <20240517132656.3151273-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240517132656.3151273-1-a.fatoum@pengutronix.de>
References: <20240517132656.3151273-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240517_062702_347784_18804F1D 
X-CRM114-Status: GOOD (  11.48  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/8] test: move common config fragments into common/boards/configs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We'll start using these fragments inside Kbuild too for merged defconfigs
to cut down on defconfigs that are largely duplicated, but differ only
in a few options. To share such configs between architectures, we add
common/boards/configs as a common fragment directory here and
standardize on using .config as extension.

No functional change.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 .github/workflows/build-defconfigs.yml                 |  8 +++++---
 .github/workflows/test-labgrid-pytest.yml              |  6 ++++--
 .../base.cfg => common/boards/configs/base.config      |  0
 .../boards/configs/disable_size_check.config           |  0
 .../boards/configs/disable_target_tools.config         |  0
 .../boards/configs/enable_self_test.config             |  0
 .../boards/configs/enable_werror.config                |  0
 .../full.cfg => common/boards/configs/full.config      |  0
 .../boards/configs/virtio-pci.config                   |  0
 scripts/container.sh                                   |  2 +-
 test/emulate.pl                                        | 10 +++++-----
 test/x86/virtio@efi_defconfig.yaml                     |  2 +-
 12 files changed, 16 insertions(+), 12 deletions(-)
 rename test/kconfig/base.cfg => common/boards/configs/base.config (100%)
 rename test/kconfig/disable_size_check.kconf => common/boards/configs/disable_size_check.config (100%)
 rename test/kconfig/disable_target_tools.kconf => common/boards/configs/disable_target_tools.config (100%)
 rename test/kconfig/enable_self_test.kconf => common/boards/configs/enable_self_test.config (100%)
 rename test/kconfig/enable_werror.kconf => common/boards/configs/enable_werror.config (100%)
 rename test/kconfig/full.cfg => common/boards/configs/full.config (100%)
 rename test/kconfig/virtio-pci.cfg => common/boards/configs/virtio-pci.config (100%)

diff --git a/.github/workflows/build-defconfigs.yml b/.github/workflows/build-defconfigs.yml
index 012852053e87..6690b9db25b8 100644
--- a/.github/workflows/build-defconfigs.yml
+++ b/.github/workflows/build-defconfigs.yml
@@ -39,6 +39,8 @@ jobs:
 
         ./test/generate-dummy-fw.sh
 
-        ./MAKEALL -O build-${{matrix.arch}} -k test/kconfig/disable_size_check.kconf \
-                -k test/kconfig/disable_target_tools.kconf \
-                -k test/kconfig/enable_werror.kconf '${{matrix.config}}'
+        ./MAKEALL -O build-${{matrix.arch}} \
+                -k common/boards/configs/disable_size_check.config \
+                -k common/boards/configs/disable_target_tools.config \
+                -k common/boards/configs/enable_werror.config \
+                '${{matrix.config}}'
diff --git a/.github/workflows/test-labgrid-pytest.yml b/.github/workflows/test-labgrid-pytest.yml
index 6eb38cc03e6b..21d189880941 100644
--- a/.github/workflows/test-labgrid-pytest.yml
+++ b/.github/workflows/test-labgrid-pytest.yml
@@ -55,8 +55,10 @@ jobs:
       run: |
         export ARCH=${{matrix.arch}}
 
-        ./MAKEALL -O build-${{matrix.arch}} -k test/kconfig/enable_self_test.kconf \
-                -k test/kconfig/disable_target_tools.kconf ${{matrix.defconfig}}
+        ./MAKEALL -O build-${{matrix.arch}} \
+                -k common/boards/configs/enable_self_test.config \
+                -k common/boards/configs/disable_target_tools.config \
+                ${{matrix.defconfig}}
 
         if [ ${{matrix.arch}} = "riscv" ]; then
           cp /usr/share/qemu/opensbi-riscv32-generic-fw_dynamic.bin build-${{matrix.arch}}
diff --git a/test/kconfig/base.cfg b/common/boards/configs/base.config
similarity index 100%
rename from test/kconfig/base.cfg
rename to common/boards/configs/base.config
diff --git a/test/kconfig/disable_size_check.kconf b/common/boards/configs/disable_size_check.config
similarity index 100%
rename from test/kconfig/disable_size_check.kconf
rename to common/boards/configs/disable_size_check.config
diff --git a/test/kconfig/disable_target_tools.kconf b/common/boards/configs/disable_target_tools.config
similarity index 100%
rename from test/kconfig/disable_target_tools.kconf
rename to common/boards/configs/disable_target_tools.config
diff --git a/test/kconfig/enable_self_test.kconf b/common/boards/configs/enable_self_test.config
similarity index 100%
rename from test/kconfig/enable_self_test.kconf
rename to common/boards/configs/enable_self_test.config
diff --git a/test/kconfig/enable_werror.kconf b/common/boards/configs/enable_werror.config
similarity index 100%
rename from test/kconfig/enable_werror.kconf
rename to common/boards/configs/enable_werror.config
diff --git a/test/kconfig/full.cfg b/common/boards/configs/full.config
similarity index 100%
rename from test/kconfig/full.cfg
rename to common/boards/configs/full.config
diff --git a/test/kconfig/virtio-pci.cfg b/common/boards/configs/virtio-pci.config
similarity index 100%
rename from test/kconfig/virtio-pci.cfg
rename to common/boards/configs/virtio-pci.config
diff --git a/scripts/container.sh b/scripts/container.sh
index dff6546c2cf6..6bfb070692f5 100755
--- a/scripts/container.sh
+++ b/scripts/container.sh
@@ -2,7 +2,7 @@
 # SPDX-License-Identifier: GPL-2.0-only
 
 CONTAINER=${CONTAINER:-ghcr.io/barebox/barebox/barebox-ci:latest}
-export KCONFIG_ADD="test/kconfig/disable_target_tools.kconf $KCONFIG_ADD"
+export KCONFIG_ADD="common/boards/configs/disable_target_tools.config $KCONFIG_ADD"
 
 while getopts "c:uh" opt; do
 	case "$opt" in
diff --git a/test/emulate.pl b/test/emulate.pl
index a4ca6b7aee6e..086fae0f7708 100755
--- a/test/emulate.pl
+++ b/test/emulate.pl
@@ -201,8 +201,8 @@ sub build {
 	}
     }
 
-    push @TUXMAKE_ARGS, "--kconfig-add=test/kconfig/base.cfg" if $kconfig_base || $kconfig_full;
-    push @TUXMAKE_ARGS, "--kconfig-add=test/kconfig/full.cfg" if $kconfig_full;
+    push @TUXMAKE_ARGS, "--kconfig-add=common/boards/configs/base.config" if $kconfig_base || $kconfig_full;
+    push @TUXMAKE_ARGS, "--kconfig-add=common/boards/configs/full.config" if $kconfig_full;
 
     for (@kconfig_add) {
 	push @TUXMAKE_ARGS, "--kconfig-add=$_";
@@ -511,19 +511,19 @@ Supported: null, podman-local, podman, docker, docker-local.
 
 =item B<--no-kconfig-base>
 
-Don't apply test/kconfig/base.cfg. This may lead to more tests being
+Don't apply common/boards/configs/base.config. This may lead to more tests being
 skipped.
 
 =item B<--kconfig-full>
 
-Applies test/kconfig/full.cfg on top of base.cfg. This enables as much as
+Applies common/boards/configs/full.config on top of base.config. This enables as much as
 possible to avoid skipping tests for disabled functionality.
 
 =item B<--kconfig-add>=%s, B<-K>=%s
 
 Extra kconfig fragments, merged on top of the defconfig and Kconfig
 fragments described by the YAML. In tree configuration fragment
-(e.g. `test/kconfig/virtio-pci.config`), path to local file, URL,
+(e.g. `common/boards/configs/virtio-pci.config`), path to local file, URL,
 `CONFIG_*=[y|m|n]`, or `# CONFIG_* is not set` are supported.
 Can be specified multiple times, and will be merged in the order given.
 
diff --git a/test/x86/virtio@efi_defconfig.yaml b/test/x86/virtio@efi_defconfig.yaml
index 83340d19ddef..9ff4ff5a4e5a 100644
--- a/test/x86/virtio@efi_defconfig.yaml
+++ b/test/x86/virtio@efi_defconfig.yaml
@@ -17,7 +17,7 @@ targets:
     runner:
       tuxmake_arch: x86_64
       kconfig_add:
-        - test/kconfig/virtio-pci.cfg
+        - common/boards/configs/virtio-pci.config
         - CONFIG_DRIVER_SERIAL_NS16550=y
         - CONFIG_CONSOLE_ACTIVATE_FIRST=y # avoid duplicate output
 images:
-- 
2.39.2



