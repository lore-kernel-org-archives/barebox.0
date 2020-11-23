Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1khEUB-0004nV-Lu
 for barebox@lists.infradead.org; Mon, 23 Nov 2020 16:14:43 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 23 Nov 2020 17:14:31 +0100
Message-Id: <20201123161432.28064-2-a.fatoum@pengutronix.de>
In-Reply-To: <20201123161432.28064-1-a.fatoum@pengutronix.de>
References: <20201123161432.28064-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 2/3] commands: boot: display each list entry in a separate line
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

The boot entry lines could get quite long for bootspec entries and then
follow-up commit will make them even longer, thus split the lines into
two lines and indent the second.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/boot.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/common/boot.c b/common/boot.c
index 76d03c26c4f4..6e41849ee043 100644
--- a/common/boot.c
+++ b/common/boot.c
@@ -390,11 +390,10 @@ void bootsources_list(struct bootentries *bootentries)
 {
 	struct bootentry *entry;
 
-	printf("%-20s\n", "title");
-	printf("%-20s\n", "------");
+	printf("title\n------\n");
 
 	bootentries_for_each_entry(bootentries, entry)
-		printf("%-20s %s\n", entry->title, entry->description);
+		printf("%s\n\t%s\n", entry->title, entry->description);
 }
 
 BAREBOX_MAGICVAR(global.boot.default, "default boot order");
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
