Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VPRZO-00088q-Eo
 for barebox@lists.infradead.org; Fri, 27 Sep 2013 06:30:33 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 27 Sep 2013 08:30:04 +0200
Message-Id: <1380263404-23104-5-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/4] dhcp: replace dhcp_getenv_int with getenv_uint
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 net/dhcp.c | 12 +-----------
 1 file changed, 1 insertion(+), 11 deletions(-)

diff --git a/net/dhcp.c b/net/dhcp.c
index ff54924..e0c231f 100644
--- a/net/dhcp.c
+++ b/net/dhcp.c
@@ -699,16 +699,6 @@ static int dhcp_global_init(void)
 }
 late_initcall(dhcp_global_init);
 
-static void dhcp_getenv_int(const char *name, int *i)
-{
-	const char* str = getenv(name);
-
-	if (!str)
-		return;
-
-	*i = simple_strtoul(str, NULL, 10);
-}
-
 static int do_dhcp(int argc, char *argv[])
 {
 	int ret, opt;
@@ -716,7 +706,7 @@ static int do_dhcp(int argc, char *argv[])
 
 	dhcp_reset_env();
 
-	dhcp_getenv_int("global.dhcp.retries", &retries);
+	getenv_uint("global.dhcp.retries", &retries);
 
 	while((opt = getopt(argc, argv, "H:v:c:u:U:r:")) > 0) {
 		switch(opt) {
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
