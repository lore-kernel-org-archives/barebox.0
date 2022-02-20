Delivery-date: Sun, 20 Feb 2022 13:49:55 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nLlf1-004wwi-FT
	for lore@lore.pengutronix.de; Sun, 20 Feb 2022 13:49:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nLley-0001Up-Fy
	for lore@pengutronix.de; Sun, 20 Feb 2022 13:49:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+bhrMFMwIr/Ei4aOPLMslsYOBRkTei4VWWdrOcUXJ7U=; b=gv6/Nfz1VSzUSG
	epUnkAVvRBlHdl17PUzU+QX1KS7WX6ry4PGOj6FiIe4rMTTz+ps8JzQj7zFi8N3SQULHdyL/HUvX0
	EZ0bTvL7IcXYCHjNgAugXxPcJk+Lz5SSOS3iaSzSucuFjiTeyneuh+AmwW1R1pQxsPFVZdBZrGhlz
	iX8ekDO9h1LUdBjCMR3KRRBEJXDLwMxhrtRlpoogMUe/fvfQMW6qROVv2WaFvRiCJzEqDMWxDkVVF
	Vtr8UxKjvqGD0KqZa1B1NALWVzjkFZFfeoAJYyyP4NtT8b31T+1CbYIqUHG5KaQFncN5ErAXSXASj
	JSnBTHVVTi4ZIdT0EWNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nLldf-001IPq-TW; Sun, 20 Feb 2022 12:48:31 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nLld1-001I4G-Td
 for barebox@lists.infradead.org; Sun, 20 Feb 2022 12:47:53 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nLlcs-0000a9-Kh; Sun, 20 Feb 2022 13:47:42 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nLlcr-00CoQ3-D0; Sun, 20 Feb 2022 13:47:41 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Xogium <contact@xogium.me>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sun, 20 Feb 2022 13:47:28 +0100
Message-Id: <20220220124736.3052502-17-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220220124736.3052502-1-a.fatoum@pengutronix.de>
References: <20220220124736.3052502-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220220_044752_025495_5B755EA0 
X-CRM114-Status: UNSURE (   9.97  )
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
Subject: [PATCH 16/24] clk: accept const arguments in
 clk_to_clk_hw/clk_hw_to_clk
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Driver code may want to pass const pointers into these
functions. Change the implementation to support this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/clk.h | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/include/linux/clk.h b/include/linux/clk.h
index 9bee20465247..9396e01003e1 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -431,14 +431,14 @@ struct clk_hw {
 	const struct clk_init_data *init;
 };
 
-static inline struct clk *clk_hw_to_clk(struct clk_hw *hw)
+static inline struct clk *clk_hw_to_clk(const struct clk_hw *hw)
 {
-	return IS_ERR(hw) ? ERR_CAST(hw) : &hw->clk;
+	return IS_ERR(hw) ? ERR_CAST(hw) : (struct clk *)&hw->clk;
 }
 
-static inline struct clk_hw *clk_to_clk_hw(struct clk *clk)
+static inline struct clk_hw *clk_to_clk_hw(const struct clk *clk)
 {
-	return IS_ERR(clk) ? ERR_CAST(clk) : container_of(clk, struct clk_hw, clk);
+	return IS_ERR(clk) ? ERR_CAST(clk) : (struct clk_hw *)container_of(clk, struct clk_hw, clk);
 }
 
 struct clk_div_table {
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

