Delivery-date: Mon, 29 Nov 2021 08:17:08 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mrauS-0001kS-7I
	for lore@lore.pengutronix.de; Mon, 29 Nov 2021 08:17:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mrauR-0008P2-ET
	for lore@pengutronix.de; Mon, 29 Nov 2021 08:17:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5CULQg5nJf0EONqXE7tLBZlGzpBF31cOtqEm78fQ72Y=; b=bKUJufd7IEx/Xy
	YtqDyQtuXIUv5HGQkBxJjV477lHXhzA9+a+2pH2+t7mAkon+KGUo1WHbvsJx8qw06AV7XbkwDZp5o
	rLJBbhMf8cBmD0imeo0l18fz9yiFAQiK7Q7QIzdyHzbExQ8Gj5HXfyZnjbcf0Zt+8ip6q1LCTBRmh
	F0kRuy+C1fPt7aTsLE3O/4cxx/aKoPceYwwk9QuM2HilXL3VBZwXfFdMqIHsWqTuRT1P8BOpSmOsY
	BC6o6feV+fAZNHeMn/W9FC3BvCcXUKi7wvhgqV+gcyWhQ3gz8yV2qtxT5Q0TsPxqjZ8wtPRS/HbM1
	gDg58nhGVG4L6kfjb7YQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mratJ-0000I3-PY; Mon, 29 Nov 2021 07:15:57 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mratD-0000GI-0H
 for barebox@lists.infradead.org; Mon, 29 Nov 2021 07:15:52 +0000
Received: (Authenticated sender: ahmad@a3f.at)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 24EF72000A;
 Mon, 29 Nov 2021 07:15:47 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon, 29 Nov 2021 08:15:42 +0100
Message-Id: <20211129071542.2014668-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211128_231551_207291_B33DFAA4 
X-CRM114-Status: UNSURE (   8.26  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] devinfo: Omit parent if direct descendent of bus
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

In that case parentage adds no extra info, so we can just omit it.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 commands/devinfo.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/commands/devinfo.c b/commands/devinfo.c
index 2e2e48e42cc5..b4894cc9272d 100644
--- a/commands/devinfo.c
+++ b/commands/devinfo.c
@@ -85,7 +85,7 @@ static int do_devinfo(int argc, char *argv[])
 		if (dev->info)
 			dev->info(dev);
 
-		if (dev->parent)
+		if (dev->parent && dev->parent != dev->bus->dev)
 			printf("Parent: %s\n", dev_name(dev->parent));
 
 		first = true;
-- 
2.33.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

