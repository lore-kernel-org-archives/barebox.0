Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RxZqc-00052S-I4
 for barebox@lists.infradead.org; Wed, 15 Feb 2012 08:04:19 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 15 Feb 2012 09:04:03 +0100
Message-Id: <1329293044-9967-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1329293044-9967-1-git-send-email-s.hauer@pengutronix.de>
References: <1329293044-9967-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/6] net: set enetaddr to invalid address when an invalid
 string is passed
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 net/net.c |    6 ++++--
 1 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/net/net.c b/net/net.c
index 26ba44e..2752884 100644
--- a/net/net.c
+++ b/net/net.c
@@ -166,8 +166,10 @@ int string_to_ethaddr(const char *str, char *enetaddr)
 	int reg;
 	char *e;
 
-        if (!str || strlen(str) != 17)
-                return -1;
+        if (!str || strlen(str) != 17) {
+		memset(enetaddr, 0, 6);
+		return -1;
+	}
 
         if (str[2] != ':' || str[5] != ':' || str[8] != ':' ||
                         str[11] != ':' || str[14] != ':')
-- 
1.7.9


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
