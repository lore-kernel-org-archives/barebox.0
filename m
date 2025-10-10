Delivery-date: Fri, 10 Oct 2025 08:58:33 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v775F-006DhK-1k
	for lore@lore.pengutronix.de;
	Fri, 10 Oct 2025 08:58:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v775E-0000SU-6X
	for lore@pengutronix.de; Fri, 10 Oct 2025 08:58:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=M524WslZxEo5AlALfn2a4PD2qlAhA7ldqNi5j7vY5SU=; b=Y1J4U3O+i0l+UygoQXKqRiO0uE
	e/iMCdMitPwQgyMb5MO2mnP0f/VOxdpFuWdw/4e4W/eON+PKPp5utKtKafxNNKdLuLnxwzSbN/nsT
	Y3/pmNnAmOTNW4a8lteEzLCh8Mmj/4Y14WTwv5pz+Aygk6eMN3bCXYETSvKnJXDYLG2oJfsmyyniv
	ZlznifjBA/TbGEbj/qnD7RA0c/B/X5xc3xWHz4B+QekGrdAoeiG2Ws9qM6iKdxg6V4Y4O6TROWeCr
	tiHhCCJVR6ATxOJdCaKnG6q79Hm9i4e9pJEM2vICFEN8kwpya2dq7aaHpV7HFRF8ZO0dVwnLi5k7A
	JjjCJsfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v774f-00000007ngV-3oql;
	Fri, 10 Oct 2025 06:57:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v774c-00000007nfJ-2Mwl
	for barebox@lists.infradead.org;
	Fri, 10 Oct 2025 06:57:56 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1v774a-0000Gi-Uw; Fri, 10 Oct 2025 08:57:53 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Fri, 10 Oct 2025 08:57:45 +0200
Message-ID: <20251010065749.3141299-3-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251010065749.3141299-1-a.fatoum@barebox.org>
References: <20251010065749.3141299-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251009_235754_913688_CF931D9E 
X-CRM114-Status: GOOD (  31.12  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 3/3] Documentation: add contributing section
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add some documentation about the current contributing process as well as
instruction in particular for reproducing CI shuffle failures locally.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 Documentation/boards/emulated.rst    |  85 +---------
 Documentation/devel/contributing.rst | 231 +++++++++++++++++++++++++++
 Documentation/devel/devel.rst        |   1 +
 Documentation/user/introduction.rst  |  25 ++-
 4 files changed, 250 insertions(+), 92 deletions(-)
 create mode 100644 Documentation/devel/contributing.rst

diff --git a/Documentation/boards/emulated.rst b/Documentation/boards/emulated.rst
index dbc869546e2f..e3f7f78ab258 100644
--- a/Documentation/boards/emulated.rst
+++ b/Documentation/boards/emulated.rst
@@ -20,86 +20,17 @@ fix up the virtio mmio regions into the device tree and barebox will
 discover the devices automatically, analogously to what it does with
 VirtIO over PCI.
 
-labgrid
--------
+Running in QEMU
+---------------
 
-Labgrid is used to run the barebox test suite, both on real and emulated
-hardware. A number of YAML files located in ``test/$ARCH`` describe some
-of the virtualized targets that barebox is known to run on.
-
-barebox makes use of recent labgrid features, so you may need to install
-it directly from PyPI instead of your distro's package repositories::
-
-  pipx install pytest
-  pipx inject pytest labgrid
-
-Example usage::
+Emulated targets can be started interactively with ``pytest --interactive``::
 
   # Run x86 VM runnig the EFI payload from efi_defconfig
   pytest --lg-env test/x86/efi_defconfig.yaml --interactive
 
-  # Run the test suite against the same
-  pytest --lg-env test/x86/efi_defconfig.yaml
+  # Identical to above, provided the CONFIG_NAME=efi_defconfig
+  pytest --interactive
 
-The above assumes that barebox has already been built for the
-configuration and that labgrid is available. If barebox has been
-built out-of-tree, the build directory must be pointed at by
-``LG_BUILDDIR``, ``KBUILD_OUTPUT`` or a ``build`` symlink.
-
-Additional QEMU command-line options can be added by specifying
-them after the ``--qemu`` option::
-
-  # appends -device ? to the command line. Add --dry-run to see the final result
-  pytest --lg-env test/riscv/rv64i_defconfig.yaml --interactive --qemu -device '?'
-
-Some of the QEMU options that are used more often also have explicit
-support in the test runner, so paravirtualized devices can be added
-more easily::
-
-  # Run tests and pass a block device (here /dev/virtioblk0)
-  pytest --lg-env test/arm/virt@multi_v8_defconfig.yaml --blk=rootfs.ext4
-
-  # Run interactively with graphics output
-  pytest --lg-env test/mips/qemu-malta_defconfig.yaml --interactive --graphics
-
-For testing, the QEMU fw_cfg and virtfs support is particularly useful::
-
-  # inject boot.sh file in working directory into barebox environment
-  # at /env/boot/fit and set /env/nv/boot.default to fit
-  pytest --lg-env test/arm/virt@multi_v8_defconfig.yaml \
-     --env nv/boot.default=fit --env boot/fit=@boot.sh
-
-  # make available the host's local working directory in barebox as
-  # /mnt/9p/host
-  pytest --lg-env test/arm/virt@multi_v8_defconfig.yaml \
-     --fs host=.
-
-For a complete listing of possible options run ``pytest --help``.
-
-MAKEALL
--------
-
-The ``MAKEALL`` script is a wrapper around ``make`` to more easily build
-multiple configurations. It also accepts YAML Labgrid environment files
-as arguments, which will cause it to build and then run the tests::
-
-  ./MAKEALL test/mips/qemu-maltael_defconfig.yaml
-
-This expects ``CROSS_COMPILE`` (or ``CROSS_COMPILE_mips``) to have been
-set beforehand to point at an appropriate toolchain prefix.
-
-The barebox-ci container provides an easy way to run ``MAKEALL`` against
-all configurations supported by barebox, even if the host system
-lacks the appropriate toolchains::
-
-  # Run MAKEALL and possibly pytest in the container
-  alias MAKEALL="scripts/container.sh ./MAKEALL"
-
-  # Build a single configuration
-  MAKEALL test/mips/qemu-maltael_defconfig.yaml
-
-  # Build all configurations for an architecture, no test
-  MAKEALL -a riscv
-
-  # Build all mips platforms that can be tested
-  MAKEALL test/mips/*.yaml
+The test suite can be run by omitting the ``--interactive``.
+For more information, see the :ref:`labgrid` section in the
+:ref:`contributing` guide.
diff --git a/Documentation/devel/contributing.rst b/Documentation/devel/contributing.rst
new file mode 100644
index 000000000000..cfc9441d8e14
--- /dev/null
+++ b/Documentation/devel/contributing.rst
@@ -0,0 +1,231 @@
+.. _contributing:
+
+Contributing
+============
+
+barebox is developed in the open, and contributions are welcome.
+
+This document describes how to prepare and submit patches, how to build and test
+barebox across multiple configurations, and how to reproduce CI results locally.
+
+Coding Style
+------------
+
+barebox follows the general principles of the
+`Linux kernel coding style <https://www.kernel.org/doc/html/latest/process/coding-style.html>`_.
+Consistent formatting, clear structure, and portability are key goals.
+
+It's an explicit goal of barebox that a single build should be able
+to cover *all* boards across *all* SoCs supported for a given architecture.
+
+To that end, please avoid constructs that reduce portability:
+
+* ``#ifdef CONFIG_`` blocks in generic code that make it impossible
+  to support multiple boards with the same build
+
+* Use of weak symbols to override core behavior
+
+License and DCO
+---------------
+
+barebox is free software distributed under the terms of the
+GNU General Public License version 2. See the top-level ``COPYING``
+document for the full terms.
+
+All contributions need to include a ``Signed-off-by: Name <my@mail>`` in their
+commit message to certify agreement to the `Developer Certificate of Origin <https://developercertificate.org/>`_.
+
+Patch Workflow
+--------------
+
+barebox uses a similar patch process as the Linux kernel, so most of the
+`Linux guide for submitting patches <https://www.kernel.org/doc/html/latest/process/submitting-patches.html>`_
+also applies to barebox, except for the need to select your recipient;
+all barebox patches go to the same list.
+
+Patch series can be sent and fetched from the list using `b4 <https://pypi.org/project/b4/>`_ ::
+
+   b4 shazam -M https://lore.barebox.org/$messageid # replace with link
+
+Fixes should apply on master and new features on the next branch.
+
+If a series fails to apply, ``b4`` can determine/guess the base
+and have ``FETCH_HEAD`` point at it::
+
+   b4 shazam -H https://lore.kernel.org/$messageid # URL can be omitted
+
+``b4`` can also send patches to the barebox mailing list and offers
+a web relay for when git-send-email is not feasible (e.g. corporate proxies).
+
+After configuring your mail settings (or setting up the web relay),
+patches can be sent with::
+
+  git config sendemail.to barebox@lists.infradead.org
+  b4 send
+
+See the `b4 documentation <https://b4.docs.kernel.org/en/latest/>`_ for details.
+
+Continuous Integration
+----------------------
+
+All patches applied to barebox will automatically be built and tested using
+GitHub Actions. The CI performs a range of checks, including:
+
+* Building all configs across architectures using ``MAKEALL``.
+* Running tests against emulated targets using Labgrid
+* Building host tools against musl
+* Shuffle make dependency build order to find missing dependencies
+
+You can run the exact same tests yourself by forking the
+`the project on Github <https://github.com/barebox/barebox>`.
+
+Read along for instructions on reproducing locally.
+
+Building Multiple Configurations
+--------------------------------
+
+The ``MAKEALL`` script is a wrapper around ``make`` to more easily build
+multiple configurations::
+
+  ./MAKEALL -a arm imx_v7_defconfig imx_v8_defconfig
+
+When cross-compiling, you need to set one of::
+
+  CROSS_COMPILE
+  CROSS_COMPILE_<arch>
+  CROSS_COMPILE_<defconfig>
+
+You can also also build all configs for an architecture by omitting
+configs or just build everything at once::
+
+  ./MAKEALL
+
+See the help output of ``MAKEALL`` for more information.
+
+Container Environment
+---------------------
+
+The barebox-ci container provides an easy way to run ``MAKEALL`` against
+all configurations supported by barebox, even if the host system
+lacks the appropriate toolchains. It ships with everything CI needs
+and predefines ``CROSS_COMPILE_<arch>`` environment variables for
+all supported architectures::
+
+  # Build all configurations for RISC-V, no runtime test
+  scripts/container.sh ./MAKEALL -a riscv
+
+This ensures consistent results across developer systems and the CI.
+
+.. _labgrid:
+
+Labgrid
+-------
+
+Labgrid is used to run the barebox test suite, both on real and emulated
+hardware. A number of YAML files located in ``test/$ARCH`` describe some
+of the virtualized targets that barebox is known to run on.
+
+barebox makes use of recent labgrid features, so you may need to install
+it directly from PyPI instead of your distro's package repositories::
+
+  pipx install pytest
+  pipx inject pytest labgrid
+
+Example usage::
+
+  # Run x86 VM runnig the EFI payload from efi_defconfig
+  pytest --lg-env test/x86/efi_defconfig.yaml --interactive
+
+  # Run the test suite against the same
+  pytest --lg-env test/x86/efi_defconfig.yaml
+
+The above assumes that barebox has already been built for the
+configuration and that labgrid is available. If barebox has been
+built out-of-tree, the build directory must be pointed at by
+``LG_BUILDDIR``, ``KBUILD_OUTPUT`` or a ``build`` symlink.
+
+Additional QEMU command-line options can be added by specifying
+them after the ``--qemu`` option::
+
+  # appends -device ? to the command line. Add --dry-run to see the final result
+  pytest --lg-env test/riscv/rv64i_defconfig.yaml --interactive --qemu -device '?'
+
+Some of the QEMU options that are used more often also have explicit
+support in the test runner, so paravirtualized devices can be added
+more easily::
+
+  # Run tests and pass a block device (here /dev/virtioblk0)
+  pytest --lg-env test/arm/virt@multi_v8_defconfig.yaml --blk=rootfs.ext4
+
+  # Run interactively with graphics output
+  pytest --lg-env test/mips/qemu-malta_defconfig.yaml --interactive --graphics
+
+For testing, the QEMU fw_cfg and virtfs support is particularly useful::
+
+  # inject boot.sh file in working directory into barebox environment
+  # at /env/boot/fit and set /env/nv/boot.default to fit
+  pytest --lg-env test/arm/virt@multi_v8_defconfig.yaml \
+     --env nv/boot.default=fit --env boot/fit=@boot.sh
+
+  # make available the host's local working directory in barebox as
+  # /mnt/9p/host
+  pytest --lg-env test/arm/virt@multi_v8_defconfig.yaml \
+     --fs host=.
+
+For a complete listing of possible options run ``pytest --help``.
+
+The barebox-ci container already ships with labgrid and pytest.
+
+``MAKEALL`` can also be passed a Labgrid environment file to
+build and execute pytest afterwards, which is useful in combination::
+
+  # Run MAKEALL and possibly pytest in the container
+  alias MAKEALL="scripts/container.sh ./MAKEALL"
+
+  # Build and test a single configuration
+  MAKEALL test/mips/qemu-maltael_defconfig.yaml
+
+  # Build all MIPS platforms that can be tested
+  MAKEALL test/mips/*.yaml
+
+
+Reproducing Shuffle Failures
+----------------------------
+
+The CI performs randomized build ordering checks using ``make --shuffle``
+to detect missing dependencies between build targets.
+
+This may lead to occasional build failures, which is a good thing, because
+it allows us to fix issues, before downstream uns into them.
+
+If a failure occurs, the log will include a ``shuffle=`` value::
+
+  build (arm, virt32_secure_defconfig)
+
+  <snip>
+
+    HOSTCC  scripts/dtc/dtc-lexer.lex.o
+    SCONFPP include/generated/sconfig_names.h
+  make[1]: *** [/__w/barebox/barebox/Makefile:1230: include/generated/sconfig_names.h] Error 2 shuffle=857479879
+  make[1]: *** Deleting file 'include/generated/sconfig_names.h'
+  make[1]: *** Waiting for unfinished jobs....
+    HOSTLD  scripts/dtc/fdtget
+    HOSTLD  scripts/dtc/dtc
+  make: *** [Makefile:185: sub-make] Error 2 shuffle=857479879
+  Compile: FAILED
+  Compiled in    7s
+
+  --------------------- SUMMARY ----------------------------
+  defconfigs compiled: 1
+  	defconfigs with errors:   1 ( virt32_secure_defconfig )
+  Total time spent:    7s
+
+
+You should be able to reproduce the same issue locally by running::
+
+  ./scripts/container.sh -l '' -v 0 -e GNUMAKEFLAGS=--shuffle=857479879 \
+	./MAKEALL -a arm virt32_secure_defconfig
+
+Replace ``857479879`` above with the actual value reported by the CI.
+This reproduces the same randomized build sequence locally to help
+identify dependency issues.
diff --git a/Documentation/devel/devel.rst b/Documentation/devel/devel.rst
index 84074d142e03..810b5d254ee5 100644
--- a/Documentation/devel/devel.rst
+++ b/Documentation/devel/devel.rst
@@ -9,6 +9,7 @@ Contents:
    :maxdepth: 2
 
    architecture
+   contributing
    porting
    troubleshooting
    filesystems
diff --git a/Documentation/user/introduction.rst b/Documentation/user/introduction.rst
index 5b2a39f3c5c3..378cca45a0f9 100644
--- a/Documentation/user/introduction.rst
+++ b/Documentation/user/introduction.rst
@@ -37,23 +37,18 @@ There's also an IRC channel, which is
 
 .. _feedback:
 
-Sending Patches
----------------
+Patch workflow
+--------------
 
-barebox uses a similar patch process as the Linux kernel, so most of the
-`Linux guide for submitting patches <https://www.kernel.org/doc/html/latest/process/submitting-patches.html>`_
-also applies to barebox, except for the need to select your recipient;
-all barebox patches go to the same list.
+Patches are sent via email to the barebox mailing list, similarly to how
+you would contribute to the Linux kernel.
 
-Patch series can be sent and fetched from the list using `b4 <https://pypi.org/project/b4/>`_ ::
+Patch series on the mailing list can be fetched most easily with
+`b4 <https://pypi.org/project/b4/>`_::
 
-   b4 shazam -M https://lore.barebox.org/$messageid # replace with link
+   b4 shazam -H https://lore.barebox.org/$messageid # replace with link
 
-Fixes should apply on master and new features on the next branch.
-If a series fails to apply, ``b4`` can determine/guess the base
-and have ``FETCH_HEAD`` point at it::
+This will determine a suitable base, apply the patches onto it and point
+the ``FETCH_HEAD`` ref at it.
 
-   b4 shazam -H https://lore.kernel.org/$messageid # URL can be omitted
-
-CI tests are executed by Github Actions can be used by forking
-`the project on Github <https://github.com/barebox/barebox>`.
+For a guide on how to send patches, see :ref:`contributing`.
-- 
2.47.3



