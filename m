Delivery-date: Wed, 02 Jun 2021 16:39:24 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1loS1k-0003zK-10
	for lore@lore.pengutronix.de; Wed, 02 Jun 2021 16:39:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1loS1b-00085j-KU
	for lore@pengutronix.de; Wed, 02 Jun 2021 16:39:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pSeeAH00LLRYiT38XYR6b84IlXOdgfnncmkXDxdUaL8=; b=oO4z87b8s0n5FS
	D4TX71o3ojJianF2InJjiRYtpibOthoPbMoAZuhygsIT2SECgJJtr8w38KzDnsm4JUKrQCI9b9jj6
	IN+dhZ2zc+MBDyI/TOC9OJ3SHi58Vg2TS21gtDTWwA5pBecSJLMKocR5O1PDE5/0cYUZ2AO592o9y
	PqXoqJs3RnNFiRtfqBCqoM7CJhsMxQ4w8DWj4lLxBYBKXmpBv9E7ac6nl7OLKKjPWXOznzzO9Fhv7
	GltTcFmaXSt5GtQ5y4uHxfhIHY/9v3oFsipSkX/RPYtrxeJsVh85AXHXwphanCgnbe2MKLXxpDYhm
	YmIfdFhtjXljejFYVn2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1loRzr-004c6v-FP; Wed, 02 Jun 2021 14:37:28 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1loRxY-004ayL-UZ
 for barebox@lists.infradead.org; Wed, 02 Jun 2021 14:35:09 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1loRxW-0006tY-OJ; Wed, 02 Jun 2021 16:35:02 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1loRxV-0006iO-R9; Wed, 02 Jun 2021 16:35:01 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>,
 Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  2 Jun 2021 16:34:53 +0200
Message-Id: <20210602143453.23097-14-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210602143453.23097-1-a.fatoum@pengutronix.de>
References: <20210602143453.23097-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210602_073505_204918_ACDB8065 
X-CRM114-Status: GOOD (  12.68  )
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
Subject: [PATCH v3 13/13] test: add bthread test
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The bthread -v command already returns an appropriate exit code if
threads can't be scheduled. Have it spawn 16 threads and switch between
them for a second and verify that all of these threads were indeed
terminated.

Acked-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
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

