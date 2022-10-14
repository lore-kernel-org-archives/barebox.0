Delivery-date: Fri, 14 Oct 2022 18:37:35 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ojNgm-008i6G-Ia
	for lore@lore.pengutronix.de; Fri, 14 Oct 2022 18:37:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ojNgk-0005RM-Hs
	for lore@pengutronix.de; Fri, 14 Oct 2022 18:37:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=m071Md7YHf8wZFKpH90SJXahfjP3d9KfzIWorBtEij0=; b=XuDirzaytdVjWjGGdrcKFieD7X
	VoFco1rDBBls/j61GSA6mPhlpSxlDq0T9U7kayZbkgDoexPwEO4QuZqrI/5J1aWRE1Px+KfweGJVi
	hXR9F2zAzJxunSsqDgf1fbGqrCGwkYeO1jfNlD91FheMeDSA4YKNFDxhCFZsQfLtKtFrHrKlu/s4/
	9idw863aTJ9e4AZ0Fzkq0xg/7bCmSlJ3nW0jn1eeZot/M339X8JNgTsmA16T7tXHmS7GouvzNaog5
	ljV3QU3V9iuLM8cj1WlmBalBdvaFwQplbzya9qWUTB4+Rr2FQtUnqNqZ/XrmykdsqznWB+/BC738O
	x/zi6z5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ojNfA-00FNYm-VM; Fri, 14 Oct 2022 16:35:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ojNev-00FNT2-RX
	for barebox@lists.infradead.org; Fri, 14 Oct 2022 16:35:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1ojNet-0004y4-2m
	for barebox@lists.infradead.org; Fri, 14 Oct 2022 18:35:39 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1ojNes-001WSm-D6
	for barebox@lists.infradead.org; Fri, 14 Oct 2022 18:35:38 +0200
Received: from mfe by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1ojNeq-00FzlS-Dh
	for barebox@lists.infradead.org; Fri, 14 Oct 2022 18:35:36 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 14 Oct 2022 18:35:28 +0200
Message-Id: <20221014163534.3812272-3-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221014163534.3812272-1-m.felsch@pengutronix.de>
References: <20221014163534.3812272-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221014_093541_925315_C436F6DF 
X-CRM114-Status: UNSURE (   9.69  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/8] state: select the STATE_DRV when STATE is selected
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

As written in the state.rst documentation, state will silently fail if
the STATE_DRV is not selected. So enabling state without the state
driver is useless. Fix this by selecting the STATE_DRV if STATE is
selected.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 common/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/common/Kconfig b/common/Kconfig
index fb2bf49683..4654a5cfaf 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1016,6 +1016,7 @@ config STATE
 	select ENVIRONMENT_VARIABLES
 	select OFTREE
 	select PARAMETER
+	select STATE_DRV
 	help
 	  barebox state is a generic framework for atomic power fail-safe
 	  variable storage and retrieval. It can be used to safely maintain
-- 
2.30.2



