Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-fx0-f49.google.com ([209.85.161.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QvZVT-0003vc-Mc
	for barebox@lists.infradead.org; Mon, 22 Aug 2011 18:45:56 +0000
Received: by mail-fx0-f49.google.com with SMTP id 20so4552908fxd.36
	for <barebox@lists.infradead.org>; Mon, 22 Aug 2011 11:45:55 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon, 22 Aug 2011 22:45:37 +0400
Message-Id: <1314038738-32189-5-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1314038738-32189-1-git-send-email-antonynpavlov@gmail.com>
References: <1314038738-32189-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 4/5] commands/loads.c: make do_* functions static
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 commands/loads.c |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/commands/loads.c b/commands/loads.c
index 6aef557..396406c 100644
--- a/commands/loads.c
+++ b/commands/loads.c
@@ -40,7 +40,7 @@ static int save_serial (ulong offset, ulong size);
 static int write_record (char *buf);
 #endif /* CONFIG_CMD_SAVES */
 
-int do_load_serial(struct command *cmdtp, int argc, char *argv[])
+static int do_load_serial(struct command *cmdtp, int argc, char *argv[])
 {
 	ulong offset = 0;
 	ulong addr;
@@ -177,7 +177,7 @@ read_record (char *buf, ulong len)
 }
 
 #ifdef CONFIG_CMD_SAVES
-int do_save_serial(struct command *cmdtp, int argc, char *argv[])
+static int do_save_serial(struct command *cmdtp, int argc, char *argv[])
 {
 	ulong offset = 0;
 	ulong size   = 0;
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
