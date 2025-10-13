Delivery-date: Mon, 13 Oct 2025 16:10:33 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v8JFx-007Obs-17
	for lore@lore.pengutronix.de;
	Mon, 13 Oct 2025 16:10:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v8JFw-0000L1-QA
	for lore@pengutronix.de; Mon, 13 Oct 2025 16:10:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QLzXFqzfDBP8S9/HrPyb/CFnxA2TPMrSd1tO1Cp1cYE=; b=QsH08MSlColzIe
	ouKn0d2JWQxk4LU6yvwptpYHYf9guZ9F+BxoyOgSEkHj5sqh+7RXAgip2bVo6ESEnsgWAgVVNL8Jj
	D3t6fVVSxics86vU3/AQIKSbCozp7HiOp68aRZTsyJVNScuPjyDHdHHzoHqModg1QNrqob95oDzwU
	0WilUuHo/FqQw/Go+Tt3e+Hepcnsp9EmiUdR0YGjrP2BpNQXBjyrGMvFNPSyk9r3NSfqcOm81Y8MT
	loh/Hyd/6/DF//OsAh+2JpKDKBVRaiL3l5YF5mTzb06QIQmBejYFit7TBw8OjGbHgGMaPXqlXbt0v
	1Y2oCVlsivpBSqiqNDFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8JFT-0000000DJuu-0WtX;
	Mon, 13 Oct 2025 14:10:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8JFQ-0000000DJtY-0tf5
	for barebox@lists.infradead.org;
	Mon, 13 Oct 2025 14:10:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1v8JFO-0000Ea-C3; Mon, 13 Oct 2025 16:09:58 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1v8JFO-003Ob0-0b;
	Mon, 13 Oct 2025 16:09:58 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1v8JFO-000000002Un-0Jq6;
	Mon, 13 Oct 2025 16:09:58 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 13 Oct 2025 16:09:56 +0200
Message-ID: <20251013140957.8360-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251013_071000_251840_9AD9C0D3 
X-CRM114-Status: GOOD (  11.02  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] Documentation: migration-2025.10.0: add guide
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

By looking through the changes sitting in master waiting for the next
releases, two potential breakages pop up. Mention them in the migration
guide.

Cc: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 .../migration-guides/migration-2025.10.0.rst  | 21 +++++++++++++++++++
 1 file changed, 21 insertions(+)
 create mode 100644 Documentation/migration-guides/migration-2025.10.0.rst

diff --git a/Documentation/migration-guides/migration-2025.10.0.rst b/Documentation/migration-guides/migration-2025.10.0.rst
new file mode 100644
index 000000000000..80f8f37cf475
--- /dev/null
+++ b/Documentation/migration-guides/migration-2025.10.0.rst
@@ -0,0 +1,21 @@
+Release v2025.10.0
+==================
+
+Rename in /dev
+--------------
+
+The i.MX SNVS device file is now simply called ``snvs`` instead of the
+previous unwieldy name derived from device tree,
+e.g., ``/dev/30370000.snvs@30370000:snvs-lpgpr.of0``.
+
+EEPROMs that are pointed at by a device tree alias do no longer have
+an extra 0 at the end, e.g., ``/dev/eeprom00`` has become ``/dev/eeprom0``.
+
+AM62L DT Bindings
+-----------------
+
+The SCMI clock IDs for the AM62L have changed in ARM Trusted Firmware,
+because the old assignment was not conforming to spec.
+
+barebox now requires TF-A to contain commit
+229d03adf ("PENDING: feat(ti): add missing scmi pds").
-- 
2.47.3



