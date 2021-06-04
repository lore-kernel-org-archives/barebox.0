Delivery-date: Fri, 04 Jun 2021 10:33:45 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lp5Gz-00053F-Ok
	for lore@lore.pengutronix.de; Fri, 04 Jun 2021 10:33:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lp5Gr-0007N6-LT
	for lore@pengutronix.de; Fri, 04 Jun 2021 10:33:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dnPCLYzwC9qXPuMICrHB/Cba96Nm0jMSd1dYQVSo2AE=; b=KlqMLF1Bmua9Su
	vB8stwgJzqAqQcvdUqTT6BfvLVJaRU7lHUdMpFJ+l9iap0wC4DQXnD5+q8T9JO8+gYgqTRreEx+3B
	nC8FANQVpT2U3G8dDlEcFtx+jLfigP2VJqarzFAKEkUfKlEikGjgHrVvbZiI5w0Esd3LW7/ylvoDm
	9Q7IizDrUAbZ9DBjuhc/4hDOFJLjRj/OosUxG6W8HrRRWhq5xh43h0SyEX31UpKhe3NMRyK/jEOnB
	2E53MjwaHjLhloWZqdhcpxq81+z1ZTyPSKsEVl4f8lElvD7jOF0yIUR5BA/ej6/DugiydEkLX8POX
	AO9AoLHbTP6W0Jczzp8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lp5FG-00CJ77-2m; Fri, 04 Jun 2021 08:31:58 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lp5Ex-00CIza-Jj
 for barebox@lists.infradead.org; Fri, 04 Jun 2021 08:31:40 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lp5Eg-0006kE-9U; Fri, 04 Jun 2021 10:31:22 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lp5Ef-0002ms-Gp; Fri, 04 Jun 2021 10:31:21 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri,  4 Jun 2021 10:31:08 +0200
Message-Id: <20210604083109.10581-13-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210604083109.10581-1-a.fatoum@pengutronix.de>
References: <20210604083109.10581-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210604_013139_669328_1250311C 
X-CRM114-Status: GOOD (  13.75  )
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
 rcz@pengutronix.de
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
Subject: [PATCH v4 12/13] test: self: run selftests as part of the pytest suite
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

