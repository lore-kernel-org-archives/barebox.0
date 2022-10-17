Delivery-date: Mon, 17 Oct 2022 15:52:11 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1okQXM-00BfAf-Gg
	for lore@lore.pengutronix.de; Mon, 17 Oct 2022 15:52:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1okQXK-0001Y5-BP
	for lore@pengutronix.de; Mon, 17 Oct 2022 15:52:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=N3hUSd5Xo88ZNDsoBRduFgIFilNm3zCkgdOaXxpgAWk=; b=b6hKV+BgpjdybAO3UyZlPSNKR7
	ULzqrZk/WhAXJL+hgA1hfIhj3Aa5pVExut7lDKBLH3tGKKl7xWrBWz0DkTIXIWxFfNulnF+EF+VZ4
	zlmft88QVjg+Zg2OxxzmbtvdkZiJecaLfPt9dt2sLszWse0QNbTQMZc4KOsbs1Uuu2TSG4m8xrdLa
	Leq5hJBt2/eEUQ3FlSemEN4mNPuO3Hk0YfEGy9ltAUnhRYE/q1/rRvTpRPsZ+we9Osz4FwH/2j1kL
	aJmeP0kGwMktjjv2at3Km4U2E1Up9kxmPfGCmjpAA2dm1zQ4lFzsLjcyUFPqIviaZJ5+EH87jcbTy
	zM1uaqJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okQUs-00CJhZ-OU; Mon, 17 Oct 2022 13:49:38 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okQUn-00CJXz-N1
	for barebox@lists.infradead.org; Mon, 17 Oct 2022 13:49:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1okQUm-00011t-8U; Mon, 17 Oct 2022 15:49:32 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1okQUl-0025XZ-1a; Mon, 17 Oct 2022 15:49:31 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1okQUk-00373W-Bx; Mon, 17 Oct 2022 15:49:30 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Hans Christian Lonstad <hcl@datarespons.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 17 Oct 2022 15:49:27 +0200
Message-Id: <20221017134929.622022-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221017134929.622022-1-a.fatoum@pengutronix.de>
References: <20221017134929.622022-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221017_064933_796607_F006792A 
X-CRM114-Status: UNSURE (   9.67  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [RFT PATCH master 1/3] dt-bindings: features: imx8m: fix typo in constant
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

All constants should have unique values. Fix a typo that violated this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/dt-bindings/features/imx8m.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/dt-bindings/features/imx8m.h b/include/dt-bindings/features/imx8m.h
index 4dd85aa5c8fb..8de69ba28b26 100644
--- a/include/dt-bindings/features/imx8m.h
+++ b/include/dt-bindings/features/imx8m.h
@@ -6,7 +6,7 @@
 
 #define IMX8M_FEAT_CPU_DUAL	1
 #define IMX8M_FEAT_CPU_QUAD	2
-#define IMX8M_FEAT_VPU		4
+#define IMX8M_FEAT_VPU		3
 #define IMX8M_FEAT_GPU		4
 
 #define IMX8M_FEAT_END		5
-- 
2.30.2



