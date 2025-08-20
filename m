Delivery-date: Wed, 20 Aug 2025 16:32:28 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uojrZ-002eGv-1b
	for lore@lore.pengutronix.de;
	Wed, 20 Aug 2025 16:32:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uojrW-0006RO-Tb
	for lore@pengutronix.de; Wed, 20 Aug 2025 16:32:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4vzatV8dGwLzuZ4u6/k2y1gcaTC1PXtpY0dP8YqC52E=; b=3LTRokTleQEkLi2IjgESLGDbQb
	Yc2ixvtNdRd7MSbj0vb41YPhQxyk1ed0nWC930IatpvrACtnb6u0iYv0JDqFDYjTpWxypStusvWW3
	3Nxz2U1rJOgoHiV51z2WCKw4S8WwPd45IGmAMl1RnsYTF7zMTWYJok9ohjd0VIoeWD2Sekvq0I1Ss
	AbPy4sTcEjPlL6HNAgRY5RefwjkI5qBvof1FYmqBIOeSHPVr9b/Egi4fWCkWBR9gG6qMZJBOmyHTG
	JaJwryDF1Ce8CT6TId00KjnfHLuKs9t8iaMuABQ8Wd9QAdpUq1Y5HLp+QUFipxEhjsw612Hd6xSGm
	eSYhnI4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uojqz-0000000E4UX-3JUU;
	Wed, 20 Aug 2025 14:31:53 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoixP-0000000DoiP-2eAY
	for barebox@bombadil.infradead.org;
	Wed, 20 Aug 2025 13:34:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=4vzatV8dGwLzuZ4u6/k2y1gcaTC1PXtpY0dP8YqC52E=; b=OPQUj2F92KoRGGnN6A2oWcoFvG
	3/OZocTnYmjZ9zv1juj80H9nu2M107OXudZtdDUVsHHvxgSNa86RXusVft1tpCFwJNB3lOPTGfm05
	0u1shd0dEN83PEAmn/ZAJmakHFciH8Gk0lscD6QOQNn4zRrAeAdrcb6qLAEMVV364AK2kXX8KSepL
	ab3Ii+EvvLHyld50yxEKMqZ3xE9M+VKhWKxgWX+LJ1XsJLzx1vPVPEJq5yTZrMoiTjojvwAhOC0ne
	LGxpm3858+kCUx6aLbeV4MCCWGqWAe4PHP0q9PamLcgY1k5mSAKVSf1LQI9R38bXem+KYzrdc2s2e
	f/iKEEKw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoixK-00000000KkN-3vu3
	for barebox@lists.infradead.org;
	Wed, 20 Aug 2025 13:34:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uoixI-0003HL-LK; Wed, 20 Aug 2025 15:34:20 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uoixI-001Fsj-1P;
	Wed, 20 Aug 2025 15:34:20 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uoihK-004jSI-1n;
	Wed, 20 Aug 2025 15:17:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 20 Aug 2025 15:18:01 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250820-security-policies-v1-17-76fde70fdbd8@pengutronix.de>
References: <20250820-security-policies-v1-0-76fde70fdbd8@pengutronix.de>
In-Reply-To: <20250820-security-policies-v1-0-76fde70fdbd8@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1755695870; l=3037;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=fUZLv1kBZXKAXPJuIefAgY/yylD9orv30L/RUO67jX4=;
 b=BXunGsIhXrc1rrUnwJmta4sbBLeyDQi92e6cqdt8fwWVHYAI5Bmy564ZvhPT2TRKnfpICYk5t
 +QRdyX70ejcAKYUaC6gtLipbdVX/oHEhCi8G9mGloSz6zgAmFTI90QM
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250820_143423_130875_A0D65F91 
X-CRM114-Status: GOOD (  11.88  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 17/24] test: py: add basic security policy test
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@pengutronix.de>

This simple test checks that the security policies were added and that a
number of options that we expect to be there indeed change as expected.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/arm/virt32_secure_defconfig.yaml |  1 +
 test/py/test_policies.py              | 49 +++++++++++++++++++++++++++++++++++
 2 files changed, 50 insertions(+)

diff --git a/test/arm/virt32_secure_defconfig.yaml b/test/arm/virt32_secure_defconfig.yaml
index a1537c634811d10957b7fd0cc49d6b66c1b80e06..3a26e09ef683093279d9fd068e6e8e968cb34a9e 100644
--- a/test/arm/virt32_secure_defconfig.yaml
+++ b/test/arm/virt32_secure_defconfig.yaml
@@ -15,6 +15,7 @@ targets:
       BareboxTestStrategy: {}
     features:
       - virtio-mmio
+      - policies
 images:
   barebox-dt-2nd.img: !template "$LG_BUILDDIR/images/barebox-dt-2nd.img"
 imports:
diff --git a/test/py/test_policies.py b/test/py/test_policies.py
new file mode 100644
index 0000000000000000000000000000000000000000..28ab16d2cf6899942d84bdc44b98e624701439cd
--- /dev/null
+++ b/test/py/test_policies.py
@@ -0,0 +1,49 @@
+# SPDX-License-Identifier: GPL-2.0-or-later
+
+import pytest
+
+
+def test_security_policies(barebox, env):
+    if 'policies' not in env.get_target_features():
+        pytest.skip('policies feature flag missing')
+
+    assert 'Active Policy: devel' in barebox.run_check('sconfig')
+
+    assert set(barebox.run_check('sconfig -l')) == \
+           set(['devel', 'factory', 'lockdown', 'tamper'])
+
+    assert barebox.run_check('varinfo global.bootm.verify') == \
+        ['bootm.verify: available (type: enum) '
+         '(values: "none", "hash", "signature", "available")']
+
+    barebox.run_check('sconfig -s factory')
+    assert 'Active Policy: factory' in barebox.run_check('sconfig')
+
+    stdout = barebox.run_check('sconfig -v -s devel')
+    assert set(['+SCONFIG_BOOT_UNSIGNED_IMAGES',
+                '+SCONFIG_CMD_GO']) <= set(stdout)
+    assert 'Active Policy: devel' in barebox.run_check('sconfig')
+
+    stdout, _, rc = barebox.run('go')
+    assert 'go - start application at address or file' in stdout
+    assert 'go: Operation not permitted' not in stdout
+    assert rc == 1
+
+    stdout = barebox.run_check('sconfig -v -s tamper')
+    assert set(['-SCONFIG_SECURITY_POLICY_SELECT',
+                '-SCONFIG_BOOT_UNSIGNED_IMAGES',
+                '-SCONFIG_RATP',
+                '-SCONFIG_CMD_GO']) <= set(stdout)
+    assert 'Active Policy: tamper' in barebox.run_check('sconfig')
+
+    _, _, rc = barebox.run('sconfig -s devel')
+    assert rc != 0
+    assert 'Active Policy: tamper' in barebox.run_check('sconfig')
+
+    stdout, _, rc = barebox.run('go')
+    assert 'go - start application at address or file' not in stdout
+    assert 'go: Operation not permitted' in stdout
+    assert rc == 127
+
+    assert barebox.run_check('varinfo global.bootm.verify') == \
+        ['bootm.verify: signature (type: enum)']

-- 
2.39.5



