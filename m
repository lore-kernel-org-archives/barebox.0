Delivery-date: Thu, 22 Aug 2024 13:58:04 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sh6S4-00CEou-1m
	for lore@lore.pengutronix.de;
	Thu, 22 Aug 2024 13:58:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sh6S3-0005Tz-Tr
	for lore@pengutronix.de; Thu, 22 Aug 2024 13:58:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=55Tbwz9CgWv0VVB2Gzs7W8MkrwV4f5Xje68h7CtqTwc=; b=h5Q49Qir6i/NC290d9OUXELyx4
	1aYJtqFQezfWlkehu07KnD93muaGVN2r+CzlASchXDOtI48x/LnmcBzfwRDxb8Pg8R+3P/v9H33Qp
	fiPJypFmJxzbIXwMHvs3H0lpS3sI2Qzb5+PIA324KDSvZRlMHsYyv2UPntdMPjhRMTd9Q65G/fQLc
	Jt+OV47Mgt8qwl/rskUqgMYmennKi8ItEAff8mZlZg5/Ue80sydpwiMc2DWN41PZMX7/FmwArP+hS
	Nj4NWqKTl1S2W2PDzAZIWtq5i3S0kvORZ+qJvX2/k2DgpZ8oubvVlKz0Eemsq9Lk1ds5QIwEHc4f9
	cRRAa7Bw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sh6Rd-0000000CfOD-0NEi;
	Thu, 22 Aug 2024 11:57:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sh6RZ-0000000CfKw-10N0
	for barebox@lists.infradead.org;
	Thu, 22 Aug 2024 11:57:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sh6RX-00054r-Ow; Thu, 22 Aug 2024 13:57:31 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sh6RX-002Ey0-Bq; Thu, 22 Aug 2024 13:57:31 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sh6RX-004y9I-0r;
	Thu, 22 Aug 2024 13:57:31 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 22 Aug 2024 13:57:26 +0200
Message-Id: <20240822115730.1184500-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240822_045733_344766_6AC2B34E 
X-CRM114-Status: UNSURE (   9.21  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/5] test: conftest.py: move top-level
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We have a top level pytest.ini to support running pytest --lg-env=$some_env
without extra arguments. This works for running tests nornally, but not if
extra options like --qemu should be used, because the conftest.py won't
be loaded early enough.

The easy fix is moving the conftest.py a level higher as described in:

  https://github.com/pytest-dev/pytest/issues/5822#issuecomment-697331920

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/conftest.py => conftest.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
 rename test/conftest.py => conftest.py (99%)

diff --git a/test/conftest.py b/conftest.py
similarity index 99%
rename from test/conftest.py
rename to conftest.py
index 12daf3a058ff..56d4b512a912 100644
--- a/test/conftest.py
+++ b/conftest.py
@@ -1,7 +1,7 @@
 import pytest
 import os
 import argparse
-from .py import helper
+from test.py import helper
 
 
 @pytest.fixture(scope='function')
-- 
2.39.2



