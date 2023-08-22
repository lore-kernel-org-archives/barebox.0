Delivery-date: Tue, 22 Aug 2023 09:49:59 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qYM9H-004Tv5-2I
	for lore@lore.pengutronix.de; Tue, 22 Aug 2023 09:49:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qYM9E-0002UW-Sc
	for lore@pengutronix.de; Tue, 22 Aug 2023 09:49:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=M3SukoftDX5xqERlfrHsEJqvwlxh+sG28f+LH7dM+ME=; b=l+dB5GrBbnTuhHAM7JcKvKDobu
	KvUKVnDKn4pGMqkIux+z/6Hbx6uU+mGlvYlewDPSIMd8lqlVIoeYbUAcyCoNpal/SOBM6LH45SFFF
	Bb5gJ0iIHL6Bf+vMTZzOfBD8rAS6Mcci+J3g01f+DkOXr5u+IwO1Tb2K8fWaKx0vzZXuMkZpBzRjs
	hhYXo0T8Z3vO+OL2s7rY7yvrVlDB8brsP6CMGb/8KfIHqvQ4fYNUsvPrYYFzfPSeRWjGyXw32tPrO
	FCl2gwVe4cC5xqkPnEJPsn4F92Dr5d38yTAc1lD2CIZnJAYo0hWyvXiVagaZq6Y0occ5RBLkpC1tn
	M4OI0F7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qYM8G-00FOO0-0g;
	Tue, 22 Aug 2023 07:48:56 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qYM8E-00FONH-1p
	for barebox@bombadil.infradead.org;
	Tue, 22 Aug 2023 07:48:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=M3SukoftDX5xqERlfrHsEJqvwlxh+sG28f+LH7dM+ME=; b=QaWzYV4UcmmJ0GBIhSNjNMDIwK
	EPg9Vx2gEZBTCg96c3r/FJFD5ZDU1JGJFjqhrKzgjxrGAjO2niQa45DqijfZdqt8qrieZUA7pb6X7
	USxMFXJo9a7xCfkqCTCpwVpT285Q12hUkhsjy1hI/+4K43W38UnZ17ome5GbJRehLSli1z/0ENzUv
	zOI/lCWMQ06STZ6FFu6WTbxxnOxWQwxFH5BSo0l6p8v9zUgVckfGG1NxMUzk3tg8wPSqyBAtZqZsK
	Os8pgQld3i1XKStS410Crlr/x/8T/2jafBrgBIYaT3vmcySRtzV9m96SuZAtQzIKZpfosuORx2gAX
	ZsDzQ9Dw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qYM8A-002abX-39
	for barebox@lists.infradead.org;
	Tue, 22 Aug 2023 07:48:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qYM8A-00026I-Gy; Tue, 22 Aug 2023 09:48:50 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qYM89-000lPl-SN; Tue, 22 Aug 2023 09:48:49 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qYM89-00GO39-1D;
	Tue, 22 Aug 2023 09:48:49 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 22 Aug 2023 09:48:48 +0200
Message-Id: <20230822074848.3905682-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230822_084851_111016_D2F40B9D 
X-CRM114-Status: UNSURE (   8.95  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] test: pytest: have --qemu gobble up all remaining arguments
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Passing extra arguments to Qemu was a bit cumbersome so far:

  pytest --qemu=-device --qemu=virtio-rng-pci

Improve upon this by having --qemu just gobble all remaining arguments:

  pytest --qemu -device virtio-rng-pci

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/conftest.py | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/test/conftest.py b/test/conftest.py
index d2eef5156423..64082869b329 100644
--- a/test/conftest.py
+++ b/test/conftest.py
@@ -1,5 +1,6 @@
 import pytest
 import os
+import argparse
 from .py import helper
 
 
@@ -40,9 +41,8 @@ def pytest_addoption(parser):
     parser.addoption('--blk', action='append', dest='qemu_block',
         default=[], metavar="FILE",
         help=('Pass block device to emulated barebox. Can be specified more than once'))
-    parser.addoption('--qemu', action='append', dest='qemu_arg',
-        default=[], metavar="option",
-        help=('Pass option to QEMU as is'))
+    parser.addoption('--qemu', dest='qemu_arg', nargs=argparse.REMAINDER,
+        help=('Pass all remaining options to QEMU as is'))
 
 @pytest.fixture(scope="session")
 def strategy(request, target, pytestconfig):
-- 
2.39.2



