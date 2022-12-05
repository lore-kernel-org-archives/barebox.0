Delivery-date: Mon, 05 Dec 2022 14:33:57 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p2BbZ-00Bdcs-0Y
	for lore@lore.pengutronix.de; Mon, 05 Dec 2022 14:33:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p2BbY-0004rv-9z
	for lore@pengutronix.de; Mon, 05 Dec 2022 14:33:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=akW1k09bULhgjPhDLb28L5/dp98qIi+aPzE6Cyf1K44=; b=g7WwwbZrOXWe0b6g8NrMrqF2a8
	XCb79dS/dnD1VthXXdUEZp9QiOdcdlpDp+w/RUqcK4JzVS8ozpN5mtHOGxfx6o0NPfCyewkivJsBT
	CrbF1JrfxF6CItaV2CjozZqrwu6wTiSGy8EbZihJkNVzmneyIG9MJ3zSYzlJIfLPQyJygkPUfhuam
	/fPAVfUFMkk2a4yU5dCmdLWXYHAK4UAJd+g+dGobYnxrZTM+lrT7mXkXnsr0TBlu2yHMJJceZaeNI
	78QggBzef9rVgS3Xd25MF5QK+MqaSSQah3B939O3DaiLmDW5jAhv9sTvg+smURJ2paPXZ1FIT/dSY
	GzQvanaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2BaG-003Rab-PY; Mon, 05 Dec 2022 13:32:36 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2BaB-003RYU-QW
	for barebox@lists.infradead.org; Mon, 05 Dec 2022 13:32:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1p2Ba9-0004jn-ND; Mon, 05 Dec 2022 14:32:29 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1p2Ba8-002U5f-AN; Mon, 05 Dec 2022 14:32:29 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1p2Ba8-00Cdd4-51; Mon, 05 Dec 2022 14:32:28 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  5 Dec 2022 14:32:26 +0100
Message-Id: <20221205133227.3010785-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221205_053231_887394_08C18E66 
X-CRM114-Status: GOOD (  10.64  )
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
Subject: [PATCH 1/2] of: have of_property_match_string accept pointer to const device_node
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This function need not have mutable access to the device node, so make
the parameter const to allow calling it from more places without
sacrificing cost safety.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/of/base.c | 2 +-
 include/of.h      | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 2eee1279a98d..221050a19715 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -1049,7 +1049,7 @@ EXPORT_SYMBOL_GPL(of_property_read_string);
  * This function searches a string list property and returns the index
  * of a specific string value.
  */
-int of_property_match_string(struct device_node *np, const char *propname,
+int of_property_match_string(const struct device_node *np, const char *propname,
 			     const char *string)
 {
 	struct property *prop = of_find_property(np, propname, NULL);
diff --git a/include/of.h b/include/of.h
index 052d5fcad84c..c19a17584e47 100644
--- a/include/of.h
+++ b/include/of.h
@@ -229,7 +229,7 @@ extern int of_property_read_variable_u64_array(const struct device_node *np,
 extern int of_property_read_string(struct device_node *np,
 				   const char *propname,
 				   const char **out_string);
-extern int of_property_match_string(struct device_node *np,
+extern int of_property_match_string(const struct device_node *np,
 				    const char *propname,
 				    const char *string);
 extern int of_property_read_string_helper(const struct device_node *np,
@@ -616,7 +616,7 @@ static inline int of_property_read_string(struct device_node *np,
 	return -ENOSYS;
 }
 
-static inline int of_property_match_string(struct device_node *np,
+static inline int of_property_match_string(const struct device_node *np,
 				const char *propname, const char *string)
 {
 	return -ENOSYS;
-- 
2.30.2



