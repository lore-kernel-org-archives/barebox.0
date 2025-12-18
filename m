Delivery-date: Thu, 18 Dec 2025 15:50:31 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWFKp-00CrXm-1C
	for lore@lore.pengutronix.de;
	Thu, 18 Dec 2025 15:50:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWFKo-0005WW-Ae
	for lore@pengutronix.de; Thu, 18 Dec 2025 15:50:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=aAkjaP4tq+aLxKeSf32MYY2GqgzzVZACuHb3T/0B7r8=; b=SurjYreUcDr8/TeyFyrK21ZlUR
	mVhgq/oLdKdaJFjy4CRxHH6UYNQGFSBWLYaRE52fSoddAEaVkkScsLspOvH5CAIHvfTObiaRnJHrT
	VYQyRsP4RMsVgv1M0KfdlwbNHGC5bbsUII3VY5CBwT0+71nJ4d1poQP0L8cbMMJk2mLJfQfemm4Ty
	/8CV5SWDMW4jighDiS8DnKzy7awIL5wDF8MgqQKnPz+KAbVpYIz0axf9cQdxX+BzVhZPHgoCLCRiR
	lWEVf8uMAcsJvLQQeUlrGCmpjwYbRhkndrkY81EF2ts7Ti+ujuATqL4ZB+p+ULUmpkq/gdwlCbPzH
	I/FZHwuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWFKJ-00000008dZa-2UlP;
	Thu, 18 Dec 2025 14:49:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWFKD-00000008dWZ-34Hy
	for barebox@lists.infradead.org;
	Thu, 18 Dec 2025 14:49:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWFKB-0005In-H9; Thu, 18 Dec 2025 15:49:51 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWFKB-006Ica-11;
	Thu, 18 Dec 2025 15:49:51 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWFKB-0000000E9lv-0wSP;
	Thu, 18 Dec 2025 15:49:51 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 18 Dec 2025 15:48:46 +0100
Message-ID: <20251218144950.3068179-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251218144950.3068179-1-a.fatoum@pengutronix.de>
References: <20251218144950.3068179-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251218_064953_771199_E60D1819 
X-CRM114-Status: GOOD (  11.22  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 3/4] test: py: add simple EFI loader integration test
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Boot into a Linux image (assumes journald) and check that the system was
UEFI booted by barebox.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/py/test_linux_efiloader.py | 59 +++++++++++++++++++++++++++++++++
 1 file changed, 59 insertions(+)
 create mode 100644 test/py/test_linux_efiloader.py

diff --git a/test/py/test_linux_efiloader.py b/test/py/test_linux_efiloader.py
new file mode 100644
index 000000000000..22531bff81f4
--- /dev/null
+++ b/test/py/test_linux_efiloader.py
@@ -0,0 +1,59 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
+import re
+import pytest
+
+
+def get_dmesg(shell):
+    stdout, _, ret = shell.run("journalctl -k --no-pager --grep efi -o cat")
+    assert ret == 0
+    return stdout
+
+
+@pytest.mark.lg_feature(['bootable', 'efi'])
+def test_efi_kernel_no_warn(shell):
+    stdout, stderr, ret = shell.run("journalctl -k --no-pager --grep efi -o cat -p warning")
+    assert stdout == []
+    assert stderr == []
+
+
+@pytest.mark.lg_feature(['bootable', 'efi'])
+def test_expected_efi_messages(shell, env):
+    dmesg = get_dmesg(shell)
+
+    expected_patterns = [
+        r"efi:\s+EFI v2\.8 by barebox",
+        r"Remapping and enabling EFI services\.",
+        r"efivars:\s+Registered efivars operations",
+    ]
+
+    for pattern in expected_patterns:
+        assert re.search(pattern, "\n".join(dmesg)), \
+               f"Missing expected EFI message: {pattern}"
+
+
+@pytest.mark.lg_feature(['bootable', 'efi'])
+def test_efi_systab(shell, env):
+    stdout, stderr, ret = shell.run("cat /sys/firmware/efi/systab")
+    assert ret == 0
+    assert stderr == []
+    assert len(stdout) > 0
+
+    expected_patterns = [
+    ]
+
+    if 'smbios' in env.get_target_features():
+        expected_patterns.append(r"SMBIOS3=")
+
+    for pattern in expected_patterns:
+        assert re.search(pattern, "\n".join(stdout)), \
+               f"Missing expected entry in systab : {pattern}"
+
+
+@pytest.mark.lg_feature(['bootable', 'efi'])
+def test_efivars_filesystem_not_empty(shell):
+    # Directory must not be empty
+    stdout, _, ret = shell.run("ls -1 /sys/firmware/efi/efivars")
+    assert ret == 0
+
+    assert len(stdout), "EFI variables directory is empty"
-- 
2.47.3



