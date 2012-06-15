Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lpp01m010-f49.google.com ([209.85.215.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SfTlW-0002vj-Bo
 for barebox@lists.infradead.org; Fri, 15 Jun 2012 10:28:31 +0000
Received: by laap9 with SMTP id p9so2011687laa.36
 for <barebox@lists.infradead.org>; Fri, 15 Jun 2012 03:28:27 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri, 15 Jun 2012 14:28:19 +0400
Message-Id: <1339756099-17774-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] poweroff: fix cmd_poweroff() arguments type
To: barebox@lists.infradead.org

This fixes a bug introduced with:

commit d5efef69b6449edcf44f45372c42dba861c35537
Author: Antony Pavlov <antonynpavlov@gmail.com>
Date:   Wed Jun 13 23:43:07 2012 +0400

    add 'poweroff' command

    Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
    Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 commands/poweroff.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/commands/poweroff.c b/commands/poweroff.c
index cd5542b..ebb146c 100644
--- a/commands/poweroff.c
+++ b/commands/poweroff.c
@@ -23,7 +23,7 @@
 #include <common.h>
 #include <command.h>
 
-static int cmd_poweroff(struct command *cmdtp, int argc, char *argv[])
+static int cmd_poweroff(int argc, char *argv[])
 {
 	poweroff();
 
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
