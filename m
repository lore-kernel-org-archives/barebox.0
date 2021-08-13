Delivery-date: Fri, 13 Aug 2021 10:34:17 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mESdt-0007lJ-8d
	for lore@lore.pengutronix.de; Fri, 13 Aug 2021 10:34:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mESdq-0001kw-Qi
	for lore@pengutronix.de; Fri, 13 Aug 2021 10:34:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=idz4DWMdSdZqUYvVzSeBFeOQtPyjfgxMz2Gt0L4/1Kc=; b=udb7eeTQ3P4AuX
	u9DedZx8mMMs2dHZRdzKdU/hQvPzJr9q2HKGSBpXsPp9lJr446VGzDPXFhlD8gxKXiGJy9GOQ6sV7
	D3Bi9Yz3iORtHyVx6bWDL5WkKD55234o3XnRuhrquqrMrJH0X4u6HPWS9VaylhhL9dklduXgQzk/z
	QZ0mSRSOjQ/pFS6xhDfNmYkwBzPwZ9avM9rQ7H8HUwb6wHibVFHeTwibK74bNDWI9TzrkTPyDZn8b
	Nj9MlfNCqDypxP/+v+QyIXaZ9K/9ziitnBATqfaTKN41+4uMapUeHyIUbGk2JqBz65oVrmGAiDkKu
	7M+zzbllOqjV437b4zhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mEScC-00CET1-Rk; Fri, 13 Aug 2021 08:32:32 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mESc7-00CERz-ML
 for barebox@lists.infradead.org; Fri, 13 Aug 2021 08:32:29 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1mESc3-0001fH-MX
 for barebox@lists.infradead.org; Fri, 13 Aug 2021 10:32:23 +0200
Received: from mfe by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1mESc3-0008HC-Da
 for barebox@lists.infradead.org; Fri, 13 Aug 2021 10:32:23 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 13 Aug 2021 10:32:21 +0200
Message-Id: <20210813083221.31763-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210813_013227_770512_052BD1D0 
X-CRM114-Status: GOOD (  10.84  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] fastboot net: add setter for global.fastboot.net.autostart
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Without this change the only possible way to start the
fastboot.net.autostart mechanism is by using the nv storage. Split
fastboot_on_boot() into two functions:
 - a globalvar setter fastboot_net_autostart_set() and
 - a the globalvar init function fastboot_net_init_globalvar().
This allows init scripts to start the autostart mechanism as well.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 net/fastboot.c | 19 +++++++++++++------
 1 file changed, 13 insertions(+), 6 deletions(-)

diff --git a/net/fastboot.c b/net/fastboot.c
index df388adc89..aa483f57a7 100644
--- a/net/fastboot.c
+++ b/net/fastboot.c
@@ -547,14 +547,12 @@ fail_generic_init:
 static struct fastboot_net *fastboot_net_obj;
 static int fastboot_net_autostart;
 
-static int fastboot_on_boot(void)
+static int fastboot_net_autostart_set(struct param_d *p, void * priv)
 {
 	struct fastboot_net *fbn;
+	static bool started;
 
-	globalvar_add_simple_bool("fastboot.net.autostart",
-				  &fastboot_net_autostart);
-
-	if (!fastboot_net_autostart)
+	if (!fastboot_net_autostart || started)
 		return 0;
 
 	ifup_all(0);
@@ -564,16 +562,25 @@ static int fastboot_on_boot(void)
 		return PTR_ERR(fbn);
 
 	fastboot_net_obj = fbn;
+	started = true;
+
 	return 0;
 }
 
+static int fastboot_net_init_globalvar(void)
+{
+	return globalvar_add_bool("fastboot.net.autostart",
+				  fastboot_net_autostart_set,
+				  &fastboot_net_autostart, NULL);
+}
+
 static void fastboot_net_exit(void)
 {
 	if (fastboot_net_obj)
 		fastboot_net_free(fastboot_net_obj);
 }
 
-postenvironment_initcall(fastboot_on_boot);
+postenvironment_initcall(fastboot_net_init_globalvar);
 predevshutdown_exitcall(fastboot_net_exit);
 
 BAREBOX_MAGICVAR(global.fastboot.net.autostart,
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

