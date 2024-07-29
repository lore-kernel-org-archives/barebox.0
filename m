Delivery-date: Mon, 29 Jul 2024 16:42:50 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sYRaL-004A28-3C
	for lore@lore.pengutronix.de;
	Mon, 29 Jul 2024 16:42:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sYRaL-0001kb-AR
	for lore@pengutronix.de; Mon, 29 Jul 2024 16:42:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=XIOA90yfEyA0/HVlHB1UJ6yl6qhF6wr9FvXiEdFHaCA=; b=Bhq063bqyL8M17/CIoOiJ5z2jX
	wXeuSVB1u2jfX/awh5HQfJKudOg/xuggXDnbTP5s6M47TwP/Ga+J1C39gv5rI8HOxVeqZMRZGxKdY
	3E9S5EZ712Lpxb7UqMLisgJ8uhtRnGaYnfGzE0s5tyd9nfHcc12yLn6bzytmMb4h0WNoMSRQyfz2y
	9klTGRQXhtfbv7wlRMiRpZYEzCctspb1s1o9c93OGrEXi8ug/kUb35EQxGLE5TAp1YhUzML7sgmhh
	zz+5Cpx8aNJo3TMm+EizixOwilhYPa+B2Ja0QEbs90glg6I1af2l9AaviEExy0ZLGIIVo/wxMWJR1
	6xCKd84w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYRZn-0000000Bh6T-2wwo;
	Mon, 29 Jul 2024 14:42:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYRO6-0000000BbY8-1UQA
	for barebox@lists.infradead.org;
	Mon, 29 Jul 2024 14:30:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sYRO4-0000Oi-O2; Mon, 29 Jul 2024 16:30:08 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sYRO4-00349K-B5; Mon, 29 Jul 2024 16:30:08 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sYRO4-006XJu-0o;
	Mon, 29 Jul 2024 16:30:08 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 29 Jul 2024 16:30:06 +0200
Message-Id: <20240729143007.1558035-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240729_073010_418568_8C8E8741 
X-CRM114-Status: GOOD (  14.18  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] restart: allow selecting restart handler by device name
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Many SoCs feature multiple instances of the same watchdog IP. For
example, the i.MX8MP has three watchdogs, which would be called wdog0,
wdog1, wdog2 in barebox, but they would all have imxwd as restart
handler name.

To be able to differentiate between them for restart purposes, add an
optional device member that's used as fallback when no exact restart
handler name was found.

To make this visible to the user, also change reset -l to list the
device name if it exists. Once we assign i.MX watchdog restart handlers
a device pointer, the reset -l output would look like this:

  watchdog-restart                              10
  imxwd-warm                                    90 W
  imxwd                wdog0                   100
  imxwd-warm                                    90 W
  imxwd                wdog1                   100
  imxwd-warm                                    90 W
  imxwd                wdog2                   100

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/restart.c  | 11 ++++++++---
 include/restart.h |  1 +
 2 files changed, 9 insertions(+), 3 deletions(-)

diff --git a/common/restart.c b/common/restart.c
index 35cfb542519d..2bdee289831c 100644
--- a/common/restart.c
+++ b/common/restart.c
@@ -82,8 +82,12 @@ struct restart_handler *restart_handler_get_by_name(const char *name, int flags)
 	unsigned int priority = 0;
 
 	list_for_each_entry(tmp, &restart_handler_list, list) {
-		if (name && tmp->name && strcmp(name, tmp->name))
-			continue;
+		if (name) {
+			if ((tmp->name && strcmp(name, tmp->name)) &&
+			    (tmp->dev && strcmp(name, dev_name(tmp->dev))))
+				continue;
+		}
+
 		if (flags && (tmp->flags & flags) != flags)
 			continue;
 		if (tmp->priority > priority) {
@@ -120,7 +124,8 @@ void restart_handlers_print(void)
 	struct restart_handler *tmp;
 
 	list_for_each_entry(tmp, &restart_handler_list, list) {
-		printf("%-20s %6d ", tmp->name, tmp->priority);
+		printf("%-20s %-20s %6d ",
+		       tmp->name, tmp->dev ? dev_name(tmp->dev) : "", tmp->priority);
 		if (tmp->flags & RESTART_FLAG_WARM_BOOTROM)
 			putchar('W');
 		putchar('\n');
diff --git a/include/restart.h b/include/restart.h
index 15f30bb7ad4d..02db7915075e 100644
--- a/include/restart.h
+++ b/include/restart.h
@@ -21,6 +21,7 @@ struct restart_handler {
 	int flags;
 	struct device_node *of_node;
 	const char *name;
+	struct device *dev;
 	struct list_head list;
 };
 
-- 
2.39.2



