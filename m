Delivery-date: Mon, 06 Jan 2025 10:20:00 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tUjHD-00HQio-1c
	for lore@lore.pengutronix.de;
	Mon, 06 Jan 2025 10:20:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tUjHD-0004D1-1D
	for lore@pengutronix.de; Mon, 06 Jan 2025 10:19:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=CNC9uRyfTDb8mjQLjjQM9zSJPJND8t7pX8PkstqBVo8=; b=HI+ioqDE1tfOT4G4r9KjkQZIWz
	iLFt95ZMOsHthZdPoGmHQf2+Gk9uG09s+KhdvYkG1Iin45sE692DeA+UrigqKvL06ePF3Swl+6v+j
	oxrGw5+hjCMtPaPmsL8w+bURobbQwWk92W7WaMSSe35z9R+paWGeyet70CKeupeTqD0Q1H/rsV9+/
	wnU9mbc2mItrs7LO7xGH/jN9CjtdTGozeR9GEwAk4ndpvwk2WAA2ncVRwtekeyDhcS14krzyIVRPj
	RQyNLqmkeNnD6XRPYJ8aywRVwimxUaCMR6UAyPh1IAqb+h7t4zZ1riTyOZQnWMgwkyFsoDHkr6AIb
	kwZddcIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tUjGm-00000000eWv-3v93;
	Mon, 06 Jan 2025 09:19:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tUjGk-00000000eUc-2Zrf
	for barebox@lists.infradead.org;
	Mon, 06 Jan 2025 09:19:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tUjGj-0003m6-3W; Mon, 06 Jan 2025 10:19:29 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tUjGh-0078rC-2q;
	Mon, 06 Jan 2025 10:19:28 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tUjGi-00EPlU-1p;
	Mon, 06 Jan 2025 10:19:28 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  6 Jan 2025 10:19:27 +0100
Message-Id: <20250106091927.3435620-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250106_011930_672385_AF6B279E 
X-CRM114-Status: GOOD (  14.58  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] test: pytest: add support for --dump-dtb
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

barebox built for some targets like the ARM virt machine doesn't yet
include a device tree and instead depends on previous stage firmware
running in QEMU (or QEMU itself) passing along the device tree that
QEMU assembles internally.

For debugging and to make it easier to use barebox in setups, where
a device tree needs to be provided explicitly, add a --dump-dtb option.

Note that not all machines seem to support this. If this is unsupported,
the QEMU VM will be started normally.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 conftest.py      | 3 +++
 test/strategy.py | 8 ++++++--
 2 files changed, 9 insertions(+), 2 deletions(-)

diff --git a/conftest.py b/conftest.py
index 5639b7e22ebd..941eddcb72dd 100644
--- a/conftest.py
+++ b/conftest.py
@@ -45,6 +45,9 @@ def pytest_addoption(parser):
     parser.addoption('--dry-run', action='store_const', const='qemu_dry_run',
         dest='lg_initial_state',
         help=('(for debugging) skip tests and just print Qemu command line'))
+    parser.addoption('--dump-dtb', action='store_const', const='qemu_dump_dtb',
+        dest='lg_initial_state',
+        help=('(for debugging) skip tests and just dump the Qemu device tree'))
     parser.addoption('--rng', action='count', dest='qemu_rng',
         help=('instantiate Virt I/O random number generator'))
     parser.addoption('--console', action='count', dest='qemu_console', default=0,
diff --git a/test/strategy.py b/test/strategy.py
index 4063b8ff818b..3e9c73724048 100644
--- a/test/strategy.py
+++ b/test/strategy.py
@@ -23,6 +23,7 @@ class Status(enum.Enum):
     barebox = 2
     qemu_dry_run = 3
     qemu_interactive = 4
+    qemu_dump_dtb = 5
 
 @target_factory.reg_driver
 @attr.s(eq=False)
@@ -72,7 +73,10 @@ class BareboxTestStrategy(Strategy):
     def force(self, state):
         self.transition(Status.off)  # pylint: disable=missing-kwoa
 
-        if state == "qemu_dry_run" or state == "qemu_interactive":
+        if state.startswith("qemu_"):
+            if state == "qemu_dump_dtb":
+                self.qemu.machine += f",dumpdtb={self.target.name}.dtb"
+
             cmd = self.qemu.get_qemu_base_args()
 
             cmd.append("-serial")
@@ -88,7 +92,7 @@ class BareboxTestStrategy(Strategy):
 
             pytest.exit('Interactive session terminated')
         else:
-            pytest.exit('Can only force to: qemu_dry_run, qemu_interactive')
+            pytest.exit('Can only force to: qemu_dry_run, qemu_interactive, qemu_dump_dtb')
 
     def append_qemu_args(self, *args):
         if self.qemu is None:
-- 
2.39.5



