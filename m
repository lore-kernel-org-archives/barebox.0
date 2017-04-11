Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cxpT8-0002Wh-Pa
 for barebox@lists.infradead.org; Tue, 11 Apr 2017 06:40:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 11 Apr 2017 08:39:34 +0200
Message-Id: <20170411063934.20613-2-s.hauer@pengutronix.de>
In-Reply-To: <20170411063934.20613-1-s.hauer@pengutronix.de>
References: <20170411063934.20613-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] lib/strtox: remove unnecessary islower()
To: Barebox List <barebox@lists.infradead.org>

toupper() does the right thing, no need to test for islower()
beforehand, so

islower(*cp) ? toupper(*cp) : *cp

can be simplified to:

toupper(*cp)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 lib/strtox.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/lib/strtox.c b/lib/strtox.c
index 45aa06bacc..3bb6b0ef89 100644
--- a/lib/strtox.c
+++ b/lib/strtox.c
@@ -20,8 +20,8 @@ unsigned long simple_strtoul(const char *cp, char **endp, unsigned int base)
 	if (!base)
 		base = 10;
 
-	while (isxdigit(*cp) && (value = isdigit(*cp) ? *cp - '0' : (islower(*cp)
-	    ? toupper(*cp) : *cp) - 'A' + 10) < base) {
+	while (isxdigit(*cp) && (value = isdigit(*cp) ?
+	       *cp - '0' : toupper(*cp) - 'A' + 10) < base) {
 		result = result * base + value;
 		cp++;
 	}
@@ -61,9 +61,8 @@ unsigned long long simple_strtoull(const char *cp, char **endp, unsigned int bas
 	if (!base)
 		base = 10;
 
-	while (isxdigit(*cp) && (value = isdigit(*cp)
-				? *cp - '0'
-				: (islower(*cp) ? toupper(*cp) : *cp) - 'A' + 10) < base) {
+	while (isxdigit(*cp) && (value = isdigit(*cp) ?
+	       *cp - '0' : toupper(*cp) - 'A' + 10) < base) {
 		result = result * base + value;
 		cp++;
 	}
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
