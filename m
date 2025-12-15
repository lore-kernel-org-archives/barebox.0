Delivery-date: Mon, 15 Dec 2025 08:59:58 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV3Us-00BfS4-2N
	for lore@lore.pengutronix.de;
	Mon, 15 Dec 2025 08:59:58 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV3Ur-0005us-3Q
	for lore@pengutronix.de; Mon, 15 Dec 2025 08:59:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PtRd5Z1iD/W0GEbwCasnScOm2vajny2Vb5pdrowC5lI=; b=uDPYrxNz5++y5ER74TFNlAyuvR
	w3sc9Rs/1r84STMT3MfNFnM7YtOhhGlh+gKTZTcK60xtNkn/LUPZ33Blgtlg27eRqF5VyKcoTmypE
	BvbqDMJLyDjCiPyN3Fx6RWULivaqcgx/2vULNYygHQF8VfpDaUOLXM5jBD865/58+GjisMSKfsZlm
	F14fb2ob/J1URKUIJKs/zNHWYN25vww1UP1FKU1DQbpL5l2yX0B+F+Rf3Tf6maFiCeSXBP+f+F7Us
	V1Q7U6rGiEQwXqv16WhXqqFV0fHPQ5TTmIMKGZI8pdUhyv/3j698wu0oD9JwdHtADltu6lJ7JRkjS
	AEM2d/EA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV3UJ-00000003Ebb-3DCg;
	Mon, 15 Dec 2025 07:59:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV3U9-00000003EXG-2hOE
	for barebox@lists.infradead.org;
	Mon, 15 Dec 2025 07:59:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vV3U6-0005aE-GX; Mon, 15 Dec 2025 08:59:10 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vV3U6-005kAh-0v;
	Mon, 15 Dec 2025 08:59:10 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vV3U6-0000000594H-0lOU;
	Mon, 15 Dec 2025 08:59:10 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 15 Dec 2025 08:59:01 +0100
Message-ID: <20251215075907.1222551-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251215075907.1222551-1-a.fatoum@pengutronix.de>
References: <20251215075907.1222551-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251214_235913_994957_93C66797 
X-CRM114-Status: GOOD (  33.60  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 5/5] Documentation: turn magic variables literals into references
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

With the script added in the previous commit changed to emit the name of
all magic variables, this commit proceeds to search-and-replace
occurrences of ``$magic.var`` and ``magic.var`` with a reference link.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/devel/troubleshooting.rst       |  3 +-
 .../migration-guides/migration-2025.02.0.rst  |  3 +-
 .../migration-guides/migration-2025.04.0.rst  |  3 +-
 .../migration-guides/migration-2025.05.0.rst  |  3 +-
 Documentation/user/bootchooser.rst            | 31 ++++++++++++-------
 Documentation/user/booting-linux.rst          | 30 ++++++++++--------
 Documentation/user/devicetree.rst             | 15 +++++----
 Documentation/user/networking.rst             | 11 ++++---
 Documentation/user/reboot-mode.rst            | 25 +++++++++------
 Documentation/user/reset-reason.rst           |  5 ++-
 Documentation/user/security.rst               |  4 +--
 Documentation/user/usb.rst                    | 14 ++++-----
 Documentation/user/versioning.rst             |  5 +--
 13 files changed, 89 insertions(+), 63 deletions(-)

diff --git a/Documentation/devel/troubleshooting.rst b/Documentation/devel/troubleshooting.rst
index 8e31148b9c06..f7896a2eb377 100644
--- a/Documentation/devel/troubleshooting.rst
+++ b/Documentation/devel/troubleshooting.rst
@@ -379,7 +379,8 @@ to :ref:`visualize only the fixups that were applied by barebox to the device tr
 
 If you are sure that the kernel is indeed being loaded, the ``earlycon`` kernel
 feature can enable early debugging output before kernel serial drivers are loaded.
-barebox can fixup an earlycon option if ``global.bootm.earlycon=1`` is specified.
+barebox can fixup an earlycon option if
+:ref:`global.bootm.earlycon=1 <magicvar_global_bootm_earlycon>` is specified.
 
 Spurious Aborts/Hangs
 =====================
diff --git a/Documentation/migration-guides/migration-2025.02.0.rst b/Documentation/migration-guides/migration-2025.02.0.rst
index c585d2e96341..9210edf1d4b1 100644
--- a/Documentation/migration-guides/migration-2025.02.0.rst
+++ b/Documentation/migration-guides/migration-2025.02.0.rst
@@ -4,7 +4,8 @@ Release v2025.02.0
 Environment Auto-Probe
 ----------------------
 
-A new magic variable ``global.env.autoprobe`` now controls whether barebox
+A new magic variable :ref:`global.env.autoprobe <magicvar_global_env_autoprobe>`
+now controls whether barebox
 will automatically probe known block devices for a GPT barebox environment
 partition if no environment was specified by other means.
 
diff --git a/Documentation/migration-guides/migration-2025.04.0.rst b/Documentation/migration-guides/migration-2025.04.0.rst
index de7efdf47fe6..b6d077c85717 100644
--- a/Documentation/migration-guides/migration-2025.04.0.rst
+++ b/Documentation/migration-guides/migration-2025.04.0.rst
@@ -4,7 +4,8 @@ Release v2025.04.0
 Boot overrides
 --------------
 
-It's no longer possible to override ``global.bootm.image`` with
+It's no longer possible to override
+:ref:`global.bootm.image <magicvar_global_bootm_image>` with
 the new ``boot -o`` syntax. This override led to issues when
 substituting wildly different boot image formats.
 
diff --git a/Documentation/migration-guides/migration-2025.05.0.rst b/Documentation/migration-guides/migration-2025.05.0.rst
index f22c9f7c02c5..1cab96e2bd09 100644
--- a/Documentation/migration-guides/migration-2025.05.0.rst
+++ b/Documentation/migration-guides/migration-2025.05.0.rst
@@ -74,7 +74,8 @@ Shell and magic variables
 
 * ``/dev/fw_cfg0`` has been renamed to ``/dev/fw_cfg``
 
-* ``global.boot.default`` is now ``bootsource net`` by default.
+* :ref:`global.boot.default <magicvar_global_boot_default>` is now
+  ``bootsource net`` by default.
 
   This does not affect users setting ``nv boot.default``, but for
   others, barebox will look for bootloader spec on the bootsource
diff --git a/Documentation/user/bootchooser.rst b/Documentation/user/bootchooser.rst
index 9cf8d4c81737..360305e92e3f 100644
--- a/Documentation/user/bootchooser.rst
+++ b/Documentation/user/bootchooser.rst
@@ -32,7 +32,9 @@ Bootchooser Targets
 -------------------
 
 A *bootchooser* boot target represents one target that barebox can boot. The
-known targets are set in ``global.bootchooser.targets``. A target consists of a
+known targets are set in
+:ref:`global.bootchooser.targets <magicvar_global_bootchooser_targets>`.
+A target consists of a
 set of variables in the ``global.bootchooser.<targetname>`` namespace. The
 following configuration variables describe a *bootchooser* boot target:
 
@@ -46,7 +48,9 @@ following configuration variables describe a *bootchooser* boot target:
   Defaults to ``bootchooser.default_attempts``, see below.
 ``global.bootchooser.<targetname>.default_priority``
   The default priority of a boot target.
-  Defaults to ``global.bootchooser.default_priority``, see below.
+  Defaults to
+  :ref:`global.bootchooser.default_priority <magicvar_global_bootchooser_default_priority>`,
+  see below.
 
 The *bootchooser* algorithm generally only starts boot targets that have a ``priority``
 > 0 and a ``remaining_attempts`` counter > 0.
@@ -76,7 +80,9 @@ no remaining attempts left.
 
 To prevent ending up in an unbootable system after a number of failed boot
 attempts, there is also a built-in mechanism to reset the counters to their defaults,
-controlled by the ``global.bootchooser.reset_attempts`` variable.
+controlled by the
+:ref:`global.bootchooser.reset_attempts <magicvar_global_bootchooser_reset_attempts>`
+variable.
 
 .. _bootchooser,attempts_lock:
 
@@ -98,7 +104,8 @@ interpreted as ``0``, meaning that attempts are decremented normally.
 The ``attempts_locked`` value does not influence the decision on which target
 to boot if any, only whether to decrement the attempts when booting.
 
-If ``global.bootchooser.retry`` is enabled (set to ``1``), the bootchooser
+If :ref:`global.bootchooser.retry <magicvar_global_bootchooser_retry>`
+is enabled (set to ``1``), the bootchooser
 algorithm will iterate through all valid boot targets (and decrease their
 counters) until one succeeds or none is left.
 If it is disabled only one attempt will be made for each bootchooser call.
@@ -149,17 +156,17 @@ General Bootchooser Options
 In addition to the boot target options described above, *bootchooser* has some general
 options not specific to any boot target.
 
-``global.bootchooser.disable_on_zero_attempts``
+:ref:`global.bootchooser.disable_on_zero_attempts <magicvar_global_bootchooser_disable_on_zero_attempts>`
   Boolean flag. If set to 1, *bootchooser* disables a boot target (sets priority
   to 0) whenever the remaining attempts counter reaches 0. Defaults to 0.
-``global.bootchooser.default_attempts``
+:ref:`global.bootchooser.default_attempts <magicvar_global_bootchooser_default_attempts>`
   The default number of attempts that a boot target shall be tried before skipping
   it, used when not overwritten with the boot target specific variable of the same
   name. Defaults to 3.
-``global.bootchooser.default_priority``
+:ref:`global.bootchooser.default_priority <magicvar_global_bootchooser_default_priority>`
   The default priority of a boot target when not overwritten with the target
   specific variable of the same name. Defaults to 1.
-``global.bootchooser.reset_attempts``
+:ref:`global.bootchooser.reset_attempts <magicvar_global_bootchooser_reset_attempts>`
   A space-separated list of conditions (checked during bootchooser start) that
   shall cause the ``remaining_attempts`` counters of all enabled targets to be
   reset. Possible values:
@@ -170,22 +177,22 @@ options not specific to any boot target.
   * ``reset``: If a generic reset (``$global.system.reset="RST"``) is detected.
   * ``all-zero``: If the ``remaining_attempts`` counters of all enabled targets
     are zero.
-``global.bootchooser.reset_priorities``
+:ref:`global.bootchooser.reset_priorities <magicvar_global_bootchooser_reset_priorities>`
   A space-separated list of conditions (checked during bootchooser start) that
   shall cause the ``priority``  of all boot targets to be reset. Possible values:
 
   * empty: Priorities will never be reset (default).
   * ``all-zero``: If all boot targets have zero ``priority``.
-``global.bootchooser.retry``
+:ref:`global.bootchooser.retry <magicvar_global_bootchooser_retry>`
   If set to 1, *bootchooser* retries booting until one succeeds or no more valid
   boot targets exist.
   Otherwise the ``boot`` command will return with an error after the first failed
   boot target. Defaults to 0.
-``global.bootchooser.state_prefix``
+:ref:`global.bootchooser.state_prefix <magicvar_global_bootchooser_state_prefix>`
   If set, this makes *bootchooser* use the *state* framework as backend for
   storing run-time data and defines the name of the state instance to use, see
   :ref:`below <bootchooser,state_framework>`. Defaults to an empty string.
-``global.bootchooser.targets``
+:ref:`global.bootchooser.targets <magicvar_global_bootchooser_targets>`
   Space-separated list of boot targets that are used. For each entry in the list
   a corresponding set of variables must exist in the chosen *bootchooser* storage
   backend.
diff --git a/Documentation/user/booting-linux.rst b/Documentation/user/booting-linux.rst
index 6a41de6712ea..ed1ec3f68a93 100644
--- a/Documentation/user/booting-linux.rst
+++ b/Documentation/user/booting-linux.rst
@@ -25,7 +25,7 @@ following images are supported:
 * FIT images, containing a zImage or Image
 
 The images can either be passed directly to the bootm command as argument or
-in the ``global.bootm.image`` variable:
+in the :ref:`global.bootm.image <magicvar_global_bootm_image>` variable:
 
 .. code-block:: sh
 
@@ -37,8 +37,8 @@ in the ``global.bootm.image`` variable:
   bootm
 
 When barebox has an internal devicetree it is passed to the kernel. You can
-specify an alternative devicetree with the ``-o DTS`` option or the ``global.bootm.oftree``
-variable:
+specify an alternative devicetree with the ``-o DTS`` option or the
+:ref:`global.bootm.oftree <magicvar_global_bootm_oftree>` variable:
 
 .. code-block:: sh
 
@@ -50,8 +50,8 @@ variable:
   global.bootm.image=/path/to/zImage
   bootm
 
-To use an initramfs, use the ``-r`` option or the ``global.bootm.initrd``
-variable:
+To use an initramfs, use the ``-r`` option or the
+:ref:`global.bootm.initrd <magicvar_global_bootm_initrd>` variable:
 
 .. code-block:: sh
 
@@ -73,14 +73,15 @@ It's also possible to select a specific configuration explicitly:
 
 **NOTE:** it may happen that barebox is probed from the devicetree, but you have
 want to start a Kernel without passing a devicetree. In this case set the
-``global.bootm.boot_atag`` variable to ``true``.
+:ref:`global.bootm.boot_atag <magicvar_global_bootm_boot_atag_arm>` variable to
+``true``.
 
 Passing Kernel Arguments
 ^^^^^^^^^^^^^^^^^^^^^^^^
 
 The simple method to pass bootargs to the kernel is with
 ``CONFIG_FLEXIBLE_BOOTARGS`` disabled: in this case the bootm command
-takes the bootargs from the ``bootargs`` environment variable.
+takes the bootargs from the :ref:`bootargs <magicvar_bootargs>` environment variable.
 
 With ``CONFIG_FLEXIBLE_BOOTARGS`` enabled, the bootargs are composed
 from different :ref:`global device<global_device>` variables. All variables beginning
@@ -128,7 +129,8 @@ Creating root= options for the Kernel
 It's a common case that the Linux Kernel is loaded from a filesystem
 that later becomes the root filesystem for the Kernel. For several
 filesystems barebox can automatically append a suitable root= option
-to the Kernel command line. This is done when ``global.bootm.appendroot``
+to the Kernel command line. This is done when
+:ref:`global.bootm.appendroot <magicvar_global_bootm_appendroot>`
 is true. How the root= option is appended depends on the device type
 and filesystem the kernel is booted from. For disk like devices (SD/MMC,
 ATA) the partition UUID will be used, the root= option will be something
@@ -171,8 +173,8 @@ This is done so that following boot entries do not leak command line
 parameters from the previous boot entries.
 
 This entry can be booted with ``boot mmc``. It can also be made the default by
-setting the ``global.boot.default`` variable to ``mmc`` and then calling
-``boot`` without arguments.
+setting the :ref:`global.boot.default <magicvar_global_boot_default>` variable
+to ``mmc`` and then calling ``boot`` without arguments.
 
 Especially for development, it can be useful to override only parts of
 the images used in a boot. To do so, set ``CONFIG_BOOT_OVERRIDE=y``
@@ -191,7 +193,7 @@ bootloader spec file detected at runtime as described in the next section.
 There is also a number of generic default boot targets available, when
 ``CONFIG_BOOT_DEFAULTS`` is enabled. These expands to a single device at most:
 
-* ``bootsource``: expands to the device barebox booted from
+* :ref:`bootsource <magicvar_bootsource>`: expands to the device barebox booted from
 * ``diskuuid.*``: expands to the device with specified ``*`` diskuuid
 
 For these targets that expand to a single device, a partition can also be specified,
@@ -268,7 +270,8 @@ The entry can be listed with the ``-l`` option:
         linux:      11ab7c89d02c4f66a4e2474ea25b2b84.15/linux
 
 When the SD card shows up as ``mmc1`` in barebox, this entry can be booted with
-``boot mmc1`` or by setting ``global.boot.default`` to ``mmc1``.
+``boot mmc1`` or by setting
+:ref:`global.boot.default <magicvar_global_boot_default>` to ``mmc1``.
 
 A bootloader spec entry can also reside on an NFS server by pointing the boot
 command at the mount point
@@ -318,7 +321,8 @@ Note that barebox will pass the same IP settings to the kernel, i.e. it passes
 and ``ip=dhcp`` for a dynamic DHCP setup. ``<linuxdevname>`` is a configurable value.
 set ``nv.dev.<ethdev>.linuxdevname`` to the name the device has in Linux.
 
-By default, barebox uses the variables ``global.user`` and ``global.hostname``
+By default, barebox uses the variables ``global.user`` and
+:ref:`global.hostname <magicvar_global_hostname>`
 to retrieve its kernel image over TFTP, which makes it possible to use multiple
 boards for multiple users with one single server.
 You can adjust those variables using nvvars with these commands::
diff --git a/Documentation/user/devicetree.rst b/Documentation/user/devicetree.rst
index 9702db5c5ad2..82436f0dbcbb 100644
--- a/Documentation/user/devicetree.rst
+++ b/Documentation/user/devicetree.rst
@@ -108,27 +108,30 @@ Device tree overlays on the kernel device tree
 Overlays can be applied to the kernel device tree before it is handed over to
 the kernel. The behaviour is controlled by different variables:
 
-``global.of.overlay.path``
+:ref:`global.of.overlay.path <magicvar_global_of_overlay_path>`
   Overlays are read from this path. The path can either be a directory which
   contains the overlays or a path to a FIT-image. barebox will try to apply all
   overlays found if not limited by one of the other variables below. When the
   path given here is an absolute path it is used as is. A relative path is
   relative to ``/`` or relative to the rootfs when using bootloader spec.
-``global.of.overlay.compatible``
+:ref:`global.of.overlay.compatible <magicvar_global_of_overlay_compatible>`
   This is a space separated list of compatibles. Only overlays matching one of
   these compatibles will be applied. When this list is empty then all overlays
   will be applied. Overlays that don't have a compatible are considered being
   always compatible.
-``global.of.overlay.pattern``
+:ref:`global.of.overlay.pattern <magicvar_global_of_overlay_pattern>`
   This is a space separated list of file patterns or FIT-image config-node name
   patterns. An overlay is only applied when its filename or FIT-image
   config-node name matches one of the patterns. The patterns can contain ``*``
   and ``?`` as wildcards. The default is ``*`` which means all files or FIT-Image
   config-nodes are applied.
-``global.of.overlay.filter``
+:ref:`global.of.overlay.filter <magicvar_global_of_overlay_filter>`
   This is a space separated list of filters to apply. There are two generic filters:
-  ``pattern`` matches ``global.of.overlay.pattern`` above, ``compatible`` matches
-  ``global.of.overlay.compatible`` above. The default is ``pattern compatible``
+  ``pattern`` matches
+  :ref:`global.of.overlay.pattern <magicvar_global_of_overlay_pattern>` above,
+  ``compatible`` matches
+  :ref:`global.of.overlay.compatible <magicvar_global_of_overlay_compatible>` above.
+  The default is ``pattern compatible``
   which means the two generic filters are active. This list may be replaced or
   supplemented by board specific filters.
 
diff --git a/Documentation/user/networking.rst b/Documentation/user/networking.rst
index 605936c6a895..d1db2768ad20 100644
--- a/Documentation/user/networking.rst
+++ b/Documentation/user/networking.rst
@@ -160,14 +160,17 @@ both TFTP and NFS. On first access, an Ethernet interface will be brought
 up and file operations will be forwarded to a host specified by global
 variables:
 
-- ``/mnt/tftp``: will use ``$global.net.server`` as TFTP server
+- ``/mnt/tftp``: will use :ref:`global.net.server <magicvar_global_net_server>`
+  as TFTP server
 
-- ``/mnt/nfs``: will use ``$global.net.server`` as NFS server
+- ``/mnt/nfs``: will use :ref:`global.net.server <magicvar_global_net_server>`
+  as NFS server
   and ``/home/${global.user}/nfsroot/${global.hostname}`` as nfsroot.
   By default, a RPC lookup will be conducted to determine mount and
   NFS ports, but these can be overridden together using a user-specified
-  by means of ``global.nfs.port``. The latter is equivalent to specifying
-  ``-o port=$global.nfs.port,mountport=$global.nfs.port`` as argument
+  by means of :ref:`global.nfs.port <magicvar_global_nfs_port>`.
+  The latter is equivalent to specifying
+  ``-o port=${global.nfs.port},mountport=${global.nfs.port}`` as argument
   to the :ref:`mount command <command_mount>`.
 
 Network console
diff --git a/Documentation/user/reboot-mode.rst b/Documentation/user/reboot-mode.rst
index 1929a67e0bc9..2e761c65f6a3 100644
--- a/Documentation/user/reboot-mode.rst
+++ b/Documentation/user/reboot-mode.rst
@@ -44,8 +44,10 @@ the device. By convention, this should end with ``.reboot_mode``, e.g.::
 	};
 
 Reboot mode providers have priorities. The provider with the highest
-priority has its parameters aliased as ``$global.system.reboot_mode.prev``
-and ``$global.system.reboot_mode.next``. After executing the init scripts,
+priority has its parameters aliased as
+:ref:`global.system.reboot_mode.prev <magicvar_global_system_reboot_mode_prev>`
+and :ref:`global.system.reboot_mode.next <magicvar_global_system_reboot_mode_next>`.
+After executing the init scripts,
 barebox startup will ``source /env/bmode/${global.system.reboot_mode.prev}``
 if available. Example usage::
 
@@ -74,7 +76,8 @@ functionality. They all ultimately serve different purposes, however.
 Comparison to reset reason
 ---------------------------
 
-The reset reason ``$global.system.reset`` is populated by different drivers
+The reset reason :ref:`global.system.reset <magicvar_global_system_reset>` is
+populated by different drivers
 to reflect the hardware cause of a reset, e.g. a watchdog. A reboot mode
 describes the OS intention behind a reset, e.g. to fall into a recovery
 mode. Reboot modes besides the default ``normal`` mode usually accompany
@@ -84,15 +87,17 @@ to activate the next reboot mode).
 Comparison to bootsource
 ------------------------
 
-``$bootsource`` reflects the current boot's medium as indicated by the
-SoC. In cases where the reboot mode is used to communicate with the BootROM,
-``$bootsource`` and ``$bootsource_instance`` may describe the same device
-as the reboot mode.
+:ref:`bootsource <magicvar_bootsource>` reflects the current boot's medium as
+indicated by the SoC.
+In cases where the reboot mode is used to communicate with the BootROM,
+:ref:`bootsource <magicvar_bootsource>` and
+:ref:`bootsource_instance <magicvar_bootsource_instance>` may describe the same
+device as the reboot mode.
 
 For cases, where the communication instead happens between barebox and an OS,
-they can be completely different, e.g. ``$bootsource`` may say barebox was
-booted from ``spi-nor``, while the reboot mode describes that barebox should
-boot the Kernel off a USB flash drive.
+they can be completely different, e.g. :ref:`bootsource <magicvar_bootsource>`
+may say barebox was booted from ``spi-nor``, while the reboot mode describes
+that barebox should boot the Kernel off a USB flash drive.
 
 Comparison to barebox state
 ---------------------------
diff --git a/Documentation/user/reset-reason.rst b/Documentation/user/reset-reason.rst
index e46f2ca684ab..4c40313a80ca 100644
--- a/Documentation/user/reset-reason.rst
+++ b/Documentation/user/reset-reason.rst
@@ -14,9 +14,8 @@ For example it should wait for another update (for the case the cause of a
 crash is a failed update) or should start into a fall back system instead.
 
 In order to handle failing systems gracefully the bootloader needs the
-information why it runs. This is called the "reset reason". It is provided by
-the global variable ``system.reset`` and can be used in scripts via
-``$global.system.reset``.
+information why it runs. This is called the "reset reason". It is available
+to scripts as :ref:`global.system.reset <magicvar_global_system_reset>`.
 
 The following values can help to detect the reason why the bootloader runs:
 
diff --git a/Documentation/user/security.rst b/Documentation/user/security.rst
index 5a23bd83ba65..94184ab8e893 100644
--- a/Documentation/user/security.rst
+++ b/Documentation/user/security.rst
@@ -99,8 +99,8 @@ different compression algorithm.
 The fail-safe alternative is to use a parameter name understood only by the
 initramfs (e.g. ``verity_root=``) in all bootloader scripts. If the
 ``root=$dev`` is fixed up by barebox dynamically, the
-``$global.bootm.root_param`` variable can be used to customize the name of the
-parameter passed to Linux.
+:ref:`global.bootm.root_param <magicvar_global_bootm_root_param>` variable can
+be used to customize the name of the parameter passed to Linux.
 
 Disabling the shell
 ^^^^^^^^^^^^^^^^^^^
diff --git a/Documentation/user/usb.rst b/Documentation/user/usb.rst
index f233927656bc..c6ff383c565d 100644
--- a/Documentation/user/usb.rst
+++ b/Documentation/user/usb.rst
@@ -27,7 +27,7 @@ following to ``/env/network/eth0-discover``:
   usb
 
 Alternatively, a ``detect -a`` (all) can be forced in ``ifup`` by setting
-``global.net.ifup_force_detect=1``.
+:ref:`global.net.ifup_force_detect=1 <magicvar_global_net_ifup_force_detect>`.
 
 USB mass storage
 ^^^^^^^^^^^^^^^^
@@ -314,24 +314,24 @@ CONFIG_USB_GADGET_AUTOSTART enabled.
 USB Gadget autostart Options
 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^
 
-``global.usbgadget.autostart``
+:ref:`global.usbgadget.autostart <magicvar_global_usbgadget_autostart>`
   Boolean flag. If set to 1, usbgadget will be started automatically on boot and
   enable USB OTG mode. (Default 0).
-``global.usbgadget.acm``
+:ref:`global.usbgadget.acm <magicvar_global_usbgadget_acm>`
   Boolean flag. If set to 1, CDC ACM function will be created.
   See :ref:`command_usbgadget` -a. (Default 0).
-``global.system.partitions``
+:ref:`global.system.partitions <magicvar_global_system_partitions>`
   Common function description for all of DFU, fastboot and USB mass storage
   gadgets.
   See :ref:`usbgadget_partitions` above for the syntax.
   Both Fastboot and DFU partitions also have dedicated override
   variables for backwards-compatibility:
 
-``global.usbgadget.dfu_function``
+:ref:`global.usbgadget.dfu_function <magicvar_global_usbgadget_dfu_function>`
   Function description for DFU. See :ref:`command_usbgadget` -D [desc],
   and :ref:`usbgadget_partitions` above for the syntax.
-``global.fastboot.partitions``
+:ref:`global.fastboot.partitions <magicvar_global_fastboot_partitions>`
   Function description for fastboot. See :ref:`command_usbgadget` -A [desc],
   and :ref:`usbgadget_partitions` above for the syntax.
-``global.fastboot.bbu``
+:ref:`global.fastboot.bbu <magicvar_global_fastboot_bbu>`
   Export barebox update handlers. See :ref:`command_usbgadget` -b. (Default 0).
diff --git a/Documentation/user/versioning.rst b/Documentation/user/versioning.rst
index d8e2fdbc4574..7da9766134d0 100644
--- a/Documentation/user/versioning.rst
+++ b/Documentation/user/versioning.rst
@@ -23,8 +23,9 @@ Query from barebox
 When ``CONFIG_BANNER`` is enabled, the version information will be printed
 to the console. From the shell, there is the
 :ref:`version command <command_version>` for interactive use and the
-``global.version`` and ``global.buildsystem.version`` :ref:`magicvars`
-for use in scripts.
+:ref:`global.version <magicvar_global_version>` and
+:ref:`global.buildsystem.version <magicvar_global_buildsystem_version>`
+:ref:`magicvars` for use in scripts.
 
 Query from OS
 ^^^^^^^^^^^^^
-- 
2.47.3



