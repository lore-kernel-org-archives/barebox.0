Delivery-date: Mon, 19 Jun 2023 11:54:03 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qBBaH-00D39w-0u
	for lore@lore.pengutronix.de; Mon, 19 Jun 2023 11:54:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qBBaE-0001vR-9n
	for lore@pengutronix.de; Mon, 19 Jun 2023 11:54:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mCe+lY6OT0HgD1OEDOCoTs8jU4WrKU+xbrmHClbDulo=; b=Mgi4N+/+W3TcMJFGxgEpEv0CTd
	DuywZJHbQK8jmTHQtc3nLQ+AwrU7cyTQSQ3kB9UV0xyV5m4bOCitlITRdoT3oYZ92FeMmW9OH+L6I
	UXZY9yKfxZgWiLT4eruDr6MEVCNS84Jqs3TLIN/EbrTh8/fMJVos1W5VBtdRoXaMPF2b1XCB+bZ3+
	4CRG2NdD4JJShm00weawjDrv37zDBM4skzdYMNBXuV1yA549UmymNnvB1/+TSUVQwKD1C5Gg5H3vb
	R/9JdoRA3NeYnVX8/ON5Dai6YKHiDFCJQhBdKuM8UAPDlUgOOo8CHL/sY+yBChp8AUztokn4QivA4
	0blwUQow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBBZ7-0085VA-1L;
	Mon, 19 Jun 2023 09:52:53 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qBBZ3-0085Su-1V
	for barebox@lists.infradead.org;
	Mon, 19 Jun 2023 09:52:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qBBZ1-0001au-GB; Mon, 19 Jun 2023 11:52:47 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qBBYz-008Tbq-QG; Mon, 19 Jun 2023 11:52:45 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qBBYy-0004bx-1N;
	Mon, 19 Jun 2023 11:52:44 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: rcz@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 19 Jun 2023 11:52:39 +0200
Message-Id: <20230619095240.4168216-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230619095240.4168216-1-a.fatoum@pengutronix.de>
References: <20230619095240.4168216-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230619_025249_502674_C29D15DB 
X-CRM114-Status: GOOD (  11.96  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 4/5] test: add support for passing devices on command line
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The test/emulate.pl script support a number of options to create
RNG, block and console devices for use inside Qemu. In preparation for
phasing out the perl script, add these as pytest options. These
currently fix up options into the QEMUDriver extra_args key, but the
intention is to move the logic into upstream QEMUDriver over time.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/conftest.py | 70 ++++++++++++++++++++++++++++++++++++++++++++++++
 test/strategy.py |  6 +++++
 2 files changed, 76 insertions(+)

diff --git a/test/conftest.py b/test/conftest.py
index 794574799ff7..2bca3c37e5fb 100644
--- a/test/conftest.py
+++ b/test/conftest.py
@@ -33,3 +33,73 @@ def pytest_addoption(parser):
     parser.addoption('--dry-run', action='store_const', const='qemu_dry_run',
         dest='lg_initial_state',
         help=('(for debugging) skip tests and just print Qemu command line'))
+    parser.addoption('--rng', action='count', dest='qemu_rng',
+        help=('instantiate Virt I/O random number generator'))
+    parser.addoption('--console', action='count', dest='qemu_console', default=0,
+        help=('Pass an extra console (Virt I/O or ns16550_pci) to emulated barebox'))
+    parser.addoption('--blk', action='append', dest='qemu_block',
+        default=[], metavar="FILE",
+        help=('Pass block device to emulated barebox. Can be specified more than once'))
+    parser.addoption('--qemu', action='append', dest='qemu_arg',
+        default=[], metavar="option",
+        help=('Pass option to QEMU as is'))
+
+@pytest.fixture(scope="session")
+def strategy(request, target, pytestconfig):
+    try:
+        strategy = target.get_driver("Strategy")
+    except NoDriverFoundError as e:
+        pytest.exit(e)
+
+    try:
+        features = target.env.config.data["targets"]["main"]["features"]
+    except KeyError:
+        features = []
+
+    virtio = None
+
+    if "virtio-mmio" in features:
+        virtio = "device"
+    if "virtio-pci" in features:
+        virtio = "pci,disable-legacy=on,disable-modern=off"
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
+    for i, blk in enumerate(pytestconfig.option.qemu_block):
+        if virtio:
+            strategy.append_qemu_args(
+                "-drive", f"if=none,file={blk},format=raw,id=hd{i}",
+                "-device", f"virtio-blk-{virtio},drive=hd{i}"
+            )
+        else:
+            pytest.exit("--blk unsupported for target\n", 1)
+
+    for arg in pytestconfig.option.qemu_arg:
+        strategy.append_qemu_args(arg)
+
+    state = request.config.option.lg_initial_state
+    if state is not None:
+        strategy.force(state)
+
+    return strategy
diff --git a/test/strategy.py b/test/strategy.py
index 65cdae4fbf04..8aa58151f6b8 100644
--- a/test/strategy.py
+++ b/test/strategy.py
@@ -122,6 +122,12 @@ class BareboxTestStrategy(Strategy):
         self.target.env.config.data["tools"][self.qemu.qemu_bin] = \
                 shutil.which(self.qemu.qemu_bin)
 
+    def append_qemu_args(self, *args):
+        if self.qemu is None:
+            pytest.exit('Qemu option supplied for non-Qemu target')
+        for arg in args:
+            self.console.extra_args += " " + arg
+
 def quote_cmd(cmd):
     quoted = map(lambda s : s if s.find(" ") == -1 else "'" + s + "'", cmd)
     return " ".join(quoted)
-- 
2.39.2



