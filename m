Delivery-date: Sun, 03 May 2026 10:31:45 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wJSEs-000Trc-1f
	for lore@lore.pengutronix.de;
	Sun, 03 May 2026 10:31:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wJSEr-0002yl-3b
	for lore@pengutronix.de; Sun, 03 May 2026 10:31:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4YaRcKnD8gIkHIfcWYn8e5lN9YyaNSzS7oeTEvhc7zE=; b=bOXRopKe/v4XV1Iv08csF69WQ+
	0HUTDe1OSZd+6RDU/YAeAIKOhHl8lt+fmt22jhbgzf9kgNpoYyRZUmvatlfF07s0cbUfnfo8GRLRE
	dMiBREtt6PHGNYQwEWYgqYCkW78T1mYQP5n96la5us9avZhbCXGntlsLziAZgGlDBOC0jgKmtt94v
	UQTXn56sAAH1BUt0xjKWk4EUuxsF/zVIhAPdrklz/CuYbrBpzlAJqAFXZYk0IH5vpT/lOMDhvCGti
	kRLWioR/dW++ynIZ0zUfoHxdwx3xHoRQrRZZNUTSb54dQauUBBVhFpTxFjxhcIIJEH4pqlFjB4TlO
	3Au0CzKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJSEW-0000000AdKd-16le;
	Sun, 03 May 2026 08:31:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJSET-0000000AdJJ-1a8p
	for barebox@lists.infradead.org;
	Sun, 03 May 2026 08:31:23 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wJSER-0002qu-Q0; Sun, 03 May 2026 10:31:19 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Sun,  3 May 2026 10:30:06 +0200
Message-ID: <20260503083115.2763213-3-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260503083115.2763213-1-a.fatoum@barebox.org>
References: <20260503083115.2763213-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260503_013121_415744_9DC54830 
X-CRM114-Status: GOOD (  11.60  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH 3/3] test: py: implement --port-forward option
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Unsolicited host-to-guest UDP requires an explicit port forward.
As we already have a -nic option, the easiest way is to have a
barebox-specific option that's expanded to the correct QEMU
incantations, so implement it.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 Documentation/boards/emulated.rst | 25 +++++++++++++++++++++++++
 Documentation/user/networking.rst |  2 ++
 conftest.py                       | 13 ++++++++++++-
 3 files changed, 39 insertions(+), 1 deletion(-)

diff --git a/Documentation/boards/emulated.rst b/Documentation/boards/emulated.rst
index e3f7f78ab258..0d6dd85dc759 100644
--- a/Documentation/boards/emulated.rst
+++ b/Documentation/boards/emulated.rst
@@ -34,3 +34,28 @@ Emulated targets can be started interactively with ``pytest --interactive``::
 The test suite can be run by omitting the ``--interactive``.
 For more information, see the :ref:`labgrid` section in the
 :ref:`contributing` guide.
+
+Netconsole over QEMU user networking
+------------------------------------
+
+barebox' UDP-based :ref:`network console <network_console>` can also
+be used in combination with QEMU. With user-mode networking (SLIRP),
+guest-to-host UDP works via NAT out of the box,
+but unsolicited host-to-guest UDP requires an explicit port forward::
+
+  pytest --lg-env test/arm/multi_v8_defconfig.yaml --interactive \
+    --env nv/dev.netconsole.ip=10.0.2.2                          \
+    --env nv/dev.netconsole.port=6666                            \
+    --env init/netconsole="ifup -a1; netconsole.active=ioe"      \
+    --port-forward=6666
+
+This will point netconsole at the SLIRP gateway (``10.0.2.2`` is the host
+as seen from the guest) and bring up the interface::
+
+  netconsole: netconsole initialized with 10.0.2.2:6666
+
+The ``i`` flag in ``netconsole.active`` is required for input; without it
+only output reaches the host. On the host, you can then interact with
+the netconsole via::
+
+  scripts/netconsole -s 127.0.0.1 127.0.0.2 6666
diff --git a/Documentation/user/networking.rst b/Documentation/user/networking.rst
index d1db2768ad20..99ab4d8a3fda 100644
--- a/Documentation/user/networking.rst
+++ b/Documentation/user/networking.rst
@@ -173,6 +173,8 @@ variables:
   ``-o port=${global.nfs.port},mountport=${global.nfs.port}`` as argument
   to the :ref:`mount command <command_mount>`.
 
+.. _network_console:
+
 Network console
 ---------------
 
diff --git a/conftest.py b/conftest.py
index 72d2df792e6d..6f76586e010b 100644
--- a/conftest.py
+++ b/conftest.py
@@ -144,6 +144,8 @@ def pytest_addoption(parser):
                      help=('Pass all remaining options to QEMU as is'))
     parser.addoption('--bootarg', action='append', dest='bootarg', default=[],
                      help=('Pass boot arguments to barebox for debugging purposes'))
+    parser.addoption('--port-forward', metavar="PORT", action='append', dest='qemu_port', default=[],
+                     help=('Forward incoming TCP or UDP connections on specified PORT'))
 
 
 @pytest.fixture(scope="session")
@@ -258,12 +260,21 @@ def strategy(request, target, pytestconfig):  # noqa: max-complexity=30
     for arg in pytestconfig.option.qemu_arg:
         strategy.append_qemu_args(arg)
 
+    qemu_nic = "user,id=net0"
+
+    for port in pytestconfig.option.qemu_port:
+        qemu_nic += f",hostfwd=udp:127.0.0.2:{port}-:{port}"
+        qemu_nic += f",hostfwd=tcp:127.0.0.2:{port}-:{port}"
+
     if "testfs" in features:
         if not any(fs and fs[0] == "testfs" for fs in pytestconfig.option.qemu_fs):
             testfs_path = os.path.join(os.environ["LG_BUILDDIR"], "testfs")
             pytestconfig.option.qemu_fs.append(["testfs", testfs_path])
             os.makedirs(testfs_path, exist_ok=True)
-            strategy.append_qemu_args("-nic", f"user,id=net0,tftp={testfs_path}")
+            qemu_nic += f",tftp={testfs_path}"
+
+    if "qemu" in features:
+        strategy.append_qemu_args("-nic", qemu_nic)
 
     for i, fs in enumerate(pytestconfig.option.qemu_fs):
         if virtio:
-- 
2.47.3



