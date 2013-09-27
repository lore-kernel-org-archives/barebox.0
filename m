Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VPRZO-00088o-EG
 for barebox@lists.infradead.org; Fri, 27 Sep 2013 06:30:31 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 27 Sep 2013 08:30:02 +0200
Message-Id: <1380263404-23104-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1380263404-23104-1-git-send-email-s.hauer@pengutronix.de>
References: <1380263404-23104-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/4] loads: use getenv_bool for 'loads_echo'
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/loads.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/commands/loads.c b/commands/loads.c
index bfc465b..58cd24b 100644
--- a/commands/loads.c
+++ b/commands/loads.c
@@ -40,14 +40,9 @@ static int do_load_serial(int argc, char *argv[])
 	ulong offset = 0;
 	ulong addr;
 	int i;
-	const char *env_echo;
 	int rcode = 0;
 
-	if (((env_echo = getenv("loads_echo")) != NULL) && (*env_echo == '1')) {
-		do_echo = 1;
-	} else {
-		do_echo = 0;
-	}
+	getenv_bool("loads_echo", &do_echo);
 
 	if (argc == 2) {
 		offset = simple_strtoul(argv[1], NULL, 16);
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
