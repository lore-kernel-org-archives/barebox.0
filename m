Delivery-date: Thu, 12 Jun 2025 12:29:55 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uPfBz-006Trr-1J
	for lore@lore.pengutronix.de;
	Thu, 12 Jun 2025 12:29:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uPfBy-0000Nc-SQ
	for lore@pengutronix.de; Thu, 12 Jun 2025 12:29:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=LB41mm/RI3Rl+FlypOqtkEQbRqi+gZcROAK7ojKEMuE=; b=reR8QMdWhOjxaeq4UbuJ+ruMsr
	RFciSTIvAhSK7YiLtqLsJPQGMO5t05SwZntajt94krEUg2+gpyhh2merutfOrrh7e2djx3OtTYOCs
	Khu2MxNAZsFvk9IOuJdk+GYtGc0EynSh0IN/iO+bYpHhQdBOdcLdBH91AWrppnDRov2Peo8y3St0x
	SRD8MRmHqc0PZepDRBh2TaN6xGCUMMbkvZokC5bf43t5XEbNnFRLtD2vENA98/MgDDRwcorJ32CHX
	9K6NX0qmj9pT2VRg3TFDX6yApTpNepap5coA5VuklXrgCw1OMl8r6CudptRaNwtfv7OCv+xeQic9J
	7j9Etoiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPfBa-0000000Cz2g-1fzt;
	Thu, 12 Jun 2025 10:29:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPe2f-0000000CnBD-2J7u
	for barebox@lists.infradead.org;
	Thu, 12 Jun 2025 09:16:14 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uPe2e-0001kh-2c; Thu, 12 Jun 2025 11:16:12 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Thu, 12 Jun 2025 11:16:11 +0200
Message-Id: <20250612091611.11281-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250612_021613_585912_E3AC75DF 
X-CRM114-Status: UNSURE (   6.91  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] Documentation: migration-2025.05.0: note compressed kernel regression
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The breakage is annoying enough that it deserves being pointed out
explicitly.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
There is nothing I want to add for migration2-2025.06.0.
---
 .../migration-guides/migration-2025.05.0.rst          | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/Documentation/migration-guides/migration-2025.05.0.rst b/Documentation/migration-guides/migration-2025.05.0.rst
index 82b9fcb8e53f..f22c9f7c02c5 100644
--- a/Documentation/migration-guides/migration-2025.05.0.rst
+++ b/Documentation/migration-guides/migration-2025.05.0.rst
@@ -92,6 +92,11 @@ Build system
 Bisectability
 -------------
 
-Many users of ``read*_poll_is_timeout`` are broken between
-``554bbc479c09..dea0ad02bbd6``, which can falsify git bisect
-results.
+Following regressions had a wider impact and could falsify
+falsify git bisect results:
+
+* Many users of ``read*_poll_is_timeout`` are broken between
+  ``554bbc479c09..dea0ad02bbd6``.
+
+* Handling of compressed kernel images on ARM64/RISC-V was broken between
+  ``a1248198fa3a..95aeb8d47d10``.
-- 
2.39.5



