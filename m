Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kHog3-0000W9-DY
 for barebox@lists.infradead.org; Mon, 14 Sep 2020 13:37:52 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 14 Sep 2020 15:37:45 +0200
Message-Id: <20200914133748.5988-2-a.fatoum@pengutronix.de>
In-Reply-To: <20200914133748.5988-1-a.fatoum@pengutronix.de>
References: <20200914133748.5988-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 2/5] ls: don't print . and .. on recursive ls
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

They are already omitted on normal ls and they don't really add a new
information, so drop them for the recursive case as well.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/ls.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/commands/ls.c b/commands/ls.c
index 6a5475d094e5..59163f678d51 100644
--- a/commands/ls.c
+++ b/commands/ls.c
@@ -75,8 +75,13 @@ int ls(const char *path, ulong flags)
 	if (!dir)
 		return -errno;
 
-	while ((d = readdir(dir)))
+	while ((d = readdir(dir))) {
+		if (!strcmp(d->d_name, "."))
+			continue;
+		if (!strcmp(d->d_name, ".."))
+			continue;
 		string_list_add_sorted(&sl, d->d_name);
+	}
 
 	closedir(dir);
 
@@ -99,10 +104,6 @@ int ls(const char *path, ulong flags)
 		goto out;
 
 	string_list_for_each_entry(entry, &sl) {
-		if (!strcmp(entry->str, "."))
-			continue;
-		if (!strcmp(entry->str, ".."))
-			continue;
 		sprintf(tmp, "%s/%s", path, entry->str);
 
 		ret = lstat(tmp, &s);
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
