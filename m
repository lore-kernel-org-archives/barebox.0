Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 26.mail-out.ovh.net ([91.121.27.225])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1Pi8XE-0002m7-DD
	for barebox@lists.infradead.org; Wed, 26 Jan 2011 16:47:57 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 26 Jan 2011 17:46:04 +0100
Message-Id: <1296060364-23113-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20110126164348.GF1441@game.jcrosoft.org>
References: <20110126164348.GF1441@game.jcrosoft.org>
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
Subject: [PATCH 3/3] __setup test
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/startup.c |   14 +++++++++++---
 1 files changed, 11 insertions(+), 3 deletions(-)

diff --git a/common/startup.c b/common/startup.c
index 98b4aab..1891cbd 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -105,12 +105,20 @@ device_initcall(register_default_env);
 #endif
 
 #ifdef CONFIG_BOOT_CMDLINE
-static int __init bootmode(char *mode)
+static __initdata char bootmode[COMMAND_LINE_SIZE];
+
+static int __init setup_bootmode(char *mode)
+{
+	strcpy(bootmode, mode);
+	return 0;
+}
+__setup("boot=", setup_bootmode);
+static int bootmode_print(void)
 {
-	printf("boot=%s\n", mode);
+	printf("boot=%s\n", bootmode);
 	return 0;
 }
-__setup("boot=", bootmode);
+device_initcall(bootmode_print);
 #endif
 
 static int mount_root(void)
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
