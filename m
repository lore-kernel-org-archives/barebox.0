Delivery-date: Mon, 31 May 2021 08:57:07 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lnbrH-0002gn-I3
	for lore@lore.pengutronix.de; Mon, 31 May 2021 08:57:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lnbrG-0000DT-F1
	for lore@pengutronix.de; Mon, 31 May 2021 08:57:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ViLrbVQswzUCo7qECll1XWb+W5PiTDOG5PKbQhmIBL4=; b=jUKRJk6V+SJ/OC
	OPpmQqShj6OJ014jAG997tGB1t2DDt6579EjI+2zaGHuy4JdCymCTrCxA4pb/zzmOEhr68LusKooX
	iGZL1eBedEShEKf3zl+dUEJTTp3UvJnOKwBrM2K2F69gUIcTIdn3VDxphFGm9G94Dj2MCm4wfO15O
	XNPM0Q+po8fYp5qU5SBXnF74V6MXbs4MK7w7jY5w7bsLfupQN31L0qOfSyju/NbCrrcZ1/VQdVHyx
	2hzPtHIS3u/o8nNx1ilRMf5vzHGH9JNhWAYaoNzGqM5YP54ga53Yv0wQwf3JC09oH6wfjLSpuV3U0
	scBpMs0acwEilFizhj+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lnbps-00B0hb-DN; Mon, 31 May 2021 06:55:40 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lnbpd-00B0d9-SP
 for barebox@lists.infradead.org; Mon, 31 May 2021 06:55:28 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lnbpa-0007yq-QJ; Mon, 31 May 2021 08:55:22 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lnbpZ-0003gb-UE; Mon, 31 May 2021 08:55:21 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 31 May 2021 08:55:20 +0200
Message-Id: <20210531065520.12385-14-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210531065520.12385-1-a.fatoum@pengutronix.de>
References: <20210531065520.12385-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210530_235526_010842_C580C51C 
X-CRM114-Status: GOOD (  12.88  )
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
Subject: [PATCH v2 13/13] test: add bthread test
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The bthread -v command already returns an appropriate exit code if
threads can't be scheduled. Have it spawn 16 threads and switch between
them for a second and verify that all of these threads were indeed
terminated.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/kconfig/full.cfg   |  2 ++
 test/py/test_bthread.py | 23 +++++++++++++++++++++++
 2 files changed, 25 insertions(+)
 create mode 100644 test/py/test_bthread.py

diff --git a/test/kconfig/full.cfg b/test/kconfig/full.cfg
index e69de29bb2d1..39275768ea1f 100644
--- a/test/kconfig/full.cfg
+++ b/test/kconfig/full.cfg
@@ -0,0 +1,2 @@
+CONFIG_BTHREAD=y
+CONFIG_CMD_BTHREAD=y
diff --git a/test/py/test_bthread.py b/test/py/test_bthread.py
new file mode 100644
index 000000000000..6e7b4ba5007e
--- /dev/null
+++ b/test/py/test_bthread.py
@@ -0,0 +1,23 @@
+import pytest
+from .helper import *
+
+def stale_spawners(barebox):
+    threads = barebox.run_check("bthread -i")
+    if len(threads) == 0:
+        return False
+    return len([t for t in threads if t.startswith('spawner')]) > 0
+
+def test_bthread(barebox, barebox_config):
+    skip_disabled(barebox_config, "CONFIG_CMD_BTHREAD")
+
+    assert not stale_spawners(barebox)
+
+    _, _, returncode = barebox.run('bthread -vvvv')
+    assert returncode == 0
+
+    assert not stale_spawners(barebox)
+
+    switches = int(barebox.run_check("bthread -c")[0].split()[0])
+    yields   = int(barebox.run_check("bthread -t")[0].split()[0])
+
+    assert yields < switches
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

