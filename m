Delivery-date: Wed, 11 Aug 2021 19:27:34 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mDs0s-0003zy-J2
	for lore@lore.pengutronix.de; Wed, 11 Aug 2021 19:27:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mDs0o-0006JK-Si
	for lore@pengutronix.de; Wed, 11 Aug 2021 19:27:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8CJUCkBMRN3zuTTRKXsu2RVI/jHFUBwpNxI0Q3xhBf0=; b=jMHuoE9ohFPOva
	LiDNAohEwFH1nuzYtCS/0SvxvdF5TTjQN5ccT/0DbP1JmCzGYjnNycYntGnX8M9nqnYA3r8r7wGfP
	QJYyJtWhnQEIpWkcwQh7KKVAjTKRw654OtVEJoHqUUYEzvu20zCi0jgVJKsbaKqMCS//ggGRt8eXM
	OuABxHxfwZ+010Ai5Mgylqq2pDt9dMNZflblNUmNijcGmjKamvua2ZcOtojxDh7AAU36m9ISkT/PC
	rTLHvqcatbJf+5ps+1O9gXUMlm0CaMBBle/wSCzrPEgKncB5iwNRG7tEgofiH/cgSAVaYAntqVJZr
	2fnSES3fPG0OjOIKOj7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mDryp-007mIE-3d; Wed, 11 Aug 2021 17:25:27 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mDryY-007mFF-JC
 for barebox@lists.infradead.org; Wed, 11 Aug 2021 17:25:12 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1mDryU-0005sZ-Dc
 for barebox@lists.infradead.org; Wed, 11 Aug 2021 19:25:06 +0200
Received: from mfe by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1mDryU-0002ym-35
 for barebox@lists.infradead.org; Wed, 11 Aug 2021 19:25:06 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed, 11 Aug 2021 19:25:04 +0200
Message-Id: <20210811172504.11396-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210811_102510_693139_1C601CA6 
X-CRM114-Status: GOOD (  11.10  )
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
Subject: [PATCH] fastboot net: add global.fastboot.net.autostart early
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Split adding the fastboot.net.autostart to the global device and make
use of it. With this change it is possible to set it e.g. during
environment_initcall() and the later on followed fastboot_on_boot() can
use it to start fastboot it automatically during boot.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 net/fastboot.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/net/fastboot.c b/net/fastboot.c
index df388adc89..a5a7caf526 100644
--- a/net/fastboot.c
+++ b/net/fastboot.c
@@ -547,12 +547,16 @@ fail_generic_init:
 static struct fastboot_net *fastboot_net_obj;
 static int fastboot_net_autostart;
 
-static int fastboot_on_boot(void)
+static int fastboot_net_globalvars_init(void)
 {
-	struct fastboot_net *fbn;
-
 	globalvar_add_simple_bool("fastboot.net.autostart",
 				  &fastboot_net_autostart);
+	return 0;
+}
+
+static int fastboot_on_boot(void)
+{
+	struct fastboot_net *fbn;
 
 	if (!fastboot_net_autostart)
 		return 0;
@@ -573,6 +577,7 @@ static void fastboot_net_exit(void)
 		fastboot_net_free(fastboot_net_obj);
 }
 
+device_initcall(fastboot_net_globalvars_init);
 postenvironment_initcall(fastboot_on_boot);
 predevshutdown_exitcall(fastboot_net_exit);
 
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

