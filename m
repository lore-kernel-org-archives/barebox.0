Delivery-date: Mon, 19 Jun 2023 11:54:00 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qBBaD-00D39J-V3
	for lore@lore.pengutronix.de; Mon, 19 Jun 2023 11:54:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qBBaB-0001tJ-DC
	for lore@pengutronix.de; Mon, 19 Jun 2023 11:54:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=isuJWN3gCuBqaEaTL6ei91GU7ErYn67OwAFSoETXqyE=; b=SHSjadeacWVHcVkW6v3rTVFMY1
	8ta5QT5vx7my19lYhwrg9I/wqmoVpveJB9s1CYNqdlbPuaMey4kC8RVGbLy2JRTvpXv4izD9vQAug
	YLoCWTFE4NyLiDwrfj3ZJi511IcvCk7EBYLIoAi/hPYG0PsEUZsLYG4xx6wBoF46K7WoOijl3Vhqd
	+TbDWn1qoG+vATXPQHLfna7sHCDHVwz2UPTfbXgimw5u6yfokefevlGnbQNrukkx46rOg/IoBuHJE
	OxhaOPtyddA81vRhQjsHgJK4enM4/48mHYrf8kl3K+3lEqAnb6jV76/5gJ9tJsqV/HwynJRKqKKrw
	PQLOuEzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBBZ9-0085Va-0P;
	Mon, 19 Jun 2023 09:52:55 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qBBZ3-0085Sv-1U
	for barebox@lists.infradead.org;
	Mon, 19 Jun 2023 09:52:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qBBZ1-0001aw-GB; Mon, 19 Jun 2023 11:52:47 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qBBYz-008Tbw-TJ; Mon, 19 Jun 2023 11:52:45 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qBBYy-0004bp-1K;
	Mon, 19 Jun 2023 11:52:44 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: rcz@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 19 Jun 2023 11:52:37 +0200
Message-Id: <20230619095240.4168216-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230619095240.4168216-1-a.fatoum@pengutronix.de>
References: <20230619095240.4168216-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230619_025249_502680_9B5DD662 
X-CRM114-Status: GOOD (  11.58  )
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
Subject: [PATCH 2/5] test: have pytest --interactive start interactive Qemu session
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

test/emulate.pl duplicates a lot of what labgrid is already doing.
In preparation for phasing out emulate.pl, let's teach pytest to
replace it. As a first step we add these two new pytest options:

  --interactive	start Qemu interactively using labgrid environment
  --dry-run     print Qemu command line that would've been used

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/conftest.py |  8 ++++++
 test/strategy.py | 69 +++++++++++++++++++++++++++++++++++++++++++++++-
 2 files changed, 76 insertions(+), 1 deletion(-)

diff --git a/test/conftest.py b/test/conftest.py
index 1a043a91fa78..794574799ff7 100644
--- a/test/conftest.py
+++ b/test/conftest.py
@@ -25,3 +25,11 @@ def pytest_configure(config):
 
     if os.environ['LG_BUILDDIR'] is not None:
         os.environ['LG_BUILDDIR'] = os.path.realpath(os.environ['LG_BUILDDIR'])
+
+def pytest_addoption(parser):
+    parser.addoption('--interactive', action='store_const', const='qemu_interactive',
+        dest='lg_initial_state',
+        help=('(for debugging) skip tests and just start Qemu interactively'))
+    parser.addoption('--dry-run', action='store_const', const='qemu_dry_run',
+        dest='lg_initial_state',
+        help=('(for debugging) skip tests and just print Qemu command line'))
diff --git a/test/strategy.py b/test/strategy.py
index 1fe1b7d818e9..81650a7600bd 100644
--- a/test/strategy.py
+++ b/test/strategy.py
@@ -1,14 +1,20 @@
 import enum
 
 import attr
+import pytest
+import subprocess
+import os
+import sys
 
-from labgrid import target_factory, step
+from labgrid import target_factory, step, driver
 from labgrid.strategy import Strategy, StrategyError
 
 class Status(enum.Enum):
     unknown = 0
     off = 1
     barebox = 2
+    qemu_dry_run = 3
+    qemu_interactive = 4
 
 @target_factory.reg_driver
 @attr.s(eq=False)
@@ -21,9 +27,12 @@ class BareboxTestStrategy(Strategy):
     }
 
     status = attr.ib(default=Status.unknown)
+    qemu = None
 
     def __attrs_post_init__(self):
         super().__attrs_post_init__()
+        if isinstance(self.console, driver.QEMUDriver):
+            self.qemu = self.console
 
     @step(args=['status'])
     def transition(self, status, *, step):
@@ -51,3 +60,61 @@ class BareboxTestStrategy(Strategy):
                 format(self.status, status)
             )
         self.status = status
+
+    def force(self, state):
+        self.transition(Status.off)  # pylint: disable=missing-kwoa
+
+        if state == "qemu_dry_run" or state == "qemu_interactive":
+            cmd = self.get_qemu_base_args()
+
+            cmd.append("-serial")
+            cmd.append("mon:stdio")
+            cmd.append("-trace")
+            cmd.append("file=/dev/null")
+
+            with open("/dev/tty", "r+b", buffering=0) as tty:
+                tty.write(bytes("running: \n{}\n".format(quote_cmd(cmd)), "UTF-8"))
+                if state == "qemu_dry_run":
+                    pytest.exit('Dry run. Terminating.')
+                subprocess.run(cmd, stdin=tty, stdout=tty, stderr=tty)
+
+            pytest.exit('Interactive session terminated')
+        else:
+            pytest.exit('Can only force to: qemu_dry_run, qemu_interactive')
+
+    def get_qemu_base_args(self):
+        if self.qemu is None:
+            pytest.exit('interactive mode only supported with QEMUDriver')
+
+        try:
+            # https://github.com/labgrid-project/labgrid/pull/1212
+            cmd = self.qemu.get_qemu_base_args()
+        except AttributeError:
+            self.qemu.on_activate()
+            orig = self.qemu._cmd
+            cmd = []
+
+            list_iter = enumerate(orig)
+            for i, opt in list_iter:
+                if opt == "-S":
+                    continue
+                opt2 = double_opt(opt, orig, i)
+                if (opt2.startswith("-chardev socket,id=serialsocket") or
+                   opt2 == "-serial chardev:serialsocket" or
+                   opt2 == "-qmp stdio"):
+                    # skip over two elements at once
+                    next(list_iter, None)
+                    continue
+
+                cmd.append(opt)
+
+        return cmd
+
+def quote_cmd(cmd):
+    quoted = map(lambda s : s if s.find(" ") == -1 else "'" + s + "'", cmd)
+    return " ".join(quoted)
+
+def double_opt(opt, orig, i):
+    if opt == orig[-1]:
+        return opt
+    return " ".join([opt, orig[i + 1]])
-- 
2.39.2



