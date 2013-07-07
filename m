Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp29.i.mail.ru ([94.100.177.89])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uvo4L-00068t-4c
 for barebox@lists.infradead.org; Sun, 07 Jul 2013 12:27:58 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sun,  7 Jul 2013 16:27:16 +0400
Message-Id: <1373200037-4008-2-git-send-email-shc_work@mail.ru>
In-Reply-To: <1373200037-4008-1-git-send-email-shc_work@mail.ru>
References: <1373200037-4008-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 2/3] commands: nandtest: Fix incorrect size for memset in
 do_nandtest
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 commands/nandtest.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/commands/nandtest.c b/commands/nandtest.c
index ba15ecf..f6e8f99 100644
--- a/commands/nandtest.c
+++ b/commands/nandtest.c
@@ -181,7 +181,7 @@ static int do_nandtest(int argc, char *argv[])
 	markbad = 0;
 	fd = -1;
 
-	memset(ecc_stats, 0, MAX_ECC_BITS);
+	memset(ecc_stats, 0, sizeof(*ecc_stats));
 
 	while ((opt = getopt(argc, argv, "ms:i:o:l:t")) > 0) {
 		switch (opt) {
-- 
1.8.1.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
