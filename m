Delivery-date: Wed, 06 Aug 2025 16:04:53 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujelB-007exw-2J
	for lore@lore.pengutronix.de;
	Wed, 06 Aug 2025 16:04:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujelA-000482-E2
	for lore@pengutronix.de; Wed, 06 Aug 2025 16:04:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=1gms8HmtGizC63EosuB+MIPJPQZd8FSEBguZio4V8Ak=; b=aN366c1dUSc0PMAjoSVv6IfT0l
	YWrdfv6YSo19o1Qma7oeU3z/Joc012mDM0Fs77t3iguqUpyX8MDETYs7Gs1qpkWzXx3Zu5WmnjgZE
	J3YvvYJe8KKlNo6OqVYVg+5nwBAxdJ5Dvf/JE5pF7uxrMqmzjsQcJv7gme+e8e6lxwgvno49cuA4L
	u66sy+n6y+5WQ4rweop+8XvCKB8VMlKNoKcqMSHYA8hkimWKi1AeQ2I7CvT2zX34s04ldgnhYxSFH
	Mqhk+NwYuJsM8Lk9riFLeXKXN/Xojux0V0xyevnjaKHeV2rfGkJqbSkGNS+DSt7KLo9toFHsEmylh
	8Yn68nDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujekm-0000000FNei-2VfG;
	Wed, 06 Aug 2025 14:04:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujeeP-0000000FMRb-37WJ
	for barebox@lists.infradead.org;
	Wed, 06 Aug 2025 13:57:54 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1ujeeO-0002PU-A8; Wed, 06 Aug 2025 15:57:52 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Wed,  6 Aug 2025 15:57:51 +0200
Message-Id: <20250806135751.2865266-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250806_065753_784410_50821320 
X-CRM114-Status: UNSURE (   9.20  )
X-CRM114-Notice: Please train this message.
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
Subject: [PATCH] test: add --bootarg option when running under QEMU
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On platforms, where the device tree is passed by QEMU, /chosen/bootargs
is an easy way to pass early settings to barebox.

Expose this over a new --bootarg parameter.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 conftest.py      | 5 +++++
 test/strategy.py | 7 +++++++
 2 files changed, 12 insertions(+)

diff --git a/conftest.py b/conftest.py
index 782ebc0536fd..45e8835924b3 100644
--- a/conftest.py
+++ b/conftest.py
@@ -68,6 +68,8 @@ def pytest_addoption(parser):
         help=('Pass barebox environment files to barebox. Can be specified more than once'))
     parser.addoption('--qemu', dest='qemu_arg', nargs=argparse.REMAINDER, default=[],
         help=('Pass all remaining options to QEMU as is'))
+    parser.addoption('--bootarg', action='append', dest='bootarg', default=[],
+        help=('Pass boot arguments to barebox for debugging purposes'))
 
 @pytest.fixture(scope="session")
 def strategy(request, target, pytestconfig):
@@ -152,6 +154,9 @@ def strategy(request, target, pytestconfig):
         else:
             pytest.exit("--env unsupported for target\n", 1)
 
+    if len(pytestconfig.option.bootarg) > 0:
+        strategy.append_qemu_bootargs(pytestconfig.option.bootarg)
+
     for arg in pytestconfig.option.qemu_arg:
         strategy.append_qemu_args(arg)
 
diff --git a/test/strategy.py b/test/strategy.py
index b5a9d8b814a8..11406b97f5f1 100644
--- a/test/strategy.py
+++ b/test/strategy.py
@@ -100,6 +100,13 @@ class BareboxTestStrategy(Strategy):
         for arg in args:
             self.console.extra_args += " " + arg
 
+    def append_qemu_bootargs(self, args):
+        if self.qemu is None:
+            pytest.exit('Qemu option supplied for non-Qemu target')
+        if self.console.boot_args is None:
+            self.console.boot_args = ""
+        self.console.boot_args += " ".join(args)
+
 def quote_cmd(cmd):
     quoted = map(lambda s : s if s.find(" ") == -1 else "'" + s + "'", cmd)
     return " ".join(quoted)
-- 
2.39.5



