Delivery-date: Fri, 26 Jun 2026 14:46:44 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wd5xE-00A4vR-1k
	for lore@lore.pengutronix.de;
	Fri, 26 Jun 2026 14:46:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wd5xB-0001qG-Tu
	for lore@pengutronix.de; Fri, 26 Jun 2026 14:46:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RdKrqjtRwlFXvdoy0Vx92atqe+UGab8k3pbYQ/M4R+s=; b=eHfJ32dxOKRHB6
	g4saW158RFwbcnV98wQlKyPusohjjJZ5FE2bFE9c3aUJ3HoTUxBi3ShKQ654PCQw5Upx75zoaeu1e
	Uz1zTG2XTr8Titjq7i1cteDsd8AQa31yEkOADT//lxIvt7Mor0YtxqGpFuumFT1LrdSNkOrlhdmmo
	tSVE3I+Vm8MqMPiZV2nDF+YtSrxrNBooTW/iJO6l9pYetLWJq/W516Fu+Cd1nRNimGF5g2QW2WIP2
	+mosDVKRBXyNnZkRClnXYChpbIhRhnPF+SmdzieJX0oJ+EX0KKq65oelLyT9x6TkcXVshHxWOdtqG
	VbYJEHF/znnGMKhu+TZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd5wb-0000000BKFP-40yq;
	Fri, 26 Jun 2026 12:46:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd5wW-0000000BKCz-1Vee
	for barebox@lists.infradead.org;
	Fri, 26 Jun 2026 12:46:03 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wd5wT-0007zx-1n; Fri, 26 Jun 2026 14:45:57 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Date: Fri, 26 Jun 2026 14:45:43 +0200
Message-ID: <20260626124555.1644951-2-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260626124555.1644951-1-a.fatoum@barebox.org>
References: <20260626124555.1644951-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260626_054600_870863_520305AB 
X-CRM114-Status: GOOD (  19.55  )
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
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
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
Subject: [PATCH 2/5] test: move interactive QEMU launcher out of pytest
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

pytest --interactive apparently starts two QEMUs, the interactive one in
addition to the one started directly by Labgrid. This leads to issues
when QEMU does something mutually exclusive like listening on a port or
taking a file lock.

Arguably, running an interactive QEMU with pytest as a runner was
a strange idea in the first place. Let's stop doing that and add a
dedicated qemu_interactive.py script.

The new script is imported by conftest.py to get support for custom
options like --blk or --rng. --interactive becomes an error.

To avoid cross-dependencies between test suite and the new script, the
CONFIG_NAME resolution is reimplemented without test/py/helper.py, but
apart from that it's mostly copy-paste and adding some boilerplate.

In the future[1], we can adapt this to use the new QEMUDriver.interact().

[1]: https://github.com/labgrid-project/labgrid/pull/1892

Assisted-by: Codex:gpt-5.5
Reported-by: Marc Kleine-Budde <mkl@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 Documentation/boards/emulated.rst        |  10 +-
 Documentation/devel/contributing.rst     |   8 +-
 Documentation/user/security-policies.rst |   2 +-
 conftest.py                              | 243 ++---------
 scripts/qemu_interactive.py              | 534 +++++++++++++++--------
 5 files changed, 375 insertions(+), 422 deletions(-)
 mode change 100644 => 100755 scripts/qemu_interactive.py

diff --git a/Documentation/boards/emulated.rst b/Documentation/boards/emulated.rst
index 0d6dd85dc759..bc3e2566eaec 100644
--- a/Documentation/boards/emulated.rst
+++ b/Documentation/boards/emulated.rst
@@ -23,15 +23,15 @@ VirtIO over PCI.
 Running in QEMU
 ---------------
 
-Emulated targets can be started interactively with ``pytest --interactive``::
+Emulated targets can be started interactively with ``scripts/qemu_interactive.py``::
 
   # Run x86 VM runnig the EFI payload from efi_defconfig
-  pytest --lg-env test/x86/efi_defconfig.yaml --interactive
+  scripts/qemu_interactive.py test/x86/efi_defconfig.yaml
 
   # Identical to above, provided the CONFIG_NAME=efi_defconfig
-  pytest --interactive
+  scripts/qemu_interactive.py
 
-The test suite can be run by omitting the ``--interactive``.
+The test suite can be run with ``pytest`` instead.
 For more information, see the :ref:`labgrid` section in the
 :ref:`contributing` guide.
 
@@ -43,7 +43,7 @@ be used in combination with QEMU. With user-mode networking (SLIRP),
 guest-to-host UDP works via NAT out of the box,
 but unsolicited host-to-guest UDP requires an explicit port forward::
 
-  pytest --lg-env test/arm/multi_v8_defconfig.yaml --interactive \
+  scripts/qemu_interactive.py test/arm/multi_v8_defconfig.yaml    \
     --env nv/dev.netconsole.ip=10.0.2.2                          \
     --env nv/dev.netconsole.port=6666                            \
     --env init/netconsole="ifup -a1; netconsole.active=ioe"      \
diff --git a/Documentation/devel/contributing.rst b/Documentation/devel/contributing.rst
index cb3820f23c63..8b92c6f483aa 100644
--- a/Documentation/devel/contributing.rst
+++ b/Documentation/devel/contributing.rst
@@ -134,7 +134,7 @@ it directly from PyPI instead of your distro's package repositories::
 Example usage::
 
   # Run x86 VM runnig the EFI payload from efi_defconfig
-  pytest --lg-env test/x86/efi_defconfig.yaml --interactive
+  scripts/qemu_interactive.py test/x86/efi_defconfig.yaml
 
   # Run the test suite against the same
   pytest --lg-env test/x86/efi_defconfig.yaml
@@ -145,10 +145,10 @@ built out-of-tree, the build directory must be pointed at by
 ``LG_BUILDDIR``, ``KBUILD_OUTPUT`` or a ``build`` symlink.
 
 Additional QEMU command-line options can be added by specifying
-them after the ``--qemu`` option::
+them after ``--qemu``::
 
   # appends -device ? to the command line. Add --dry-run to see the final result
-  pytest --lg-env test/riscv/rv64i_defconfig.yaml --interactive --qemu -device '?'
+  scripts/qemu_interactive.py test/riscv/rv64i_defconfig.yaml --qemu -device '?'
 
 Some of the QEMU options that are used more often also have explicit
 support in the test runner, so paravirtualized devices can be added
@@ -158,7 +158,7 @@ more easily::
   pytest --lg-env test/arm/virt@multi_v8_defconfig.yaml --blk=rootfs.ext4
 
   # Run interactively with graphics output
-  pytest --lg-env test/mips/qemu-malta_defconfig.yaml --interactive --graphics
+  scripts/qemu_interactive.py test/mips/qemu-malta_defconfig.yaml --graphics
 
 For testing, the QEMU fw_cfg and virtfs support is particularly useful::
 
diff --git a/Documentation/user/security-policies.rst b/Documentation/user/security-policies.rst
index 8d515508d106..296191c4f8e5 100644
--- a/Documentation/user/security-policies.rst
+++ b/Documentation/user/security-policies.rst
@@ -97,7 +97,7 @@ policy development and evaluation. ``images/barebox-dt-2nd.img`` that results
 from building it can be passed as argument to ``qemu-system-arm -M virt -kernel``.
 
 The easiest way to do this is probably installing labgrid and running
-``pytest --interactive`` after having built the config.
+``scripts/qemu_interactive.py`` after having built the config.
 
 Differences from Kconfig
 ------------------------
diff --git a/conftest.py b/conftest.py
index 6f76586e010b..4ab76b295e59 100644
--- a/conftest.py
+++ b/conftest.py
@@ -3,6 +3,7 @@ import pytest
 import os
 import argparse
 from labgrid.exceptions import NoDriverFoundError
+from scripts import qemu_interactive
 from test.py import helper
 
 
@@ -38,68 +39,24 @@ def barebox_config(request, strategy, target):
     return helper.get_config(command)
 
 
-def get_enabled_arch(config):
-    # Get the absolute path to the directory containing this script
-    base_dir = os.path.dirname(os.path.abspath(__file__))
-
-    # Path to the 'arch' directory relative to this script
-    arch_dir = os.path.join(base_dir, "arch")
-
-    if not os.path.isdir(arch_dir):
-        return None
-
-    # Optional mapping from directory names to config key suffixes
-    arch_map = {"powerpc": "ppc"}
-
-    for entry in os.listdir(arch_dir):
-        path = os.path.join(arch_dir, entry)
-        if os.path.isdir(path):
-            key_suffix = arch_map.get(entry, entry).upper()
-            config_key = f"CONFIG_{key_suffix}"
-            if config.get(config_key):
-                return entry
-
-    return None
-
-
-def guess_lg_env():
-    config_file = helper.open_config_file(os.environ['LG_BUILDDIR'] + "/.config")
-    config = helper.parse_config(config_file)
-    if not config or not config.get('CONFIG_NAME'):
-        return None
-    arch = get_enabled_arch(config)
-    if not arch:
-        return None
-    filename = os.path.join("test", arch, f"{config['CONFIG_NAME']}.yaml")
-    if os.path.exists(filename):
-        return filename
-    return None
-
-
 lg_env = lg_builddir = None
 
 
 def pytest_configure(config):
-    if 'LG_BUILDDIR' not in os.environ:
-        if 'KBUILD_OUTPUT' in os.environ:
-            os.environ['LG_BUILDDIR'] = os.environ['KBUILD_OUTPUT']
-        elif os.path.isdir('build'):
-            os.environ['LG_BUILDDIR'] = os.path.realpath('build')
-        else:
-            os.environ['LG_BUILDDIR'] = os.getcwd()
-
-    if os.environ['LG_BUILDDIR'] is not None:
-        os.environ['LG_BUILDDIR'] = os.path.realpath(os.environ['LG_BUILDDIR'])
+    removed_mode = getattr(config.option, 'qemu_interactive_removed', None)
+    if removed_mode is not None:
+        pytest.exit(qemu_interactive.replacement_message(removed_mode),
+                    returncode=2)
 
     global lg_env
     global lg_builddir
 
-    lg_builddir = os.environ['LG_BUILDDIR']
+    lg_builddir = qemu_interactive.resolve_lg_builddir()
     lg_env = config.option.lg_env
     if lg_env is None:
         lg_env = os.environ.get('LG_ENV')
     if lg_env is None:
-        if lg_env := guess_lg_env():
+        if lg_env := qemu_interactive.guess_lg_env(lg_builddir):
             os.environ['LG_ENV'] = lg_env
 
 
@@ -113,39 +70,22 @@ def pytest_report_header(config):
 
 
 def pytest_addoption(parser):
-    def assignment(arg):
-        return arg.split('=', 1)
+    parser.addoption('--interactive', action='store_const',
+                     const='--interactive', dest='qemu_interactive_removed',
+                     help=argparse.SUPPRESS)
+    parser.addoption('--dry-run', action='store_const',
+                     const='--dry-run', dest='qemu_interactive_removed',
+                     help=argparse.SUPPRESS)
+    parser.addoption('--dump-dtb', action='store_const',
+                     const='--dump-dtb', dest='qemu_interactive_removed',
+                     help=argparse.SUPPRESS)
 
-    parser.addoption('--interactive', action='store_const', const='qemu_interactive',
-                     dest='lg_initial_state',
-                     help=('(for debugging) skip tests and just start Qemu interactively'))
-    parser.addoption('--dry-run', action='store_const', const='qemu_dry_run',
-                     dest='lg_initial_state',
-                     help=('(for debugging) skip tests and just print Qemu command line'))
-    parser.addoption('--dump-dtb', action='store_const', const='qemu_dump_dtb',
-                     dest='lg_initial_state',
-                     help=('(for debugging) skip tests and just dump the Qemu device tree'))
-    parser.addoption('--graphic', '--graphics', action='store_true', dest='qemu_graphics',
-                     help=('enable QEMU graphics output'))
-    parser.addoption('--rng', action='count', dest='qemu_rng',
-                     help=('instantiate Virt I/O random number generator'))
-    parser.addoption('--console', action='count', dest='qemu_console', default=0,
-                     help=('Pass an extra console (Virt I/O or ns16550_pci) to emulated barebox'))
-    parser.addoption('--fs', action='append', dest='qemu_fs',
-                     default=[], metavar="[tag=]DIR", type=assignment,
-                     help=('Pass directory trees to emulated barebox. Can be specified more than once'))  # noqa
-    parser.addoption('--blk', action='append', dest='qemu_block',
-                     default=[], metavar="FILE",
-                     help=('Pass block device to emulated barebox. Can be specified more than once'))  # noqa
-    parser.addoption('--env', action='append', dest='qemu_fw_cfg', type=assignment,
-                     default=[], metavar="[envpath=]content | [envpath=]@filepath",
-                     help=('Pass barebox environment files to barebox. Can be specified more than once'))  # noqa
-    parser.addoption('--qemu', dest='qemu_arg', nargs=argparse.REMAINDER, default=[],
-                     help=('Pass all remaining options to QEMU as is'))
-    parser.addoption('--bootarg', action='append', dest='bootarg', default=[],
-                     help=('Pass boot arguments to barebox for debugging purposes'))
-    parser.addoption('--port-forward', metavar="PORT", action='append', dest='qemu_port', default=[],
-                     help=('Forward incoming TCP or UDP connections on specified PORT'))
+    group = parser.getgroup('barebox-qemu', 'barebox QEMU options')
+    qemu_interactive.register_shared_options(group)
+
+
+def _pytest_exit(message, returncode=1):
+    pytest.exit(message, returncode=returncode)
 
 
 @pytest.fixture(scope="session")
@@ -155,142 +95,9 @@ def strategy(request, target, pytestconfig):  # noqa: max-complexity=30
     except NoDriverFoundError as e:
         pytest.exit(e)
 
-    try:
-        main = target.env.config.data["targets"]["main"]
-        features = main["features"]
-    except KeyError:
-        features = []
-
-    try:
-        main = target.env.config.data["targets"]["main"]
-        yaml_env = main["env"]
-    except KeyError:
-        yaml_env = {}
-
-    try:
-        main = target.env.config.data["targets"]["main"]
-        qemu_bin = main["drivers"]["QEMUDriver"]["qemu_bin"]
-        features.append("qemu")
-    except KeyError:
-        pass
-
-    virtio = None
-
-    if "virtio-mmio" in features:
-        virtio = "device"
-        strategy.append_qemu_args('-global virtio-mmio.force-legacy=false')
-    if "virtio-pci" in features:
-        virtio = "pci,disable-modern=off"
-        features.append("pci")
-
-    if virtio and pytestconfig.option.qemu_rng:
-        for i in range(pytestconfig.option.qemu_rng):
-            strategy.append_qemu_args("-device", f"virtio-rng-{virtio}")
-
-    for i in range(pytestconfig.option.qemu_console):
-        if virtio and i == 0:
-            strategy.append_qemu_args(
-                "-device", f"virtio-serial-{virtio}",
-                "-chardev", f"pty,id=virtcon{i}",
-                "-device", f"virtconsole,chardev=virtcon{i},name=console.virtcon{i}"
-            )
-            continue
-
-        # ns16550 serial driver only works with x86 so far
-        if 'pci' in features:
-            strategy.append_qemu_args(
-                "-chardev", f"pty,id=pcicon{i}",
-                "-device", f"pci-serial,chardev=pcicon{i}"
-            )
-        else:
-            pytest.exit("barebox currently supports only a single extra virtio console\n", 1)
-
-    if "qemu" in features:
-        if not pytestconfig.option.qemu_graphics:
-            graphics = '-nographic'
-        elif qemu_bin == "qemu-system-x86_64":
-            graphics = '-device isa-vga'
-        elif 'pci' in features:
-            graphics = '-device VGA'
-        elif virtio:
-            graphics = '-vga none -device ramfb'
-            graphics += f' -device virtio-keyboard-{virtio}'
-        else:
-            pytest.exit("--graphics unsupported for target\n", 1)
-
-        if graphics is not None and \
-                pytestconfig.option.lg_initial_state != 'qemu_interactive':
-            graphics += ' -display none'
-
-        strategy.append_qemu_args(graphics)
-
-    for i, blk in enumerate(pytestconfig.option.qemu_block):
-        if virtio:
-            strategy.append_qemu_args(
-                "-drive", f"if=none,format=raw,id=hd{i},file={blk}",
-                "-device", f"virtio-blk-{virtio},drive=hd{i}"
-            )
-        else:
-            pytest.exit("--blk unsupported for target\n", 1)
-
-    envopts = {}
-
-    for i, fw_cfg in enumerate(pytestconfig.option.qemu_fw_cfg):
-        value = fw_cfg.pop()
-        envpath = fw_cfg.pop() if fw_cfg else f"data/fw_cfg{i}"
-
-        envopts[envpath] = value
-
-    for envpath, value in (yaml_env | envopts).items():
-        if virtio:
-            if isinstance(value, str) and value.startswith('@'):
-                source = f"file='{value[1:]}'"
-            else:
-                source = f"string='{value}'"
-
-            strategy.append_qemu_args(
-                '-fw_cfg', f'name=opt/org.barebox.env/{envpath},{source}'
-            )
-        else:
-            pytest.exit("env unsupported for target\n", 1)
-
-    if len(pytestconfig.option.bootarg) > 0:
-        strategy.append_qemu_bootargs(pytestconfig.option.bootarg)
-
-    for arg in pytestconfig.option.qemu_arg:
-        strategy.append_qemu_args(arg)
-
-    qemu_nic = "user,id=net0"
-
-    for port in pytestconfig.option.qemu_port:
-        qemu_nic += f",hostfwd=udp:127.0.0.2:{port}-:{port}"
-        qemu_nic += f",hostfwd=tcp:127.0.0.2:{port}-:{port}"
-
-    if "testfs" in features:
-        if not any(fs and fs[0] == "testfs" for fs in pytestconfig.option.qemu_fs):
-            testfs_path = os.path.join(os.environ["LG_BUILDDIR"], "testfs")
-            pytestconfig.option.qemu_fs.append(["testfs", testfs_path])
-            os.makedirs(testfs_path, exist_ok=True)
-            qemu_nic += f",tftp={testfs_path}"
-
-    if "qemu" in features:
-        strategy.append_qemu_args("-nic", qemu_nic)
-
-    for i, fs in enumerate(pytestconfig.option.qemu_fs):
-        if virtio:
-            path = fs.pop()
-            tag = fs.pop() if fs else f"fs{i}"
-
-            strategy.append_qemu_args(
-                "-fsdev", f"local,security_model=none,id=fs{i},path={path}",
-                "-device", f"virtio-9p-{virtio},id=fs{i},fsdev=fs{i},mount_tag={tag}"
-            )
-        else:
-            pytest.exit("--fs unsupported for target\n", 1)
-
-    state = request.config.option.lg_initial_state
-    if state is not None:
-        strategy.force(state)
+    qemu_interactive.apply_shared_options(
+        strategy, target, pytestconfig.option, interactive=False,
+        fail=_pytest_exit)
 
     return strategy
 
diff --git a/scripts/qemu_interactive.py b/scripts/qemu_interactive.py
old mode 100644
new mode 100755
index 6f76586e010b..a8605d23b132
--- a/scripts/qemu_interactive.py
+++ b/scripts/qemu_interactive.py
@@ -1,195 +1,218 @@
+#!/usr/bin/env python3
+# /// script
+# requires-python = ">=3.9"
+# dependencies = ["labgrid"]
+# ///
 # SPDX-License-Identifier: GPL-2.0-only
-import pytest
-import os
+
 import argparse
-from labgrid.exceptions import NoDriverFoundError
-from test.py import helper
+import glob
+import os
+import re
+import subprocess
+import sys
 
 
-def transition_to_barebox(request, strategy):
-    try:
-        strategy.transition('barebox')
-    except Exception as e:
-        # If a normal strategy transition fails, there's no point in
-        # continuing the test. Let's print stderr and exit.
-        capmanager = request.config.pluginmanager.getplugin("capturemanager")
-        with capmanager.global_and_fixture_disabled():
-            _, stderr = capmanager.read_global_capture()
-            pytest.exit(f"{type(e).__name__}(\"{e}\"). Standard error:\n{stderr}",
-                        returncode=3)
+MODE_INTERACTIVE = "qemu_interactive"
+MODE_DRY_RUN = "qemu_dry_run"
+MODE_DUMP_DTB = "qemu_dump_dtb"
 
 
-@pytest.fixture(scope='function')
-def barebox(request, strategy, target):
-    transition_to_barebox(request, strategy)
-    return target.get_driver('BareboxDriver')
+class QemuInteractiveError(Exception):
+    def __init__(self, message, returncode=1):
+        super().__init__(message)
+        self.returncode = returncode
 
 
-@pytest.fixture(scope='function')
-def shell(strategy, target):
-    strategy.transition('shell')
-    return target.get_driver('ShellDriver')
+def _add_option(parser, *opts, **attrs):
+    if hasattr(parser, "addoption"):
+        return parser.addoption(*opts, **attrs)
+
+    return parser.add_argument(*opts, **attrs)
 
 
-@pytest.fixture(scope="session")
-def barebox_config(request, strategy, target):
-    transition_to_barebox(request, strategy)
-    command = target.get_driver("BareboxDriver")
-    return helper.get_config(command)
+def _assignment(arg):
+    return arg.split("=", 1)
 
 
-def get_enabled_arch(config):
-    # Get the absolute path to the directory containing this script
-    base_dir = os.path.dirname(os.path.abspath(__file__))
-
-    # Path to the 'arch' directory relative to this script
-    arch_dir = os.path.join(base_dir, "arch")
-
-    if not os.path.isdir(arch_dir):
-        return None
-
-    # Optional mapping from directory names to config key suffixes
-    arch_map = {"powerpc": "ppc"}
-
-    for entry in os.listdir(arch_dir):
-        path = os.path.join(arch_dir, entry)
-        if os.path.isdir(path):
-            key_suffix = arch_map.get(entry, entry).upper()
-            config_key = f"CONFIG_{key_suffix}"
-            if config.get(config_key):
-                return entry
-
-    return None
+def register_shared_options(parser):
+    _add_option(parser, "--graphic", "--graphics", action="store_true",
+                dest="qemu_graphics", help="enable QEMU graphics output")
+    _add_option(parser, "--rng", action="count", dest="qemu_rng",
+                help="instantiate Virt I/O random number generator")
+    _add_option(parser, "--console", action="count", dest="qemu_console",
+                default=0,
+                help="Pass an extra console (Virt I/O or ns16550_pci) to emulated barebox")
+    _add_option(parser, "--fs", action="append", dest="qemu_fs",
+                default=[], metavar="[tag=]DIR", type=_assignment,
+                help="Pass directory trees to emulated barebox. Can be specified more than once")
+    _add_option(parser, "--blk", action="append", dest="qemu_block",
+                default=[], metavar="FILE",
+                help="Pass block device to emulated barebox. Can be specified more than once")
+    _add_option(parser, "--env", action="append", dest="qemu_fw_cfg",
+                type=_assignment, default=[],
+                metavar="[envpath=]content | [envpath=]@filepath",
+                help="Pass barebox environment files to barebox. Can be specified more than once")
+    _add_option(parser, "--qemu", dest="qemu_arg",
+                nargs=argparse.REMAINDER, default=[],
+                help="Pass all remaining options to QEMU as is")
+    _add_option(parser, "--bootarg", action="append", dest="bootarg",
+                default=[],
+                help="Pass boot arguments to barebox for debugging purposes")
+    _add_option(parser, "--port-forward", metavar="PORT", action="append",
+                dest="qemu_port", default=[],
+                help="Forward incoming TCP or UDP connections on specified PORT")
 
 
-def guess_lg_env():
-    config_file = helper.open_config_file(os.environ['LG_BUILDDIR'] + "/.config")
-    config = helper.parse_config(config_file)
-    if not config or not config.get('CONFIG_NAME'):
-        return None
-    arch = get_enabled_arch(config)
-    if not arch:
-        return None
-    filename = os.path.join("test", arch, f"{config['CONFIG_NAME']}.yaml")
-    if os.path.exists(filename):
-        return filename
-    return None
+def register_interactive_options(parser):
+    _add_option(parser, "--lg-env", dest="lg_env", metavar="LG_ENV",
+                help="labgrid environment config file")
+
+    if hasattr(parser, "add_mutually_exclusive_group"):
+        mode_parser = parser.add_mutually_exclusive_group()
+    else:
+        mode_parser = parser
+
+    _add_option(mode_parser, "--dry-run", action="store_const",
+                const=MODE_DRY_RUN, default=MODE_INTERACTIVE,
+                dest="qemu_mode",
+                help="print the QEMU command line instead of executing it")
+    _add_option(mode_parser, "--dump-dtb", action="store_const",
+                const=MODE_DUMP_DTB, dest="qemu_mode",
+                help="run QEMU only to dump the device tree")
 
 
-lg_env = lg_builddir = None
+def repo_root():
+    return os.path.realpath(os.path.join(os.path.dirname(__file__), os.pardir))
 
 
-def pytest_configure(config):
-    if 'LG_BUILDDIR' not in os.environ:
-        if 'KBUILD_OUTPUT' in os.environ:
-            os.environ['LG_BUILDDIR'] = os.environ['KBUILD_OUTPUT']
-        elif os.path.isdir('build'):
-            os.environ['LG_BUILDDIR'] = os.path.realpath('build')
+def resolve_lg_builddir():
+    if "LG_BUILDDIR" not in os.environ:
+        if "KBUILD_OUTPUT" in os.environ:
+            os.environ["LG_BUILDDIR"] = os.environ["KBUILD_OUTPUT"]
+        elif os.path.isdir("build"):
+            os.environ["LG_BUILDDIR"] = os.path.realpath("build")
         else:
-            os.environ['LG_BUILDDIR'] = os.getcwd()
+            os.environ["LG_BUILDDIR"] = os.getcwd()
 
-    if os.environ['LG_BUILDDIR'] is not None:
-        os.environ['LG_BUILDDIR'] = os.path.realpath(os.environ['LG_BUILDDIR'])
-
-    global lg_env
-    global lg_builddir
-
-    lg_builddir = os.environ['LG_BUILDDIR']
-    lg_env = config.option.lg_env
-    if lg_env is None:
-        lg_env = os.environ.get('LG_ENV')
-    if lg_env is None:
-        if lg_env := guess_lg_env():
-            os.environ['LG_ENV'] = lg_env
+    os.environ["LG_BUILDDIR"] = os.path.realpath(os.environ["LG_BUILDDIR"])
+    return os.environ["LG_BUILDDIR"]
 
 
-def pytest_report_header(config):
-    report = []
-    if lg_builddir is not None:
-        report += [f"Build diectory: {lg_builddir}"]
-    if lg_env is not None:
-        report += [f"Labgrid Environment: {lg_env}"]
-    return "\n".join(report)
-
-
-def pytest_addoption(parser):
-    def assignment(arg):
-        return arg.split('=', 1)
-
-    parser.addoption('--interactive', action='store_const', const='qemu_interactive',
-                     dest='lg_initial_state',
-                     help=('(for debugging) skip tests and just start Qemu interactively'))
-    parser.addoption('--dry-run', action='store_const', const='qemu_dry_run',
-                     dest='lg_initial_state',
-                     help=('(for debugging) skip tests and just print Qemu command line'))
-    parser.addoption('--dump-dtb', action='store_const', const='qemu_dump_dtb',
-                     dest='lg_initial_state',
-                     help=('(for debugging) skip tests and just dump the Qemu device tree'))
-    parser.addoption('--graphic', '--graphics', action='store_true', dest='qemu_graphics',
-                     help=('enable QEMU graphics output'))
-    parser.addoption('--rng', action='count', dest='qemu_rng',
-                     help=('instantiate Virt I/O random number generator'))
-    parser.addoption('--console', action='count', dest='qemu_console', default=0,
-                     help=('Pass an extra console (Virt I/O or ns16550_pci) to emulated barebox'))
-    parser.addoption('--fs', action='append', dest='qemu_fs',
-                     default=[], metavar="[tag=]DIR", type=assignment,
-                     help=('Pass directory trees to emulated barebox. Can be specified more than once'))  # noqa
-    parser.addoption('--blk', action='append', dest='qemu_block',
-                     default=[], metavar="FILE",
-                     help=('Pass block device to emulated barebox. Can be specified more than once'))  # noqa
-    parser.addoption('--env', action='append', dest='qemu_fw_cfg', type=assignment,
-                     default=[], metavar="[envpath=]content | [envpath=]@filepath",
-                     help=('Pass barebox environment files to barebox. Can be specified more than once'))  # noqa
-    parser.addoption('--qemu', dest='qemu_arg', nargs=argparse.REMAINDER, default=[],
-                     help=('Pass all remaining options to QEMU as is'))
-    parser.addoption('--bootarg', action='append', dest='bootarg', default=[],
-                     help=('Pass boot arguments to barebox for debugging purposes'))
-    parser.addoption('--port-forward', metavar="PORT", action='append', dest='qemu_port', default=[],
-                     help=('Forward incoming TCP or UDP connections on specified PORT'))
-
-
-@pytest.fixture(scope="session")
-def strategy(request, target, pytestconfig):  # noqa: max-complexity=30
+def get_config_name(builddir):
     try:
-        strategy = target.get_driver("Strategy")
-    except NoDriverFoundError as e:
-        pytest.exit(e)
-
-    try:
-        main = target.env.config.data["targets"]["main"]
-        features = main["features"]
-    except KeyError:
-        features = []
-
-    try:
-        main = target.env.config.data["targets"]["main"]
-        yaml_env = main["env"]
-    except KeyError:
-        yaml_env = {}
-
-    try:
-        main = target.env.config.data["targets"]["main"]
-        qemu_bin = main["drivers"]["QEMUDriver"]["qemu_bin"]
-        features.append("qemu")
-    except KeyError:
+        with open(os.path.join(builddir, ".config")) as config:
+            for line in config:
+                match = re.match(r'^CONFIG_NAME="(.*)"$', line)
+                if match:
+                    return match.group(1)
+    except OSError:
         pass
 
+    return None
+
+
+def guess_lg_env(builddir=None):
+    if builddir is None:
+        builddir = os.environ.get("LG_BUILDDIR")
+    if builddir is None:
+        return None
+
+    config_name = get_config_name(builddir)
+    if config_name is None:
+        return None
+
+    matches = glob.glob(os.path.join(repo_root(), "test", "*",
+                                     f"{config_name}.yaml"))
+    if matches:
+        return matches[0]
+
+    return None
+
+
+def resolve_lg_env(lg_env=None):
+    if lg_env is None:
+        lg_env = os.environ.get("LG_ENV")
+    if lg_env is None:
+        lg_env = guess_lg_env()
+
+    if lg_env is not None:
+        os.environ["LG_ENV"] = lg_env
+
+    return lg_env
+
+
+def _get_option(options, name, default=None):
+    if isinstance(options, dict):
+        return options.get(name, default)
+
+    return getattr(options, name, default)
+
+
+def _get_list_option(options, name):
+    value = _get_option(options, name, [])
+    if value is None:
+        return []
+    return list(value)
+
+
+def _fail(message, returncode=1):
+    raise QemuInteractiveError(message, returncode)
+
+
+def _append_qemu_args(strategy, fail, *args):
+    if strategy.qemu is None:
+        fail("Qemu option supplied for non-Qemu target")
+
+    for arg in args:
+        strategy.console.extra_args += " " + arg
+
+
+def _append_qemu_bootargs(strategy, fail, args):
+    if strategy.qemu is None:
+        fail("Qemu option supplied for non-Qemu target")
+    if strategy.console.boot_args is None:
+        strategy.console.boot_args = ""
+    strategy.console.boot_args += " ".join(args)
+
+
+def apply_shared_options(strategy, target, options, *, interactive, fail=None):  # noqa: max-complexity=30
+    if fail is None:
+        fail = _fail
+
+    try:
+        main = target.env.config.data["targets"]["main"]
+    except KeyError:
+        main = {}
+
+    features = list(main.get("features", []))
+    yaml_env = dict(main.get("env", {}))
+    qemu_driver = main.get("drivers", {}).get("QEMUDriver")
+    qemu_bin = None
+
+    if qemu_driver is not None:
+        qemu_bin = qemu_driver.get("qemu_bin")
+        features.append("qemu")
+
     virtio = None
 
     if "virtio-mmio" in features:
         virtio = "device"
-        strategy.append_qemu_args('-global virtio-mmio.force-legacy=false')
+        _append_qemu_args(strategy, fail, '-global virtio-mmio.force-legacy=false')
     if "virtio-pci" in features:
         virtio = "pci,disable-modern=off"
         features.append("pci")
 
-    if virtio and pytestconfig.option.qemu_rng:
-        for i in range(pytestconfig.option.qemu_rng):
-            strategy.append_qemu_args("-device", f"virtio-rng-{virtio}")
+    qemu_rng = _get_option(options, "qemu_rng", 0) or 0
+    for _ in range(qemu_rng):
+        if virtio:
+            _append_qemu_args(strategy, fail, "-device", f"virtio-rng-{virtio}")
 
-    for i in range(pytestconfig.option.qemu_console):
+    qemu_console = _get_option(options, "qemu_console", 0) or 0
+    for i in range(qemu_console):
         if virtio and i == 0:
-            strategy.append_qemu_args(
+            _append_qemu_args(
+                strategy, fail,
                 "-device", f"virtio-serial-{virtio}",
                 "-chardev", f"pty,id=virtcon{i}",
                 "-device", f"virtconsole,chardev=virtcon{i},name=console.virtcon{i}"
@@ -198,15 +221,16 @@ def strategy(request, target, pytestconfig):  # noqa: max-complexity=30
 
         # ns16550 serial driver only works with x86 so far
         if 'pci' in features:
-            strategy.append_qemu_args(
+            _append_qemu_args(
+                strategy, fail,
                 "-chardev", f"pty,id=pcicon{i}",
                 "-device", f"pci-serial,chardev=pcicon{i}"
             )
         else:
-            pytest.exit("barebox currently supports only a single extra virtio console\n", 1)
+            fail("barebox currently supports only a single extra virtio console\n")
 
     if "qemu" in features:
-        if not pytestconfig.option.qemu_graphics:
+        if not _get_option(options, "qemu_graphics", False):
             graphics = '-nographic'
         elif qemu_bin == "qemu-system-x86_64":
             graphics = '-device isa-vga'
@@ -216,89 +240,211 @@ def strategy(request, target, pytestconfig):  # noqa: max-complexity=30
             graphics = '-vga none -device ramfb'
             graphics += f' -device virtio-keyboard-{virtio}'
         else:
-            pytest.exit("--graphics unsupported for target\n", 1)
+            fail("--graphics unsupported for target\n")
 
-        if graphics is not None and \
-                pytestconfig.option.lg_initial_state != 'qemu_interactive':
+        if graphics is not None and not interactive:
             graphics += ' -display none'
 
-        strategy.append_qemu_args(graphics)
+        _append_qemu_args(strategy, fail, graphics)
 
-    for i, blk in enumerate(pytestconfig.option.qemu_block):
+    for i, blk in enumerate(_get_list_option(options, "qemu_block")):
         if virtio:
-            strategy.append_qemu_args(
+            _append_qemu_args(
+                strategy, fail,
                 "-drive", f"if=none,format=raw,id=hd{i},file={blk}",
                 "-device", f"virtio-blk-{virtio},drive=hd{i}"
             )
         else:
-            pytest.exit("--blk unsupported for target\n", 1)
+            fail("--blk unsupported for target\n")
 
     envopts = {}
 
-    for i, fw_cfg in enumerate(pytestconfig.option.qemu_fw_cfg):
+    for i, fw_cfg in enumerate(_get_list_option(options, "qemu_fw_cfg")):
         value = fw_cfg.pop()
         envpath = fw_cfg.pop() if fw_cfg else f"data/fw_cfg{i}"
 
         envopts[envpath] = value
 
-    for envpath, value in (yaml_env | envopts).items():
+    for envpath, value in {**yaml_env, **envopts}.items():
         if virtio:
             if isinstance(value, str) and value.startswith('@'):
                 source = f"file='{value[1:]}'"
             else:
                 source = f"string='{value}'"
 
-            strategy.append_qemu_args(
+            _append_qemu_args(
+                strategy, fail,
                 '-fw_cfg', f'name=opt/org.barebox.env/{envpath},{source}'
             )
         else:
-            pytest.exit("env unsupported for target\n", 1)
+            fail("env unsupported for target\n")
 
-    if len(pytestconfig.option.bootarg) > 0:
-        strategy.append_qemu_bootargs(pytestconfig.option.bootarg)
+    bootargs = _get_list_option(options, "bootarg")
+    if bootargs:
+        _append_qemu_bootargs(strategy, fail, bootargs)
 
-    for arg in pytestconfig.option.qemu_arg:
-        strategy.append_qemu_args(arg)
+    for arg in _get_list_option(options, "qemu_arg"):
+        _append_qemu_args(strategy, fail, arg)
 
     qemu_nic = "user,id=net0"
 
-    for port in pytestconfig.option.qemu_port:
+    for port in _get_list_option(options, "qemu_port"):
         qemu_nic += f",hostfwd=udp:127.0.0.2:{port}-:{port}"
         qemu_nic += f",hostfwd=tcp:127.0.0.2:{port}-:{port}"
 
+    qemu_fs = [list(fs) for fs in _get_list_option(options, "qemu_fs")]
+
     if "testfs" in features:
-        if not any(fs and fs[0] == "testfs" for fs in pytestconfig.option.qemu_fs):
+        if not any(fs and fs[0] == "testfs" for fs in qemu_fs):
             testfs_path = os.path.join(os.environ["LG_BUILDDIR"], "testfs")
-            pytestconfig.option.qemu_fs.append(["testfs", testfs_path])
+            qemu_fs.append(["testfs", testfs_path])
             os.makedirs(testfs_path, exist_ok=True)
             qemu_nic += f",tftp={testfs_path}"
 
     if "qemu" in features:
-        strategy.append_qemu_args("-nic", qemu_nic)
+        _append_qemu_args(strategy, fail, "-nic", qemu_nic)
 
-    for i, fs in enumerate(pytestconfig.option.qemu_fs):
+    for i, fs in enumerate(qemu_fs):
         if virtio:
             path = fs.pop()
             tag = fs.pop() if fs else f"fs{i}"
 
-            strategy.append_qemu_args(
+            _append_qemu_args(
+                strategy, fail,
                 "-fsdev", f"local,security_model=none,id=fs{i},path={path}",
                 "-device", f"virtio-9p-{virtio},id=fs{i},fsdev=fs{i},mount_tag={tag}"
             )
         else:
-            pytest.exit("--fs unsupported for target\n", 1)
-
-    state = request.config.option.lg_initial_state
-    if state is not None:
-        strategy.force(state)
-
-    return strategy
+            fail("--fs unsupported for target\n")
 
 
-@pytest.fixture(scope="session")
-def testfs(strategy, env):
-    if "testfs" not in env.get_target_features():
-        pytest.skip("testfs not supported on this platform")
+def replacement_message(mode):
+    return (f"pytest {mode} is no longer supported. Use "
+            "scripts/qemu_interactive.py instead.")
 
-    path = os.path.join(os.environ["LG_BUILDDIR"], "testfs")
-    return path
+
+def _split_qemu_args(argv):
+    for i, arg in enumerate(argv):
+        if arg in ("--qemu", "--"):
+            return argv[:i], argv[i + 1:]
+        if arg.startswith("--qemu="):
+            return argv[:i], [arg.split("=", 1)[1]] + argv[i + 1:]
+
+    return argv, []
+
+
+def build_arg_parser():
+    parser = argparse.ArgumentParser(
+        description="Start a barebox labgrid QEMU target interactively",
+        epilog="Raw QEMU arguments may follow either --qemu or --."
+    )
+
+    register_interactive_options(
+        parser.add_argument_group("qemu_interactive.py options"))
+    register_shared_options(parser.add_argument_group("QEMU options"))
+    parser.add_argument("lg_env_pos", nargs="*", metavar="LG_ENV",
+                        help="labgrid environment config file")
+
+    return parser
+
+
+def parse_args(argv=None):
+    if argv is None:
+        argv = sys.argv[1:]
+
+    parser = build_arg_parser()
+    argv, qemu_args = _split_qemu_args(list(argv))
+    args = parser.parse_args(argv)
+
+    if len(args.lg_env_pos) > 1:
+        parser.error("only one positional labgrid environment may be specified")
+
+    if args.lg_env_pos:
+        if args.lg_env is not None:
+            parser.error("labgrid environment specified both positionally and with --lg-env")
+        args.lg_env = args.lg_env_pos[0]
+
+    del args.lg_env_pos
+    args.qemu_arg = qemu_args
+
+    return args
+
+
+def quote_cmd(cmd):
+    quoted = map(lambda s: s if s.find(" ") == -1 else "'" + s + "'", cmd)
+    return " ".join(quoted)
+
+
+def build_qemu_command(strategy, mode):
+    if strategy.qemu is None:
+        raise QemuInteractiveError(f"Can't enter {mode} for non-QEMU target")
+
+    if mode != MODE_DRY_RUN:
+        strategy.transition("off")
+
+    if mode == MODE_DUMP_DTB:
+        strategy.qemu.machine += f",dumpdtb={strategy.target.name}.dtb"
+
+    cmd = strategy.qemu.get_qemu_base_args()
+    cmd.extend(["-serial", "mon:stdio", "-trace", "file=/dev/null"])
+
+    return cmd
+
+
+def run_qemu(strategy, mode):
+    if mode not in (MODE_INTERACTIVE, MODE_DRY_RUN, MODE_DUMP_DTB):
+        raise QemuInteractiveError(
+            "Can only force to: qemu_dry_run, qemu_interactive, qemu_dump_dtb")
+
+    cmd = build_qemu_command(strategy, mode)
+    command = "running: \n{}\n".format(quote_cmd(cmd))
+
+    if mode == MODE_DRY_RUN:
+        print(command, end="")
+        return 0
+
+    with open("/dev/tty", "r+b", buffering=0) as tty:
+        tty.write(bytes(command, "UTF-8"))
+        return subprocess.run(cmd, stdin=tty, stdout=tty, stderr=tty).returncode
+
+
+def main(argv=None):
+    from labgrid import Environment
+    from labgrid.exceptions import NoDriverFoundError
+
+    args = parse_args(argv)
+    env = None
+
+    try:
+        resolve_lg_builddir()
+        lg_env = resolve_lg_env(args.lg_env)
+        if lg_env is None:
+            raise QemuInteractiveError(
+                "no labgrid environment specified; pass --lg-env, "
+                "a positional LG_ENV, set LG_ENV, or build a config with CONFIG_NAME",
+                2)
+
+        env = Environment(lg_env)
+        target = env.get_target("main")
+        if target is None:
+            raise QemuInteractiveError("labgrid environment has no main target")
+
+        try:
+            strategy = target.get_driver("Strategy")
+        except NoDriverFoundError as e:
+            raise QemuInteractiveError(str(e)) from e
+
+        apply_shared_options(strategy, target, args,
+                             interactive=args.qemu_mode != MODE_DUMP_DTB)
+
+        return run_qemu(strategy, args.qemu_mode)
+    except QemuInteractiveError as e:
+        print(f"error: {e}", file=sys.stderr)
+        return e.returncode
+    finally:
+        if env is not None:
+            env.cleanup()
+
+
+if __name__ == "__main__":
+    sys.exit(main())
-- 
2.47.3



