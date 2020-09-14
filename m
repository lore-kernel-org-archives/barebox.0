Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kHqNw-0008Sm-7j
 for barebox@lists.infradead.org; Mon, 14 Sep 2020 15:27:35 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 14 Sep 2020 17:27:10 +0200
Message-Id: <20200914152711.3693-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 1/2] boot: ignore all spaces between boot targets
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Boot targets are split by space. strsep unlike strtok(_r) returns an
empty string for each pair of consecutive delimiters. Ignore this case.

Note that this changes behavior: previously both
	boot ''
	global.boot.default= boot

were identical to
	boot /env/boot

With this change, this is no longer the case.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/boot.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/commands/boot.c b/commands/boot.c
index ad2d83a17912..d7795bde726b 100644
--- a/commands/boot.c
+++ b/commands/boot.c
@@ -76,6 +76,8 @@ static int do_boot(int argc, char *argv[])
 	entries = bootentries_alloc();
 
 	while ((name = next(&handle)) != NULL) {
+		if (!*name)
+			continue;
 		ret = bootentry_create_from_name(entries, name);
 		if (ret <= 0)
 			printf("Nothing bootable found on '%s'\n", name);
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
