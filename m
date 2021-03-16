Delivery-date: Tue, 16 Mar 2021 09:21:45 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lM4xV-0002Pq-VD
	for lore@lore.pengutronix.de; Tue, 16 Mar 2021 09:21:45 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lM4xV-0003ZB-3c
	for lore@pengutronix.de; Tue, 16 Mar 2021 09:21:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=oVaIPEqNxmKFuqa2f9/eG+mR70nHJjSfK4/K0YAQQ2E=; b=khI05ytPMeHPuD+xMPxdgWa4tR
	ktReShY1J9iUEpeUhp3ah/Ebby1yg4X5l+Nz+f1LQHIImNwTD5ecj8m27M2NdmQpEImBSZk/ul6bs
	A50IQMoYjWGxpnOQCsuCjodC7WLxuj2Ww06EBZitpChRr7+CHNALLtu3iKtHtFUdFNG+IiSORBbr8
	0dfGHZLrqTnBcbUDg58q0M1akGrv9YOcfXpK4UE8lK80SRZGN3Gt+SAf21+2Oqquxw2WXSOMfsL72
	Uq/itsHr5+v0KA5Iy2GnJaPBfllDJgFWbH6p20s7AgZKRKX2JxK9Hu2FSvimbqFybA8e8m/+RJHOI
	LwNPhuEw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lM4wc-00081O-G7; Tue, 16 Mar 2021 08:20:51 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lM4wW-00080s-UE
 for barebox@lists.infradead.org; Tue, 16 Mar 2021 08:20:46 +0000
X-Originating-IP: 87.123.101.12
Received: from geraet.fritz.box (unknown [87.123.101.12])
 (Authenticated sender: ahmad@a3f.at)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 007DB40002;
 Tue, 16 Mar 2021 08:20:42 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Tue, 16 Mar 2021 09:20:34 +0100
Message-Id: <20210316082034.1740511-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210316_082045_156505_78C8EF7D 
X-CRM114-Status: GOOD (  10.11  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] fixup! commands: add new bthread test command
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

GCC whines about casting int to pointer, which aren't always the same
size in barebox. Use long instead to avoid the warning.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 commands/bthread.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/commands/bthread.c b/commands/bthread.c
index 05dfa68cc597..964a1044c58b 100644
--- a/commands/bthread.c
+++ b/commands/bthread.c
@@ -66,15 +66,15 @@ static int bthread_isolated_time(void)
 static int bthread_printer(void *arg)
 {
 	volatile u64 start;
-	volatile int i = 0;
+	volatile unsigned long i = 0;
 	start = get_time_ns();
 
 	while (!bthread_should_stop()) {
 		if (!is_timeout_non_interruptible(start, 225 * MSECOND))
 			continue;
 
-		if ((long)arg == i++)
-			printf("%s yield #%d\n", bthread_name(current), i);
+		if ((unsigned long)arg == i++)
+			printf("%s yield #%lu\n", bthread_name(current), i);
 		start = get_time_ns();
 	}
 
@@ -87,14 +87,14 @@ static int bthread_spawner(void *arg)
 {
 	struct bthread *bthread[4];
 	volatile u64 start;
-	volatile int i = 0;
+	volatile unsigned long i = 0;
 	int ret = 0;
 	int ecode;
 
 	start = get_time_ns();
 
 	for (i = 0; i < ARRAY_SIZE(bthread); i++) {
-		bthread[i] = bthread_run(bthread_printer, (void *)i,
+		bthread[i] = bthread_run(bthread_printer, (void *)(long)i,
 					 "%s-bthread%u", bthread_name(current), i+1);
 		if (!bthread[i]) {
 			ret = -ENOMEM;
-- 
2.30.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

