Delivery-date: Tue, 28 Oct 2025 16:46:24 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDltw-00CjPH-2X
	for lore@lore.pengutronix.de;
	Tue, 28 Oct 2025 16:46:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDltw-0005zr-97
	for lore@pengutronix.de; Tue, 28 Oct 2025 16:46:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NYTJuHWckluOcvJwqdXJLdZ4PiB+ovf04+lz/ZL60vk=; b=krbpURLMvibEofj7I8UXyD/gmN
	oTry60mTHmjoueCAHHTmpgEbB68eTs8PdBrNr8YNEsWSrFQamnO73J2RZ8l0XOSOg1lqgF4b+Ln+z
	IKtY6nw2ImE4oNRvyRf+D+D41+1hj1bNmRpJ/xqOnI+ICPrL15Bn5ditl+m58cC45D5N59y6rIcCd
	wBvH8AwIVX+BK7WKmNyup74tH3uF2gMcO1E77D/FcZ+71JScSli/8l5cwlI8f58Cw+rRFHy45Dwhe
	D3EKqQ+v5SGt9plg34+VZZeNF+kY4awl3lIwG6460gTysxWsJCSsTnWF3oU6uAh4C0WILQag7Jfb8
	owlMSDog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDltW-0000000GDrn-2z6Y;
	Tue, 28 Oct 2025 15:45:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDltU-0000000GDqu-0MiL
	for barebox@lists.infradead.org;
	Tue, 28 Oct 2025 15:45:57 +0000
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1vDltS-0005eC-Lf; Tue, 28 Oct 2025 16:45:54 +0100
From: Fabian Pflug <f.pflug@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Fabian Pflug <f.pflug@pengutronix.de>
Date: Tue, 28 Oct 2025 16:43:26 +0100
Message-ID: <20251028154453.2990491-3-f.pflug@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251028154453.2990491-1-f.pflug@pengutronix.de>
References: <20251028154453.2990491-1-f.pflug@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251028_084556_121371_8576182A 
X-CRM114-Status: GOOD (  10.67  )
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
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 2/3] console_common: get_first_active: respect security policy
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

If the console input is deactivated through a security policy, then
there is no need to iterate over the current consoles, as none should
have a STDIN.

Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
---
v2:
Fix in console common instead of working around it in startup.c
 common/console_common.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/common/console_common.c b/common/console_common.c
index 5b7a64c99c..a8319c20f3 100644
--- a/common/console_common.c
+++ b/common/console_common.c
@@ -23,6 +23,7 @@
 #include <linux/math64.h>
 #include <linux/sizes.h>
 #include <linux/overflow.h>
+#include <security/config.h>
 
 #ifndef CONFIG_CONSOLE_NONE
 
@@ -331,6 +332,11 @@ struct console_device *console_get_first_active(void)
 {
 	struct console_device *cdev;
 	const unsigned char active = CONSOLE_STDIN | CONSOLE_STDOUT;
+
+	/* if no console input is allows, then we can't have STDIN on any. */
+	if (!IS_ALLOWED(SCONFIG_CONSOLE_INPUT))
+		return NULL;
+
 	/*
 	 * Assumption to have BOTH CONSOLE_STDIN AND STDOUT in the
 	 * same output console
-- 
2.47.3



