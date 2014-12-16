Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Y0sCk-0001yH-JB
 for barebox@lists.infradead.org; Tue, 16 Dec 2014 13:30:23 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 16 Dec 2014 14:29:58 +0100
Message-Id: <1418736598-18154-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] blspec: print error when devicetree not found
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/blspec.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/common/blspec.c b/common/blspec.c
index f46a11d..b9342d5 100644
--- a/common/blspec.c
+++ b/common/blspec.c
@@ -278,6 +278,7 @@ static bool entry_is_of_compatible(struct blspec_entry *entry)
 
 	fdt = read_file(filename, &size);
 	if (!fdt) {
+		pr_err("Cannot read: %s\n", filename);
 		ret = false;
 		goto out;
 	}
-- 
2.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
