Delivery-date: Mon, 12 Jun 2023 15:03:52 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8hD7-003qfC-Sb
	for lore@lore.pengutronix.de; Mon, 12 Jun 2023 15:03:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8hD4-0000qc-Ez
	for lore@pengutronix.de; Mon, 12 Jun 2023 15:03:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sVGI5pzL1uquZEtTa3h8+Q7u+8cSFM4hfC4bMqAmkto=; b=1T2GibMuUggwcyvej39EllRFxb
	qg+gn1qB8ttdUDJ+EbfKjW9ZLRMV8p1S0KkMt/8VU3GDsgCEDd2CQj1iPiyfCrdtZ1UbXM3mlicGh
	rE9imn62P+hg/e3NS3VsluX4Jpznni2DGdBX2ahhrUVcgpgoLMGxzmbUlNqoDLeC2PYRXRyt5snoP
	l+i8QZbjyFhfeCz+GWWpMasK6hcDVZaJUrv3GZKzNsXQNeHUFXbqQjbm/Q8eRj/JR3B9Vwb1ktJKM
	QmuWXYK/KAMbCeHZZDs6kuwunip3cXy3mZSbkMXvulPYamPdTGwXXlqIK/CFaZ3ZMurDUm3Zs1jac
	zo9kEM7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8hCQ-0047Ws-2u;
	Mon, 12 Jun 2023 13:03:10 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8hC9-0047Ew-0i
	for barebox@lists.infradead.org;
	Mon, 12 Jun 2023 13:02:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q8hC8-0008N5-0I; Mon, 12 Jun 2023 15:02:52 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q8hC7-006tWM-CC; Mon, 12 Jun 2023 15:02:51 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q8hC3-004aJB-4Q; Mon, 12 Jun 2023 15:02:47 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 12 Jun 2023 15:02:23 +0200
Message-Id: <20230612130239.1087599-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230612130239.1087599-1-a.fatoum@pengutronix.de>
References: <20230612130239.1087599-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_060253_280823_B1357C76 
X-CRM114-Status: UNSURE (   9.53  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 02/19] clk: define clk_get_parent stub
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

clk_get_parent is used in stm32_ltdc driver, which can be compiled on
!HAVE_CLK platforms, because it can be selected when COMPILE_TEST=y.

This leads to a build error, because clk_get_parent wasn't defined in
that case. Fix this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/clk.h | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/include/linux/clk.h b/include/linux/clk.h
index 60534ddb732c..8509d5ece9d5 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -179,6 +179,11 @@ static inline struct clk *clk_get(struct device *dev, const char *id)
 	return NULL;
 }
 
+static inline struct clk *clk_get_parent(struct clk *clk)
+{
+	return NULL;
+}
+
 static inline int clk_enable(struct clk *clk)
 {
 	return 0;
@@ -744,6 +749,7 @@ static inline unsigned int of_clk_get_parent_count(struct device_node *np)
 {
 	return 0;
 }
+
 static inline int of_clk_init(void)
 {
 	return 0;
-- 
2.39.2



