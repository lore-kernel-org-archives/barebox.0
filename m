Delivery-date: Mon, 19 Jan 2026 12:35:53 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vhnY2-0030we-15
	for lore@lore.pengutronix.de;
	Mon, 19 Jan 2026 12:35:53 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vhnY1-0004Pt-99
	for lore@pengutronix.de; Mon, 19 Jan 2026 12:35:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ZqkpV0zWKbgho2mvJe4P2k5o43AlouECpfX2WKkxjfY=; b=k6ZUvkrM2TKk3U7+ZfPpHaLX1f
	EL6Ot9FD/dwX3ZhH0lzRDU4HXjJOnMOyG5oyAWUoZUiTfGD6yv0nuzF2nGl5q7G+RIC4MYTNv0h8n
	dI8xsV9mGgWOYRkI8DSK8amV+NUZ4T3URsXFeLsfyzY4bVviWDz3Hg+3ivawhzpASh4u87oVyNJQq
	oegh3J2ElVwjDczxrkFoxHWlHrZRpF7U3/7PxZpGL96XwJlXHhxrBzEWq4FIduJKpTIWbJzwlzb/b
	dnspKqSZzK2ye7bH7oyMKhW4s7Tro2PJC5VKdgMdla36cKJrVOUEMXLbCK40Dt9BAz/zYyh/f4nIT
	g6BhF3mg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhnXY-00000001uPM-3o29;
	Mon, 19 Jan 2026 11:35:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhnXW-00000001uOt-1apO
	for barebox@lists.infradead.org;
	Mon, 19 Jan 2026 11:35:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vhnXT-0004HY-BB; Mon, 19 Jan 2026 12:35:19 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vhnXT-001PBc-2f;
	Mon, 19 Jan 2026 12:35:19 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vhnXT-00000006lGR-38AQ;
	Mon, 19 Jan 2026 12:35:19 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 19 Jan 2026 12:35:16 +0100
Message-ID: <20260119113517.1611633-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260119_033522_418312_58512047 
X-CRM114-Status: GOOD (  10.21  )
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
Subject: [PATCH] test: py: add test with actual TFTP server
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Expose testfs via QEMU's built-in TFTP server and make sure we can
communicate with it.

This will be especially useful later to test network booting in QEMU.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 conftest.py             |  1 +
 test/py/test_network.py | 26 +++++++++++++++++++++++---
 2 files changed, 24 insertions(+), 3 deletions(-)

diff --git a/conftest.py b/conftest.py
index ef6ca221a5db..ce5cdaf0dffa 100644
--- a/conftest.py
+++ b/conftest.py
@@ -229,6 +229,7 @@ def strategy(request, target, pytestconfig):  # noqa: max-complexity=30
             testfs_path = os.path.join(os.environ["LG_BUILDDIR"], "testfs")
             pytestconfig.option.qemu_fs.append(["testfs", testfs_path])
             os.makedirs(testfs_path, exist_ok=True)
+            strategy.append_qemu_args("-nic", f"user,id=net0,tftp={testfs_path}")
 
     for i, fs in enumerate(pytestconfig.option.qemu_fs):
         if virtio:
diff --git a/test/py/test_network.py b/test/py/test_network.py
index e76aad1cc6f6..8994782b7652 100644
--- a/test/py/test_network.py
+++ b/test/py/test_network.py
@@ -6,6 +6,7 @@ from labgrid import driver
 import socket
 import threading
 import re
+from pathlib import Path
 import warnings
 from .helper import skip_disabled
 
@@ -71,15 +72,21 @@ def tftp_conversation(barebox, barebox_interface, guestaddr):
         barebox.run_check("ifdown eth0")
 
 
-def test_barebox_network(barebox, barebox_config, env):
-    skip_disabled(barebox_config, "CONFIG_CMD_TFTP")
+@pytest.fixture(scope="module")
+def testfs_hostname(testfs):
+    with open(Path(testfs) / "hostname", "w", encoding="utf-8") as f:
+        f.write("QEMU\n")
 
+
+@pytest.fixture(scope="function")
+def barebox_interfaces(barebox, env, testfs):
     # on DUTs without network feature, this is expected to fail
     # set xfail_strict=True to enforce specifying the network feature
     # if available
     if 'network' not in env.get_target_features():
         pytest.xfail("network feature not specified")
 
+    barebox.run_check("ifdown -a")
     stdout = barebox.run_check("ifup -a")
 
     interfaces = []
@@ -94,7 +101,13 @@ def test_barebox_network(barebox, barebox_config, env):
 
     assert interfaces, "Network testing is only possible with at least one DHCP interface"
 
-    for iface in interfaces:
+    return interfaces
+
+
+def test_barebox_network_mock_tftp(barebox, barebox_config, barebox_interfaces):
+    skip_disabled(barebox_config, "CONFIG_CMD_TFTP")
+
+    for iface in barebox_interfaces:
         ifname = iface[0]
         ifaddr = iface[1]
 
@@ -115,3 +128,10 @@ def test_barebox_network(barebox, barebox_config, env):
         if not success:
             pytest.fail("Could not converse with DUT on any of the found DHCP interfaces!")
 
+
+def test_barebox_network_real_tftp(barebox, barebox_config,
+                                   testfs_hostname, barebox_interfaces):
+    skip_disabled(barebox_config, "CONFIG_CMD_TFTP")
+
+    barebox.run_check(f"tftp hostname", timeout=3)
+    assert barebox.run_check(f"cat hostname") == ["QEMU"]
-- 
2.47.3



