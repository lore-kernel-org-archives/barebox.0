Delivery-date: Mon, 11 Aug 2025 14:31:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulRg5-009KrS-1e
	for lore@lore.pengutronix.de;
	Mon, 11 Aug 2025 14:31:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulRfg-0006nk-Fm
	for lore@pengutronix.de; Mon, 11 Aug 2025 14:31:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8kyy1ZZTgCZ7KCDAurzKCx/zYd460hxmx8Z/NkIhJIE=; b=SyG54gVMUFpAbio0PMCm/p5VCf
	WgHG5JRVH/Q2UiRdlU1EZr5/gA/EczNhWzZasFG8O+UT11podN5s3OY9xsX8c+a201LFCdxLZTin2
	Os5yNzSFBrn749Je4ms3avLDSmceLIkr6yPNtqMJitHTWKtc1OuRTG5LloZzxG43AO7QOSCYCUMAE
	pmmW1rw1U8GV0q/oTvv5iAdbDqgn6V2hyDT2OLLYySG1Epbr8GEdU+zF56QD+R7dwNlHcEZy1Nuhb
	RcG50LeFriVtCqsrSYYJFbAEag+FyLRSH+LObt7JDaqvUAyqpX4G5So/Ave1MTFr54h5UCJXCzlyl
	Bf5/h7OA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulReK-00000007eiU-4Brd;
	Mon, 11 Aug 2025 12:29:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([185.203.201.7])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulRdk-00000007ddP-0GvF
	for barebox@lists.infradead.org;
	Mon, 11 Aug 2025 12:28:41 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1ulRdi-0004WP-H3; Mon, 11 Aug 2025 14:28:34 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 11 Aug 2025 14:28:14 +0200
Message-Id: <20250811122824.1667791-35-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250811122824.1667791-1-a.fatoum@barebox.org>
References: <20250811122824.1667791-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250811_052836_141618_2DD5B9ED 
X-CRM114-Status: GOOD (  10.27  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 34/44] driver: featctrl: export of_feature_controllers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This list will be used by the upcoming bfetch command to
determine whether the running barebox has a feature controller
driver bound.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/base/featctrl.c | 2 +-
 include/featctrl.h      | 2 ++
 2 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/base/featctrl.c b/drivers/base/featctrl.c
index 153720e5ee6b..8ae432f1d6da 100644
--- a/drivers/base/featctrl.c
+++ b/drivers/base/featctrl.c
@@ -11,7 +11,7 @@
 #include <featctrl.h>
 
 /* List of registered feature controllers */
-static LIST_HEAD(of_feature_controllers);
+LIST_HEAD(of_feature_controllers);
 
 /**
  * feature_controller_register() - Register a feature controller
diff --git a/include/featctrl.h b/include/featctrl.h
index 6f99c96b8aec..c24b12515d7a 100644
--- a/include/featctrl.h
+++ b/include/featctrl.h
@@ -15,6 +15,8 @@ struct feature_controller {
 
 enum { FEATCTRL_GATED = 0, FEATCTRL_OKAY = 1 };
 
+extern struct list_head of_feature_controllers;
+
 int feature_controller_register(struct feature_controller *);
 
 #ifdef CONFIG_FEATURE_CONTROLLER
-- 
2.39.5



