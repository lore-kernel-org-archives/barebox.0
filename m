Delivery-date: Thu, 14 Aug 2025 17:16:56 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1umZhI-000Y2w-1o
	for lore@lore.pengutronix.de;
	Thu, 14 Aug 2025 17:16:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1umZhH-0001J2-AH
	for lore@pengutronix.de; Thu, 14 Aug 2025 17:16:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gjUHneAFpdra/yFKpbJA3nx3PO9Mg/1GwHN4gBGVuhs=; b=upbWoAsQ04XLNi4KYkj2Pik+N/
	Pz+ggQRDZD7KxVsoOxaugrkLWXV03vDlBdAnJKuN5bzRwO8i5mx+sbZ8HRkOvRL7AROvRC/rpKTKQ
	beETzumxL6eCfVbPuNryA2V1Bg3Diz6+4A/oSv2a57PToKqJSDkvqT+JnCg1MPuiBHDwy+UUY+AY3
	ej/krrGMW+Ahr6RdbT9t3qC7e4MBL6mnXVf+QyVG3mdNMeAws6r34Myq4C3Me+U6pifBMP98YVo1l
	Qh08uQnZfuj+vdMjND8RS/ubWL44YIykiPry8YG2JTlO8Bgk5EKwRtKy+Mx+CzzETzKFlDlP5JoYt
	s+fOvAeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umZh6-0000000HOk8-0jen;
	Thu, 14 Aug 2025 15:16:44 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umY7r-0000000H4Ph-2wPT
	for barebox@bombadil.infradead.org;
	Thu, 14 Aug 2025 13:36:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=gjUHneAFpdra/yFKpbJA3nx3PO9Mg/1GwHN4gBGVuhs=; b=IJq9HbOyjNNxWAM7GZvf+Vk1+K
	GHjEbt0joHbb+JgTMspBTjTyEAu+JGCHIoXfazSZ9wFUXzctg2lQAtn8vHZQWHS7ZVB5sTHFtqm+i
	ZUiZF85bBnBN5+qwr5T6320Zdk6w5gF2li/zD/hJnO6nWbkilHJj5W1qOeBUMJ5RfofanoLdLUh0T
	wvDML0jgd/90YcBZpa9KrNOy52Cd+4K0kdDMbhPZfOXPHcG/h5gvKsUU6s243/V/BBplcPZYdZ/Yt
	str0VMfhfzVNgKG8PQ90aaTrAMDFZ0cOpLf93A1Dw8b/WfShrBd1YAnUnI2HaYE3ypuDCVWvst9Yb
	Fxh1teCA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umY7m-0000000GPTm-0g2x
	for barebox@lists.infradead.org;
	Thu, 14 Aug 2025 13:36:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1umY7j-0002ip-OH; Thu, 14 Aug 2025 15:36:07 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1umY7j-000GO3-1o;
	Thu, 14 Aug 2025 15:36:07 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1umXfb-00Gwpv-2X;
	Thu, 14 Aug 2025 15:07:03 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 14 Aug 2025 15:07:02 +0200
Message-Id: <20250814130702.4039241-18-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250814130702.4039241-1-a.fatoum@pengutronix.de>
References: <20250814130702.4039241-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250814_143610_312087_06735F1E 
X-CRM114-Status: GOOD (  12.22  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH RFC 17/17] test: py: add basic security policy test
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This simple test checks that the security policies were added and that a
number of options that we expect to be there indeed change as expected.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/arm/virt32_secure_defconfig.yaml |  1 +
 test/py/test_policies.py              | 49 +++++++++++++++++++++++++++
 2 files changed, 50 insertions(+)
 create mode 100644 test/py/test_policies.py

diff --git a/test/arm/virt32_secure_defconfig.yaml b/test/arm/virt32_secure_defconfig.yaml
index a1537c634811..3a26e09ef683 100644
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
index 000000000000..28ab16d2cf68
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



