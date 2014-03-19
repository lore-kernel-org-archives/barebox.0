Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WQIIE-0006fY-Au
 for barebox@lists.infradead.org; Wed, 19 Mar 2014 15:20:34 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 19 Mar 2014 16:20:11 +0100
Message-Id: <1395242411-10247-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1395242411-10247-1-git-send-email-s.hauer@pengutronix.de>
References: <1395242411-10247-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] boot command: only create boot entries from scripts
To: barebox@lists.infradead.org

When given a directory ignore all files that are not shell scripts.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/boot.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/commands/boot.c b/commands/boot.c
index 9c7aa21..a54d0d5 100644
--- a/commands/boot.c
+++ b/commands/boot.c
@@ -106,6 +106,11 @@ static void bootsource_action(struct menu *m, struct menu_entry *me)
 static int bootscript_create_entry(struct blspec *blspec, const char *name)
 {
 	struct blspec_entry *be;
+	enum filetype type;
+
+	type = file_name_detect_type(name);
+	if (type != filetype_sh)
+		return -EINVAL;
 
 	be = blspec_entry_alloc(blspec);
 	be->me.type = MENU_ENTRY_NORMAL;
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
