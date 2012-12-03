Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og113.obsmtp.com ([64.18.0.26])
 by merlin.infradead.org with smtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TfaSD-0004yZ-66
 for barebox@lists.infradead.org; Mon, 03 Dec 2012 18:09:21 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Mon,  3 Dec 2012 18:08:33 +0000
Message-Id: <1354558114-28799-18-git-send-email-renaud.barbier@ge.com>
In-Reply-To: <1354558114-28799-1-git-send-email-renaud.barbier@ge.com>
References: <1354558114-28799-1-git-send-email-renaud.barbier@ge.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 17/18] UBIFS: Improve error message when reading superblock
 failed
To: barebox@lists.infradead.org
Cc: Thomas Weber <weber@corscience.de>, Bernhard Walle <walle@corscience.de>

From: Bernhard Walle <walle@corscience.de>

In addition to the error message also display the error code. I had the
problem that my malloc memory was not enough (ENOMEM), and if u-boot
had displayed the error code immediately that would have saved me some
debugging.

Signed-off-by: Bernhard Walle <walle@corscience.de>

Use ubifs_err instead of printf.
Add "errno=%d" in output as suggested by Albert Aribaud.

Signed-off-by: Thomas Weber <weber@corscience.de>

Use priv->vol_name instead of "name".

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 fs/ubifs/super.c |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/fs/ubifs/super.c b/fs/ubifs/super.c
index 118d728..a77b73a 100644
--- a/fs/ubifs/super.c
+++ b/fs/ubifs/super.c
@@ -1189,8 +1189,8 @@ int ubifs_mount(struct ubifs_priv *priv)
 	mnt = NULL;
 	ret = ubifs_get_sb(&ubifs_fs_type, flags, priv->vol_name, data, mnt);
 	if (ret) {
-		printf("Error reading superblock on volume '%s'!\n",
-				priv->vol_name);
+		ubifs_err("Error reading superblock on volume '%s' errno=%d!\n",
+				priv->vol_name, ret);
 		return -1;
 	}
 
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
