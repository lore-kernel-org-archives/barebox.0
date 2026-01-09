Delivery-date: Fri, 09 Jan 2026 18:01:01 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1veFrB-0033gw-0M
	for lore@lore.pengutronix.de;
	Fri, 09 Jan 2026 18:01:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1veFrA-0008Ff-Ex
	for lore@pengutronix.de; Fri, 09 Jan 2026 18:01:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5o94cw1PkUmTcB1TSwclRdXOa5GKK5QUZoA+NHqPjFg=; b=ivEpEod7FwFn2CQSwha61qWFtJ
	IXRpJfMjwc19RxrQJ7p92rPWiwIdWWqZO6GksVAnRkZJO3Ex87b8glJekahGTHNx4RuR1LYGKQpkd
	o4Oe3N0kXG/YQJy5GdanCNhqykc6h7gI2kIyt89jmlvBxO12jnREKo3xWDu722SlcZloQ5CbxAb8U
	d+Q9+Bb6ykkY05kPhFMg8RT1/ommsOaOwXXBCdKPVhScyHmtsfS3V6IRhk9RDU5nyfvD4owNUlk3z
	UOfJP/7NX+iONidAnuvX4HqAhcmCcM4XSN+YRKxgq9GIvs1oMxSbDFEcv5J28yX7cqnB9r+Clbj14
	UOizfS0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1veFqQ-00000002gqR-1xNw;
	Fri, 09 Jan 2026 17:00:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1veFqO-00000002goE-0DfH
	for barebox@lists.infradead.org;
	Fri, 09 Jan 2026 17:00:13 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1veFqM-0007jb-Ew; Fri, 09 Jan 2026 18:00:10 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Fri,  9 Jan 2026 17:57:29 +0100
Message-ID: <20260109170007.805177-4-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260109170007.805177-1-a.fatoum@barebox.org>
References: <20260109170007.805177-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260109_090012_091402_8CFD2C83 
X-CRM114-Status: UNSURE (   8.51  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 3/5] test: py: efiloader: prepare get_dmesg for more general usage
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Despite the generic sounding name, get_dmesg actually filter for the 'efit'
string, which is not always what's intended. Rename it to get_journalctl
to make the dependency clearer and make it more generic.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 test/py/test_linux_efiloader.py | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/test/py/test_linux_efiloader.py b/test/py/test_linux_efiloader.py
index 22531bff81f4..8530747a7a6b 100644
--- a/test/py/test_linux_efiloader.py
+++ b/test/py/test_linux_efiloader.py
@@ -4,8 +4,13 @@ import re
 import pytest
 
 
-def get_dmesg(shell):
-    stdout, _, ret = shell.run("journalctl -k --no-pager --grep efi -o cat")
+def get_journalctl(shell, kernel=True, grep=None):
+    opts = ''
+    if grep is not None:
+        opts += f" --grep={grep}"
+    if kernel:
+        opts += " -k"
+    stdout, _, ret = shell.run(f"journalctl --no-pager {opts} -o cat")
     assert ret == 0
     return stdout
 
@@ -19,7 +24,7 @@ def test_efi_kernel_no_warn(shell):
 
 @pytest.mark.lg_feature(['bootable', 'efi'])
 def test_expected_efi_messages(shell, env):
-    dmesg = get_dmesg(shell)
+    dmesg = get_journalctl(shell, 'efi')
 
     expected_patterns = [
         r"efi:\s+EFI v2\.8 by barebox",
-- 
2.47.3



