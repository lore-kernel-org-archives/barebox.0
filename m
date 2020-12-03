Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kkm4q-0006aH-4v
 for barebox@lists.infradead.org; Thu, 03 Dec 2020 10:43:09 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  3 Dec 2020 11:42:57 +0100
Message-Id: <20201203104257.8263-2-a.fatoum@pengutronix.de>
In-Reply-To: <20201203104257.8263-1-a.fatoum@pengutronix.de>
References: <20201203104257.8263-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH v2 2/2] commands: memtester: fix mismatched format string
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

expression is of type size_t. Use the appropriate format string specifier
for printing it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2: new patch
---
 commands/memtester/memtester.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/commands/memtester/memtester.c b/commands/memtester/memtester.c
index 8b64d3232958..130dc97c8334 100644
--- a/commands/memtester/memtester.c
+++ b/commands/memtester/memtester.c
@@ -139,7 +139,7 @@ static int do_memtester(int argc, char **argv) {
 
     wantbytes = (size_t) strtoull_suffix(argv[optind], 0, 0);
     if (wantbytes < 2 * sizeof(ul)) {
-        printf("need at least %ldB of memory to test\n", 2 * sizeof(ul));
+        printf("need at least %zuB of memory to test\n", 2 * sizeof(ul));
         return COMMAND_ERROR_USAGE;
     }
     wantmb = (wantbytes >> 20);
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
