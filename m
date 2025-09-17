Delivery-date: Wed, 17 Sep 2025 16:19:05 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyszx-0046Oq-0g
	for lore@lore.pengutronix.de;
	Wed, 17 Sep 2025 16:19:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyszt-0003hO-Pk
	for lore@pengutronix.de; Wed, 17 Sep 2025 16:19:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dLzNApVFKlBBZNNBjNDtVI/YG17kCH81BZJSjy9UXbM=; b=udbRRb3gYPZUmeq/PL5ILqOaNV
	5yctOZKiJDr3+7mMS8mQ+R3O9ASy3wk3VVpbd4i029NehZ7mrMLvV8RaM3wiQA5iulxX8AEybY0AV
	YUC/29MKJT3he+pCL+yKqXty/sGySFzeyNuCTikBdtg0kMOFj7X7mzdYWh6ZRK7jrQhIwuXQ07Vzu
	AosaM0wrVPjhWUtEyF9NU9X2XmiXVGPW5+ulRrapinO8CYr+nd6mbV4DWbtvPNreHTVk/5s7NhKcU
	yv2wCgRw8zKbZLYLvzxA37IATFgXJUS5x5YYYqcq7oZ/K2bcemEwlc2ui4/iYKLf8+jtO8SkSz9h4
	XrvdVoOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyszM-0000000C8F3-1OqD;
	Wed, 17 Sep 2025 14:18:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyszH-0000000C87a-1Sep
	for barebox@lists.infradead.org;
	Wed, 17 Sep 2025 14:18:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uyszF-00032E-SP; Wed, 17 Sep 2025 16:18:21 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uyszF-001mGj-2D;
	Wed, 17 Sep 2025 16:18:21 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uysbA-0000000CZtI-35SA;
	Wed, 17 Sep 2025 15:53:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 17 Sep 2025 15:53:37 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250917-security-policies-v2-17-f30769a3ff51@pengutronix.de>
References: <20250917-security-policies-v2-0-f30769a3ff51@pengutronix.de>
In-Reply-To: <20250917-security-policies-v2-0-f30769a3ff51@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758117208; l=2984;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=b9AgjJOcgz5X7M9qKFRCwKtLsVX3mHFGvLs+3jCNz/w=;
 b=nDF1NLYk6N9r3u9sdmmfqq5zFEIj9wouklPfUNbVWPk7EP4xhdh/JS6q0iT7rZCgEN3M760Sv
 7vsRNe1dg19DcX7cexvBB6TwUptu9y0d5m/xtEB7h9yB4g+j8M6nuws
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250917_071823_391340_051F4889 
X-CRM114-Status: GOOD (  12.15  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 17/24] test: py: add basic security policy test
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@pengutronix.de>

This simple test checks that the security policies were added and that a
number of options that we expect to be there indeed change as expected.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/arm/virt32_secure_defconfig.yaml |  1 +
 test/py/test_policies.py              | 48 +++++++++++++++++++++++++++++++++++
 2 files changed, 49 insertions(+)

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
index 0000000000000000000000000000000000000000..b4ece29c95974b182aa1275d1710742f52ad4cea
--- /dev/null
+++ b/test/py/test_policies.py
@@ -0,0 +1,48 @@
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
+    assert set(['-SCONFIG_BOOT_UNSIGNED_IMAGES',
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
2.47.3



