Delivery-date: Wed, 16 Jun 2021 08:34:46 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ltP8Q-0000Eb-Ii
	for lore@lore.pengutronix.de; Wed, 16 Jun 2021 08:34:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ltP8P-0000DK-CD
	for lore@pengutronix.de; Wed, 16 Jun 2021 08:34:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=whjptQAXy1ToXqb5r0E3HCrMFQqa4Evjfliu5r93eQM=; b=HfUvT2+aQbDPCp
	Gp5gPVUE7mMckh/2Xl0VgHmJuCsUiqWLKxLdHt9yYe1XQcGWzP+lvvpI/wvjUAeT3bg6TItNdg71N
	lK90x3Obu2xDmM2K1x5xikzw1X+HmxXOefntNcn8T6VsqdSavnUGk7PY54Nk+D41IIH1LhWD9hpl9
	AmG09Uk90Ypzx2o4iQ2MxfLrZP59emzfUrsJe+5naEpVPouqSnyRcQI7o4GjUqUJps0Er9Fso3BPf
	Nmy0G3Mfb9XNoXDHWWEQ1iKZz43yicXY5k2n0cNfSvzUCYg9mshOYZdNH8GwmgDjRC293eXD67gRR
	Xq4QwYcPu26T1lT2dZwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ltP76-0055vE-Fm; Wed, 16 Jun 2021 06:33:24 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ltP6m-0055o1-6v
 for barebox@lists.infradead.org; Wed, 16 Jun 2021 06:33:07 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <str@pengutronix.de>) id 1ltP6i-0008IY-2S
 for barebox@lists.infradead.org; Wed, 16 Jun 2021 08:33:00 +0200
Received: from str by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <str@pengutronix.de>) id 1ltP6h-00049Y-IG
 for barebox@lists.infradead.org; Wed, 16 Jun 2021 08:32:59 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 16 Jun 2021 08:32:37 +0200
Message-Id: <20210616063246.14900-1-s.trumtrar@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210615_233304_340167_685E07C3 
X-CRM114-Status: UNSURE (   9.01  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v4 01/10] reset: add of_reset_control_get to header
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 drivers/reset/core.c  | 2 +-
 include/linux/reset.h | 2 ++
 2 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/reset/core.c b/drivers/reset/core.c
index 26a54f21dff0..1c9eeaec5491 100644
--- a/drivers/reset/core.c
+++ b/drivers/reset/core.c
@@ -147,7 +147,7 @@ EXPORT_SYMBOL_GPL(reset_control_deassert);
  *
  * Use of id names is optional.
  */
-static struct reset_control *of_reset_control_get(struct device_node *node,
+struct reset_control *of_reset_control_get(struct device_node *node,
 						  const char *id)
 {
 	struct reset_control *rstc;
diff --git a/include/linux/reset.h b/include/linux/reset.h
index a166fe1cfe04..726cb5c2057d 100644
--- a/include/linux/reset.h
+++ b/include/linux/reset.h
@@ -11,6 +11,8 @@ int reset_control_assert(struct reset_control *rstc);
 int reset_control_deassert(struct reset_control *rstc);
 
 struct reset_control *reset_control_get(struct device_d *dev, const char *id);
+struct reset_control *of_reset_control_get(struct device_node *node,
+					   const char *id);
 void reset_control_put(struct reset_control *rstc);
 
 int __must_check device_reset(struct device_d *dev);
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

