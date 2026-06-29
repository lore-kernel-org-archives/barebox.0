Delivery-date: Mon, 29 Jun 2026 14:48:00 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1weBP6-00B7T3-1L
	for lore@lore.pengutronix.de;
	Mon, 29 Jun 2026 14:48:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1weBP4-00027R-H9
	for lore@pengutronix.de; Mon, 29 Jun 2026 14:48:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=FIHyVXWxL87BTWWNY3ISNL45GwSfzxSmdsw7fJNFkdI=; b=GPGUNpjmCmlokzNnmAjq6bA8G9
	uaa5r5TKEte0hK3hq+vEpdJJLbXhUjnT4msgZx56Oi2SIT3ggP+rP3Z6spjrpxJJdtrNOOwnFOynK
	qGWK6ogeN3zIWVY4HPEGi42lyxZAkPnq/xbzNc01ctXPovb19V5USQBNPrLqHJd3aWXePMi7+c8zF
	BFp5EsLfyBuwOdAFdn4tbyaTXmLtEVEZ5Au0HsMh/RKE6K2St6cAXucFHh7sSfDrSeSg94Qf3GjRN
	pTzjj7mVZbjS1rVs9cMhBw+vl1tn4oObsFDtBkS8RLMl/9LVkXwyEVJYLIVX/vQF9to3VK3dZ4bqW
	n6oggC7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weBNp-0000000EbXe-2IGe;
	Mon, 29 Jun 2026 12:46:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weBNk-0000000EbUJ-0Yb9
	for barebox@lists.infradead.org;
	Mon, 29 Jun 2026 12:46:39 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1weBNh-0000LG-Is; Mon, 29 Jun 2026 14:46:33 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 29 Jun 2026 14:45:20 +0200
Message-ID: <20260629124631.689090-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260629_054636_471581_7FF508AF 
X-CRM114-Status: GOOD (  17.64  )
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
Subject: [PATCH v3 01/10] scripts: duplicate conftest.py as qemu_interactive.py
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

To make the change splitting pytest --interactive into its own script
easier to follow, duplicate the existing code under the new name.

No functional change.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
Change can be squashed into follow-up commit. This doesn't yet work,
but doesn't break anything.

v1 -> v3:
  - no change
---
 scripts/qemu_interactive.py | 304 ++++++++++++++++++++++++++++++++++++
 1 file changed, 304 insertions(+)
 create mode 100644 scripts/qemu_interactive.py

diff --git a/scripts/qemu_interactive.py b/scripts/qemu_interactive.py
new file mode 100644
index 000000000000..6f76586e010b
--- /dev/null
+++ b/scripts/qemu_interactive.py
@@ -0,0 +1,304 @@
+# SPDX-License-Identifier: GPL-2.0-only
+import pytest
+import os
+import argparse
+from labgrid.exceptions import NoDriverFoundError
+from test.py import helper
+
+
+def transition_to_barebox(request, strategy):
+    try:
+        strategy.transition('barebox')
+    except Exception as e:
+        # If a normal strategy transition fails, there's no point in
+        # continuing the test. Let's print stderr and exit.
+        capmanager = request.config.pluginmanager.getplugin("capturemanager")
+        with capmanager.global_and_fixture_disabled():
+            _, stderr = capmanager.read_global_capture()
+            pytest.exit(f"{type(e).__name__}(\"{e}\"). Standard error:\n{stderr}",
+                        returncode=3)
+
+
+@pytest.fixture(scope='function')
+def barebox(request, strategy, target):
+    transition_to_barebox(request, strategy)
+    return target.get_driver('BareboxDriver')
+
+
+@pytest.fixture(scope='function')
+def shell(strategy, target):
+    strategy.transition('shell')
+    return target.get_driver('ShellDriver')
+
+
+@pytest.fixture(scope="session")
+def barebox_config(request, strategy, target):
+    transition_to_barebox(request, strategy)
+    command = target.get_driver("BareboxDriver")
+    return helper.get_config(command)
+
+
+def get_enabled_arch(config):
+    # Get the absolute path to the directory containing this script
+    base_dir = os.path.dirname(os.path.abspath(__file__))
+
+    # Path to the 'arch' directory relative to this script
+    arch_dir = os.path.join(base_dir, "arch")
+
+    if not os.path.isdir(arch_dir):
+        return None
+
+    # Optional mapping from directory names to config key suffixes
+    arch_map = {"powerpc": "ppc"}
+
+    for entry in os.listdir(arch_dir):
+        path = os.path.join(arch_dir, entry)
+        if os.path.isdir(path):
+            key_suffix = arch_map.get(entry, entry).upper()
+            config_key = f"CONFIG_{key_suffix}"
+            if config.get(config_key):
+                return entry
+
+    return None
+
+
+def guess_lg_env():
+    config_file = helper.open_config_file(os.environ['LG_BUILDDIR'] + "/.config")
+    config = helper.parse_config(config_file)
+    if not config or not config.get('CONFIG_NAME'):
+        return None
+    arch = get_enabled_arch(config)
+    if not arch:
+        return None
+    filename = os.path.join("test", arch, f"{config['CONFIG_NAME']}.yaml")
+    if os.path.exists(filename):
+        return filename
+    return None
+
+
+lg_env = lg_builddir = None
+
+
+def pytest_configure(config):
+    if 'LG_BUILDDIR' not in os.environ:
+        if 'KBUILD_OUTPUT' in os.environ:
+            os.environ['LG_BUILDDIR'] = os.environ['KBUILD_OUTPUT']
+        elif os.path.isdir('build'):
+            os.environ['LG_BUILDDIR'] = os.path.realpath('build')
+        else:
+            os.environ['LG_BUILDDIR'] = os.getcwd()
+
+    if os.environ['LG_BUILDDIR'] is not None:
+        os.environ['LG_BUILDDIR'] = os.path.realpath(os.environ['LG_BUILDDIR'])
+
+    global lg_env
+    global lg_builddir
+
+    lg_builddir = os.environ['LG_BUILDDIR']
+    lg_env = config.option.lg_env
+    if lg_env is None:
+        lg_env = os.environ.get('LG_ENV')
+    if lg_env is None:
+        if lg_env := guess_lg_env():
+            os.environ['LG_ENV'] = lg_env
+
+
+def pytest_report_header(config):
+    report = []
+    if lg_builddir is not None:
+        report += [f"Build diectory: {lg_builddir}"]
+    if lg_env is not None:
+        report += [f"Labgrid Environment: {lg_env}"]
+    return "\n".join(report)
+
+
+def pytest_addoption(parser):
+    def assignment(arg):
+        return arg.split('=', 1)
+
+    parser.addoption('--interactive', action='store_const', const='qemu_interactive',
+                     dest='lg_initial_state',
+                     help=('(for debugging) skip tests and just start Qemu interactively'))
+    parser.addoption('--dry-run', action='store_const', const='qemu_dry_run',
+                     dest='lg_initial_state',
+                     help=('(for debugging) skip tests and just print Qemu command line'))
+    parser.addoption('--dump-dtb', action='store_const', const='qemu_dump_dtb',
+                     dest='lg_initial_state',
+                     help=('(for debugging) skip tests and just dump the Qemu device tree'))
+    parser.addoption('--graphic', '--graphics', action='store_true', dest='qemu_graphics',
+                     help=('enable QEMU graphics output'))
+    parser.addoption('--rng', action='count', dest='qemu_rng',
+                     help=('instantiate Virt I/O random number generator'))
+    parser.addoption('--console', action='count', dest='qemu_console', default=0,
+                     help=('Pass an extra console (Virt I/O or ns16550_pci) to emulated barebox'))
+    parser.addoption('--fs', action='append', dest='qemu_fs',
+                     default=[], metavar="[tag=]DIR", type=assignment,
+                     help=('Pass directory trees to emulated barebox. Can be specified more than once'))  # noqa
+    parser.addoption('--blk', action='append', dest='qemu_block',
+                     default=[], metavar="FILE",
+                     help=('Pass block device to emulated barebox. Can be specified more than once'))  # noqa
+    parser.addoption('--env', action='append', dest='qemu_fw_cfg', type=assignment,
+                     default=[], metavar="[envpath=]content | [envpath=]@filepath",
+                     help=('Pass barebox environment files to barebox. Can be specified more than once'))  # noqa
+    parser.addoption('--qemu', dest='qemu_arg', nargs=argparse.REMAINDER, default=[],
+                     help=('Pass all remaining options to QEMU as is'))
+    parser.addoption('--bootarg', action='append', dest='bootarg', default=[],
+                     help=('Pass boot arguments to barebox for debugging purposes'))
+    parser.addoption('--port-forward', metavar="PORT", action='append', dest='qemu_port', default=[],
+                     help=('Forward incoming TCP or UDP connections on specified PORT'))
+
+
+@pytest.fixture(scope="session")
+def strategy(request, target, pytestconfig):  # noqa: max-complexity=30
+    try:
+        strategy = target.get_driver("Strategy")
+    except NoDriverFoundError as e:
+        pytest.exit(e)
+
+    try:
+        main = target.env.config.data["targets"]["main"]
+        features = main["features"]
+    except KeyError:
+        features = []
+
+    try:
+        main = target.env.config.data["targets"]["main"]
+        yaml_env = main["env"]
+    except KeyError:
+        yaml_env = {}
+
+    try:
+        main = target.env.config.data["targets"]["main"]
+        qemu_bin = main["drivers"]["QEMUDriver"]["qemu_bin"]
+        features.append("qemu")
+    except KeyError:
+        pass
+
+    virtio = None
+
+    if "virtio-mmio" in features:
+        virtio = "device"
+        strategy.append_qemu_args('-global virtio-mmio.force-legacy=false')
+    if "virtio-pci" in features:
+        virtio = "pci,disable-modern=off"
+        features.append("pci")
+
+    if virtio and pytestconfig.option.qemu_rng:
+        for i in range(pytestconfig.option.qemu_rng):
+            strategy.append_qemu_args("-device", f"virtio-rng-{virtio}")
+
+    for i in range(pytestconfig.option.qemu_console):
+        if virtio and i == 0:
+            strategy.append_qemu_args(
+                "-device", f"virtio-serial-{virtio}",
+                "-chardev", f"pty,id=virtcon{i}",
+                "-device", f"virtconsole,chardev=virtcon{i},name=console.virtcon{i}"
+            )
+            continue
+
+        # ns16550 serial driver only works with x86 so far
+        if 'pci' in features:
+            strategy.append_qemu_args(
+                "-chardev", f"pty,id=pcicon{i}",
+                "-device", f"pci-serial,chardev=pcicon{i}"
+            )
+        else:
+            pytest.exit("barebox currently supports only a single extra virtio console\n", 1)
+
+    if "qemu" in features:
+        if not pytestconfig.option.qemu_graphics:
+            graphics = '-nographic'
+        elif qemu_bin == "qemu-system-x86_64":
+            graphics = '-device isa-vga'
+        elif 'pci' in features:
+            graphics = '-device VGA'
+        elif virtio:
+            graphics = '-vga none -device ramfb'
+            graphics += f' -device virtio-keyboard-{virtio}'
+        else:
+            pytest.exit("--graphics unsupported for target\n", 1)
+
+        if graphics is not None and \
+                pytestconfig.option.lg_initial_state != 'qemu_interactive':
+            graphics += ' -display none'
+
+        strategy.append_qemu_args(graphics)
+
+    for i, blk in enumerate(pytestconfig.option.qemu_block):
+        if virtio:
+            strategy.append_qemu_args(
+                "-drive", f"if=none,format=raw,id=hd{i},file={blk}",
+                "-device", f"virtio-blk-{virtio},drive=hd{i}"
+            )
+        else:
+            pytest.exit("--blk unsupported for target\n", 1)
+
+    envopts = {}
+
+    for i, fw_cfg in enumerate(pytestconfig.option.qemu_fw_cfg):
+        value = fw_cfg.pop()
+        envpath = fw_cfg.pop() if fw_cfg else f"data/fw_cfg{i}"
+
+        envopts[envpath] = value
+
+    for envpath, value in (yaml_env | envopts).items():
+        if virtio:
+            if isinstance(value, str) and value.startswith('@'):
+                source = f"file='{value[1:]}'"
+            else:
+                source = f"string='{value}'"
+
+            strategy.append_qemu_args(
+                '-fw_cfg', f'name=opt/org.barebox.env/{envpath},{source}'
+            )
+        else:
+            pytest.exit("env unsupported for target\n", 1)
+
+    if len(pytestconfig.option.bootarg) > 0:
+        strategy.append_qemu_bootargs(pytestconfig.option.bootarg)
+
+    for arg in pytestconfig.option.qemu_arg:
+        strategy.append_qemu_args(arg)
+
+    qemu_nic = "user,id=net0"
+
+    for port in pytestconfig.option.qemu_port:
+        qemu_nic += f",hostfwd=udp:127.0.0.2:{port}-:{port}"
+        qemu_nic += f",hostfwd=tcp:127.0.0.2:{port}-:{port}"
+
+    if "testfs" in features:
+        if not any(fs and fs[0] == "testfs" for fs in pytestconfig.option.qemu_fs):
+            testfs_path = os.path.join(os.environ["LG_BUILDDIR"], "testfs")
+            pytestconfig.option.qemu_fs.append(["testfs", testfs_path])
+            os.makedirs(testfs_path, exist_ok=True)
+            qemu_nic += f",tftp={testfs_path}"
+
+    if "qemu" in features:
+        strategy.append_qemu_args("-nic", qemu_nic)
+
+    for i, fs in enumerate(pytestconfig.option.qemu_fs):
+        if virtio:
+            path = fs.pop()
+            tag = fs.pop() if fs else f"fs{i}"
+
+            strategy.append_qemu_args(
+                "-fsdev", f"local,security_model=none,id=fs{i},path={path}",
+                "-device", f"virtio-9p-{virtio},id=fs{i},fsdev=fs{i},mount_tag={tag}"
+            )
+        else:
+            pytest.exit("--fs unsupported for target\n", 1)
+
+    state = request.config.option.lg_initial_state
+    if state is not None:
+        strategy.force(state)
+
+    return strategy
+
+
+@pytest.fixture(scope="session")
+def testfs(strategy, env):
+    if "testfs" not in env.get_target_features():
+        pytest.skip("testfs not supported on this platform")
+
+    path = os.path.join(os.environ["LG_BUILDDIR"], "testfs")
+    return path
-- 
2.47.3



