Delivery-date: Fri, 14 Jan 2022 08:01:31 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n8GaY-001o1H-S4
	for lore@lore.pengutronix.de; Fri, 14 Jan 2022 08:01:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n8GaX-00070n-Ld
	for lore@pengutronix.de; Fri, 14 Jan 2022 08:01:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bw5WBL2FjMSThcIR+r12P+1lm6HyIqvrnOB6FTHWvJc=; b=oOjyuOY6ywRPDX
	s43gy1KUsPNCPLX4mLCDbRmHnuPd77XHhXaCh9TOG7kx98xjHzhAjn/R022UF7uFVoxyYkOtq/Unj
	7QIL+HNlafYujcoBPC1L+sXEaPDWYsTNPB3+SiVtNQpB1dnQCDM8hlH4JgAM3PdMqYJTPOOCs1SNu
	45w09fLN0TGcyBM5zik+diDE2ivXBep8jyZbtbyJ29cvO89nRPyifIDnndoKlBdgF/E6sl0/g77On
	Vyd3ZCRb+BOe698tuzYJpsExaurovCKAJTgzp7O6qXw+vAifOyzTwYTAzDrKFKTgRNB2hys+IMQQ5
	0yA8STqAoEpES5ejD+Gw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n8GZF-0080ZZ-Ne; Fri, 14 Jan 2022 07:00:09 +0000
Received: from relay7-d.mail.gandi.net ([2001:4b98:dc4:8::227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n8GZA-0080YP-S8
 for barebox@lists.infradead.org; Fri, 14 Jan 2022 07:00:06 +0000
Received: (Authenticated sender: ahmad@a3f.at)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 0995A20011;
 Fri, 14 Jan 2022 07:00:01 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Fri, 14 Jan 2022 07:59:53 +0100
Message-Id: <20220114065953.698483-2-ahmad@a3f.at>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20220114065953.698483-1-ahmad@a3f.at>
References: <20220114065953.698483-1-ahmad@a3f.at>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220113_230005_089869_02D8E36D 
X-CRM114-Status: UNSURE (   8.62  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] clk: propagate error pointers in clk_hw_to_clk and
 clk_to_clk_hw
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This will make porting helpers easier, because it's harder to miss
error checking.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 include/linux/clk.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/include/linux/clk.h b/include/linux/clk.h
index 481c28871258..ffc1ac8489b0 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -432,12 +432,12 @@ struct clk_hw {
 
 static inline struct clk *clk_hw_to_clk(struct clk_hw *hw)
 {
-	return &hw->clk;
+	return IS_ERR(hw) ? ERR_CAST(hw) : &hw->clk;
 }
 
 static inline struct clk_hw *clk_to_clk_hw(struct clk *clk)
 {
-	return container_of(clk, struct clk_hw, clk);
+	return IS_ERR(clk) ? ERR_CAST(clk) : container_of(clk, struct clk_hw, clk);
 }
 
 struct clk_div_table {
-- 
2.33.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

