Delivery-date: Mon, 20 Nov 2023 08:23:09 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r4yce-0016Yg-2c
	for lore@lore.pengutronix.de;
	Mon, 20 Nov 2023 08:23:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r4yce-0004gX-Ro
	for lore@pengutronix.de; Mon, 20 Nov 2023 08:23:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Teupf/Z0zXMZ44WnB2huvtJUVCc9hujjwDm/kPVlv58=; b=azHELjURVbSNdZvAE/zM0anhUK
	CL6gfpILs8OvnhYyoLJ48WfNeweukv9Z93S8XXR+aPOLYNJqHJOjLg9FHmAsqY09ZZ1B8icfuzqEX
	IXi5BHCwkT9iw/w6BbMgLm3qWDxakWuGHYFOOrYq6xc6EJXGFGMDMX3MUze6ni6vlRbf9D0P2mAb5
	UFubCMdJHFYBd4V1bUO2SUjOf0kPdJY1RAzj0IpT3qfu57hdaAH4/b3n2+CWOovwak6JAZqP7vJiL
	2v/2r+iRepFGk2R7hJvr5OBhaTSGCxEwd3CVC9+VV/NiWYPlhm5L1i7rcQpsAgHamtsAUkWCtX8Bm
	DTpkx2cg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r4yb7-00BN03-1I;
	Mon, 20 Nov 2023 07:21:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r4yb1-00BMw4-1E
	for barebox@lists.infradead.org;
	Mon, 20 Nov 2023 07:21:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r4yax-0004H2-ND; Mon, 20 Nov 2023 08:21:23 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r4yax-00AIZA-Au; Mon, 20 Nov 2023 08:21:23 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r4yax-008Q4J-0o;
	Mon, 20 Nov 2023 08:21:23 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 20 Nov 2023 08:21:21 +0100
Message-Id: <20231120072122.2006805-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231120072122.2006805-1-a.fatoum@pengutronix.de>
References: <20231120072122.2006805-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231119_232127_505291_098FFC85 
X-CRM114-Status: GOOD (  10.74  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master 3/4] console: define barebox_set_loglevel
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Selftests may want to change barebox_loglevel temporarily to avoid expected
warning or error messages cluttering the log. barebox_loglevel is only
defined for !CONFIG_CONSOLE_NONE though, so add a stub for the
console-less case.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/console.h | 15 +++++++++++++--
 1 file changed, 13 insertions(+), 2 deletions(-)

diff --git a/include/console.h b/include/console.h
index b400b6bf49ec..477ca34e7aa9 100644
--- a/include/console.h
+++ b/include/console.h
@@ -96,8 +96,6 @@ struct console_device *of_console_get_by_alias(const char *alias);
 
 #define CFG_PBSIZE (CONFIG_CBSIZE+sizeof(CONFIG_PROMPT)+16)
 
-extern int barebox_loglevel;
-
 int console_open(struct console_device *cdev);
 int console_close(struct console_device *cdev);
 int console_set_active(struct console_device *cdev, unsigned active);
@@ -201,6 +199,14 @@ extern struct list_head console_list;
 #define for_each_console(console) list_for_each_entry(console, &console_list, list)
 
 struct console_device *console_get_first_active(void);
+
+extern int barebox_loglevel;
+static inline int barebox_set_loglevel(int loglevel)
+{
+	int old_loglevel = barebox_loglevel;
+	barebox_loglevel = loglevel;
+	return old_loglevel;
+}
 #else
 #define for_each_console(console) while (((void)console, 0))
 
@@ -208,6 +214,11 @@ static inline struct console_device *console_get_first_active(void)
 {
 	return NULL;
 }
+
+static inline int barebox_set_loglevel(int loglevel)
+{
+	return loglevel;
+}
 #endif
 
 #ifdef CONFIG_CONSOLE_FULL
-- 
2.39.2



