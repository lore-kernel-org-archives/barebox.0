Delivery-date: Tue, 24 Jun 2025 10:30:05 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uTz2b-00AXn7-0R
	for lore@lore.pengutronix.de;
	Tue, 24 Jun 2025 10:30:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uTz2a-0004Od-Hd
	for lore@pengutronix.de; Tue, 24 Jun 2025 10:30:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=qBJw3MV5u3xRFLp7JaImzPvQ71AZqVZ/DPYOv82+NNE=; b=SO0L0iUozi5w9dOperMDgspdR+
	GOd4jEX1cvRMoZOdo6T8tyvcWuh3TMVvkGR3n2t2Sua88bBw5p9eLv8uvXDLX4QU8DEH9kXyt3KJv
	78+uKGocn21mpr+IskACfpzpPhqI1NU/eVDzHzcKUgoBcf34ASRGt4zEPQThO9o/flawAr02pefQk
	vm9QBsfPW/tIvlc8BAkGN0onUF6CG7RRcnxOfmf3R3Q08LBKlW/OYFrBKzWKtXNuVtb/7tjlcexYq
	jrygN1rP28CcTwspDvd6oXgfVjTiR3g5TWkE4Gp10vytf5njT6/vgkWiCDsuW3m2TcxXM7ZWd83qg
	CPbQie/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTz29-000000051YW-1c89;
	Tue, 24 Jun 2025 08:29:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTyqC-00000004zHz-36kH
	for barebox@lists.infradead.org;
	Tue, 24 Jun 2025 08:17:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uTyq9-0008Hh-Or; Tue, 24 Jun 2025 10:17:13 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uTyq9-005586-1q;
	Tue, 24 Jun 2025 10:17:13 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uTyq9-00H0qI-1U;
	Tue, 24 Jun 2025 10:17:13 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 24 Jun 2025 10:17:12 +0200
Message-Id: <20250624081712.4054548-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250624_011716_784607_12767BC4 
X-CRM114-Status: GOOD (  11.82  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] fixup! test: Add pytest suite for NVMEM framework
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

If CONFIG_DEBUG_PROBES is enabled, barebox will print an info log
whenever a device is probed. This breaks one test case in the newly
introduced nvmem tests, because running the nvmem command results in two
lines instead of one:

      probe-> rmem1
  rmem1

A better solution might be disabling stderr, but for now, let's just
have the test check all lines that appeared after running the command.

This fixes CI breakage in next.

Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/py/test_nvmem.py | 10 ++--------
 1 file changed, 2 insertions(+), 8 deletions(-)

diff --git a/test/py/test_nvmem.py b/test/py/test_nvmem.py
index 0eec93d65c4c..6070877a6868 100644
--- a/test/py/test_nvmem.py
+++ b/test/py/test_nvmem.py
@@ -257,13 +257,7 @@ def test_nvmem_create_dynamic_device_with_var(barebox, barebox_config):
 
     stdout_compound_raw = barebox.run_check(compound_cmd)
 
-    actual_dev_name_in_var = stdout_compound_raw[0].strip() if stdout_compound_raw else "'' (compound cmd gave no stdout lines)"
-
-    assert actual_dev_name_in_var == expected_dev_name_in_var, (
-        f"Environment variable {var_to_set_in_barebox} (from compound cmd) was "
-        f"'{actual_dev_name_in_var}', expected "
-        f"'{expected_dev_name_in_var}'"
-    )
+    assert expected_dev_name_in_var in stdout_compound_raw
 
     # Verify the device is listed by `nvmem`
     stdout_list_a, _, returncode = barebox.run('nvmem')
@@ -271,7 +265,7 @@ def test_nvmem_create_dynamic_device_with_var(barebox, barebox_config):
 
     # The 'nvmem' list might show "rmemX0" while the var stores "rmemX".
     # The pattern checks for this.
-    list_pattern_check = actual_dev_name_in_var
+    list_pattern_check = expected_dev_name_in_var
     pattern = re.compile(f"^{re.escape(list_pattern_check)}0?$")
     assert any(pattern.match(line.strip()) for line in stdout_list_a), (
         f"Device corresponding to '{list_pattern_check}' (pattern: '{pattern.pattern}') "
-- 
2.39.5



