Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x235.google.com ([2a00:1450:4010:c04::235])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XCXmT-0005xa-PJ
 for barebox@lists.infradead.org; Wed, 30 Jul 2014 17:35:14 +0000
Received: by mail-lb0-f181.google.com with SMTP id 10so1170572lbg.12
 for <barebox@lists.infradead.org>; Wed, 30 Jul 2014 10:34:51 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed, 30 Jul 2014 21:34:35 +0400
Message-Id: <1406741676-1641-5-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1406741676-1641-1-git-send-email-antonynpavlov@gmail.com>
References: <1406741676-1641-1-git-send-email-antonynpavlov@gmail.com>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 4/5] commands: trigger: check trigger disable return code too
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 commands/trigger.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/commands/trigger.c b/commands/trigger.c
index 17c8411..b605448 100644
--- a/commands/trigger.c
+++ b/commands/trigger.c
@@ -68,8 +68,9 @@ static int do_trigger(int argc, char *argv[])
 		break;
 
 	case LED_COMMAND_DISABLE_TRIGGER:
-		led_set_trigger(trigger, NULL);
-		return 0;
+		ret = led_set_trigger(trigger, NULL);
+		break;
+
 	case LED_COMMAND_SET_TRIGGER:
 		if (argc - optind != 1)
 			return COMMAND_ERROR_USAGE;
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
