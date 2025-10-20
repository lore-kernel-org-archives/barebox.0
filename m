Delivery-date: Mon, 20 Oct 2025 20:29:09 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vAud3-009z04-2u
	for lore@lore.pengutronix.de;
	Mon, 20 Oct 2025 20:29:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vAud3-0002BD-Bp
	for lore@pengutronix.de; Mon, 20 Oct 2025 20:29:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JV0swhKKZ7pI/XKm7i9bJ+nCwmVpkzUzTQ0IrRTBCE0=; b=b0rZE4N63elfnCDBTMoTWoo90H
	OmcOmihD/AkfGWHcl/CM4ET1P/3lYCkNxlGqnRkOTYoW/a66YQLL+NgbQuEgTgdN6jf+Usjdxg2Qw
	v2m8KmQPUigZetHPnU01URaEKMTjF76pabyrz8D2Htnob742xkBr2bHEQrNGpjUR2Ewsbr9QB2ELB
	rz9epGXwWwnxTeNaHR1m8Ahw49nwdrBKe2R2/hAfcV1zcwrXaEDCOV2F0UHWKpkbTkqpc/6K1kl2r
	nLJn6axxXiMi9lKcdMM0Wjq9fHOhtnSN5cGZ0xNKlRGw8Z5aKpRQk3I6wAZ+Y2XD/HCXSp/zYUl6K
	SB3v9heQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAucg-0000000Ed9d-1KCX;
	Mon, 20 Oct 2025 18:28:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAuce-0000000Ed9C-1Nxe
	for barebox@lists.infradead.org;
	Mon, 20 Oct 2025 18:28:45 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vAucc-00025o-Oj; Mon, 20 Oct 2025 20:28:42 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 20 Oct 2025 20:28:37 +0200
Message-ID: <20251020182841.590206-2-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251020182841.590206-1-a.fatoum@barebox.org>
References: <20251020182841.590206-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251020_112844_365343_76B9D1C9 
X-CRM114-Status: UNSURE (   9.89  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/3] test: py: network: skip test if tftp command is missing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The test depends on the tftp command being available, so skip it if this
is not the case.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 test/py/test_network.py | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/test/py/test_network.py b/test/py/test_network.py
index afaa259e2496..28efcc02e44d 100644
--- a/test/py/test_network.py
+++ b/test/py/test_network.py
@@ -5,6 +5,7 @@ import socket
 import threading
 import re
 import warnings
+from .helper import skip_disabled
 
 # Setting the port to zero causes bind to choose a random ephermal port
 TFTP_TEST_PORT = 0
@@ -64,7 +65,9 @@ def tftp_conversation(barebox, barebox_interface, guestaddr):
         barebox.run_check("ifdown eth0")
 
 
-def test_barebox_network(barebox, env):
+def test_barebox_network(barebox, barebox_config, env):
+    skip_disabled(barebox_config, "CONFIG_CMD_TFTP")
+
     # on DUTs without network feature, this is expected to fail
     # set xfail_strict=True to enforce specifying the network feature if available
     if not 'network' in env.get_target_features():
-- 
2.47.3



