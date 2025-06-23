Delivery-date: Mon, 23 Jun 2025 08:40:21 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uTaqr-00AB3Z-1O
	for lore@lore.pengutronix.de;
	Mon, 23 Jun 2025 08:40:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uTaqo-0001Rx-QI
	for lore@pengutronix.de; Mon, 23 Jun 2025 08:40:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ncVVjMejUlabPuaoWIsxoohexGT9UPYDCIkipDgIZ8I=; b=mOzFK7iluPwUfzl30AhtyvEOSn
	K/sM4LNbPs/v5wyajZq6FonOa2pejvscIUDTRe0n5uvkl5fyEUp53fb0AaUDunC2VXn7eqqgXM1D3
	iqFAmqUJhWXlFRCYBM66ycNmxIpfBV8Rg8m0EhQKyI5butOmCfS4IJfFxIK81Hr10IaApL0pKyyzT
	KEbpIMQ5AT0l5957hPPVZLQYPZHnKevmfx0mExuPSKoJ78h3P+Hb/Brx9qfYNjXcIMF86aTD2yNsq
	CmWD7YcXAUwhi/RCKW6zDHhTrFTqDL2EBsuOakuL6PkZahUyZey8sE5ywVte2oihQYPbHxakGQSnJ
	OIcBLdFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTaqH-00000001kdc-3k4M;
	Mon, 23 Jun 2025 06:39:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTadg-00000001jLJ-3s5E
	for barebox@lists.infradead.org;
	Mon, 23 Jun 2025 06:26:46 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uTadf-0006dU-LI; Mon, 23 Jun 2025 08:26:43 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Lars Schmidt <l.schmidt@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 23 Jun 2025 08:26:41 +0200
Message-Id: <20250623062641.3529615-4-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250623062641.3529615-1-a.fatoum@barebox.org>
References: <20250623062641.3529615-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250622_232645_116129_426202C7 
X-CRM114-Status: GOOD (  15.34  )
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
Subject: [PATCH 3/3] test: py: add bootchooser attempt decrement and locking test
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add a test to verify that counting down attempts work and that the new
locking feature indeed inhibits it.

Cc: Lars Schmidt <l.schmidt@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 common/boards/qemu-virt/qemu-virt-flash.dtso |   5 +
 test/arm/virt@multi_v7_defconfig.yaml        |   1 +
 test/arm/virt@multi_v8_defconfig.yaml        |   1 +
 test/py/helper.py                            |  63 ++++++++
 test/py/test_bootchooser.py                  | 158 +++++++++++++++++++
 test/riscv/qemu-virt64@rv64i_defconfig.yaml  |   1 +
 test/riscv/qemu@virt32_defconfig.yaml        |   1 +
 7 files changed, 230 insertions(+)
 create mode 100644 test/py/test_bootchooser.py

diff --git a/common/boards/qemu-virt/qemu-virt-flash.dtso b/common/boards/qemu-virt/qemu-virt-flash.dtso
index 087568a26d2a..77b17456496d 100644
--- a/common/boards/qemu-virt/qemu-virt-flash.dtso
+++ b/common/boards/qemu-virt/qemu-virt-flash.dtso
@@ -94,6 +94,11 @@ last_chosen@10 {
 				reg = <0x10 0x4>;
 				type = "uint32";
 			};
+
+			attempts_locked@14 {
+				reg = <0x14 0x4>;
+				type = "uint32";
+			};
 		};
 	};
 };
diff --git a/test/arm/virt@multi_v7_defconfig.yaml b/test/arm/virt@multi_v7_defconfig.yaml
index 637d132d3967..2f68e35d69a8 100644
--- a/test/arm/virt@multi_v7_defconfig.yaml
+++ b/test/arm/virt@multi_v7_defconfig.yaml
@@ -15,6 +15,7 @@ targets:
     features:
       - virtio-mmio
       - testfs
+      - barebox-state
 images:
   barebox-dt-2nd.img: !template "$LG_BUILDDIR/images/barebox-dt-2nd.img"
 imports:
diff --git a/test/arm/virt@multi_v8_defconfig.yaml b/test/arm/virt@multi_v8_defconfig.yaml
index d018af06aa53..f49dbce1b631 100644
--- a/test/arm/virt@multi_v8_defconfig.yaml
+++ b/test/arm/virt@multi_v8_defconfig.yaml
@@ -16,6 +16,7 @@ targets:
       - virtio-mmio
       - network
       - testfs
+      - barebox-state
     runner:
       tuxmake_arch: arm64
 images:
diff --git a/test/py/helper.py b/test/py/helper.py
index cfcc9c337fec..04c2de9bc0da 100644
--- a/test/py/helper.py
+++ b/test/py/helper.py
@@ -1,6 +1,8 @@
 from labgrid.driver import BareboxDriver
 import pytest
 import os
+import re
+import shlex
 from itertools import filterfalse
 
 
@@ -45,6 +47,67 @@ def of_get_property(barebox, path):
     return False
 
 
+def devinfo(barebox, device):
+    info = {}
+    section = None
+    pattern = r'^\s*([^:]+):\s*(.*)$'
+
+    for line in barebox.run_check(f"devinfo {device}"):
+        line = line.rstrip()
+        if match := re.match(r"^([^: ]+):$", line):
+            section = match.group(1)
+            if section in ["Parameters"]:
+                info[section] = {}
+            else:
+                info[section] = []
+            continue
+
+        line = line.strip()
+        if section is None or isinstance(info[section], dict):
+            if match := re.match(pattern, line):
+                key = match.group(1).strip()
+                value = match.group(2).strip()
+                # TODO: coerce to type?
+                if section is None:
+                    info[section] = line
+                else:
+                    info[section][key] = value
+        elif section:
+            info[section].append(line)
+
+    return info
+
+
+def format_dict_with_prefix(varset: dict, prefix: str) -> str:
+    parts = []
+    for k, v in varset.items():
+        escaped_val = shlex.quote(str(v))
+        parts.append(f"{prefix}{k}={escaped_val}")
+    return " ".join(parts)
+
+
+def globalvars_set(barebox, varset: dict, create=True):
+    cmd, prefix = ("global ", "") if create else ("", "global.")
+    barebox.run_check(cmd + format_dict_with_prefix(varset, prefix))
+
+
+def nvvars_set(barebox, varset: dict, create=True):
+    cmd, prefix = ("nv ", "") if create else ("", "nv.")
+    barebox.run_check(cmd + format_dict_with_prefix(varset, prefix))
+
+
+def getenv_int(barebox, var):
+    return int(barebox.run_check(f"echo ${var}")[0])
+
+
+def getstate_int(barebox, var, prefix="state.bootstate"):
+    return getenv_int(barebox, f"{prefix}.{var}")
+
+
+def getparam_int(info, var):
+    return int(info["Parameters"][var].split()[0])
+
+
 def skip_disabled(config, *options):
     if bool(config):
         undefined = list(filterfalse(config.__contains__, options))
diff --git a/test/py/test_bootchooser.py b/test/py/test_bootchooser.py
new file mode 100644
index 000000000000..a5f2b25d6550
--- /dev/null
+++ b/test/py/test_bootchooser.py
@@ -0,0 +1,158 @@
+# SPDX-License-Identifier: GPL-2.0-or-later
+
+import pytest
+from .helper import globalvars_set, devinfo, getparam_int, \
+                    getstate_int, getenv_int
+
+
+def fit_name(suffix):
+    return f"/mnt/9p/testfs/barebox-{suffix}.fit"
+
+
+def generate_bootscript(barebox, command, name="test"):
+    barebox.run_check(f"echo -o /env/boot/{name} '#!/bin/sh'")
+    barebox.run_check(f"echo -a /env/boot/{name} '{command}'")
+    return name
+
+
+def assert_state(barebox, s0p, s0a, s1p, s1a):
+    info = devinfo(barebox, "state")
+
+    assert getparam_int(info, "bootstate.system0.priority") == s0p
+    assert getparam_int(info, "bootstate.system0.remaining_attempts") == s0a
+    assert getparam_int(info, "bootstate.system1.priority") == s1p
+    assert getparam_int(info, "bootstate.system1.remaining_attempts") == s1a
+
+
+def assert_boot(barebox, system_num, s0p, s0a, s1p, s1a):
+    expected = system_num
+    unexpected = system_num ^ 1
+
+    stdout, _, _ = barebox.run("boot bootchooser")
+    assert f"Test is booting system{expected}" in stdout
+    assert f"Test is booting system{unexpected}" not in stdout
+
+    assert_state(barebox, s0p, s0a, s1p, s1a)
+
+
+@pytest.fixture(scope="function")
+def bootchooser(barebox, env):
+    if 'barebox-state' not in env.get_target_features():
+        return None
+
+    system0 = generate_bootscript(barebox, "echo Test is booting system0",
+                                  "system0")
+    system1 = generate_bootscript(barebox, "echo Test is booting system1",
+                                  "system1")
+
+    globals_chg = {
+        "bootchooser.default_attempts": "3",
+        "bootchooser.retry": "0",
+        "bootchooser.state_prefix": "state.bootstate",
+        "bootchooser.targets": "system0 system1",
+    }
+
+    globals_new = {
+        "bootchooser.system0.boot": system0,
+        "bootchooser.system0.default_priority": "20",
+        "bootchooser.system1.boot": system1,
+        "bootchooser.system1.default_priority": "21"
+    }
+
+    globalvars_set(barebox, globals_chg)
+    globalvars_set(barebox, globals_new, create=True)
+
+    barebox.run_check("bootchooser -a default -p default")
+    return True
+
+
+def test_bootchooser(barebox, env, bootchooser):
+    if bootchooser is None:
+        pytest.xfail("barebox-state feature not specified")
+
+    assert_state(barebox, s0p=20, s0a=3, s1p=21, s1a=3)
+
+    assert_boot(barebox, 1, s0p=20, s0a=3, s1p=21, s1a=2)
+    assert_boot(barebox, 1, s0p=20, s0a=3, s1p=21, s1a=1)
+    assert_boot(barebox, 1, s0p=20, s0a=3, s1p=21, s1a=0)
+    assert_boot(barebox, 0, s0p=20, s0a=2, s1p=21, s1a=0)
+    assert_boot(barebox, 0, s0p=20, s0a=1, s1p=21, s1a=0)
+    assert_boot(barebox, 0, s0p=20, s0a=0, s1p=21, s1a=0)
+
+    barebox.run_check("bootchooser -a default -p default")
+
+    assert_boot(barebox, 1, s0p=20, s0a=3, s1p=21, s1a=2)
+    assert_boot(barebox, 1, s0p=20, s0a=3, s1p=21, s1a=1)
+    assert_boot(barebox, 1, s0p=20, s0a=3, s1p=21, s1a=0)
+    assert_boot(barebox, 0, s0p=20, s0a=2, s1p=21, s1a=0)
+    assert_boot(barebox, 0, s0p=20, s0a=1, s1p=21, s1a=0)
+    assert_boot(barebox, 0, s0p=20, s0a=0, s1p=21, s1a=0)
+
+
+def test_bootchooser_lock_command(barebox, env, bootchooser):
+    if bootchooser is None:
+        pytest.xfail("barebox-state feature not specified")
+
+    assert_boot(barebox, 1, s0p=20, s0a=3, s1p=21, s1a=2)
+
+    stdout = barebox.run_check("bootchooser -i")
+    assert 'Locking of boot attempt counter: disabled' in stdout[-3:]
+    assert getstate_int(barebox, "attempts_locked") == 0
+
+    barebox.run_check("bootchooser -l")
+
+    stdout = barebox.run_check("bootchooser -i")
+    assert 'Locking of boot attempt counter: enabled' in stdout[-3:]
+    assert getstate_int(barebox, "attempts_locked") == 0
+
+    for i in range(4):
+        assert_boot(barebox, 1, s0p=20, s0a=3, s1p=21, s1a=2)
+
+    barebox.run_check("bootchooser -L")
+
+    stdout = barebox.run_check("bootchooser -i")
+    assert 'Locking of boot attempt counter: disabled' in stdout[-3:]
+    assert getstate_int(barebox, "attempts_locked") == 0
+
+    assert_boot(barebox, 1, s0p=20, s0a=3, s1p=21, s1a=1)
+    assert_boot(barebox, 1, s0p=20, s0a=3, s1p=21, s1a=0)
+    assert_boot(barebox, 0, s0p=20, s0a=2, s1p=21, s1a=0)
+    assert_boot(barebox, 0, s0p=20, s0a=1, s1p=21, s1a=0)
+    assert_boot(barebox, 0, s0p=20, s0a=0, s1p=21, s1a=0)
+
+
+def test_bootchooser_lock_state(barebox, env, bootchooser):
+    if bootchooser is None:
+        pytest.xfail("barebox-state feature not specified")
+
+    assert_boot(barebox, 1, s0p=20, s0a=3, s1p=21, s1a=2)
+
+    stdout = barebox.run_check("bootchooser -i")
+    assert 'Locking of boot attempt counter: disabled' in stdout[-3:]
+    assert getstate_int(barebox, "attempts_locked") == 0
+
+    barebox.run_check("state.bootstate.attempts_locked=1")
+    assert getenv_int(barebox, "state.dirty") == 1
+    stdout = barebox.run_check("state -s")
+    assert getenv_int(barebox, "state.dirty") == 0
+
+    stdout = barebox.run_check("bootchooser -i")
+    assert 'Locking of boot attempt counter: enabled' in stdout[-3:]
+    assert getstate_int(barebox, "attempts_locked") == 1
+
+    for i in range(4):
+        assert_boot(barebox, 1, s0p=20, s0a=3, s1p=21, s1a=2)
+
+    assert getenv_int(barebox, "state.dirty") == 0
+
+    barebox.run_check("state.bootstate.attempts_locked=0")
+
+    stdout = barebox.run_check("bootchooser -i")
+    assert 'Locking of boot attempt counter: disabled' in stdout[-3:]
+    assert getstate_int(barebox, "attempts_locked") == 0
+
+    assert_boot(barebox, 1, s0p=20, s0a=3, s1p=21, s1a=1)
+    assert_boot(barebox, 1, s0p=20, s0a=3, s1p=21, s1a=0)
+    assert_boot(barebox, 0, s0p=20, s0a=2, s1p=21, s1a=0)
+    assert_boot(barebox, 0, s0p=20, s0a=1, s1p=21, s1a=0)
+    assert_boot(barebox, 0, s0p=20, s0a=0, s1p=21, s1a=0)
diff --git a/test/riscv/qemu-virt64@rv64i_defconfig.yaml b/test/riscv/qemu-virt64@rv64i_defconfig.yaml
index c920413a17bf..83cdac6c8b9d 100644
--- a/test/riscv/qemu-virt64@rv64i_defconfig.yaml
+++ b/test/riscv/qemu-virt64@rv64i_defconfig.yaml
@@ -14,6 +14,7 @@ targets:
       BareboxTestStrategy: {}
     features:
       - virtio-mmio
+      - barebox-state
 images:
   barebox-dt-2nd.img: !template "$LG_BUILDDIR/images/barebox-dt-2nd.img"
 imports:
diff --git a/test/riscv/qemu@virt32_defconfig.yaml b/test/riscv/qemu@virt32_defconfig.yaml
index da1bb5bddd3e..03d5ef281592 100644
--- a/test/riscv/qemu@virt32_defconfig.yaml
+++ b/test/riscv/qemu@virt32_defconfig.yaml
@@ -15,6 +15,7 @@ targets:
       BareboxTestStrategy: {}
     features:
       - virtio-mmio
+      - barebox-state
     runner:
       download:
         opensbi-riscv32-generic-fw_dynamic.bin: https://github.com/qemu/qemu/blob/v5.2.0/pc-bios/opensbi-riscv32-generic-fw_dynamic.bin?raw=true
-- 
2.39.5



