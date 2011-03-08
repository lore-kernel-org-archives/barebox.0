Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PwvGW-0001Ye-Ud
	for barebox@lists.infradead.org; Tue, 08 Mar 2011 11:39:50 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  8 Mar 2011 12:39:45 +0100
Message-Id: <1299584385-6016-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1299584385-6016-1-git-send-email-s.hauer@pengutronix.de>
References: <1299584385-6016-1-git-send-email-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 5/5] trigger command: fix printf format
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/trigger.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/commands/trigger.c b/commands/trigger.c
index 162da97..095f96d 100644
--- a/commands/trigger.c
+++ b/commands/trigger.c
@@ -79,7 +79,7 @@ static int do_trigger(struct command *cmdtp, int argc, char *argv[])
 		led = led_by_name_or_number(argv[optind]);
 
 		if (!led) {
-			printf("no such led: %d\n", argv[optind]);
+			printf("no such led: %s\n", argv[optind]);
 			return 1;
 		}
 
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
