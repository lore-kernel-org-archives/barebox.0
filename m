Delivery-date: Thu, 12 Jun 2025 12:07:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uPeqg-006TXn-0R
	for lore@lore.pengutronix.de;
	Thu, 12 Jun 2025 12:07:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uPeqf-00075a-4v
	for lore@pengutronix.de; Thu, 12 Jun 2025 12:07:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DrkJ9zJPnc8OUVMW5NJIb3tVaEHEz1Np3QKeAQ8JLqY=; b=we5JhGRvUzDaOh+ConZq0AsD8Y
	iylMqyc/M+Wv+pZaOuRdQxGo9rd3GbKRoraXf1Vq7yuMgoxZllL4I/QQjuBlYAx3zQO5i+Bfwy8z8
	J0R2khm66GC6nBGM1PFnZPlRnUTswnatPSw17Plx40+ucOg1EeV7i4U8pd+oyOW+SA/rNgoo/56ji
	TE3xms9V+mFA4MHL8VYgVv9fwfJ8oF0g+WSYmouGxPpsqaspukuxPSa26NU2ZVpz5wYcbX0JvuBFa
	I80XgTUyu6zV1+JcXgFgsDc+Tl7DngLmruD3qjjhY9c34qBOLOTl0TtlK0UnY3WXbEM5hXxpP5v+n
	oZrSGNVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPeqC-0000000Cv31-0MDH;
	Thu, 12 Jun 2025 10:07:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPdjC-0000000CjsT-0tKv
	for barebox@lists.infradead.org;
	Thu, 12 Jun 2025 08:56:09 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uPdjA-0001k5-Tu; Thu, 12 Jun 2025 10:56:05 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Stefan Kerkmann <s.kerkmann@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@barebox.org>
Date: Thu, 12 Jun 2025 10:56:01 +0200
Message-Id: <20250612085603.4190573-3-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250612085603.4190573-1-a.fatoum@barebox.org>
References: <20250612085603.4190573-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250612_015606_257745_3A7A233A 
X-CRM114-Status: GOOD (  14.21  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/4] test: py: add FIT boot test
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This test verifies that FIT image can be booted and device tree is fixed
up with command line, initrd location, generic and custom fixups.

It already caught a regression in next that broke initrd loading on
ARM64 & RISC-V.

Cc: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 test/arm/virt@multi_v7_defconfig.yaml |  1 +
 test/arm/virt@multi_v8_defconfig.yaml |  1 +
 test/py/helper.py                     | 15 +++++++
 test/py/test_fit.py                   | 63 +++++++++++++++++++++++++++
 4 files changed, 80 insertions(+)
 create mode 100644 test/py/test_fit.py

diff --git a/test/arm/virt@multi_v7_defconfig.yaml b/test/arm/virt@multi_v7_defconfig.yaml
index 203f17bfc7f0..637d132d3967 100644
--- a/test/arm/virt@multi_v7_defconfig.yaml
+++ b/test/arm/virt@multi_v7_defconfig.yaml
@@ -14,6 +14,7 @@ targets:
       BareboxTestStrategy: {}
     features:
       - virtio-mmio
+      - testfs
 images:
   barebox-dt-2nd.img: !template "$LG_BUILDDIR/images/barebox-dt-2nd.img"
 imports:
diff --git a/test/arm/virt@multi_v8_defconfig.yaml b/test/arm/virt@multi_v8_defconfig.yaml
index 42ce10328d7c..d018af06aa53 100644
--- a/test/arm/virt@multi_v8_defconfig.yaml
+++ b/test/arm/virt@multi_v8_defconfig.yaml
@@ -15,6 +15,7 @@ targets:
     features:
       - virtio-mmio
       - network
+      - testfs
     runner:
       tuxmake_arch: arm64
 images:
diff --git a/test/py/helper.py b/test/py/helper.py
index 4a68e83669ba..cfcc9c337fec 100644
--- a/test/py/helper.py
+++ b/test/py/helper.py
@@ -30,6 +30,21 @@ def get_config(command):
     return options
 
 
+def of_get_property(barebox, path):
+    node, prop = os.path.split(path)
+
+    stdout = barebox.run_check(f"of_dump -p {node}")
+    for line in stdout:
+        if line == '{prop};':
+            return True
+
+        prefix = f'{prop} = '
+        if line.startswith(prefix):
+            # Also drop the semicolon
+            return line[len(prefix):-1]
+    return False
+
+
 def skip_disabled(config, *options):
     if bool(config):
         undefined = list(filterfalse(config.__contains__, options))
diff --git a/test/py/test_fit.py b/test/py/test_fit.py
new file mode 100644
index 000000000000..c53a1ece1445
--- /dev/null
+++ b/test/py/test_fit.py
@@ -0,0 +1,63 @@
+# SPDX-License-Identifier: GPL-2.0-or-later
+
+import re
+import pytest
+from .helper import of_get_property
+
+
+def fit_name(suffix):
+    return f"/mnt/9p/testfs/barebox-{suffix}.fit"
+
+
+def generate_bootscript(barebox, image, name="test"):
+    barebox.run_check(f"echo -o /env/boot/{name} '#!/bin/sh'")
+    barebox.run_check(f"echo -a /env/boot/{name}  bootm {image}")
+    return name
+
+
+def test_fit(barebox, env, target, barebox_config):
+    if 'testfs' not in env.get_target_features():
+        pytest.xfail("testfs feature not specified")
+
+    _, _, returncode = barebox.run("ls /mnt/9p/testfs")
+    if returncode != 0:
+        pytest.xfail("skipping test due to missing --fs testfs=")
+
+    barebox.run_check(f"ls {fit_name('gzipped')}")
+
+    # Sanity check, this is only fixed up on first boot
+    assert of_get_property(barebox, "/chosen/barebox-version") is False
+    [ver] = barebox.run_check("echo barebox-$global.version")
+    assert ver.startswith('barebox-2')
+
+    barebox.run_check("of_property -s /chosen barebox,boot-count '<0x0>'")
+    assert of_get_property(barebox, "/chosen/barebox,boot-count") == '<0x0>'
+
+    barebox.run_check("of_property -fs /chosen barebox,boot-count '<0x1>'")
+    assert of_get_property(barebox, "/chosen/barebox,boot-count") == '<0x0>'
+
+    barebox.run_check("global linux.bootargs.testarg=barebox.chainloaded")
+
+    boottarget = generate_bootscript(barebox, fit_name('gzipped'))
+    barebox.boot(boottarget)
+    target.deactivate(barebox)
+    target.activate(barebox)
+
+    assert of_get_property(barebox, "/chosen/barebox-version") == f'"{ver}"', \
+           "/chosen/barebox-version suggests we did not chainload"
+
+    assert of_get_property(barebox, "/chosen/barebox,boot-count") == '<0x1>', \
+           "/chosen/barebox,boot-count suggests we got bultin DT"
+
+    # Check that command line arguments were fixed up
+    bootargs = of_get_property(barebox, "/chosen/bootargs")
+    assert "barebox.chainloaded" in bootargs
+
+    initrd_start = of_get_property(barebox, "/chosen/linux,initrd-start")
+    initrd_end = of_get_property(barebox, "/chosen/linux,initrd-end")
+
+    addr_regex = r"<(0x[0-9a-f]{1,8} ?)+>"
+    assert re.search(addr_regex, initrd_start), \
+        f"initrd start {initrd_start} malformed"
+    assert re.search(addr_regex, initrd_end), \
+        f"initrd end {initrd_end} malformed"
-- 
2.39.5



