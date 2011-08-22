Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-fx0-f49.google.com ([209.85.161.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QvZVR-0003vw-S9
	for barebox@lists.infradead.org; Mon, 22 Aug 2011 18:45:55 +0000
Received: by mail-fx0-f49.google.com with SMTP id 20so4552946fxd.36
	for <barebox@lists.infradead.org>; Mon, 22 Aug 2011 11:45:53 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon, 22 Aug 2011 22:45:36 +0400
Message-Id: <1314038738-32189-4-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 3/5] commands/loads.c: fix compiler's warning
To: barebox@lists.infradead.org

Fix 'assignment discards qualifiers from pointer target type' warning.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 commands/loads.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/commands/loads.c b/commands/loads.c
index 71fdeba..6aef557 100644
--- a/commands/loads.c
+++ b/commands/loads.c
@@ -45,7 +45,7 @@ int do_load_serial(struct command *cmdtp, int argc, char *argv[])
 	ulong offset = 0;
 	ulong addr;
 	int i;
-	char *env_echo;
+	const char *env_echo;
 	int rcode = 0;
 
 	if (((env_echo = getenv("loads_echo")) != NULL) && (*env_echo == '1')) {
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
