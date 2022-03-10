Delivery-date: Thu, 10 Mar 2022 22:13:40 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nSQ6O-001Jxa-18
	for lore@lore.pengutronix.de; Thu, 10 Mar 2022 22:13:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nSQ6M-0003Gj-Pf
	for lore@pengutronix.de; Thu, 10 Mar 2022 22:13:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=diCaLDva43LYSKbNeSql3UdBK2Dq4kzdxsdxn/S8DVQ=; b=Ka6epBsbQSGo6G
	1zs0i1d6R3QomLSvaYZuhByhVNKOFqxsUvtVaxIqMLF61QQuwE8+6Ic9hyJCvrTm7F6m1kQ/6T4cX
	PZADfm/tQhKTnaTSuDfcJaZv3AoceytOC73XdgWHYRZKFvIoi4QesYZh1Kvns47RoKYZWHb6I1vWF
	9EJxVfuzTcv7ooOnjF+/5mPjhuMGKQzHlbYSej4w2ZqfL+PT5k41FJl8sA7iH4dZ0Q2ugEp9Q60hx
	ojUNQZc1xVazN+s3m1ePHCIqslskBOPAjHveoeSRN7+9ACR7ky28ExEONx+yZlYz9Je7P1WQvtLiL
	y35/aRWGhn0CwwMgqf2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nSQ52-00E3iE-Ik; Thu, 10 Mar 2022 21:12:16 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nSQ4x-00E3hH-2t
 for barebox@lists.infradead.org; Thu, 10 Mar 2022 21:12:12 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nSQ4v-0003DM-1e; Thu, 10 Mar 2022 22:12:09 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1nSQ4u-00GZMM-Ha; Thu, 10 Mar 2022 22:12:08 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 10 Mar 2022 22:12:07 +0100
Message-Id: <20220310211207.3949118-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220310_131211_156460_ED0C3333 
X-CRM114-Status: GOOD (  14.55  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] power: reset: reboot-mode: Fix resetting to normal mode
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

To clear the reboot mode for next reboot during registration of a reboot
mode driver we call reboot->write() with a zero initialized u32 array
with a single entry. This is wrong for two reasons. First the array is
too short, for i.MX6 we need to entries. Then it is assumed that the
magic to write to the register is '0' for normal boot, but it could be
an arbitrary value.

To fix this pick the index of the normal boot entry and pass the
corresponding magic values to reboot->write(). While at it only do
this when a normal boot entry actually exists.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/power/reset/reboot-mode.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/power/reset/reboot-mode.c b/drivers/power/reset/reboot-mode.c
index d9b51dfea6..01709e0019 100644
--- a/drivers/power/reset/reboot-mode.c
+++ b/drivers/power/reset/reboot-mode.c
@@ -127,7 +127,7 @@ int reboot_mode_register(struct reboot_mode_driver *reboot,
 	const char *alias;
 	size_t nmodes = 0;
 	int i = 0;
-	int ret;
+	int ret, normal = -1;
 
 	for_each_property_of_node(np, prop) {
 		u32 magic;
@@ -171,6 +171,9 @@ int reboot_mode_register(struct reboot_mode_driver *reboot,
 			goto error;
 		}
 
+		if (!strcmp(*mode, "normal"))
+			normal = i;
+
 		reboot_mode_print(reboot, *mode, magic);
 
 		i++;
@@ -187,7 +190,8 @@ int reboot_mode_register(struct reboot_mode_driver *reboot,
 	reboot_mode_add_param(reboot->dev, "", reboot);
 
 	/* clear mode for next reboot */
-	reboot->write(reboot, &(u32) { 0 });
+	if (normal >= 0)
+		reboot->write(reboot, &reboot->magics[normal]);
 
 	if (!reboot->priority)
 		reboot->priority = REBOOT_MODE_DEFAULT_PRIORITY;
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

