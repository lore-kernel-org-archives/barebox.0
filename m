Delivery-date: Thu, 23 Oct 2025 14:34:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBuW9-00AxJd-37
	for lore@lore.pengutronix.de;
	Thu, 23 Oct 2025 14:34:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBuW9-0002VA-Ct
	for lore@pengutronix.de; Thu, 23 Oct 2025 14:34:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=LL8xoh9ts7Vbccoc8AdBV79eMl4Z90MX9Xd4eT3qISE=; b=yPiIZA/p1m8wXmfbcqj7pK1lGm
	RwoKno4EMaN91okO4nP9z++ko9r9ywjFBRp3yBMpzB3WbVBiHByuw+IalLgLcJOtTCWquQuORGNQd
	UfuXy0uWyWCAourBriXU3XvqVlhFutCobdLLob9UsS5uUVJ3NJwLqr5BD/DwiOGQD65J9tM8WjUK8
	CKyaV7larYCzvUjUx3EADIu7n0WAXi4p0F1Eicmuf4Gf7kDyjCRNsgaWsxKy5QfK4sJuo9Plyq9uh
	oRb544vt+m1KaSl5HlobwwchQXtV8i/o2x8cmRN8O25VTHFevYI1sJMdMe5cn52xDNDHKOLgNxttV
	c6nMgXww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBuVX-00000006GE6-0Whx;
	Thu, 23 Oct 2025 12:33:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBuVU-00000006GDf-3BK2
	for barebox@lists.infradead.org;
	Thu, 23 Oct 2025 12:33:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vBuVT-0002Nq-05; Thu, 23 Oct 2025 14:33:27 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vBuVS-0053Sz-2b;
	Thu, 23 Oct 2025 14:33:26 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vBuVS-00000004jxM-2zTZ;
	Thu, 23 Oct 2025 14:33:26 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 23 Oct 2025 14:33:21 +0200
Message-ID: <20251023123325.1129675-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251023_053328_823083_9340A8FB 
X-CRM114-Status: GOOD (  10.77  )
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
Subject: [PATCH master] Documentation: boards: k3: fix wrong indentation in ReST
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Building the docs warns about the lack of indentation.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/boards/ti-k3-am62lx.rst | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/Documentation/boards/ti-k3-am62lx.rst b/Documentation/boards/ti-k3-am62lx.rst
index 1ca5f3403bac..f0a547016664 100644
--- a/Documentation/boards/ti-k3-am62lx.rst
+++ b/Documentation/boards/ti-k3-am62lx.rst
@@ -12,12 +12,13 @@ power domains and DRAM. When this is done the BL1 branches back to the ROM which
 the second stage which contains the TF-A BL31, barebox proper and optionally OP-TEE.
 
 .. note::
-The AM62lx support currently depends on a modified downstream version of the TF-A. See
-https://lore.kernel.org/20250617090142.3000882-1-s.hauer@pengutronix.de for a patch
-series to be applied on the Downstream TF-A. Be aware that barebox might need further
-changes to be compatible with future upstream TF-A support. Specifically the SCMI clock
-IDs used in the assigned-clock-parents properties might not match the future upstream
-solution.
+
+  The AM62lx support currently depends on a modified downstream version of the TF-A. See
+  https://lore.kernel.org/20250617090142.3000882-1-s.hauer@pengutronix.de for a patch
+  series to be applied on the Downstream TF-A. Be aware that barebox might need further
+  changes to be compatible with future upstream TF-A support. Specifically the SCMI clock
+  IDs used in the assigned-clock-parents properties might not match the future upstream
+  solution.
 
 Building TF-A
 -------------
-- 
2.47.3



