Delivery-date: Fri, 26 Jun 2026 18:23:07 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wd9Kd-00A8Hl-2c
	for lore@lore.pengutronix.de;
	Fri, 26 Jun 2026 18:23:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wd9Kc-0002O1-If
	for lore@pengutronix.de; Fri, 26 Jun 2026 18:23:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sfMQNkMVXGYgAWPGnh9/Vag8Dw3Y3naIuHrHc+wsEK4=; b=N+Wlfg6Fi/XC4+6ZdvMhXn/QfK
	e63fMSPHM1Sdvy9dcsmbnKaMa37pSpjn0kzyNN5RUPiwl55t7mfJreAy6qPO37RQpRIB9TqqnHIsT
	yTGD8SqpNLCGihhYqc0Ja8r5A9NfiVZR5lpZC7ZSxFQJj+4TSdBoQUVndXCutbjCSyUB2H+ExqdJw
	AqwZwMFg8dXCEgfohMxj8YmUb8ko2MYzKv7MD0BOYnRHZZRJXK0F4BNbnlwY8a71PjMVenPer6j8S
	hZ0e9Jz4Mdl+0c1diKVyD2SwjbW+nPDOLpJulWtZ7pLucHKQUZWM+Efnj3sUUNtrRO79AUpbXPkXw
	7INV5ZBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd9JQ-0000000BcUq-1NjG;
	Fri, 26 Jun 2026 16:21:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd9JK-0000000BcPe-44iK
	for barebox@lists.infradead.org;
	Fri, 26 Jun 2026 16:21:49 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wd9JJ-0006R9-EH; Fri, 26 Jun 2026 18:21:45 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Fri, 26 Jun 2026 18:19:40 +0200
Message-ID: <20260626162136.1885999-9-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260626162136.1885999-1-a.fatoum@barebox.org>
References: <20260626162136.1885999-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260626_092147_216106_EF783227 
X-CRM114-Status: GOOD (  14.47  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 9/9] scripts: qemu_interactive.py: add new --sdblk and --emmcblk options
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

These options will add a SD-Card or an eMMC block device, respectively.
The eMMC emulation is a recent addition to QEMU and isn't usable in our
Debian Trixie container yet, but it would be very useful to exercise the
RPMB supplicant code as well as EFI variables in future.

The eMMC image has optional BOOT1, BOOT2 and RPMB partitions, which if
available are located on that order in front of the user area.

To make it easy to use multiple separate images, we create a VMDK image
that references the supplied files.

Example usage:

  scripts/qemu_interactive.py  --emmcblk user=hd.img,boot1=boot1.img,rpmb=rpmb.img

or

  scripts/qemu_interactive.py  --sdblk hd.img

To make it readily usable on multi_v8_defconfig.yaml, also add a SDHCI
PCI device to the virtual machine.

Assisted-by: Codex:gpt-5.5
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
v1 -> v2:
  - new commit
---
 scripts/qemu_interactive.py           | 174 ++++++++++++++++++++++++++
 test/arm/virt@multi_v8_defconfig.yaml |   1 +
 2 files changed, 175 insertions(+)

diff --git a/scripts/qemu_interactive.py b/scripts/qemu_interactive.py
index 77ff6f9fc8b4..90b17e4f6422 100755
--- a/scripts/qemu_interactive.py
+++ b/scripts/qemu_interactive.py
@@ -6,17 +6,26 @@
 # SPDX-License-Identifier: GPL-2.0-only
 
 import argparse
+import atexit
 import glob
 import os
 import re
 import subprocess
 import sys
+import tempfile
 
 
 MODE_INTERACTIVE = "qemu_interactive"
 MODE_DRY_RUN = "qemu_dry_run"
 MODE_DUMP_DTB = "qemu_dump_dtb"
 
+EMMC_VMDK_SECTOR_SIZE = 512
+EMMC_BOOT_RPMB_ALIGNMENT = 128 * 1024
+EMMC_USER_ALIGNMENT = 1024 * 1024
+EMMC_PARTITION_HWPARTS = ("boot1", "boot2", "rpmb", "user")
+
+_temporary_emmc_vmdks = []
+
 
 class QemuInteractiveError(Exception):
     def __init__(self, message, returncode=1):
@@ -35,6 +44,18 @@ def _assignment(arg):
     return arg.split("=", 1)
 
 
+def _cleanup_emmc_vmdks():
+    while _temporary_emmc_vmdks:
+        path = _temporary_emmc_vmdks.pop()
+        try:
+            os.unlink(path)
+        except FileNotFoundError:
+            pass
+
+
+atexit.register(_cleanup_emmc_vmdks)
+
+
 def register_shared_options(parser):
     _add_option(parser, "--graphic", "--graphics", action="store_true",
                 dest="qemu_graphics", help="enable QEMU graphics output")
@@ -49,6 +70,14 @@ def register_shared_options(parser):
     _add_option(parser, "--blk", action="append", dest="qemu_block",
                 default=[], metavar="FILE",
                 help="Pass block device to emulated barebox. Can be specified more than once")
+    _add_option(parser, "--sdblk", action="append", dest="qemu_sdblock",
+                default=[], metavar="FILE",
+                help="Pass SD-Card block device to emulated barebox. Can be specified more than once")
+    _add_option(parser, "--emmcblk", action="append", dest="qemu_emmcblock",
+                default=[], metavar="FILE|HWPART=FILE[,HWPART=FILE...]",
+                help="Pass eMMC block device to emulated barebox. Can be "
+                "specified more than once. HWPART may be boot1, boot2, rpmb, "
+                "or user")
     _add_option(parser, "--nvmeblk", action="append", dest="qemu_nvmeblock",
                 default=[], metavar="FILE",
                 help="Pass NVMe block device with 4K sector size to emulated barebox. Can be specified more than once")
@@ -182,6 +211,141 @@ def _append_qemu_bootargs(strategy, fail, args):
     strategy.console.boot_args += " ".join(args)
 
 
+def _alignment_name(alignment):
+    if alignment % (1024 * 1024) == 0:
+        return f"{alignment // (1024 * 1024)} MiB"
+
+    return f"{alignment // 1024} KiB"
+
+
+def _emmc_partition_alignment(hwpart):
+    if hwpart == "user":
+        return EMMC_USER_ALIGNMENT
+
+    return EMMC_BOOT_RPMB_ALIGNMENT
+
+
+def _parse_emmc_partition_spec(spec, fail):
+    partitions = {}
+
+    for entry in spec.split(","):
+        if not entry:
+            fail("--emmcblk: empty partition entry")
+
+        hwpart, sep, value = entry.partition("=")
+        if not sep:
+            fail(f"--emmcblk: partition entry '{entry}' lacks '='")
+        if hwpart not in EMMC_PARTITION_HWPARTS:
+            fail(f"--emmcblk: unknown partition '{hwpart}'")
+        if hwpart in partitions:
+            fail(f"--emmcblk: duplicate partition '{hwpart}'")
+        if not value:
+            fail(f"--emmcblk: missing path for '{hwpart}'")
+        if '"' in value or "\n" in value or "\r" in value:
+            fail(f"--emmcblk: unsupported character in path for '{hwpart}'")
+        if not os.path.exists(value):
+            fail(f"--emmcblk: file for '{hwpart}' does not exist: {value}")
+        if not os.path.isfile(value):
+            fail(f"--emmcblk: path for '{hwpart}' is not a regular file: {value}")
+
+        size = os.path.getsize(value)
+        if size == 0:
+            fail(f"--emmcblk: file for '{hwpart}' is empty: {value}")
+
+        alignment = _emmc_partition_alignment(hwpart)
+        if size % alignment:
+            fail(f"--emmcblk: size of '{hwpart}' must be aligned to "
+                 f"{_alignment_name(alignment)}: {value}")
+
+        partitions[hwpart] = {
+            "path": os.path.abspath(value),
+            "size": size,
+        }
+
+    if not partitions:
+        fail("--emmcblk: no partitions specified")
+
+    boot1 = partitions.get("boot1")
+    boot2 = partitions.get("boot2")
+
+    if boot1 and boot2 and boot1["size"] != boot2["size"]:
+        fail("--emmcblk: boot1 and boot2 must have the same size")
+
+    return partitions
+
+
+def _emmc_vmdk_escape_path(path):
+    if '"' in path or "\n" in path or "\r" in path:
+        raise QemuInteractiveError(
+            f"--emmcblk: unsupported character in VMDK path: {path}")
+
+    return path
+
+
+def _write_emmc_vmdk(extents):
+    with tempfile.NamedTemporaryFile(
+            mode="w", encoding="ascii", prefix="barebox-emmc-",
+            suffix=".vmdk", delete=False) as vmdk:
+        vmdk.write("# Disk DescriptorFile\n")
+        vmdk.write("version=1\n")
+        vmdk.write("CID=fffffffe\n")
+        vmdk.write("parentCID=ffffffff\n")
+        vmdk.write('createType="monolithicFlat"\n\n')
+        vmdk.write("# Extent description\n")
+
+        for path, size in extents:
+            sectors = size // EMMC_VMDK_SECTOR_SIZE
+            vmdk.write(
+                f'RW {sectors} FLAT "{_emmc_vmdk_escape_path(path)}" 0\n')
+
+        vmdk.write("\n# The Disk Data Base\n")
+        vmdk.write("#DDB\n")
+        vmdk.write('ddb.adapterType = "ide"\n')
+
+    _temporary_emmc_vmdks.append(vmdk.name)
+
+    return vmdk.name
+
+
+def _create_emmc_vmdk(partitions):
+    boot1 = partitions.get("boot1")
+    boot2 = partitions.get("boot2")
+    rpmb = partitions.get("rpmb")
+    user = partitions.get("user")
+    boot_size = 0
+    rpmb_size = 0
+    extents = []
+
+    if boot1 or boot2:
+        boot_size = (boot1 or boot2)["size"]
+        extents.append(((boot1 or {"path": "/dev/zero"})["path"], boot_size))
+        extents.append(((boot2 or {"path": "/dev/zero"})["path"], boot_size))
+
+    if rpmb:
+        rpmb_size = rpmb["size"]
+        extents.append((rpmb["path"], rpmb_size))
+
+    if user:
+        extents.append((user["path"], user["size"]))
+
+    return _write_emmc_vmdk(extents), boot_size, rpmb_size
+
+
+def _qemu_emmc_args(index, blk, fail):
+    if not ("=" in blk or "," in blk):
+        blk = f"user={blk}"
+
+    partitions = _parse_emmc_partition_spec(blk, fail)
+    vmdk, boot_size, rpmb_size = _create_emmc_vmdk(partitions)
+
+    return (
+        "-drive", f"if=none,format=vmdk,id=emmc{index},file={vmdk}",
+        "-device",
+        f"emmc,drive=emmc{index},boot-partition-size={boot_size},"
+        f"rpmb-partition-size={rpmb_size}",
+    )
+
+
 def apply_shared_options(strategy, target, options, *, interactive, fail=None):  # noqa: max-complexity=30
     if fail is None:
         fail = _fail
@@ -263,6 +427,16 @@ def apply_shared_options(strategy, target, options, *, interactive, fail=None):
         else:
             fail("--blk unsupported for target\n")
 
+    for i, blk in enumerate(_get_list_option(options, "qemu_sdblock")):
+        _append_qemu_args(
+            strategy, fail,
+            "-drive", f"if=none,format=raw,id=sdcard{i},file={blk}",
+            "-device", f"sd-card,drive=sdcard{i}"
+        )
+
+    for i, blk in enumerate(_get_list_option(options, "qemu_emmcblock")):
+        _append_qemu_args(strategy, fail, *_qemu_emmc_args(i, blk, fail))
+
     for i, blk in enumerate(_get_list_option(options, "qemu_nvmeblock")):
         _append_qemu_args(
             strategy, fail,
diff --git a/test/arm/virt@multi_v8_defconfig.yaml b/test/arm/virt@multi_v8_defconfig.yaml
index 209b59c8fff7..ba430df8b3c2 100644
--- a/test/arm/virt@multi_v8_defconfig.yaml
+++ b/test/arm/virt@multi_v8_defconfig.yaml
@@ -10,6 +10,7 @@ targets:
         display: qemu-default
         extra_args: >
           -device qemu-xhci
+          -device sdhci-pci
       BareboxDriver:
         prompt: 'barebox@[^:]+:[^ ]+ '
         bootstring: 'commandline:'
-- 
2.47.3



