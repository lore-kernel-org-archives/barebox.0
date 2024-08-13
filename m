Delivery-date: Tue, 13 Aug 2024 09:02:50 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sdlYQ-00979l-1K
	for lore@lore.pengutronix.de;
	Tue, 13 Aug 2024 09:02:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sdlYP-0004Ro-Ko
	for lore@pengutronix.de; Tue, 13 Aug 2024 09:02:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tS7UmNqclw2MQ+P/CKV+fax64ug1zpZ4IHM3KbyHiCU=; b=idmdB5dRLuIz0ZrN9OMDU4KfJN
	7UCDMUj8k0kR1GD23mvViuCu0TJzxQZetGlO7VClgK/p1Ifr+vTgV1wtcBx8KU4ueN3wsGA3DCaeM
	A3CNqUzfOyJBOZg9LMIahUxxVchLtAgA6O3eTNjZNcz9H2JGvUTg6qfIoRlWx7eIFguxLNem8CiK1
	ESQHLlGDDtSb2NWpjA0Xa9I6tNCQAoDUr6/15KzyLMWEYJWXIViKvWFineez85HLNwEf1g/1vy6cA
	E/qqzGVGs2SkHypKCGk9H+Cz9G36Yd+sAE/XLeMTox5xiKLrNFzFy8Mh56I4gSPuC6EjCjUEPm2cl
	KPiVpu/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdlXv-00000002dcg-2HC4;
	Tue, 13 Aug 2024 07:02:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdlXg-00000002dYR-1PCS
	for barebox@lists.infradead.org;
	Tue, 13 Aug 2024 07:02:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sdlXe-00048I-Qw; Tue, 13 Aug 2024 09:02:02 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sdlXe-0004Ej-DC; Tue, 13 Aug 2024 09:02:02 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sdlXe-004UK1-11;
	Tue, 13 Aug 2024 09:02:02 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 13 Aug 2024 09:02:01 +0200
Message-Id: <20240813070201.1069847-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240813070201.1069847-1-a.fatoum@pengutronix.de>
References: <20240813070201.1069847-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240813_000204_638439_3012C56F 
X-CRM114-Status: GOOD (  10.33  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 7/7] test: py: strategy: drop no longer needed labgrid workarounds
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We were monkey patching in support for following two Labgrid pull
requests:

  - #1166 ("config: return passed in tool by default")
  - #1212 ("qemudriver: export get_qemu_base_args method")

Both are now part of the newest v24.0 release, so let's drop our
workaround and require that at least Labgrid v24.0 is used.

[1]: https://github.com/labgrid-project/labgrid/commit/69fd553c69
[2]: https://github.com/labgrid-project/labgrid/commit/318e7788ce

Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - new patch
---
 test/strategy.py | 53 ++++++++----------------------------------------
 1 file changed, 8 insertions(+), 45 deletions(-)

diff --git a/test/strategy.py b/test/strategy.py
index 8aa58151f6b8..4063b8ff818b 100644
--- a/test/strategy.py
+++ b/test/strategy.py
@@ -6,9 +6,16 @@ import subprocess
 import os
 import shutil
 import sys
+import re
 
 from labgrid import target_factory, step, driver
 from labgrid.strategy import Strategy, StrategyError
+from labgrid.util import labgrid_version
+
+match = re.match(r'^(\d+?)\.', labgrid_version())
+if match is None or int(match.group(1)) < 24:
+    pytest.exit(f"Labgrid has version v{labgrid_version()}, "
+                f"but barebox test suite requires at least v24.")
 
 class Status(enum.Enum):
     unknown = 0
@@ -34,7 +41,6 @@ class BareboxTestStrategy(Strategy):
         super().__attrs_post_init__()
         if isinstance(self.console, driver.QEMUDriver):
             self.qemu = self.console
-        self.patchtools()
 
     @step(args=['status'])
     def transition(self, status, *, step):
@@ -67,7 +73,7 @@ class BareboxTestStrategy(Strategy):
         self.transition(Status.off)  # pylint: disable=missing-kwoa
 
         if state == "qemu_dry_run" or state == "qemu_interactive":
-            cmd = self.get_qemu_base_args()
+            cmd = self.qemu.get_qemu_base_args()
 
             cmd.append("-serial")
             cmd.append("mon:stdio")
@@ -84,44 +90,6 @@ class BareboxTestStrategy(Strategy):
         else:
             pytest.exit('Can only force to: qemu_dry_run, qemu_interactive')
 
-    def get_qemu_base_args(self):
-        if self.qemu is None:
-            pytest.exit('interactive mode only supported with QEMUDriver')
-
-        try:
-            # https://github.com/labgrid-project/labgrid/pull/1212
-            cmd = self.qemu.get_qemu_base_args()
-        except AttributeError:
-            self.qemu.on_activate()
-            orig = self.qemu._cmd
-            cmd = []
-
-            list_iter = enumerate(orig)
-            for i, opt in list_iter:
-                if opt == "-S":
-                    continue
-                opt2 = double_opt(opt, orig, i)
-                if (opt2.startswith("-chardev socket,id=serialsocket") or
-                   opt2 == "-serial chardev:serialsocket" or
-                   opt2 == "-qmp stdio"):
-                    # skip over two elements at once
-                    next(list_iter, None)
-                    continue
-
-                cmd.append(opt)
-
-        return cmd
-
-    def patchtools(self):
-        # https://github.com/labgrid-project/labgrid/commit/69fd553c6969526b609d0be6bb81f0c35f08d1d0
-        if self.qemu is None:
-            return
-
-        if 'tools' not in self.target.env.config.data:
-            self.target.env.config.data['tools'] = {}
-        self.target.env.config.data["tools"][self.qemu.qemu_bin] = \
-                shutil.which(self.qemu.qemu_bin)
-
     def append_qemu_args(self, *args):
         if self.qemu is None:
             pytest.exit('Qemu option supplied for non-Qemu target')
@@ -131,8 +99,3 @@ class BareboxTestStrategy(Strategy):
 def quote_cmd(cmd):
     quoted = map(lambda s : s if s.find(" ") == -1 else "'" + s + "'", cmd)
     return " ".join(quoted)
-
-def double_opt(opt, orig, i):
-    if opt == orig[-1]:
-        return opt
-    return " ".join([opt, orig[i + 1]])
-- 
2.39.2



