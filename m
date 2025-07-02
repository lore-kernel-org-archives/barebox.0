Delivery-date: Wed, 02 Jul 2025 13:14:44 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uWvQK-00DHOH-1r
	for lore@lore.pengutronix.de;
	Wed, 02 Jul 2025 13:14:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uWvQJ-0003Qu-W4
	for lore@pengutronix.de; Wed, 02 Jul 2025 13:14:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ogW23K6XbcucPKD9kLF2g7JRKM6SytpQwWDZDAWCXuk=; b=c+qzgNc9kNqFOmjQaOwPkDPrZS
	hfor25n6rIwnAIdSh/QJcB5oEtYnP5cZ+GDLAlXinvliful7umGJ3BGF39KXam9mNIglD/gvYQA8o
	tCVOUs2MYnRaQYgLPBuFCR0bAJgECicNK+Az6SvB9chZDlA6I7lLplx215/ELHLivUNZfRxBTqrr5
	kM7Ej/kwCYb6ToeOMzKpw5Kcx0yGnwk4tKamdFb467JkaBWNS22QWqfeVSKVUuku+MMDYsz8Hal6P
	XWF9JzNovDFq5MZL6c9czal3vXXjgSGhX1PePCTqU4maosZT5bEux/XoRs9hUM+VKzKvY3VF1PL/0
	c3To55FA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWvPt-000000085x9-2IlP;
	Wed, 02 Jul 2025 11:14:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWuho-00000007xJi-3j4V
	for barebox@lists.infradead.org;
	Wed, 02 Jul 2025 10:28:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uWuhn-000753-Da; Wed, 02 Jul 2025 12:28:43 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uWuhn-006Q6C-0l;
	Wed, 02 Jul 2025 12:28:43 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uWuhm-009DMf-22;
	Wed, 02 Jul 2025 12:28:43 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  2 Jul 2025 12:28:41 +0200
Message-Id: <20250702102841.2196311-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250702_032844_922297_39F51D33 
X-CRM114-Status: GOOD (  10.15  )
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
Subject: [PATCH master] Documentation: migration-2025.07.0: note env part change on 6ullevk
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The total is still 1M, but userspace that wants to modify the barebox
environment could end up overwriting parts of barebox instead, so
mention that for completeness.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/migration-guides/migration-2025.07.0.rst | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/migration-guides/migration-2025.07.0.rst b/Documentation/migration-guides/migration-2025.07.0.rst
index 1d2d5b0f4267..a89670a42f3d 100644
--- a/Documentation/migration-guides/migration-2025.07.0.rst
+++ b/Documentation/migration-guides/migration-2025.07.0.rst
@@ -22,3 +22,6 @@ Configuration options
   It's recommended that all boards switch to deep probe.
   If deep probe breaks your platform, please report to the mailing list
   and set ``barebox,disable-deep-probe`` in your device tree.
+
+* The hardcoded i.MX6ULL 14x14 EVK partition layout for barebox and its
+  environment on USDHC2 has changed. The split moved from 768/256 to 896/128 KiB.
-- 
2.39.5



