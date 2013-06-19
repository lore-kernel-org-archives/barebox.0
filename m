Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UpPUp-0005jG-T9
 for barebox@lists.infradead.org; Wed, 19 Jun 2013 21:00:52 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 19 Jun 2013 23:00:29 +0200
Message-Id: <1371675629-7147-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] partitions: dos: fix memory leak in nt disk signature
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/partitions/dos.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/common/partitions/dos.c b/common/partitions/dos.c
index b9f31c3..29f1375 100644
--- a/common/partitions/dos.c
+++ b/common/partitions/dos.c
@@ -107,6 +107,8 @@ static int dos_get_disk_signature(struct param_d *p, void *_priv)
 
 	priv->signature = le32_to_cpup((__le32 *)(buf + 0x1b8));
 
+	free(buf);
+
 	return 0;
 }
 
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
