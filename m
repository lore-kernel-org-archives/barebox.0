Delivery-date: Wed, 15 Apr 2026 10:14:27 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCvOF-00CLqO-1q
	for lore@lore.pengutronix.de;
	Wed, 15 Apr 2026 10:14:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCvOF-0003H6-1z
	for lore@pengutronix.de; Wed, 15 Apr 2026 10:14:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=yBUvULYTPeXXWIfQR32MfPwXzaoAW+wyC1HjeU2KgxU=; b=Hrcm+A78SKXgrw0IOnPEHseCmD
	bVX9WZhG19A95NnsYZ/kPf4LaRkGMYqNEY77WUk+OITd3MWlVbiE0+6fzJXdQE2jLa8exGXEhYDC/
	tGWwcKBUt3L4+wQIbHibSAsv3fWqZBwX/9IqxX8sRfuJbBVftY4MCT0trsC+jjJ5CCIXA3NkiusLy
	fD5CtQPPVCeeHTbvd+ZGiXqvroriYQ0QYh0LMEy+oIPfXquAl5JCks/4vR9CO03udJpa5tjG5rkSq
	N5fQLCftOuRHt8sDWLrgiA/G0Q2LhrBts7mVY3CL6VgjOa1EIHpgdDanfL/sSnT6e7NI1rwmfa9Da
	x5xbZ3wA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCvNs-00000000mpK-15NG;
	Wed, 15 Apr 2026 08:14:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCvNp-00000000moN-1p8R
	for barebox@lists.infradead.org;
	Wed, 15 Apr 2026 08:14:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCvNm-000357-Jv; Wed, 15 Apr 2026 10:13:58 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCvNm-005Ts9-1O;
	Wed, 15 Apr 2026 10:13:58 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCvNm-00000001tMW-1Gzs;
	Wed, 15 Apr 2026 10:13:58 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 15 Apr 2026 10:13:57 +0200
Message-ID: <20260415081357.450925-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260415_011401_477153_C739671B 
X-CRM114-Status: UNSURE (   8.75  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] mci: add missing break
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

65077d2078 adds a new case to a switch/case which lacks a break, so it
falls through and EXT_CSD_REV = 0 is detected as MMC_VERSION_4_1 instead
of MMC_VERSION_4. Add the missing break.

Fixes: 65077d2078 ("mci: treat unknown MMC version as greater than known versions")
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/mci-core.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index d3d7bd5e07..babb180ab1 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -1160,6 +1160,7 @@ static void mci_correct_version_from_ext_csd(struct mci *mci)
 		switch (mci->ext_csd[EXT_CSD_REV]) {
 		case 0:
 			mci->version = MMC_VERSION_4;
+			break;
 		case 1:
 			mci->version = MMC_VERSION_4_1;
 			break;
-- 
2.47.3



