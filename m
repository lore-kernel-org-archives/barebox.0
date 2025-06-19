Delivery-date: Thu, 19 Jun 2025 10:46:56 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uSAvA-008tA7-18
	for lore@lore.pengutronix.de;
	Thu, 19 Jun 2025 10:46:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uSAv9-0004h0-Oo
	for lore@pengutronix.de; Thu, 19 Jun 2025 10:46:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GBkMxOe5odJCOTloUEiDGDct4d1zthtDpX7QLcrIrN4=; b=dW7Q3ekpFFkeGx23hWtirCz/PO
	am60jnlRANQqK73l2Y0couBUiERZxLDCOBE0+DPrjl8AMqFoAS1lcnEGYz4zW7vHe0Pihn9o42U2h
	L73gKk6o3ydQXgEPEpnKen6JnuOp47y0LnCaku+l7CL7DsKfYR1rZPv3mcuuviSJf6o+zQHAhXBsr
	8DkCHBv2rVSyEpMmqWHZS5rgmKLZX7cj1dCtv8uW8kfW79OOIU5pk4cd5eFOWOBQ3xFfgO/wFKfde
	3Vspr9k8Liz3/0w/LQRmt78ITWthghXJEivtmB0WsTcG/Z44o5/GsPEn1Ito1eUYd4Ls91Adi9C0C
	AnlZnAMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSAuZ-0000000CU1u-12nd;
	Thu, 19 Jun 2025 08:46:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSAap-0000000CQdL-43b8
	for barebox@lists.infradead.org;
	Thu, 19 Jun 2025 08:25:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <l.schmidt@pengutronix.de>)
	id 1uSAag-0001x0-Ql; Thu, 19 Jun 2025 10:25:46 +0200
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <l.schmidt@pengutronix.de>)
	id 1uSAag-004Gty-1w;
	Thu, 19 Jun 2025 10:25:46 +0200
Received: from localhost ([::1] helo=dude06.red.stw.pengutronix.de)
	by dude06.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <l.schmidt@pengutronix.de>)
	id 1uSAah-003bEH-0d;
	Thu, 19 Jun 2025 10:25:46 +0200
From: Lars Schmidt <l.schmidt@pengutronix.de>
Date: Thu, 19 Jun 2025 10:25:39 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250619-bootchooser-lock-v3-4-fc4ad92c3866@pengutronix.de>
References: <20250619-bootchooser-lock-v3-0-fc4ad92c3866@pengutronix.de>
In-Reply-To: <20250619-bootchooser-lock-v3-0-fc4ad92c3866@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Lars Schmidt <l.schmidt@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250619_012556_017415_384515FE 
X-CRM114-Status: UNSURE (   9.84  )
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
X-Spam-Status: No, score=-6.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 4/4] Documentation: migration-2025.08.0: add information
 about attempts_locked
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Document the newly added feature.

Signed-off-by: Lars Schmidt <l.schmidt@pengutronix.de>
---
 Documentation/migration-guides/migration-2025.08.0.rst | 5 +++++
 Documentation/user/bootchooser.rst                     | 3 +++
 2 files changed, 8 insertions(+)

diff --git a/Documentation/migration-guides/migration-2025.08.0.rst b/Documentation/migration-guides/migration-2025.08.0.rst
index d13d5c770d5e7688e0299184b0b8b938db160fca..da60132e7d8c784b08a43c8032ee7e4dc7cb7991 100644
--- a/Documentation/migration-guides/migration-2025.08.0.rst
+++ b/Documentation/migration-guides/migration-2025.08.0.rst
@@ -1,3 +1,8 @@
 Release v2025.08.0
 ==================
 
+Bootchooser
+-----------
+
+Bootchooser now interprets a top-level ``attempts_locked`` variable.
+For more information, see :ref:`attempts lock feature <bootchooser,attempts_lock>`
diff --git a/Documentation/user/bootchooser.rst b/Documentation/user/bootchooser.rst
index 1d7ece6c4b1255b41d359d3303daaf78bacfa17a..c094dca15a0e415d9076bf210ffdbece05ade62e 100644
--- a/Documentation/user/bootchooser.rst
+++ b/Documentation/user/bootchooser.rst
@@ -77,6 +77,9 @@ no remaining attempts left.
 To prevent ending up in an unbootable system after a number of failed boot
 attempts, there is also a built-in mechanism to reset the counters to their defaults,
 controlled by the ``global.bootchooser.reset_attempts`` variable.
+
+.. _bootchooser,attempts_lock:
+
 Alternatively, counting down the remaining attempts can be disabled by
 locking bootchooser boot attempts.
 This is done by defining a (32-bit) ``attempts_locked`` variable in the

-- 
2.39.5



