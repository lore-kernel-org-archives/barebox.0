Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P8Bj5-0005qu-HH
	for barebox@lists.infradead.org; Tue, 19 Oct 2010 12:55:39 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 19 Oct 2010 14:54:53 +0200
Message-Id: <1287492930-15716-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1287492930-15716-1-git-send-email-s.hauer@pengutronix.de>
References: <1287492930-15716-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 05/42] command.h: sparse fixes
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/command.h |    7 ++++---
 1 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/include/command.h b/include/command.h
index 4a4d9cf..e235f63 100644
--- a/include/command.h
+++ b/include/command.h
@@ -78,9 +78,10 @@ void barebox_cmd_usage(struct command *cmdtp);
 
 #define Struct_Section  __attribute__ ((unused,section (".barebox_cmd")))
 
-#define BAREBOX_CMD_START(_name)				\
-const struct command __barebox_cmd_##_name	\
-	__attribute__ ((unused,section (".barebox_cmd_" __stringify(_name)))) = {				\
+#define BAREBOX_CMD_START(_name)							\
+extern const struct command __barebox_cmd_##_name;					\
+const struct command __barebox_cmd_##_name						\
+	__attribute__ ((unused,section (".barebox_cmd_" __stringify(_name)))) = {	\
 	.name		= #_name,
 
 #define BAREBOX_CMD_END					\
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
