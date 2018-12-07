Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gVAZn-00077P-KZ
 for barebox@lists.infradead.org; Fri, 07 Dec 2018 07:29:34 +0000
Received: by mail-pg1-x541.google.com with SMTP id z10so1335753pgp.7
 for <barebox@lists.infradead.org>; Thu, 06 Dec 2018 23:29:21 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu,  6 Dec 2018 23:29:02 -0800
Message-Id: <20181207072902.32049-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH] net: lib: Make use of ETH_ALEN
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 net/lib.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/net/lib.c b/net/lib.c
index d4343bced..d2b33132d 100644
--- a/net/lib.c
+++ b/net/lib.c
@@ -28,13 +28,13 @@
 #include <net.h>
 #include <linux/ctype.h>
 
-int string_to_ethaddr(const char *str, u8 enetaddr[6])
+int string_to_ethaddr(const char *str, u8 enetaddr[ETH_ALEN])
 {
 	int reg;
 	char *e;
 
 	if (!str || strlen(str) != 17) {
-		memset(enetaddr, 0, 6);
+		memset(enetaddr, 0, ETH_ALEN);
 		return -EINVAL;
 	}
 
@@ -42,7 +42,7 @@ int string_to_ethaddr(const char *str, u8 enetaddr[6])
 			str[11] != ':' || str[14] != ':')
 		return -EINVAL;
 
-	for (reg = 0; reg < 6; ++reg) {
+	for (reg = 0; reg < ETH_ALEN; ++reg) {
 		enetaddr[reg] = simple_strtoul(str, &e, 16);
 		str = e + 1;
 	}
@@ -50,7 +50,7 @@ int string_to_ethaddr(const char *str, u8 enetaddr[6])
 	return 0;
 }
 
-void ethaddr_to_string(const u8 enetaddr[6], char *str)
+void ethaddr_to_string(const u8 enetaddr[ETH_ALEN], char *str)
 {
 	sprintf(str, "%02x:%02x:%02x:%02x:%02x:%02x",
 		 enetaddr[0], enetaddr[1], enetaddr[2], enetaddr[3],
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
