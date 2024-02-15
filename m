Delivery-date: Thu, 15 Feb 2024 08:48:54 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1raWUI-007AWX-12
	for lore@lore.pengutronix.de;
	Thu, 15 Feb 2024 08:48:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1raWUG-0001Rs-6I
	for lore@pengutronix.de; Thu, 15 Feb 2024 08:48:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8LGu858TkoSrqZP5DUiN8t+jq9MgGqUnyNsESdD9C+A=; b=JK+mhA9K9nNIRNjJWmX02EFGL+
	rxcdUbJDaKM0VOK5Phs8I7QZ8ged7Sdf9GZKa+mrm7PhZUTM2w8vOtOkJQcZY+75o1kbRE+ygiUCB
	CtvQF06tNa8mG3TBtCcAP0sdqNwbCxw0IX3JVYjRD1ko7KJprdm/bAz7LYAET7xR2f76wVEtBb5rE
	qt/5Wag9+9nuRVRVoJAlkHceHgw08ZZRdRfYTeQm3CR4x6OJArgLd47PbPr7MQF/BAX6P/5apzdw1
	kZylSVIXU96LRTzODfOUMV7tLMRj+V7Lbhc40r9TnHezYhS87ZWj4wJNfj+lZ6HIQ3epvubrJGp5U
	wpqYKHdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raWTZ-0000000FGBG-1Kwc;
	Thu, 15 Feb 2024 07:48:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raWTU-0000000FG8N-1NBG
	for barebox@lists.infradead.org;
	Thu, 15 Feb 2024 07:48:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1raWTP-00017m-Py; Thu, 15 Feb 2024 08:47:59 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1raWTP-000qCJ-D4; Thu, 15 Feb 2024 08:47:59 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1raWTP-0041pl-0x;
	Thu, 15 Feb 2024 08:47:59 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 15 Feb 2024 08:47:56 +0100
Message-Id: <20240215074757.960200-7-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240215074757.960200-1-s.hauer@pengutronix.de>
References: <20240215074757.960200-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240214_234804_458962_27A65D02 
X-CRM114-Status: GOOD (  10.29  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 6/7] fastboot: add function to free a list of fastboot variables
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

With followup patches we'll maintain two lists of fastboot variables. As
a preparation create a function which frees fastboot variables on a
list.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/fastboot.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/common/fastboot.c b/common/fastboot.c
index eaf99b08f4..f41c02a576 100644
--- a/common/fastboot.c
+++ b/common/fastboot.c
@@ -195,16 +195,21 @@ int fastboot_generic_init(struct fastboot *fb, bool export_bbu)
 	return 0;
 }
 
-void fastboot_generic_free(struct fastboot *fb)
+static void fastboot_free_variables(struct list_head *list)
 {
 	struct fb_variable *var, *tmp;
 
-	list_for_each_entry_safe(var, tmp, &fb->variables, list) {
+	list_for_each_entry_safe(var, tmp, list, list) {
 		free(var->name);
 		free(var->value);
 		list_del(&var->list);
 		free(var);
 	}
+}
+
+void fastboot_generic_free(struct fastboot *fb)
+{
+	fastboot_free_variables(&fb->variables);
 
 	free(fb->tempname);
 
-- 
2.39.2



