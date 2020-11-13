Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kdUPC-0002TY-QE
 for barebox@lists.infradead.org; Fri, 13 Nov 2020 08:26:03 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 13 Nov 2020 09:26:00 +0100
Message-Id: <20201113082600.30578-1-a.fatoum@pengutronix.de>
In-Reply-To: <20201112172347.385-2-a.fatoum@pengutronix.de>
References: <20201112172347.385-2-a.fatoum@pengutronix.de>
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
Subject: [PATCH] fixup! setenv: align with POSIX in handling of setenv(var, "")
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Previously setenv xxx= deleted x like xxx= does. With xxx= now instead
assigning the empty string, setenv xxx= should too.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

---
 commands/setenv.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/commands/setenv.c b/commands/setenv.c
index 6992f604f513..9aeb8f010bc5 100644
--- a/commands/setenv.c
+++ b/commands/setenv.c
@@ -18,8 +18,7 @@ static int do_setenv(int argc, char *argv[])
 	equal = strrchr(argv[1], '=');
 	if (equal) {
 		equal[0] = '\0';
-		if (equal[1])
-			argv[2] = &equal[1];
+		argv[2] = &equal[1];
 	}
 
 	if (argv[2])
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
