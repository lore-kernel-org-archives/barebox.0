Delivery-date: Mon, 20 Oct 2025 20:29:34 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vAudS-009z1J-22
	for lore@lore.pengutronix.de;
	Mon, 20 Oct 2025 20:29:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vAudQ-0002Ma-Fm
	for lore@pengutronix.de; Mon, 20 Oct 2025 20:29:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3MGktqMQYSe897ka5VAn+bcm6froE37Rvb+q6/a1xJY=; b=E+Q9+xwtafezbeoao6i+kfp1tA
	Yjm8wBZIoPqoWvREJSg0CZSgF3iRnGSMafPWw8oMoa6FCtKia1us5jyuzGzxHp62ROvP2IC8lK94X
	LfEe3QoLRhwNRhCzs1EtVupKHZmXsMtl+WzkjzW/ZCsCIhL0yghLjx6lRszeW8guqoUbfuFx6P6/G
	4FLGhsSt+yX/OE91ymzY2SpJdqpPd6BIm1goF1aWeW91F8L+/aZHjYY+VgVGYsctPE5hwcOmDPVuk
	LnLE4gttNRxdOaQsQdm7MMZSaikVaGkF4zAiiIICK4ow+cAReCKTMYsFsCJHjEQmldd/DHdXVSt2X
	XrOukzyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAuct-0000000EdCg-3ofj;
	Mon, 20 Oct 2025 18:28:59 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAucs-0000000EdC8-0hRg
	for barebox@bombadil.infradead.org;
	Mon, 20 Oct 2025 18:28:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=3MGktqMQYSe897ka5VAn+bcm6froE37Rvb+q6/a1xJY=; b=o0Y95INSR9ZQpo2cWnYdHZ0KTB
	SEkc/NMlRxjp3F7RWK3e5UdSM6K/lycZdRxPlkBmcAoSzirhb+h3BrnI/UmNGFJAOn5USa0ZQP1UG
	LEmM3NcQZMvBl7bKYo6NgaY8CDo6M9O33eo1MGQFtpmJD7gJ6y6RKY0iFXrquqcxrG0sScKBxNaKW
	AUIZSB1Ltjh3Bgi8xPDJxrpybHCe35RfrzSYP5mO65VuyjqIP+BhfgMv+F3zpfApKGfGwi7k8dJdY
	E6i4GTYllZkibU9w9SpZifXAwcrVkq59Jct4OaP73+JdDFn/26JRr8QhTf+V41GD27mN+lo5tFYQj
	4+MV0qlw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAtl8-000000005j2-3JkW
	for barebox@lists.infradead.org;
	Mon, 20 Oct 2025 17:33:28 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vAucd-00025o-3T; Mon, 20 Oct 2025 20:28:43 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 20 Oct 2025 20:28:38 +0200
Message-ID: <20251020182841.590206-3-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251020182841.590206-1-a.fatoum@barebox.org>
References: <20251020182841.590206-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251020_183327_109143_1DF931B5 
X-CRM114-Status: GOOD (  14.42  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 3/3] test: py: fix pycodestyle warnings
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

pycodestyle complains about some things, mostly whitespace, inconsistent
indentation and unused symbols.

Fix most of these up, so actual issues are more easily noticed and while
at it, add missing SPDX-License-Identifiers.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 conftest.py                |  48 ++++++++-------
 test/py/helper.py          |   4 ++
 test/py/test_bselftests.py |   6 +-
 test/py/test_bthread.py    |   9 ++-
 test/py/test_dm.py         |  13 +++--
 test/py/test_fit.py        |  15 +++--
 test/py/test_network.py    |  22 ++++---
 test/py/test_nvmem.py      | 116 +++++++++++++++++++++++--------------
 test/py/test_shell.py      |   9 ++-
 test/py/test_tlv.py        |   2 +
 test/strategy.py           |   8 ++-
 11 files changed, 163 insertions(+), 89 deletions(-)

diff --git a/conftest.py b/conftest.py
index eb4b04873bbb..799f0637a0de 100644
--- a/conftest.py
+++ b/conftest.py
@@ -1,10 +1,14 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 import pytest
 import os
 import argparse
+from labgrid.exceptions import NoDriverFoundError
 from test.py import helper
 
 from test.py.interactive import *
 
+
 def transition_to_barebox(request, strategy):
     try:
         strategy.transition('barebox')
@@ -17,11 +21,13 @@ def transition_to_barebox(request, strategy):
             pytest.exit(f"{type(e).__name__}(\"{e}\"). Standard error:\n{stderr}",
                         returncode=3)
 
+
 @pytest.fixture(scope='function')
 def barebox(request, strategy, target):
     transition_to_barebox(request, strategy)
     return target.get_driver('BareboxDriver')
 
+
 @pytest.fixture(scope="session")
 def barebox_config(request, strategy, target):
     transition_to_barebox(request, strategy)
@@ -89,39 +95,40 @@ def pytest_configure(config):
 
 def pytest_addoption(parser):
     def assignment(arg):
-            return arg.split('=', 1)
+        return arg.split('=', 1)
 
     parser.addoption('--interactive', action='store_const', const='qemu_interactive',
-        dest='lg_initial_state',
-        help=('(for debugging) skip tests and just start Qemu interactively'))
+                     dest='lg_initial_state',
+                     help=('(for debugging) skip tests and just start Qemu interactively'))
     parser.addoption('--dry-run', action='store_const', const='qemu_dry_run',
-        dest='lg_initial_state',
-        help=('(for debugging) skip tests and just print Qemu command line'))
+                     dest='lg_initial_state',
+                     help=('(for debugging) skip tests and just print Qemu command line'))
     parser.addoption('--dump-dtb', action='store_const', const='qemu_dump_dtb',
-        dest='lg_initial_state',
-        help=('(for debugging) skip tests and just dump the Qemu device tree'))
+                     dest='lg_initial_state',
+                     help=('(for debugging) skip tests and just dump the Qemu device tree'))
     parser.addoption('--graphic', '--graphics', action='store_true', dest='qemu_graphics',
-        help=('enable QEMU graphics output'))
+                     help=('enable QEMU graphics output'))
     parser.addoption('--rng', action='count', dest='qemu_rng',
-        help=('instantiate Virt I/O random number generator'))
+                     help=('instantiate Virt I/O random number generator'))
     parser.addoption('--console', action='count', dest='qemu_console', default=0,
-        help=('Pass an extra console (Virt I/O or ns16550_pci) to emulated barebox'))
+                     help=('Pass an extra console (Virt I/O or ns16550_pci) to emulated barebox'))
     parser.addoption('--fs', action='append', dest='qemu_fs',
-        default=[], metavar="[tag=]DIR", type=assignment,
-        help=('Pass directory trees to emulated barebox. Can be specified more than once'))
+                     default=[], metavar="[tag=]DIR", type=assignment,
+                     help=('Pass directory trees to emulated barebox. Can be specified more than once'))  # noqa
     parser.addoption('--blk', action='append', dest='qemu_block',
-        default=[], metavar="FILE",
-        help=('Pass block device to emulated barebox. Can be specified more than once'))
-    parser.addoption('--env', action='append', dest='qemu_fw_cfg',
-        default=[], metavar="[envpath=]content | [envpath=]@filepath", type=assignment,
-        help=('Pass barebox environment files to barebox. Can be specified more than once'))
+                     default=[], metavar="FILE",
+                     help=('Pass block device to emulated barebox. Can be specified more than once'))  # noqa
+    parser.addoption('--env', action='append', dest='qemu_fw_cfg', type=assignment,
+                     default=[], metavar="[envpath=]content | [envpath=]@filepath",
+                     help=('Pass barebox environment files to barebox. Can be specified more than once'))  # noqa
     parser.addoption('--qemu', dest='qemu_arg', nargs=argparse.REMAINDER, default=[],
-        help=('Pass all remaining options to QEMU as is'))
+                     help=('Pass all remaining options to QEMU as is'))
     parser.addoption('--bootarg', action='append', dest='bootarg', default=[],
-        help=('Pass boot arguments to barebox for debugging purposes'))
+                     help=('Pass boot arguments to barebox for debugging purposes'))
+
 
 @pytest.fixture(scope="session")
-def strategy(request, target, pytestconfig):
+def strategy(request, target, pytestconfig):  # noqa: max-complexity=30
     try:
         strategy = target.get_driver("Strategy")
     except NoDriverFoundError as e:
@@ -234,6 +241,7 @@ def strategy(request, target, pytestconfig):
 
     return strategy
 
+
 @pytest.fixture(scope="session")
 def testfs(strategy, env):
     if "testfs" not in env.get_target_features():
diff --git a/test/py/helper.py b/test/py/helper.py
index d4949acb63a0..756a06a8be66 100644
--- a/test/py/helper.py
+++ b/test/py/helper.py
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 from labgrid.driver import BareboxDriver
 import pytest
 import os
@@ -113,6 +115,7 @@ def getstate_int(barebox, var, prefix="state.bootstate"):
 def getparam_int(info, var):
     return int(info["Parameters"][var].split()[0])
 
+
 def of_get_property(barebox, path):
     node, prop = os.path.split(path)
 
@@ -127,6 +130,7 @@ def of_get_property(barebox, path):
             return line[len(prefix):-1]
     return False
 
+
 def skip_disabled(config, *options):
     if bool(config):
         undefined = [opt for opt in options if opt not in config]
diff --git a/test/py/test_bselftests.py b/test/py/test_bselftests.py
index 7417e7434916..4b0b59e672cc 100644
--- a/test/py/test_bselftests.py
+++ b/test/py/test_bselftests.py
@@ -1,5 +1,7 @@
-import pytest
-from .helper import *
+# SPDX-License-Identifier: GPL-2.0-only
+
+from .helper import skip_disabled
+
 
 def test_bselftest(barebox, barebox_config):
     skip_disabled(barebox_config, "CONFIG_CMD_SELFTEST")
diff --git a/test/py/test_bthread.py b/test/py/test_bthread.py
index 6bd1032a53dd..aa59bf828141 100644
--- a/test/py/test_bthread.py
+++ b/test/py/test_bthread.py
@@ -1,5 +1,7 @@
-import pytest
-from .helper import *
+# SPDX-License-Identifier: GPL-2.0-only
+
+from .helper import skip_disabled
+
 
 def stale_spawners(barebox):
     threads = barebox.run_check("bthread -i")
@@ -7,6 +9,7 @@ def stale_spawners(barebox):
         return False
     return len([t for t in threads if t.startswith('spawner')]) > 0
 
+
 def test_bthread(barebox, barebox_config):
     skip_disabled(barebox_config, "CONFIG_CMD_BTHREAD")
 
@@ -18,7 +21,7 @@ def test_bthread(barebox, barebox_config):
     assert not stale_spawners(barebox)
 
     switches = int(barebox.run_check("bthread -c")[0].split()[0])
-    yields   = int(barebox.run_check("bthread -t")[0].split()[0])
+    yields = int(barebox.run_check("bthread -t")[0].split()[0])
 
     assert switches > 1000
     assert yields > 1000
diff --git a/test/py/test_dm.py b/test/py/test_dm.py
index dc4e05cc77c8..397d4573c3e9 100644
--- a/test/py/test_dm.py
+++ b/test/py/test_dm.py
@@ -1,14 +1,16 @@
 # SPDX-License-Identifier: GPL-2.0-or-later
 
-import re
 import pytest
+import os
+import subprocess
+import shutil
 from .helper import skip_disabled
 
-import os, subprocess, shutil
 
 def pad128k(f):
     f.write(b"\0" * 128 * 1024)
 
+
 @pytest.fixture(scope="module")
 def dm_testdata(testfs):
     path = os.path.join(testfs, "dm")
@@ -29,7 +31,8 @@ def dm_testdata(testfs):
     try:
         subprocess.run(["truncate", "-s", "1M", "good.fat"], check=True)
         subprocess.run(["mkfs.vfat", "good.fat"], check=True)
-        subprocess.run(["mcopy", "-i", "good.fat", "latin", "english", "::"], check=True)
+        subprocess.run(["mcopy", "-i", "good.fat", "latin", "english", "::"],
+                       check=True)
 
         subprocess.run([
             "veritysetup", "format",
@@ -41,7 +44,8 @@ def dm_testdata(testfs):
         shutil.rmtree(path)
         pytest.skip(f"missing dependency: {e}")
 
-    with open("good.fat", "rb") as f: data = f.read()
+    with open("good.fat", "rb") as f:
+        data = f.read()
     with open("bad.fat", "wb") as f:
         f.write(data.replace(
             b"truth will set you free",
@@ -54,6 +58,7 @@ def dm_testdata(testfs):
 
     shutil.rmtree(path)
 
+
 @pytest.fixture(autouse=True)
 def reset_pwd(barebox):
     yield
diff --git a/test/py/test_fit.py b/test/py/test_fit.py
index 7a0b9f2762d5..2a51ac1bc075 100644
--- a/test/py/test_fit.py
+++ b/test/py/test_fit.py
@@ -41,14 +41,19 @@ def fit_testdata(barebox_config, testfs):
             input=(builddir / "images" / "barebox-dt-2nd.img").read_bytes(),
             stdout=open(builddir / "barebox-dt-2nd.img.gz", "wb"))
 
-        find = subprocess.Popen(["find", "COPYING", "LICENSES/"], stdout=subprocess.PIPE)
-        cpio = subprocess.Popen(["cpio", "-o", "-H", "newc"], stdin=find.stdout, stdout=subprocess.PIPE)
+        find = subprocess.Popen(["find", "COPYING", "LICENSES/"],
+                                stdout=subprocess.PIPE)
+        cpio = subprocess.Popen(["cpio", "-o", "-H", "newc"],
+                                stdin=find.stdout, stdout=subprocess.PIPE)
         gzip = subprocess.Popen(["gzip"], stdin=cpio.stdout,
                                 stdout=open(builddir / "ramdisk.cpio.gz", "wb"))
-        find.wait(); cpio.wait(); gzip.wait()
 
-        run([ "mkimage", "-G", "test/self/development_rsa2048.pem", "-r", "-f",
-             str(builddir / its_name), str(outfile) ])
+        find.wait()
+        cpio.wait()
+        gzip.wait()
+
+        run(["mkimage", "-G", "test/self/development_rsa2048.pem", "-r", "-f",
+             str(builddir / its_name), str(outfile)])
     except FileNotFoundError as e:
         pytest.skip(f"Skip dm tests due to missing dependency: {e}")
 
diff --git a/test/py/test_network.py b/test/py/test_network.py
index 28efcc02e44d..e76aad1cc6f6 100644
--- a/test/py/test_network.py
+++ b/test/py/test_network.py
@@ -1,6 +1,8 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 import pytest
 
-from labgrid import driver,Environment
+from labgrid import driver
 import socket
 import threading
 import re
@@ -10,12 +12,14 @@ from .helper import skip_disabled
 # Setting the port to zero causes bind to choose a random ephermal port
 TFTP_TEST_PORT = 0
 
+
 def get_source_addr(destination_ip, destination_port):
     udp_socket = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
     udp_socket.connect((destination_ip, destination_port))
     source_ip, _ = udp_socket.getsockname()
     return source_ip
 
+
 def tftp_setup_socket(listen_addr, listen_port=0):
     udp_socket = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
     udp_socket.bind((listen_addr, listen_port))
@@ -34,6 +38,7 @@ def tftp_expect_notfound(filename, udp_socket):
     udp_socket.close()
     assert data == messages[0]
 
+
 def tftp_conversation(barebox, barebox_interface, guestaddr):
 
     listen_addr = "127.0.0.1"
@@ -44,8 +49,8 @@ def tftp_conversation(barebox, barebox_interface, guestaddr):
 
     barebox.run_check("ping $eth0.serverip", timeout=2)
 
-    tftp_socket=tftp_setup_socket(listen_addr, TFTP_TEST_PORT)
-    tftp_port_used=tftp_socket.getsockname()[1]
+    tftp_socket = tftp_setup_socket(listen_addr, TFTP_TEST_PORT)
+    tftp_port_used = tftp_socket.getsockname()[1]
 
     tftp_thread = threading.Thread(
         target=tftp_expect_notfound,
@@ -56,7 +61,8 @@ def tftp_conversation(barebox, barebox_interface, guestaddr):
     tftp_thread.start()
 
     try:
-        stdout, _, returncode = barebox.run(f"tftp -P {tftp_port_used} a", timeout=3)
+        stdout, _, returncode = barebox.run(f"tftp -P {tftp_port_used} a",
+                                            timeout=3)
         assert returncode != 0
     finally:
         # terminate a timed-out tftp
@@ -69,8 +75,9 @@ def test_barebox_network(barebox, barebox_config, env):
     skip_disabled(barebox_config, "CONFIG_CMD_TFTP")
 
     # on DUTs without network feature, this is expected to fail
-    # set xfail_strict=True to enforce specifying the network feature if available
-    if not 'network' in env.get_target_features():
+    # set xfail_strict=True to enforce specifying the network feature
+    # if available
+    if 'network' not in env.get_target_features():
         pytest.xfail("network feature not specified")
 
     stdout = barebox.run_check("ifup -a")
@@ -94,7 +101,8 @@ def test_barebox_network(barebox, barebox_config, env):
         assert ifaddr != "0.0.0.0"
         assert ifaddr == barebox.run_check(f"echo ${ifname}.ipaddr")[0]
 
-        # Attempt a conversation with the DUT, which needs to succeed only on one interface
+        # Attempt a conversation with the DUT, which needs to succeed
+        # only on one interface
         success = False
 
         try:
diff --git a/test/py/test_nvmem.py b/test/py/test_nvmem.py
index 6070877a6868..003e35e54a59 100644
--- a/test/py/test_nvmem.py
+++ b/test/py/test_nvmem.py
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 import pytest
 import re
 
@@ -14,6 +16,7 @@ ESSENTIAL_CONFIGS = [
     "CONFIG_FS_DEVFS"         # For /dev/ device character file paths
 ]
 
+
 @pytest.fixture(scope="session", autouse=True)
 def check_essential_barebox_configs(barebox_config):
     """
@@ -38,6 +41,7 @@ def check_essential_barebox_configs(barebox_config):
             f"{', '.join(missing_configs)}"
         )
 
+
 # --- Individual Test Skip Helper ---
 def skip_disabled(barebox_config, *config_options_needed):
     if not barebox_config:
@@ -55,28 +59,36 @@ def skip_disabled(barebox_config, *config_options_needed):
             f"{', '.join(missing_for_this_test)}"
         )
 
+
 # --- Constants ---
 NVMEM_MAX_DYNAMIC_SIZE = 1024 * 1024
 TEST_ENV_VAR_NAME = "TESTNVMEMDEV"
 DEFAULT_DEVICE_SIZE = 1024
 
+
 # --- Helper Functions ---
 def string_to_hex_bytes_for_mw(s: str) -> str:
     return " ".join([f"0x{ord(c):02x}" for c in s])
 
+
 def parse_md_output(output_lines: list[str],
                     access_size_char: str = 'b') -> str:
     hex_data = []
 
     unit_hex_len = 0
-    if access_size_char == 'b': unit_hex_len = 2
-    elif access_size_char == 'w': unit_hex_len = 4
-    elif access_size_char == 'l': unit_hex_len = 8
-    elif access_size_char == 'q': unit_hex_len = 16 # For 64-bit quad
+    if access_size_char == 'b':
+        unit_hex_len = 2
+    elif access_size_char == 'w':
+        unit_hex_len = 4
+    elif access_size_char == 'l':
+        unit_hex_len = 8
+    elif access_size_char == 'q':
+        unit_hex_len = 16  # For 64-bit quad
     else:
         return ""
 
-    hex_part_regex_str = r"^[0-9a-fA-F]+:\s+((?:[0-9a-fA-F]{" + str(unit_hex_len) + r"}\s*)+)"
+    hex_part_regex_str = r"^[0-9a-fA-F]+:\s+((?:[0-9a-fA-F]{" + \
+                         str(unit_hex_len) + r"}\s*)+)"
     hex_part_regex = re.compile(hex_part_regex_str)
 
     for i, line in enumerate(output_lines):
@@ -89,16 +101,18 @@ def parse_md_output(output_lines: list[str],
     full_hex_string = "".join(hex_data)
     return full_hex_string.lower()
 
-def parse_md_word_value(output_lines: list[str]) -> int | None: # For 16-bit
+
+def parse_md_word_value(output_lines: list[str]) -> int | None:  # For 16-bit
     hex_string = parse_md_output(output_lines, 'w')
-    if hex_string and len(hex_string) == 4: # 16-bit word is 4 hex chars
+    if hex_string and len(hex_string) == 4:  # 16-bit word is 4 hex chars
         try:
             return int(hex_string, 16)
         except ValueError:
             return None
     return None
 
-def parse_md_long_value(output_lines: list[str]) -> int | None: # For 32-bit
+
+def parse_md_long_value(output_lines: list[str]) -> int | None:  # For 32-bit
     hex_string = parse_md_output(output_lines, 'l')
     if hex_string and len(hex_string) == 8:
         try:
@@ -107,14 +121,16 @@ def parse_md_long_value(output_lines: list[str]) -> int | None: # For 32-bit
             return None
     return None
 
-def parse_md_bytes_to_string(output_lines: list[str], expected_num_bytes: int) -> str | None:
+
+def parse_md_bytes_to_string(output_lines: list[str],
+                             expected_num_bytes: int) -> str | None:
     hex_string = parse_md_output(output_lines, 'b')
 
     expected_hex_len = expected_num_bytes * 2
     if len(hex_string) > expected_hex_len:
         hex_string = hex_string[:expected_hex_len]
 
-    if hex_string and len(hex_string) == expected_hex_len :
+    if hex_string and len(hex_string) == expected_hex_len:
         try:
             if len(hex_string) % 2 != 0:
                 return None
@@ -126,6 +142,7 @@ def parse_md_bytes_to_string(output_lines: list[str], expected_num_bytes: int) -
             return None
     return None
 
+
 # --- Pytest Fixtures (test-specific setup) ---
 @pytest.fixture(scope="function")
 def created_nvmem_device_name(barebox, barebox_config):
@@ -171,7 +188,8 @@ def created_nvmem_device_name(barebox, barebox_config):
         final_cdev_name = cdev_name_match.group(1)
     else:
         # If it doesn't end with '0' (e.g. it's already 'rmemX')
-        cdev_name_match_direct = re.match(r"(rmem\d+)$", actual_device_name_listed)
+        cdev_name_match_direct = re.match(r"(rmem\d+)$",
+                                          actual_device_name_listed)
         if not cdev_name_match_direct:
             pytest.fail(
                 f"Could not derive cdev base name from listed name "
@@ -197,6 +215,7 @@ def test_nvmem_list_empty_or_static(barebox, barebox_config):
     _, _, returncode = barebox.run('nvmem')
     assert returncode == 0, "`nvmem` command failed"
 
+
 def test_nvmem_create_dynamic_device(barebox, barebox_config):
     """
     Tests creating a dynamic NVMEM rmem device using `nvmem -c <size>`.
@@ -211,7 +230,7 @@ def test_nvmem_create_dynamic_device(barebox, barebox_config):
     rmem_devices_before = {
         line.strip() for line in stdout_before if line.strip().startswith('rmem')
     }
-    barebox.run_check(f'nvmem -c 1k') # Create a 1KB device
+    barebox.run_check('nvmem -c 1k')  # Create a 1KB device
     stdout_after, _, returncode = barebox.run('nvmem')
     assert returncode == 0, "`nvmem` command failed after creating a device"
     rmem_devices_after = {
@@ -228,6 +247,7 @@ def test_nvmem_create_dynamic_device(barebox, barebox_config):
         "'rmemX' or 'rmemX0' pattern."
     )
 
+
 def test_nvmem_create_dynamic_device_with_var(barebox, barebox_config):
     """
     Tests `nvmem -c <size> -v <varname>` functionality.
@@ -246,8 +266,8 @@ def test_nvmem_create_dynamic_device_with_var(barebox, barebox_config):
 
     stdout_list_b, _, _ = barebox.run('nvmem')
     # Count existing 'rmem' entries to predict the next index.
-    num_current_rmem = sum(1 for l in stdout_list_b if l.strip().startswith('rmem'))
-    expected_dev_name_in_var = f"rmem{num_current_rmem}" # e.g., rmem0, rmem1
+    num_current_rmem = sum(1 for line in stdout_list_b if line.strip().startswith('rmem'))
+    expected_dev_name_in_var = f"rmem{num_current_rmem}"  # e.g., rmem0, rmem1
 
     # Compound command to create device and echo the variable in the same shell context
     compound_cmd = (
@@ -289,6 +309,7 @@ def test_nvmem_create_invalid_size_zero(barebox, barebox_config):
     assert any("Error: Invalid size '0'" in line for line in stdout), \
         "Expected error message for zero size not found in stdout."
 
+
 def test_nvmem_create_invalid_size_too_large(barebox, barebox_config):
     """
     Tests `nvmem -c <size>` where size exceeds NVMEM_MAX_DYNAMIC_SIZE.
@@ -329,6 +350,7 @@ def test_nvmem_option_v_without_c(barebox, barebox_config):
                for line in stdout), \
         "Expected error for missing -c with -v not found."
 
+
 def test_nvmem_help_on_h_option(barebox, barebox_config):
     """
     Tests `nvmem -h` for displaying help/usage information.
@@ -345,6 +367,7 @@ def test_nvmem_help_on_h_option(barebox, barebox_config):
            any("Options:" in line for line in stdout), \
            "Help output (Usage:/Options:) not found for `nvmem -h`."
 
+
 # == CDEV Read/Write Tests (using mw and md) ==
 def test_nvmem_cdev_mw_md_long(barebox, barebox_config,
                                created_nvmem_device_name):
@@ -360,7 +383,7 @@ def test_nvmem_cdev_mw_md_long(barebox, barebox_config,
     actual_dev_name = created_nvmem_device_name
 
     if not actual_dev_name:
-        pytest.fail(f"Fixture created_nvmem_device_name returned empty. Cannot proceed.")
+        pytest.fail("Fixture created_nvmem_device_name returned empty. Cannot proceed.")
 
     dev_path = f"/dev/{actual_dev_name}"
 
@@ -384,8 +407,7 @@ def test_nvmem_cdev_mw_md_long(barebox, barebox_config,
         "Read long value does not match written value."
 
 
-def test_nvmem_cdev_mw_md_bytes_string(barebox, barebox_config,
-                                      created_nvmem_device_name):
+def test_nvmem_cdev_mw_md_bytes_string(barebox, barebox_config, created_nvmem_device_name):
     """
     Tests writing a string as a sequence of bytes to an NVMEM device using `mw -b`
     and reading it back using `md -b`, then verifying the string content.
@@ -397,10 +419,10 @@ def test_nvmem_cdev_mw_md_bytes_string(barebox, barebox_config,
     """
     actual_dev_name = created_nvmem_device_name
     if not actual_dev_name:
-         pytest.fail(f"Fixture created_nvmem_device_name returned empty for test_nvmem_cdev_mw_md_bytes_string.")
+        pytest.fail("Fixture created_nvmem_device_name returned empty")
     dev_path = f"/dev/{actual_dev_name}"
 
-    test_string = "BareboxNVMEMTest" # Length 16
+    test_string = "BareboxNVMEMTest"  # Length 16
     hex_bytes_for_mw_cmd = string_to_hex_bytes_for_mw(test_string)
     num_bytes = len(test_string)
     test_addr_hex = "0x40"
@@ -422,8 +444,9 @@ def test_nvmem_cdev_mw_md_bytes_string(barebox, barebox_config,
     assert read_string == test_string, \
         "Read byte string does not match written string."
 
+
 def test_nvmem_cdev_mw_md_long_bytes_string_wrapped(barebox, barebox_config,
-                                                   created_nvmem_device_name):
+                                                    created_nvmem_device_name):
     """
     Tests writing a longer string (34 bytes) to an NVMEM device,
     which is likely to cause `md -b` output to wrap over multiple lines.
@@ -437,7 +460,7 @@ def test_nvmem_cdev_mw_md_long_bytes_string_wrapped(barebox, barebox_config,
     """
     actual_dev_name = created_nvmem_device_name
     if not actual_dev_name:
-         pytest.fail(f"Fixture created_nvmem_device_name returned empty for test_nvmem_cdev_mw_md_long_bytes_string_wrapped.")
+        pytest.fail("Fixture created_nvmem_device_name returned empty")
     dev_path = f"/dev/{actual_dev_name}"
 
     test_string = "ThisIsALongerTestStringForNVMEM012"
@@ -464,6 +487,7 @@ def test_nvmem_cdev_mw_md_long_bytes_string_wrapped(barebox, barebox_config,
     assert read_string == test_string, \
         "Read byte string (wrapped test) does not match written string."
 
+
 # --- New tests for different parameters ---
 def test_nvmem_cdev_mw_md_word(barebox, barebox_config, created_nvmem_device_name):
     """
@@ -477,7 +501,7 @@ def test_nvmem_cdev_mw_md_word(barebox, barebox_config, created_nvmem_device_nam
     """
     actual_dev_name = created_nvmem_device_name
     if not actual_dev_name:
-         pytest.fail(f"Fixture created_nvmem_device_name returned empty for test_nvmem_cdev_mw_md_word.")
+        pytest.fail("Fixture created_nvmem_device_name returned empty")
     dev_path = f"/dev/{actual_dev_name}"
 
     test_val_hex = "0xABCD"
@@ -500,6 +524,7 @@ def test_nvmem_cdev_mw_md_word(barebox, barebox_config, created_nvmem_device_nam
     assert read_val_int == int(test_val_hex, 16), \
         "Read word value does not match written value."
 
+
 def test_nvmem_cdev_mw_md_long_swapped(barebox, barebox_config, created_nvmem_device_name):
     """
     Tests writing a 32-bit long value with byte swapping (`mw -l -x`)
@@ -513,7 +538,7 @@ def test_nvmem_cdev_mw_md_long_swapped(barebox, barebox_config, created_nvmem_de
     """
     actual_dev_name = created_nvmem_device_name
     if not actual_dev_name:
-         pytest.fail(f"Fixture created_nvmem_device_name returned empty for test_nvmem_cdev_mw_md_long_swapped.")
+        pytest.fail("Fixture created_nvmem_device_name returned empty")
     dev_path = f"/dev/{actual_dev_name}"
 
     original_val_hex = "0x12345678"
@@ -545,7 +570,7 @@ def test_nvmem_cdev_mw_md_long_swapped(barebox, barebox_config, created_nvmem_de
 
 # == Protection Mechanism Tests ==
 def test_nvmem_protect_then_write_fail(barebox, barebox_config,
-                                      created_nvmem_device_name):
+                                       created_nvmem_device_name):
     """
     Tests NVMEM protection:
     1. Writes an initial value to a memory region.
@@ -562,7 +587,7 @@ def test_nvmem_protect_then_write_fail(barebox, barebox_config,
     """
     actual_dev_name = created_nvmem_device_name
     if not actual_dev_name:
-         pytest.fail(f"Fixture created_nvmem_device_name returned empty for test_nvmem_protect_then_write_fail.")
+        pytest.fail("Fixture created_nvmem_device_name returned empty")
     dev_path = f"/dev/{actual_dev_name}"
 
     addr_hex = "0x10"
@@ -603,8 +628,9 @@ def test_nvmem_protect_then_write_fail(barebox, barebox_config,
     assert read_val_after_int == int(val_before_hex, 16), \
         "Value in protected area changed after failed write attempt."
 
+
 def test_nvmem_unprotect_then_write_ok(barebox, barebox_config,
-                                      created_nvmem_device_name):
+                                       created_nvmem_device_name):
     """
     Tests NVMEM unprotection:
     1. Writes an initial value and protects a region.
@@ -622,10 +648,9 @@ def test_nvmem_unprotect_then_write_ok(barebox, barebox_config,
     """
     actual_dev_name = created_nvmem_device_name
     if not actual_dev_name:
-         pytest.fail(f"Fixture created_nvmem_device_name returned empty for test_nvmem_unprotect_then_write_ok.")
+        pytest.fail("Fixture created_nvmem_device_name returned empty")
     dev_path = f"/dev/{actual_dev_name}"
 
-    device_size = DEFAULT_DEVICE_SIZE
     addr_hex = "0x20"
     length = 4
     val_initial_hex = "0xDEADBEEF"
@@ -657,8 +682,9 @@ def test_nvmem_unprotect_then_write_ok(barebox, barebox_config,
     assert read_val_final_int == int(val_after_unprotect_hex, 16), \
         "Value after unprotect and write is incorrect."
 
+
 def test_nvmem_protect_write_outside_range_ok(barebox, barebox_config,
-                                             created_nvmem_device_name):
+                                              created_nvmem_device_name):
     """
     Tests that writing outside a protected range is successful,
     while the protected range itself remains inaccessible.
@@ -674,7 +700,7 @@ def test_nvmem_protect_write_outside_range_ok(barebox, barebox_config,
     """
     actual_dev_name = created_nvmem_device_name
     if not actual_dev_name:
-         pytest.fail(f"Fixture created_nvmem_device_name returned empty for test_nvmem_protect_write_outside_range_ok.")
+        pytest.fail(f"Fixture created_nvmem_device_name returned empty")
     dev_path = f"/dev/{actual_dev_name}"
 
     protected_addr_hex = "0x30"
@@ -714,8 +740,9 @@ def test_nvmem_protect_write_outside_range_ok(barebox, barebox_config,
     assert read_val_prot_int == int(initial_val_prot_hex, 16), \
         "Protected area content changed or was not initially set."
 
+
 def test_nvmem_write_span_unprotected_protected(barebox, barebox_config,
-                                               created_nvmem_device_name):
+                                                created_nvmem_device_name):
     """
     Tests writing a sequence of bytes (`mw -b`) that spans from an unprotected
     area into a protected area. Expects the write to fail for bytes entering
@@ -731,7 +758,7 @@ def test_nvmem_write_span_unprotected_protected(barebox, barebox_config,
     """
     actual_dev_name = created_nvmem_device_name
     if not actual_dev_name:
-         pytest.fail(f"Fixture created_nvmem_device_name returned empty for test_nvmem_write_span_unprotected_protected.")
+        pytest.fail("Fixture created_nvmem_device_name returned empty")
     dev_path = f"/dev/{actual_dev_name}"
 
     prot_start_addr_val = 0x10
@@ -764,8 +791,9 @@ def test_nvmem_write_span_unprotected_protected(barebox, barebox_config,
     assert read_hex_verify == "aabb0000", \
         "Data in spanned region is not as expected after partial write."
 
+
 def test_nvmem_write_at_start_and_end_exact(barebox, barebox_config,
-                                           created_nvmem_device_name):
+                                            created_nvmem_device_name):
     """
     Tests writing exactly at the start (offset 0) and filling up to the
     exact end of the NVMEM device. Also tests that writing 1 byte past
@@ -781,7 +809,7 @@ def test_nvmem_write_at_start_and_end_exact(barebox, barebox_config,
     """
     actual_dev_name = created_nvmem_device_name
     if not actual_dev_name:
-         pytest.fail(f"Fixture created_nvmem_device_name returned empty for test_nvmem_write_at_start_and_end_exact.")
+        pytest.fail("Fixture created_nvmem_device_name returned empty")
     dev_path = f"/dev/{actual_dev_name}"
 
     device_size = DEFAULT_DEVICE_SIZE
@@ -792,7 +820,7 @@ def test_nvmem_write_at_start_and_end_exact(barebox, barebox_config,
             f'mw -d {dev_path} -l {addr_start_hex} {val_start_hex}'
         )
     except Exception as e:
-        pytest.fail(f"mw to start of device failed in test_nvmem_write_at_start_and_end_exact: {e}")
+        pytest.fail(f"mw to start of device failed in: {e}")
 
     stdout_md_start = barebox.run_check(
         f'md -s {dev_path} -l {addr_start_hex}+4'
@@ -807,7 +835,7 @@ def test_nvmem_write_at_start_and_end_exact(barebox, barebox_config,
             f'mw -d {dev_path} -l {addr_end_hex} {val_end_hex}'
         )
     except Exception as e:
-        pytest.fail(f"mw to end of device failed in test_nvmem_write_at_start_and_end_exact: {e}")
+        pytest.fail(f"mw to end of device failed: {e}")
 
     stdout_md_end = barebox.run_check(
         f'md -s {dev_path} -l {addr_end_hex}+4'
@@ -821,8 +849,9 @@ def test_nvmem_write_at_start_and_end_exact(barebox, barebox_config,
     )
     assert ret_mw_past != 0, "mw write past end should fail."
 
+
 def test_nvmem_protect_merge_overlapping(barebox, barebox_config,
-                                        created_nvmem_device_name):
+                                         created_nvmem_device_name):
     """
     Tests if two overlapping `protect` calls result in a single, correctly
     merged protected range. The log message from `rmem.c` should reflect
@@ -837,7 +866,7 @@ def test_nvmem_protect_merge_overlapping(barebox, barebox_config,
     """
     actual_dev_name = created_nvmem_device_name
     if not actual_dev_name:
-         pytest.fail(f"Fixture created_nvmem_device_name returned empty for test_nvmem_protect_merge_overlapping.")
+        pytest.fail("Fixture created_nvmem_device_name returned empty")
     dev_path = f"/dev/{actual_dev_name}"
 
     addr1_hex, len1 = "0x10", 4
@@ -847,7 +876,6 @@ def test_nvmem_protect_merge_overlapping(barebox, barebox_config,
     assert ret_p1 == 0, "First protect call failed."
 
     addr2_hex, len2 = "0x12", 4
-    exp_merged_addr_hex, exp_merged_len = "0x10", 6
     stdout_p2, _, ret_p2 = barebox.run(
         f'protect {dev_path} {addr2_hex}+{len2}'
     )
@@ -859,8 +887,9 @@ def test_nvmem_protect_merge_overlapping(barebox, barebox_config,
     barebox.run_check(f'mw -d {dev_path} -b 0x0F 0xAA')
     barebox.run_check(f'mw -d {dev_path} -b 0x16 0xBB')
 
+
 def test_nvmem_mw_multiple_bytes_single_command(barebox, barebox_config,
-                                               created_nvmem_device_name):
+                                                created_nvmem_device_name):
     """
     Tests `mw -b` with multiple hexadecimal byte values provided in a single command line,
     e.g., `mw -d /dev/rmem0 -b 0x90 0x4F 0x4B`.
@@ -872,7 +901,7 @@ def test_nvmem_mw_multiple_bytes_single_command(barebox, barebox_config,
     """
     actual_dev_name = created_nvmem_device_name
     if not actual_dev_name:
-         pytest.fail(f"Fixture created_nvmem_device_name returned empty for test_nvmem_mw_multiple_bytes_single_command.")
+        pytest.fail("Fixture created_nvmem_device_name returned empty")
     dev_path = f"/dev/{actual_dev_name}"
 
     hex_bytes_for_mw_cmd = "0x4F 0x4B"
@@ -895,8 +924,9 @@ def test_nvmem_mw_multiple_bytes_single_command(barebox, barebox_config,
         f"'{expected_hex_string}'."
     )
 
+
 def test_nvmem_unprotect_noop_if_not_protected(barebox, barebox_config,
-                                             created_nvmem_device_name):
+                                               created_nvmem_device_name):
     """
     Tests that calling `unprotect` on a device with no active protections
     is a no-op and succeeds. It should still log the standard "Unprotected range..."
@@ -909,7 +939,7 @@ def test_nvmem_unprotect_noop_if_not_protected(barebox, barebox_config,
     """
     actual_dev_name = created_nvmem_device_name
     if not actual_dev_name:
-         pytest.fail(f"Fixture created_nvmem_device_name returned empty for test_nvmem_unprotect_noop_if_not_protected.")
+        pytest.fail("Fixture created_nvmem_device_name returned empty")
     dev_path = f"/dev/{actual_dev_name}"
 
     device_size = DEFAULT_DEVICE_SIZE
diff --git a/test/py/test_shell.py b/test/py/test_shell.py
index 1af7d597a175..3d2d85d80594 100644
--- a/test/py/test_shell.py
+++ b/test/py/test_shell.py
@@ -1,5 +1,6 @@
-import pytest
-from .helper import *
+# SPDX-License-Identifier: GPL-2.0-only
+
+from .helper import skip_disabled
 
 
 def test_barebox_true(barebox, barebox_config):
@@ -8,12 +9,14 @@ def test_barebox_true(barebox, barebox_config):
     _, _, returncode = barebox.run('true')
     assert returncode == 0
 
+
 def test_barebox_false(barebox, barebox_config):
     skip_disabled(barebox_config, "CONFIG_CMD_FALSE")
 
     _, _, returncode = barebox.run('false')
     assert returncode == 1
 
+
 def test_barebox_md5sum(barebox, barebox_config):
     skip_disabled(barebox_config, "CONFIG_CMD_MD5SUM", "CONFIG_CMD_ECHO")
 
@@ -21,6 +24,7 @@ def test_barebox_md5sum(barebox, barebox_config):
     out = barebox.run_check("md5sum md5")
     assert out == ["d8e8fca2dc0f896fd7cb4cb0031ba249  md5"]
 
+
 def test_barebox_version(barebox, barebox_config):
     skip_disabled(barebox_config, "CONFIG_CMD_VERSION")
 
@@ -28,6 +32,7 @@ def test_barebox_version(barebox, barebox_config):
     assert 'barebox' in stdout[1]
     assert returncode == 0
 
+
 def test_barebox_no_err(barebox, barebox_config):
     skip_disabled(barebox_config, "CONFIG_CMD_DMESG")
 
diff --git a/test/py/test_tlv.py b/test/py/test_tlv.py
index c1bb9a17b4a8..be579629b22f 100644
--- a/test/py/test_tlv.py
+++ b/test/py/test_tlv.py
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 import sys
 import os
 import re
diff --git a/test/strategy.py b/test/strategy.py
index 11406b97f5f1..bf4dacfefd81 100644
--- a/test/strategy.py
+++ b/test/strategy.py
@@ -1,11 +1,10 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
 import enum
 
 import attr
 import pytest
 import subprocess
-import os
-import shutil
-import sys
 import re
 
 from labgrid import target_factory, step, driver
@@ -17,6 +16,7 @@ if match is None or int(match.group(1)) < 25:
     pytest.exit(f"Labgrid has version v{labgrid_version()}, "
                 f"but barebox test suite requires at least v25.")
 
+
 class Status(enum.Enum):
     unknown = 0
     off = 1
@@ -25,6 +25,7 @@ class Status(enum.Enum):
     qemu_interactive = 4
     qemu_dump_dtb = 5
 
+
 @target_factory.reg_driver
 @attr.s(eq=False)
 class BareboxTestStrategy(Strategy):
@@ -107,6 +108,7 @@ class BareboxTestStrategy(Strategy):
             self.console.boot_args = ""
         self.console.boot_args += " ".join(args)
 
+
 def quote_cmd(cmd):
     quoted = map(lambda s : s if s.find(" ") == -1 else "'" + s + "'", cmd)
     return " ".join(quoted)
-- 
2.47.3



