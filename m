Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gU6pQ-0002Fj-Km
 for barebox@lists.infradead.org; Tue, 04 Dec 2018 09:17:18 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <afa@pengutronix.de>) id 1gU6pE-0002ka-7x
 for barebox@lists.infradead.org; Tue, 04 Dec 2018 10:17:04 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.91)
 (envelope-from <afa@pengutronix.de>) id 1gU6pD-0000Uf-VZ
 for barebox@lists.infradead.org; Tue, 04 Dec 2018 10:17:03 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  4 Dec 2018 10:16:32 +0100
Message-Id: <20181204091631.18775-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH] common/parser.c: s/%d/%zu/ when printing size_t
To: barebox@lists.infradead.org

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/parser.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/common/parser.c b/common/parser.c
index 6136dbf36f5f..397d268da1c9 100644
--- a/common/parser.c
+++ b/common/parser.c
@@ -70,7 +70,7 @@ static void process_macros (const char *input, char *output)
 	/* 3 = waiting for '''  */
 	char __maybe_unused *output_start = output;
 
-	pr_debug("[PROCESS_MACROS] INPUT len %d: \"%s\"\n", strlen (input),
+	pr_debug("[PROCESS_MACROS] INPUT len %zu: \"%s\"\n", strlen (input),
 		input);
 
 	prev = '\0';		/* previous character   */
@@ -158,7 +158,7 @@ static void process_macros (const char *input, char *output)
 	if (outputcnt)
 		*output = 0;
 
-	pr_debug("[PROCESS_MACROS] OUTPUT len %d: \"%s\"\n",
+	pr_debug("[PROCESS_MACROS] OUTPUT len %zu: \"%s\"\n",
 		strlen (output_start), output_start);
 }
 
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
