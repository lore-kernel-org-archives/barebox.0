Delivery-date: Mon, 31 Jan 2022 08:59:40 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nERbA-001TRB-5B
	for lore@lore.pengutronix.de; Mon, 31 Jan 2022 08:59:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nERb7-0005p8-TV
	for lore@pengutronix.de; Mon, 31 Jan 2022 08:59:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HDeC0oF32unC996CgP/KWrHKGSNsX7R2gqcNcUqp+CA=; b=A64c/zwyklWKFS
	9xLANXN2YGpabC+l7aa+6v/wmunePfaMqdq2cjIMAAnyTHwywdyWeC2FMzW6JCTTECOo+wKj3xiLa
	Enlhpy88808EXMl+9eEg3KodMlFSYTMFU0AcJ+KBqGNmdEqlBHIoa6lFlD0V/T27MyWe16giVBgJp
	e9iOawZ79s9CfzgI8r9ARXd2MH2NtnUr5PwtD1Hi5uNg4e6mTTT6ChlFrqcVeuUvssTiCExDhTJex
	vnyYHW2wHT+Qt7/dXqhS4ESVmrSFTevsJIZ3X4ipvgLsg1zok3/4F4f6YwpV5c5nyb43BAPudLUta
	d+Tq1stwuMJsLTi5wQyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nERZn-008MDc-2P; Mon, 31 Jan 2022 07:58:15 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nERZ8-008LyD-Sh
 for barebox@lists.infradead.org; Mon, 31 Jan 2022 07:57:38 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nERZ7-0005Du-EJ; Mon, 31 Jan 2022 08:57:33 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nERZ6-007rHQ-KO; Mon, 31 Jan 2022 08:57:32 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 31 Jan 2022 08:57:18 +0100
Message-Id: <20220131075725.1873026-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220131075725.1873026-1-a.fatoum@pengutronix.de>
References: <20220131075725.1873026-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220130_235735_061656_74EE3220 
X-CRM114-Status: UNSURE (   8.43  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 05/12] clk: clk-fixed: add clk_hw registration functions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Save users the hassle of opencoding by providing wrappers with the same
Linux semantics: names are duplicated, same arguments and struct clk_hw
is returned.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/clk/clk-fixed.c | 8 ++++++++
 include/linux/clk.h     | 4 ++++
 2 files changed, 12 insertions(+)

diff --git a/drivers/clk/clk-fixed.c b/drivers/clk/clk-fixed.c
index e813f31d76d9..9e5a07817bc0 100644
--- a/drivers/clk/clk-fixed.c
+++ b/drivers/clk/clk-fixed.c
@@ -63,6 +63,14 @@ struct clk *clk_register_fixed_rate(const char *name,
 	return &fix->hw.clk;
 }
 
+struct clk_hw *clk_hw_register_fixed_rate(struct device_d *dev,
+					  const char *name, const char *parent_name,
+					  unsigned long flags, unsigned long rate)
+{
+	return clk_to_clk_hw(clk_register_fixed_rate(xstrdup(name), parent_name,
+						     flags, rate));
+}
+
 /**
  * of_fixed_clk_setup() - Setup function for simple fixed rate clock
  */
diff --git a/include/linux/clk.h b/include/linux/clk.h
index 52aeeba878e0..03d46de25ac6 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -449,6 +449,10 @@ struct clk *clk_register_fixed_rate(const char *name,
 				    const char *parent_name, unsigned long flags,
 				    unsigned long fixed_rate);
 
+struct clk_hw *clk_hw_register_fixed_rate(struct device_d *dev, const char *name,
+				    const char *parent_name, unsigned long flags,
+				    unsigned long rate);
+
 static inline struct clk *clk_fixed(const char *name, int rate)
 {
 	return clk_register_fixed_rate(name, NULL, 0, rate);
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

