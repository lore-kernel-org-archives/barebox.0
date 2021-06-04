Delivery-date: Fri, 04 Jun 2021 10:50:37 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lp5XJ-0005O8-99
	for lore@lore.pengutronix.de; Fri, 04 Jun 2021 10:50:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lp5X5-0001pG-8E
	for lore@pengutronix.de; Fri, 04 Jun 2021 10:50:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fYRJdz7OrGHhmaJdQpABbMxgKvIgGbwcYZBnahBwoGM=; b=IcOvKZpycmNkqw
	r2Ec9RTR/z4qQgob4xAoiagCe2sFY+Ttf1VhBk7k60vy/giBpp3iQViEpUz9W2WvNC0SqVKneZmmX
	wSAEp0/Xxwe4LoaPNHgoA/zZO5MeSeO2F3i5yR8aBzweckb2huQ2YtbxNU7wgUBvBsNjSjha/Sbuo
	AGMBNCSuKP4aoX2w4idXjGt2fBFf2WP53UjpaR+RX7dG59ojRhbdGyLMUtoM+NlsHsYFjVkVC5Hyy
	r9qw4Xxmp6MH4XaonmwhbikK5etkPEu6nWCKc+JRVMT2EBlwhepdss+DRYv1Td8zdojuRY44bycay
	p7YsAgecqp2la0t/DVkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lp5VK-00CMjq-W7; Fri, 04 Jun 2021 08:48:35 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lp5UI-00CMCS-2i
 for barebox@lists.infradead.org; Fri, 04 Jun 2021 08:47:35 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lp5U8-0000id-Ky; Fri, 04 Jun 2021 10:47:20 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lp5U7-00053y-Oc; Fri, 04 Jun 2021 10:47:19 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri,  4 Jun 2021 10:47:03 +0200
Message-Id: <20210604084704.17410-13-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210604084704.17410-1-a.fatoum@pengutronix.de>
References: <20210604084704.17410-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210604_014730_181682_B5B6D172 
X-CRM114-Status: GOOD (  13.74  )
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
Cc: jmaselbas@kalray.eu, Ahmad Fatoum <a.fatoum@pengutronix.de>,
 Rouven Czerwinski <r.czerwinski@pengutronix.de>, rcz@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH RESEND v4 12/13] test: self: run selftests as part of the
 pytest suite
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We don't want to enable self tests in the normal configs as they may,
in future, bloat size needlessly. Enable it instead in the base.cfg
fragment and add a test that verifies the selftest command
runs without errors.

Selftests can be run on startup for CONFIG_SHELL_NONE systems. This is
not implemented here. For such systems the test will be skipped
as CONFIG_CMD_SELFTEST won't be defined. To manually skip with
emulate.pl, add --no-kconfig-base.

Acked-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/kconfig/base.cfg      | 4 ++++
 test/py/test_bselftests.py | 8 ++++++++
 2 files changed, 12 insertions(+)
 create mode 100644 test/py/test_bselftests.py

diff --git a/test/kconfig/base.cfg b/test/kconfig/base.cfg
index e69de29bb2d1..6a9f68349816 100644
--- a/test/kconfig/base.cfg
+++ b/test/kconfig/base.cfg
@@ -0,0 +1,4 @@
+CONFIG_TEST=y
+CONFIG_SELFTEST=y
+CONFIG_CMD_SELFTEST=y
+CONFIG_SELFTEST_ENABLE_ALL=y
diff --git a/test/py/test_bselftests.py b/test/py/test_bselftests.py
new file mode 100644
index 000000000000..7417e7434916
--- /dev/null
+++ b/test/py/test_bselftests.py
@@ -0,0 +1,8 @@
+import pytest
+from .helper import *
+
+def test_bselftest(barebox, barebox_config):
+    skip_disabled(barebox_config, "CONFIG_CMD_SELFTEST")
+
+    stdout, _, returncode = barebox.run('selftest', timeout=30)
+    assert returncode == 0, "selftest failed:\n{}\n".format("\n".join(stdout))
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

