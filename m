Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVA1E-0006FG-SN
 for barebox@lists.infradead.org; Mon, 27 May 2019 07:26:06 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <afa@pengutronix.de>) id 1hVA1B-000162-UD
 for barebox@lists.infradead.org; Mon, 27 May 2019 09:26:01 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1hVA1B-0000CA-MW
 for barebox@lists.infradead.org; Mon, 27 May 2019 09:26:01 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 27 May 2019 09:25:57 +0200
Message-Id: <20190527072557.31805-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH] scripts: kwboot: fix comparison with out-of-range constant
To: barebox@lists.infradead.org

clang detects that system char signedness will affect program runtime:
scripts/kwboot.c:395:10: warning: result of comparison of constant 255
with expression of type 'char' is always true
[-Wtautological-constant-out-of-range-compare]
                if (*p != 0xff)
                    ~~ ^  ~~~~

Fix this by using uint8_t where appropriate.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 scripts/kwboot.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/scripts/kwboot.c b/scripts/kwboot.c
index df52144e45c4..43b8b8cbcdc6 100644
--- a/scripts/kwboot.c
+++ b/scripts/kwboot.c
@@ -378,10 +378,10 @@ kwboot_xm_resync(int fd)
 	 * there is another problem.
 	 */
 	int rc;
-	char buf[sizeof(struct kwboot_block)];
+	uint8_t buf[sizeof(struct kwboot_block)];
 	unsigned interval = 1;
 	unsigned len;
-	char *p = buf;
+	uint8_t *p = buf;
 
 	memset(buf, 0xff, sizeof(buf));
 
@@ -407,7 +407,7 @@ static int
 kwboot_xm_sendblock(int fd, struct kwboot_block *block)
 {
 	int rc, retries;
-	char c;
+	uint8_t c;
 
 	retries = 16;
 	do {
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
