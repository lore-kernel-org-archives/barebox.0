Delivery-date: Thu, 12 Mar 2026 16:03:21 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w0hZI-00Argq-2V
	for lore@lore.pengutronix.de;
	Thu, 12 Mar 2026 16:03:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w0hZI-0000ab-Gt
	for lore@pengutronix.de; Thu, 12 Mar 2026 16:03:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EjVxNe4vMyAR1XRA6/dJo5tNq7ynHH6eMzRKXj9c6oM=; b=aR/TF1gMISvSEn6D2vUZJG5s1S
	pNOHEzA+ZhzCJsSDX29ssF52jn7t1ifQKZ+1FuN93p8jI/Aworn0VogDabiyiI4D8ce9nJQ1Y+3Y5
	Smv2b4WTJIOQ/lrEHq7QHfaz9/gwioLTMppyvFMqulL7hLaBGcK9f44+DgAXppEtYYZo98JlKJesU
	cLoM/c4RpFEgeMfkCI/WfSfLxPNXJrp6z2cJR5TGaiyRYYCUn+ZfJpMDVH2hK6iAd8Yzl4kTziSxJ
	MsQiOONrr+MPDeOGfCVhsmmpZ274WEL2i0uBJpgFakoztSZGT9pv4hMLUj1fRaNECern2hLLos8lz
	nnrMeRNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0hYc-0000000EI7V-2dMN;
	Thu, 12 Mar 2026 15:02:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0hYX-0000000EI34-2MUu
	for barebox@lists.infradead.org;
	Thu, 12 Mar 2026 15:02:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w0hYV-0008Uo-PS; Thu, 12 Mar 2026 16:02:31 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w0hYU-0052Pt-0o;
	Thu, 12 Mar 2026 16:02:31 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w0hHe-000000093tN-0urx;
	Thu, 12 Mar 2026 15:45:06 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 12 Mar 2026 15:44:57 +0100
Message-ID: <20260312144505.2159816-14-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260312144505.2159816-1-a.fatoum@pengutronix.de>
References: <20260312144505.2159816-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260312_080233_763226_D42A2955 
X-CRM114-Status: GOOD (  31.31  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.2
Subject: [PATCH 14/16] defaultenv: base: add new devboot script
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

devboot is a new command wrapper that makes it easier to use overrides
with network-provided artifacts:

- On the host side, add a *-devboot-* script that describes which
  overrides to use

- On the barebox side, ensure the script can be found at either
  ${fetchfs}/${global.user}-devboot-${global.hostname} or
  ${fetchfs}/${global.user}-devboot-${global.arch}

- barebox will source this script and pass the applicable overrides
  to the boot command in addition to whatever arguments devboot
  was given

Here's an example *-devboot-* script:

  devboot_image=afa-fit-rock3a
  devboot_oftree=                    # force use of barebox DT
  devboot_initrd=":afa-rsinit-arm64" # append specified CPIO to FIT's

  global linux.bootargs.dyn.rsinit=rsinit.bind=/lib/modules

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/user/booting-linux.rst     |   5 +-
 Documentation/user/devboot.rst           | 204 +++++++++++++++++++++++
 Documentation/user/user-manual.rst       |   1 +
 defaultenv/defaultenv-2-base/bin/devboot |  48 ++++++
 defaultenv/defaultenv-2-base/boot/devel  |   3 +
 5 files changed, 260 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/user/devboot.rst
 create mode 100644 defaultenv/defaultenv-2-base/bin/devboot
 create mode 100755 defaultenv/defaultenv-2-base/boot/devel

diff --git a/Documentation/user/booting-linux.rst b/Documentation/user/booting-linux.rst
index ed1ec3f68a93..3972777f30cf 100644
--- a/Documentation/user/booting-linux.rst
+++ b/Documentation/user/booting-linux.rst
@@ -182,7 +182,10 @@ and configure the overrides as arguments to the ``boot`` command:
 
 .. code-block:: sh
 
-  boot -o bootm.image=/mnt/tftp/oftree mmc
+  boot -o bootm.image=/mnt/tftp/zImage mmc
+
+See :ref:`devboot` for the full override syntax and the ``devboot``
+convenience script for network-based development.
 
 Generic Boot Targets
 ^^^^^^^^^^^^^^^^^^^^
diff --git a/Documentation/user/devboot.rst b/Documentation/user/devboot.rst
new file mode 100644
index 000000000000..ad1b4c909ab0
--- /dev/null
+++ b/Documentation/user/devboot.rst
@@ -0,0 +1,204 @@
+.. _devboot:
+
+Devboot
+=======
+
+Devboot is a development convenience that builds on top of the
+:ref:`boot override <boot_overrides>` mechanism. It sources a per-user,
+per-board script from the network and translates it into ``boot -o``
+arguments, making it easy to redirect any combination of kernel, device tree
+and initrd to network-hosted files without touching the boot medium.
+
+.. _boot_overrides:
+
+Boot overrides
+--------------
+
+Enable ``CONFIG_BOOT_OVERRIDE`` to allow partial overrides of boot entries.
+This is already enabled in ``multi_v7_defconfig`` and ``multi_v8_defconfig``.
+
+The ``boot`` command then accepts one or more ``-o`` flags:
+
+.. code-block:: sh
+
+  boot -o bootm.image=/mnt/tftp/my-zImage mmc
+  boot -o bootm.oftree=/mnt/tftp/my-board.dtb mmc
+  boot -o bootm.initrd=/mnt/tftp/my-initrd mmc
+
+Multiple overrides can be combined in a single invocation:
+
+.. code-block:: sh
+
+  boot -o bootm.image=/mnt/tftp/zImage \
+       -o bootm.oftree=/mnt/tftp/board.dtb \
+       -o bootm.initrd=/mnt/tftp/initrd \
+       mmc
+
+Overrides are applied after the boot entry has been loaded, so the original
+entry still selects the boot handler, kernel arguments, etc. Only the
+specified components are replaced.
+
+Override rules
+^^^^^^^^^^^^^^
+
+``bootm.image``
+  The override file is probed for its type. If it is a FIT image, the
+  FIT configuration is re-opened and all components (kernel, initrd, device
+  tree) are taken from the override FIT. If it is a plain kernel image
+  (zImage, Image, uImage, ...), only the OS loadable is replaced.
+
+``bootm.oftree``
+  A colon-separated list of files. The first entry is the base device tree;
+  subsequent entries are applied as overlays:
+
+  .. code-block:: sh
+
+    # Use a as the device tree
+    boot -o bootm.oftree=a mmc
+
+    # Use a as the device tree, apply b as overlay
+    boot -o bootm.oftree=a:b mmc
+
+    # Keep the existing device tree, apply b as overlay
+    boot -o bootm.oftree=:b mmc
+
+    # Use a as the device tree, apply b and c as overlays
+    boot -o bootm.oftree=a:b:c mmc
+
+  Setting ``bootm.oftree`` to an empty string (``bootm.oftree=``) discards
+  whatever device tree the boot entry provides. If
+  ``CONFIG_BOOTM_OFTREE_FALLBACK`` is enabled (the default), the
+  barebox-internal device tree is passed to the kernel instead. If the
+  option is disabled, no device tree is passed at all.
+
+``bootm.initrd``
+  A colon-separated list of initrd/CPIO files. Linux can transparently
+  extract any number of concatenated CPIOs, even if individually compressed.
+  A leading colon appends to the initrd that the boot entry already provides:
+
+  .. code-block:: sh
+
+    # Replace with a single initrd
+    boot -o bootm.initrd=/mnt/tftp/initrd mmc
+
+    # Concatenate two initrds
+    boot -o bootm.initrd=initrd1:initrd2 mmc
+
+    # Append an extra CPIO to the existing initrd
+    boot -o bootm.initrd=:extra.cpio mmc
+
+  .. tip::
+
+     The Linux kernel ``make cpio-modules-pkg`` target builds a CPIO archive
+     containing all kernel modules. This is useful for supplementing an existing
+     initramfs with modules without modifying the root filesystem.
+     Combined with initrd concatenation, a devboot script
+     can append it to any boot entry's initrd::
+
+       devboot_initrd=":afa-modules-arm64"
+
+     To make use of the modules, the initramfs init will need to make initramfs
+     /modules available to the rootfs, e.g. via a bind mount:
+
+       mount -n --bind /lib/modules ${ROOT_MOUNT}/lib/modules
+
+.. note::
+
+   When secure boot is enforced (``bootm_signed_images_are_forced()``),
+   overrides are silently ignored.
+
+The devboot script
+------------------
+
+The ``devboot`` command (``/env/bin/devboot``) automates the override
+workflow for network-based development:
+
+1. Brings up the network (``ifup -a1``).
+2. Changes into the fetch directory
+   (:ref:`global.net.fetchdir <magicvar_global_net_fetchdir>`, default
+   ``/mnt/tftp``).
+3. Sources a configuration script named
+   ``${global.user}-devboot-${global.hostname}``. If that file does not
+   exist, it falls back to ``${global.user}-devboot-${global.arch}``.
+4. Translates the variables set by the script into ``boot -o`` arguments.
+5. Passes any extra arguments through to the ``boot`` command.
+
+.. note::
+
+   TFTP is not a real file system, e.g., listing of directories is not
+   possible. Keep that in mind if the devboot script does more than
+   just fetch files by name from TFTP.
+
+Usage
+^^^^^
+
+.. code-block:: sh
+
+  # Boot from MMC with devboot overrides
+  devboot mmc
+
+  # Boot from the default boot entry
+  devboot
+
+  # Make devboot the default for subsequent boots
+  nv.boot.default=devel
+
+Configuration script
+^^^^^^^^^^^^^^^^^^^^
+
+The configuration script lives in the fetch directory and sets up to three
+variables:
+
+``devboot_image``
+  Override for ``bootm.image``. Path is relative to the fetch directory.
+
+``devboot_oftree``
+  Override for ``bootm.oftree``. An empty string discards the boot
+  entry's device tree (see ``bootm.oftree`` rules above).
+
+``devboot_initrd``
+  Override for ``bootm.initrd``. A leading colon appends to the boot
+  entry's existing initrd.
+
+Variables that are not set (using ``[[ -v ... ]]``) are left alone,
+so unset variables do not generate override arguments.
+
+The script can also set arbitrary barebox variables, for example
+kernel command line fragments:
+
+.. code-block:: sh
+
+  # /tftpboot/afa-devboot-rock3a
+  devboot_image=afa-fit-rock3a
+  devboot_oftree=
+  devboot_initrd=":afa-rsinit-arm64"
+
+  global linux.bootargs.dyn.rsinit="rsinit.bind=/lib/modules"
+
+With this script in place and ``global.user=afa``, ``global.hostname=rock3a``,
+running ``devboot mmc`` on the board expands to::
+
+  boot -o bootm.image="afa-fit-rock3a" \
+       -o bootm.oftree="" \
+       -o bootm.initrd=":afa-rsinit-arm64" \
+       mmc
+
+This fetches the FIT image ``afa-fit-rock3a`` from the fetch directory,
+discards the FIT's device tree (falling back to the barebox-internal one
+when ``CONFIG_BOOTM_OFTREE_FALLBACK`` is enabled), and appends the
+``afa-rsinit-arm64`` CPIO archive to whatever initrd the FIT already
+contains.
+
+Setting up the variables
+^^^^^^^^^^^^^^^^^^^^^^^^
+
+The ``global.user`` and ``global.hostname`` variables control which
+script is loaded. Make them persistent with:
+
+.. code-block:: sh
+
+  nv user=afa
+  nv hostname=rock3a
+
+``global.hostname`` is typically derived from the device tree, but can be
+overridden.
diff --git a/Documentation/user/user-manual.rst b/Documentation/user/user-manual.rst
index cb01721863dd..aa55017c69d7 100644
--- a/Documentation/user/user-manual.rst
+++ b/Documentation/user/user-manual.rst
@@ -26,6 +26,7 @@ Contents:
    usb
    ubi
    booting-linux
+   devboot
    bootchooser
    remote-control
    security
diff --git a/defaultenv/defaultenv-2-base/bin/devboot b/defaultenv/defaultenv-2-base/bin/devboot
new file mode 100644
index 000000000000..124bfec01ba3
--- /dev/null
+++ b/defaultenv/defaultenv-2-base/bin/devboot
@@ -0,0 +1,48 @@
+#!/bin/sh
+
+devboot_path="${global.net.fetchdir}"
+
+# global.net.server and global.hostname may be set by DHCP, so trigger it first
+ifup -a1
+
+cd "${devboot_path}" || exit 1
+saved_pwd="$OLDPWD"
+
+devboot_script="${global.user}-devboot-${global.hostname}"
+if [ ! -f "${devboot_script}" ]; then
+	devboot_script2="${global.user}-devboot-${global.arch}"
+	if [ ! -f "${devboot_script2}" ]; then
+		echo "Error: Neither ${devboot_script} nor ${devboot_script2} found"
+		echo "Create one of them and set as needed:"
+		echo "  devboot_image, devboot_initrd, devboot_oftree"
+		cd "${saved_pwd}"
+		exit 1
+	fi
+	devboot_script="${devboot_script2}"
+fi
+
+echo Sourcing "${devboot_path}/${devboot_script}"
+source "${devboot_path}/${devboot_script}"
+if [ $? -ne 0 ]; then
+	cd "${saved_pwd}"
+	exit 1
+fi
+
+override_args=""
+
+if [[ -v devboot_image ]]; then
+	override_args="${override_args} -o bootm.image=\"${devboot_image}\""
+fi
+
+if [[ -v devboot_oftree ]]; then
+	override_args="${override_args} -o bootm.oftree=\"${devboot_oftree}\""
+fi
+
+if [[ -v devboot_initrd ]]; then
+	override_args="${override_args} -o bootm.initrd=\"${devboot_initrd}\""
+fi
+
+echo boot ${override_args} $*
+boot ${override_args} $*
+
+cd "${saved_pwd}"
diff --git a/defaultenv/defaultenv-2-base/boot/devel b/defaultenv/defaultenv-2-base/boot/devel
new file mode 100755
index 000000000000..9bcaaffb5870
--- /dev/null
+++ b/defaultenv/defaultenv-2-base/boot/devel
@@ -0,0 +1,3 @@
+#!/bin/sh
+
+devboot
-- 
2.47.3



