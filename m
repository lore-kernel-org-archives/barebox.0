Delivery-date: Mon, 12 Apr 2021 09:18:41 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lVqqH-0003eg-HQ
	for lore@lore.pengutronix.de; Mon, 12 Apr 2021 09:18:41 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lVqqG-0004lc-P6
	for lore@pengutronix.de; Mon, 12 Apr 2021 09:18:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AQmvQdSCLFoyW6EgNCHCtrY/WchEnDb/LDm/yxebPko=; b=lXb5bhjPU1hNpIFdUjnrxyCtK
	LNcklGAZ70TOFTd6fZSU5hIJdB2MEqevdwECe9+qR1aZ2toQrb7VCH/+jQ6nBZyn4Sqnz+9HqQko3
	FXWxqPtedvQ1RfhCVFtFf4MMS7sss6T0OWBK129vbWaB1BmV/39KOTrrYBdDsfcsAqejxvVpcJ/Js
	n/24yq2DE+iIAGIMucjHS60sOEeh0zqCJleALSlkRWU/VqDKX19/Oo8SeOV4VZW1ii7kepxXz5OOt
	fJ3Ck2ytj5caF+ADdHJFgFotkyX3KeWg3nHvitFew5VJPF7LwgHXbYRbLmNVJ9yd6enWLXSSm8PwP
	8Elx/cnlA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lVqp1-005vxd-Sx; Mon, 12 Apr 2021 07:17:24 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVqoh-005vuA-Et
 for barebox@desiato.infradead.org; Mon, 12 Apr 2021 07:17:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=KUS2aHDa2QjFN+DdHi2d8ZGG6MN95KYtWBGPUZ0JgJQ=; b=f8jVjoFf5q6a9YbYQfzYX49Jr3
 I7LBYqTORBQr3clyL5QopbVcIsODCNpFJZFgSpljlZ6exw3bBcnN/HYWXb8eCAnrMGNKddhbtK2cx
 DjbZI7cmhltjNPAtKB0xMBplyWficzz5/s8i0zNISLQecqSriQ8o2qvF8O/TYKSAI8NV3njNx6Qm2
 Ic/5P9pWjV5XKSvERQY0hdLnDOPKdxmtkEfRiXzcss1lzZU+frol7vbWvo8FBHeJiOuH6UP7c2fMS
 DQ8iVoLlVTFUPbK1SZ5fnwTF0RTI/hWukPTLJ+XgesR9N2VViFq0oVvnt5tEgtAo6nHorqzpp94qG
 RTKSc1FA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVqod-005vEm-RT
 for barebox@lists.infradead.org; Mon, 12 Apr 2021 07:17:02 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lVqoa-0004HR-DJ; Mon, 12 Apr 2021 09:16:56 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lVqoZ-0002g2-Dc; Mon, 12 Apr 2021 09:16:55 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 12 Apr 2021 09:16:49 +0200
Message-Id: <20210412071651.8769-16-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210412071651.8769-1-a.fatoum@pengutronix.de>
References: <20210412071651.8769-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210412_001659_921300_1BB4145F 
X-CRM114-Status: GOOD (  13.78  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, rcz@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 15/17] test: self: run selftests as part of the pytest suite
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We don't want to enable self tests in the normal configs as they may in
future bloat size needlessly. Enable it instead in the base.cfg
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
index 000000000000..48e9d38c12fc
--- /dev/null
+++ b/test/py/test_bselftests.py
@@ -0,0 +1,8 @@
+import pytest
+from .helper import *
+
+def test_bselftest(barebox, barebox_config):
+    skip_disabled(barebox_config, "CONFIG_CMD_SELFTEST")
+
+    _, _, returncode = barebox.run('selftest')
+    assert returncode == 0
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

