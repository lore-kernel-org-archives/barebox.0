Delivery-date: Tue, 18 Apr 2023 11:31:54 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pohgn-007X0q-8d
	for lore@lore.pengutronix.de; Tue, 18 Apr 2023 11:31:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pohgn-0006x5-03
	for lore@pengutronix.de; Tue, 18 Apr 2023 11:31:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=AWnLn4IIpwP+R0ahtYXEbWLZtOFHj4nBam6EuFAWFXE=; b=Djw1U3glUPXbYnS1CcdZooOWKa
	JjE9pnuRqG82WBguKq17EfmRCljWCO0ba/cSaB/k8vI+689zPhxU+BefBzwr4u/ILj/ZBl2VpLzxq
	uhhuGJxrtndCrmUavT6jB6KBFHCMAzsLm7aSdyjf7x1W8jxzxnlMVGFxTaZhtsEhN5372IaDTnS61
	fCqaj3Eb2BTtte/76gsbVvfbBRLL2iowvYI+bADt0XtLwpnz8I5SmONaF282cMFmy9SRafFRoBLvV
	hfPgDMoGOCbjmRBe4MsPwBIS+sdS+AemgfXqwXBdAlQYiuwR3G5yhwdrNmrnwS+EcdseiVZfiNmh/
	wHqNZsyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pohfj-001Tgi-1o;
	Tue, 18 Apr 2023 09:30:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pohfg-001TeX-0J
	for barebox@lists.infradead.org;
	Tue, 18 Apr 2023 09:30:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pohfe-0006bn-O2; Tue, 18 Apr 2023 11:30:42 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pohfe-00C4g4-1r; Tue, 18 Apr 2023 11:30:42 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pohfd-007pUn-3F; Tue, 18 Apr 2023 11:30:41 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 18 Apr 2023 11:30:36 +0200
Message-Id: <20230418093040.1865982-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230418_023044_133354_4D6CB959 
X-CRM114-Status: UNSURE (   8.44  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 1/5] mci: core: drop unused DDR/SDR constants
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

These macros are unused and will be replaced by their Linux counterparts
in a follow up patch, so drop them.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - new patch
---
 include/mci.h | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/include/mci.h b/include/mci.h
index d356f071f7f2..c38567303241 100644
--- a/include/mci.h
+++ b/include/mci.h
@@ -420,12 +420,6 @@ struct mci_ios {
 #define MMC_BUS_WIDTH_8		3
 
 	enum mci_timing	timing;			/* timing specification used */
-
-#define MMC_SDR_MODE		0
-#define MMC_1_2V_DDR_MODE	1
-#define MMC_1_8V_DDR_MODE	2
-#define MMC_1_2V_SDR_MODE	3
-#define MMC_1_8V_SDR_MODE	4
 };
 
 struct mci;
-- 
2.39.2



