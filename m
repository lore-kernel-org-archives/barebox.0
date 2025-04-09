Delivery-date: Wed, 09 Apr 2025 16:13:53 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u2WBd-00ARQQ-1q
	for lore@lore.pengutronix.de;
	Wed, 09 Apr 2025 16:13:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u2WBd-0001eP-08
	for lore@pengutronix.de; Wed, 09 Apr 2025 16:13:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=uqPhWgAnXEwOgD4U5VW1asveWMjp6L+g9jWFUJBKMAo=; b=oScW80/m9NkDfvtNtwvOpmC8vJ
	u6o+VV7vb2kf48uuRxsecYm//OREmNAf96jTqO2aXXL8r6aa7CF0ZMV9GgrXkBmfWxH88b+id2RU0
	Jk5qflj3Rosne2MO0SPQe4pDCHBvfYmoWrSTTmtIYh+mELwMnTmxeEZiVVkSQ1Spr0lmHKR2TBouh
	ZoGN0oRqrHQUR0JyRe5BcgrZ+dsQ7Ypi4alQmBOEwxm5QZ27GWGKQTMVcwcb2ZNocOc4kfL9IWfHW
	JVsFRYBbsx+AOrnqEZNVtO0p55K2FSFMehj1C0VDf3SDNNhsopH2SADfkpkDSFOlPgX4ecOBwHr9Z
	hSKRS2uQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2WAy-00000007PEM-40s0;
	Wed, 09 Apr 2025 14:13:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2VKz-00000007Gxq-07Ad
	for barebox@lists.infradead.org;
	Wed, 09 Apr 2025 13:19:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u2VKx-0006kp-QB; Wed, 09 Apr 2025 15:19:27 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u2VKx-0046qS-1x;
	Wed, 09 Apr 2025 15:19:27 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u2VKx-008BGB-1e;
	Wed, 09 Apr 2025 15:19:27 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  9 Apr 2025 15:19:25 +0200
Message-Id: <20250409131926.1949805-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250409_061929_068512_B54C18CF 
X-CRM114-Status: UNSURE (   9.71  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] bootsource: retire bootsource_set_alias_name
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This function was never used in upstream board code since it was
introduced, so drop it.

This avoids it interfering with the addition of bootsource_of_node_set
in the follow-up commit.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/bootsource.c  | 14 --------------
 include/bootsource.h |  1 -
 2 files changed, 15 deletions(-)

diff --git a/common/bootsource.c b/common/bootsource.c
index e78237ff36b8..14e6565e3789 100644
--- a/common/bootsource.c
+++ b/common/bootsource.c
@@ -32,7 +32,6 @@ static const char *bootsource_str[BOOTSOURCE_MAX] = {
 
 static enum bootsource bootsource = BOOTSOURCE_UNKNOWN;
 static int bootsource_instance = BOOTSOURCE_INSTANCE_UNKNOWN;
-const char *bootsource_alias_name = NULL;
 
 const char *bootsource_to_string(enum bootsource src)
 {
@@ -84,14 +83,6 @@ const char *bootsource_get_alias_name(void)
 	const char *stem;
 	int ret;
 
-	/*
-	 * If alias name was overridden via
-	 * bootsource_set_alias_name() return that value without
-	 * asking any questions.
-	 */
-	if (bootsource_alias_name)
-		return bootsource_alias_name;
-
 	stem = bootsource_get_alias_stem(bootsource);
 	if (!stem)
 		return NULL;
@@ -140,11 +131,6 @@ struct cdev *bootsource_of_cdev_find(void)
 	return cdev;
 }
 
-void bootsource_set_alias_name(const char *name)
-{
-	bootsource_alias_name = name;
-}
-
 void bootsource_set_raw(enum bootsource src, int instance)
 {
 	if (src >= BOOTSOURCE_MAX)
diff --git a/include/bootsource.h b/include/bootsource.h
index c9c58daf096c..1b3df84f4ddb 100644
--- a/include/bootsource.h
+++ b/include/bootsource.h
@@ -28,7 +28,6 @@ enum bootsource {
 enum bootsource bootsource_get(void);
 enum bootsource bootsource_get_device(void);
 int bootsource_get_instance(void);
-void bootsource_set_alias_name(const char *name);
 const char *bootsource_get_alias_name(void);
 const char *bootsource_to_string(enum bootsource src);
 const char *bootsource_get_alias_stem(enum bootsource bs);
-- 
2.39.5



