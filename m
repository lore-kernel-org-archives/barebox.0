Delivery-date: Thu, 15 Feb 2024 08:48:54 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1raWUI-007AWM-0Z
	for lore@lore.pengutronix.de;
	Thu, 15 Feb 2024 08:48:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1raWUH-0001Sh-Hf
	for lore@pengutronix.de; Thu, 15 Feb 2024 08:48:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eGKx+eTTEapqPQwWWw5z8h2hU7gT7Q566EabFZFbqM4=; b=ky9Z3JOKHNs4b8EVvPFhO/bG7y
	YfeiFsmU+zOyX/JY/DTZBlFGYsNybOWsNiG4qTjQb3ZAaW3fpT4O+FMNSlc6s0Ns558oIBHCMcLJw
	ztTAixtuWHE9KX8f4p1XNP9pcVCD5kcst/BGX/REm9nyDp7IWyb/KPq8lzpFpIyiQkeeF/YD6bLfH
	NMhXk4rpVpVcjdGZ9whlBz3L8C2eF3tGPOYFuB5L8csseN/eyRBDvoEJLqP338BuK6FtGrBeU/0BW
	+dc5B+i9nFVy/MrqAek9lG2aaZBnasTROt7K899j46ms6DrNqpCboroc4ky9krHxXw2nPzXJfVvKC
	XkD0W2VQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raWTZ-0000000FGBM-3gcr;
	Thu, 15 Feb 2024 07:48:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raWTU-0000000FG8M-1UYn
	for barebox@lists.infradead.org;
	Thu, 15 Feb 2024 07:48:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1raWTP-00017Z-OP; Thu, 15 Feb 2024 08:47:59 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1raWTP-000qCG-BR; Thu, 15 Feb 2024 08:47:59 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1raWTP-0041pl-0n;
	Thu, 15 Feb 2024 08:47:59 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 15 Feb 2024 08:47:55 +0100
Message-Id: <20240215074757.960200-6-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240215074757.960200-1-s.hauer@pengutronix.de>
References: <20240215074757.960200-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240214_234804_518890_E0FC508D 
X-CRM114-Status: GOOD (  11.28  )
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
Subject: [PATCH 5/7] fastboot: pass list to fb_addvar()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

With followup patches we'll maintain two lists of fastboot variables. As
a preparation pass the list to which the variable shall be added to
fb_addvar(). No functional change intended.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/fastboot.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/common/fastboot.c b/common/fastboot.c
index 261283d50a..eaf99b08f4 100644
--- a/common/fastboot.c
+++ b/common/fastboot.c
@@ -66,7 +66,7 @@ static void fb_setvar(struct fb_variable *var, const char *fmt, ...)
 	va_end(ap);
 }
 
-static struct fb_variable *fb_addvar(struct fastboot *fb, const char *fmt, ...)
+static struct fb_variable *fb_addvar(struct fastboot *fb, struct list_head *list, const char *fmt, ...)
 {
 	struct fb_variable *var = xzalloc(sizeof(*var));
 	va_list ap;
@@ -75,7 +75,7 @@ static struct fb_variable *fb_addvar(struct fastboot *fb, const char *fmt, ...)
 	var->name = bvasprintf(fmt, ap);
 	va_end(ap);
 
-	list_add_tail(&var->list, &fb->variables);
+	list_add_tail(&var->list, list);
 
 	return var;
 }
@@ -152,9 +152,9 @@ static int fastboot_add_partition_variables(struct fastboot *fb,
 	if (ret)
 		return ret;
 
-	var = fb_addvar(fb, "partition-size:%s", fentry->name);
+	var = fb_addvar(fb, &fb->variables, "partition-size:%s", fentry->name);
 	fb_setvar(var, "%08zx", size);
-	var = fb_addvar(fb, "partition-type:%s", fentry->name);
+	var = fb_addvar(fb, &fb->variables, "partition-type:%s", fentry->name);
 	fb_setvar(var, "%s", type);
 
 	return ret;
@@ -168,12 +168,12 @@ int fastboot_generic_init(struct fastboot *fb, bool export_bbu)
 
 	INIT_LIST_HEAD(&fb->variables);
 
-	var = fb_addvar(fb, "version");
+	var = fb_addvar(fb, &fb->variables, "version");
 	fb_setvar(var, "0.4");
-	var = fb_addvar(fb, "bootloader-version");
+	var = fb_addvar(fb, &fb->variables, "bootloader-version");
 	fb_setvar(var, release_string);
 	if (IS_ENABLED(CONFIG_FASTBOOT_SPARSE)) {
-		var = fb_addvar(fb, "max-download-size");
+		var = fb_addvar(fb, &fb->variables, "max-download-size");
 		fb_setvar(var, "%u", fastboot_max_download_size);
 	}
 
-- 
2.39.2



