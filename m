Delivery-date: Wed, 23 Aug 2023 08:17:27 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qYhBI-005pWk-Lt
	for lore@lore.pengutronix.de; Wed, 23 Aug 2023 08:17:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qYhBG-0001gp-D6
	for lore@pengutronix.de; Wed, 23 Aug 2023 08:17:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ybRUzDdXnNsIuKL3n/T8WQyiNnErtVVhXEQRJR6bb5U=; b=rrLJJk0plG/bCe43z/acuFLR33
	r4BnCGR2mi+mWuz48kICLznNlOrY+/eqPtZGSoIKaT5NM3+CGIoZN+/tW6BE++UsNvJD85U4HKeRy
	+tB9szEBT1x1jZu4f4kmKedoAiWfrRf8E0ZvZlJi+7As3K9UrEbgv3vAoAZDsARKk8Gfygs71LYKb
	YmiBQbK8maRCz2fYVaEySTuTdB5H7M8TcS2GFnif87uMUkUenyeokRfWm8PxN6D3xEA2eLP4whR1m
	nxrVVXAOCyTOD+aWgqCrz714YrjlNyOeJX0HSFsF2HRCSqAUWOATpUK64M2pYRMxHumAAOQ2DcQ+f
	PfCqialA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qYhAE-00HNFy-1o;
	Wed, 23 Aug 2023 06:16:22 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qYhA9-00HNEa-2w
	for barebox@lists.infradead.org;
	Wed, 23 Aug 2023 06:16:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qYhA8-0001Yr-1V; Wed, 23 Aug 2023 08:16:16 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qYhA6-000z0K-Dm; Wed, 23 Aug 2023 08:16:14 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qYhA5-00Bzdu-2m;
	Wed, 23 Aug 2023 08:16:13 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 23 Aug 2023 08:16:11 +0200
Message-Id: <20230823061612.2858543-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230822_231617_991786_CBEFD969 
X-CRM114-Status: GOOD (  10.32  )
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
Subject: [PATCH 1/2] fixup! test: pytest: have --qemu gobble up all remaining arguments
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

test: pytest: fix command line parse error when --qemu is missing

Default is None, which is not suitable for iteration in a for loop. Give
it a default of [] instead.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/conftest.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/test/conftest.py b/test/conftest.py
index 64082869b329..03bf41a93874 100644
--- a/test/conftest.py
+++ b/test/conftest.py
@@ -41,7 +41,7 @@ def pytest_addoption(parser):
     parser.addoption('--blk', action='append', dest='qemu_block',
         default=[], metavar="FILE",
         help=('Pass block device to emulated barebox. Can be specified more than once'))
-    parser.addoption('--qemu', dest='qemu_arg', nargs=argparse.REMAINDER,
+    parser.addoption('--qemu', dest='qemu_arg', nargs=argparse.REMAINDER, default=[],
         help=('Pass all remaining options to QEMU as is'))
 
 @pytest.fixture(scope="session")
-- 
2.39.2



