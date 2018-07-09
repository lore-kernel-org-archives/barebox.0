Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fcStB-0003iw-IV
 for barebox@lists.infradead.org; Mon, 09 Jul 2018 09:55:26 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  9 Jul 2018 11:55:13 +0200
Message-Id: <20180709095513.26524-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] cmdlinepart: Allow empty string
To: Barebox List <barebox@lists.infradead.org>

Currently when cmdlinepart_do_parse() is called with an empty
partitions string then an unnamed partition with size 0 is created.
This is wrong of course and instead no partition should be
created.

With this barebox no longer crashes while booting when all partitions
are deleted on the commandline using "nand0.partitions="

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 lib/cmdlinepart.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/lib/cmdlinepart.c b/lib/cmdlinepart.c
index d7d444115f..5b9f33ca1b 100644
--- a/lib/cmdlinepart.c
+++ b/lib/cmdlinepart.c
@@ -101,6 +101,9 @@ int cmdlinepart_do_parse(const char *devname, const char *parts, loff_t devsize,
 	loff_t offset = 0;
 	int ret;
 
+	if (!parts || *parts == '\0')
+		return 0;
+
 	while (1) {
 		loff_t size = 0;
 
-- 
2.18.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
