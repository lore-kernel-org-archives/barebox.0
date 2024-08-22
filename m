Delivery-date: Thu, 22 Aug 2024 13:58:11 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sh6SB-00CEpy-1X
	for lore@lore.pengutronix.de;
	Thu, 22 Aug 2024 13:58:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sh6SA-0005Yd-Me
	for lore@pengutronix.de; Thu, 22 Aug 2024 13:58:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FqNEfxO5zm2r6Tvfs7M6JFxfXHkm4NbZBCP5F2QQPas=; b=2jqceUIo+TUet0bpRuKDGCChrD
	DberZqr2uOQlHcUO3i3fUhO+Abg6vPGHNOkmtKZxOVXv8OZtVJeIAHUKpH/Y6SrltuRNVdG3JJjtF
	hdhuOau9coW+kpgobDIrxeamKv8kifHxz2GchS90BAUyBLGwH87NBMVeCmxMrBiRPgKZ1Y/dqYsAF
	+AI8ByO37Lf4ZM/iTzLWckdbENXSYfWARUgm7d8KiyD3um2WGXsB5huHS+EGKg5HFuT1qIrBHVNfS
	QAmy1fZwICCqiW5ppTw9MoDKQ3xW5orLrlGt58VusxpmeEDzzkd9u4IrRj8qg7hpkEubDKBU98i/M
	xr5Sxtwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sh6Rh-0000000CfRM-0XgG;
	Thu, 22 Aug 2024 11:57:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sh6RZ-0000000CfL0-1AYd
	for barebox@lists.infradead.org;
	Thu, 22 Aug 2024 11:57:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sh6RY-00054v-1N; Thu, 22 Aug 2024 13:57:32 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sh6RX-002EyA-Ha; Thu, 22 Aug 2024 13:57:31 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sh6RX-004y9I-1T;
	Thu, 22 Aug 2024 13:57:31 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 22 Aug 2024 13:57:30 +0200
Message-Id: <20240822115730.1184500-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240822115730.1184500-1-a.fatoum@pengutronix.de>
References: <20240822115730.1184500-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240822_045733_413235_22319F56 
X-CRM114-Status: GOOD (  20.71  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 5/5] Documentation: board: emulated: rewrite to use MAKEALL/pytest directly
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

I added test/emulate.pl for my own use, but it didn't catch on. The CI
uses MAKEALL and lots of functionality has been migrated into pytest
proper, e.g. test/emulate.pl --emulate is now pytest --interactive.

Everything that's described in the docs is now supported though by
MAKEALL/pytest, so let's rewrite the documentation to use them.

There's still some features remaining that only emulate.pl supports,
once these are present in MAKEALL/pytest, we can drop it too.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/boards/emulated.rst | 85 +++++++++++++++++--------------
 1 file changed, 47 insertions(+), 38 deletions(-)

diff --git a/Documentation/boards/emulated.rst b/Documentation/boards/emulated.rst
index a67533613ec5..99c55d2051c2 100644
--- a/Documentation/boards/emulated.rst
+++ b/Documentation/boards/emulated.rst
@@ -20,56 +20,65 @@ fix up the virtio mmio regions into the device tree and barebox will
 discover the devices automatically, analogously to what it does with
 VirtIO over PCI.
 
-test/emulate.pl
----------------
+labgrid
+-------
 
-The ``emulate.pl`` script shipped with barebox can be used to easily
-start VMs. It reads a number of YAML files in ``test/$ARCH``, which
-describe some virtualized targets that barebox is known to run on.
-
-Controlled by command line options, these targets are built with
-tuxmake if available and loaded into the emulator for either interactive
-use or for automated testing with Labgrid ``QEMUDriver``.
-
-.. _tuxmake: https://pypi.org/project/tuxmake/
-.. _Labgrid: https://labgrid.org
-
-Install dependencies for interactive use::
-
-  cpan YAML::XS # or use e.g. libyaml-libyaml-perl on Debian
-  pip3 install tuxmake # optional
+Labgrid is used to run the barebox test suite, both on real and emulated
+hardware. A number of YAML files located in ``test/$ARCH`` describe some
+of the virtualized targets that barebox is known to run on.
 
 Example usage::
 
-  # Switch to barebox source directory
-  cd barebox
+  # Run x86 VM runnig the EFI payload from efi_defconfig
+  pytest --lg-env test/x86/efi_defconfig.yaml --interactive
 
-  # emulate x86 VM runnig the EFI payload from efi_defconfig
-  ARCH=x86 ./test/emulate.pl efi_defconfig
+  # Run the test suite against the same
+  pytest --lg-env test/x86/efi_defconfig.yaml
 
-  # build all MIPS targets known to emulate.pl and exit
-  ARCH=mips ./test/emulate.pl --no-emulate
+The above assumes that barebox has already been built for the
+configuration and that labgrid is available. If barebox has been
+built out-of-tree, the build directory must be pointed at by
+``LG_BUILDDIR``, ``KBUILD_OUTPUT`` or a ``build`` symlink.
 
-The script can also be used with a precompiled barebox tree::
+Additional QEMU command-line options can be added by specifying
+them after the ``--qemu`` option::
 
-  # Switch to build directory
-  export KBUILD_OUTPUT=build
+  # appends -device ? to the command line. Add --dry-run to see the final result
+  pytest --lg-env test/riscv/rv64i_defconfig.yaml --interactive --qemu -device '?'
 
-  # run a barebox image built outside tuxmake on an ARM virt machine
-  ARCH=arm ./test/emulate.pl virt@multi_v7_defconfig --no-tuxmake
+Some of the QEMU options that are used more often also have explicit
+support in the test runner, so paravirtualized devices can be added
+more easily::
 
-  # run tests instead of starting emulator interactively
-  ARCH=arm ./test/emulate.pl virt@multi_v7_defconfig --no-tuxmake --test
+  # Run tests and pass a block device (here /dev/virtioblk0)
+  pytest --lg-env test/arm/virt@multi_v8_defconfig.yaml --blk=rootfs.ext4
 
-``emulate.pl`` also has some knowledge on paravirtualized devices::
+For a complete listing of possible options run ``pytest --help``.
 
-  # Run target and pass a block device (here /dev/virtioblk0)
-  ARCH=riscv ./test/emulate.pl --blk=rootfs.ext4 rv64i_defconfig
+MAKEALL
+-------
 
-Needed command line options can be passed directly to the
-emulator/``pytest`` as well by placing them behind ``--``::
+The ``MAKEALL`` script is a wrapper around ``make`` to more easily build
+multiple configurations. It also accepts YAML Labgrid environment files
+as arguments, which will cause it to build and then run the tests::
 
-  # appends -device ? to the command line. Add -n to see the final result
-  ARCH=riscv ./test/emulate.pl rv64i_defconfig -- -device ?
+  ./MAKEALL test/mips/qemu-maltael_defconfig.yaml
 
-For a complete listing of options run ``./test/emulate.pl -h``.
+This expects ``CROSS_COMPILE`` (or ``CROSS_COMPILE_mips``) to have been
+set beforehand to point at an appropriate toolchain prefix.
+
+The barebox-ci container provides an easy way to run ``MAKEALL`` against
+all configurations supported by barebox, even if the host system
+lacks the appropriate toolchains::
+
+  # Run MAKEALL and possibly pytest in the container
+  alias MAKEALL="scripts/container.sh ./MAKEALL"
+
+  # Build a single configuration
+  MAKEALL test/mips/qemu-maltael_defconfig.yaml
+
+  # Build all configurations for an architecture, no test
+  MAKEALL -a riscv
+
+  # Build all mips platforms that can be tested
+  MAKEALL test/mips/*.yaml
-- 
2.39.2



