Delivery-date: Wed, 15 Oct 2025 11:10:43 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v8xWt-0082cc-0B
	for lore@lore.pengutronix.de;
	Wed, 15 Oct 2025 11:10:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v8xWs-0005Wn-HJ
	for lore@pengutronix.de; Wed, 15 Oct 2025 11:10:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=W9h0OI6bPA7grHz1B4XNP8m9dJdPF6Z9Qb8XWNeuTgA=; b=oD4lJiPdtJspXtwumvsOGoHJF9
	n8Ip7nIHkpqgU45RQdrNdMw+qBPxHDu0bcPXCqxpetpWo2QAIgZM3uQO+YnPISbwzILEpLkbN0czU
	x20FgU15Dc9C4tXGCksHfSaGCtl08rtyLhMlZedS9VjifDGsqlppxXwykHnv+LTQoKmkrCxO1q7wD
	iJV6npL19Pv0rVyF2nJNaeRwamx9uVZoWhvQpwN9fVeLWaiXQuMIoLllOmNUMsde110kVDrTaeMTT
	q7Bm//1bSOOLG26xzkxq+Y654bojust4Nn68dVs2l+pYfA8kSDl/lG0JUsV5/8NvbvSuYn7mWxLTz
	wxhIQuAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8xWU-000000013eQ-1eMk;
	Wed, 15 Oct 2025 09:10:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8xWR-000000013dt-2HHj
	for barebox@lists.infradead.org;
	Wed, 15 Oct 2025 09:10:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1v8xWP-0005O0-HA; Wed, 15 Oct 2025 11:10:13 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1v8xWP-003hV3-16;
	Wed, 15 Oct 2025 11:10:13 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1v8xWP-00000009eBv-138V;
	Wed, 15 Oct 2025 11:10:13 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Jonas Rebmann <jre@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 15 Oct 2025 11:10:11 +0200
Message-ID: <20251015091012.2299395-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251015_021015_579835_3C518C4B 
X-CRM114-Status: UNSURE (   6.21  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] test: py: fit: don't remove generated FIT again from testfs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

By leaving it lingering around, it's easier to run a pytest --interactive
session afterwards and debug what might have broken the test run
preceding it.

Suggested-by: Jonas Rebmann <jre@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/py/test_fit.py | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/test/py/test_fit.py b/test/py/test_fit.py
index 5620996e9dbb..7a0b9f2762d5 100644
--- a/test/py/test_fit.py
+++ b/test/py/test_fit.py
@@ -52,9 +52,6 @@ def fit_testdata(barebox_config, testfs):
     except FileNotFoundError as e:
         pytest.skip(f"Skip dm tests due to missing dependency: {e}")
 
-    yield
-
-    os.remove(outfile)
 
 def test_fit(barebox, target, testfs, fit_testdata):
     _, _, returncode = barebox.run(f"ls {fit_name('gzipped')}")
-- 
2.47.3



