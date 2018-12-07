Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gVAa8-0007Sc-LF
 for barebox@lists.infradead.org; Fri, 07 Dec 2018 07:29:53 +0000
Received: by mail-pf1-x441.google.com with SMTP id b85so1527512pfc.3
 for <barebox@lists.infradead.org>; Thu, 06 Dec 2018 23:29:42 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu,  6 Dec 2018 23:29:32 -0800
Message-Id: <20181207072932.32647-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] mfd: rave-sp: Make use of wait_on_timeout()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/mfd/rave-sp.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/mfd/rave-sp.c b/drivers/mfd/rave-sp.c
index 469ce4cc0..cc897b122 100644
--- a/drivers/mfd/rave-sp.c
+++ b/drivers/mfd/rave-sp.c
@@ -314,7 +314,6 @@ int rave_sp_exec(struct rave_sp *sp,
 	unsigned char *data = __data;
 	int command, ret = 0;
 	u8 ackid;
-	uint64_t start = get_time_ns();
 
 	command = sp->variant->cmd.translate(data[0]);
 	if (command < 0)
@@ -334,12 +333,9 @@ int rave_sp_exec(struct rave_sp *sp,
 	 * is_timeout will implicitly poll serdev via poller
 	 * infrastructure
 	 */
-	while (!is_timeout(start, SECOND) && !reply.received)
-		;
-
-	if (!reply.received) {
+	ret = wait_on_timeout(SECOND, reply.received);
+	if (ret) {
 		dev_err(dev, "Command timeout\n");
-		ret = -ETIMEDOUT;
 		sp->reply = NULL;
 	}
 
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
