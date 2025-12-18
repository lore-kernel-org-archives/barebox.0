Delivery-date: Thu, 18 Dec 2025 15:50:32 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWFKq-00CrYl-0h
	for lore@lore.pengutronix.de;
	Thu, 18 Dec 2025 15:50:32 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWFKp-0005X4-Ia
	for lore@pengutronix.de; Thu, 18 Dec 2025 15:50:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eSN3BlsMeoSJPglG2iyPSddJYEUK2Du7xPGL8IDDUrw=; b=BN8NZ7BBnDW8P5ENo7A7MdgsS+
	NnSnsFMAD6BSo/tAW5FFONCrbfcudF1/ConzXZbfzYOMLiNJ/g9XjX+kSOCs142O4vTnr0OyOwljj
	GDhLByHsmTVrBeia0qmhkSmJ6h0P1RLxQaHCgtqniPGLrffzfB5Jv+ADWNrgkfaZwr1VLOiiVqMbo
	Wkaha2CL7SaFim1zBucwRLTYjW7M4Y8QKgyYDc9lNak5XoMq2zIzBnaQWmK3cxPgNMrI7ouEQHnz1
	1SEYu3nQhdYSVqu1nB4oeedPwrUMy46vr6bMdk0OUdSdyaMQFJyEhk6OiBBBzucMUEm2njOT0bKNl
	o0jP2Ojw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWFKJ-00000008dZP-1LoQ;
	Thu, 18 Dec 2025 14:49:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWFKD-00000008dWY-33gN
	for barebox@lists.infradead.org;
	Thu, 18 Dec 2025 14:49:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWFKB-0005Im-FN; Thu, 18 Dec 2025 15:49:51 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWFKB-006IcX-0s;
	Thu, 18 Dec 2025 15:49:51 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWFKB-0000000E9lv-0jxW;
	Thu, 18 Dec 2025 15:49:51 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 18 Dec 2025 15:48:45 +0100
Message-ID: <20251218144950.3068179-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251218144950.3068179-1-a.fatoum@pengutronix.de>
References: <20251218144950.3068179-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251218_064953_770441_0C534FEE 
X-CRM114-Status: GOOD (  12.94  )
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
Subject: [PATCH 2/4] test: py: add simple SMBIOS tests
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

For configs that are bootable (meaning they are configured to start an
OS) and have the smbios feature enabled, let's verify that the kernel
has found the entry point and that it contains the "barebox" string.

We could do more extensive tests with dmidecode(1) and we should in
future, but we don't want to require its existence for the base check.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/py/test_linux_smbios.py | 30 ++++++++++++++++++++++++++++++
 1 file changed, 30 insertions(+)
 create mode 100644 test/py/test_linux_smbios.py

diff --git a/test/py/test_linux_smbios.py b/test/py/test_linux_smbios.py
new file mode 100644
index 000000000000..d0c2b7ca5665
--- /dev/null
+++ b/test/py/test_linux_smbios.py
@@ -0,0 +1,30 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
+import pytest
+
+
+@pytest.mark.lg_feature(['bootable', 'smbios'])
+def test_smbios3_tables_present(shell):
+    _, _, ret = shell.run("test -e /sys/firmware/dmi/tables/smbios_entry_point")
+    assert ret == 0, "SMBIOS entry point not found"
+
+    [stdout], _, ret = shell.run("stat -c '%s' /sys/firmware/dmi/tables/DMI")
+    assert ret == 0
+
+    size = int(stdout)
+    assert size > 0, "SMBIOS DMI table is empty"
+
+    [stdout], _, ret = shell.run("dd if=/sys/firmware/dmi/tables/smbios_entry_point bs=1 count=5 2>/dev/null")
+    assert ret == 0
+    assert stdout == "_SM3_", "SMBIOS entry point is not SMBIOS 3.x"
+
+
+@pytest.mark.lg_feature(['bootable', 'smbios'])
+def test_smbios_contains_barebox(shell):
+    """
+    Search raw SMBIOS/DMI tables for a barebox vendor string.
+    This avoids dmidecode and relies on simple string matching.
+    """
+    # The DMI table is binary; strings are still ASCII embedded
+    stdout, _, ret = shell.run("strings /sys/firmware/dmi/tables/DMI | grep -i barebox")
+    assert len(stdout) > 0, "barebox not found in SMBIOS/DMI tables"
-- 
2.47.3



