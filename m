Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bm13a-0001T4-L2
 for barebox@lists.infradead.org; Mon, 19 Sep 2016 16:04:36 +0000
From: Enrico Jorns <ejo@pengutronix.de>
Date: Mon, 19 Sep 2016 18:03:49 +0200
Message-Id: <1474301029-22877-3-git-send-email-ejo@pengutronix.de>
In-Reply-To: <1474301029-22877-1-git-send-email-ejo@pengutronix.de>
References: <1474301029-22877-1-git-send-email-ejo@pengutronix.de>
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
Subject: [PATCH 2/2] fs: nfs: pick up network interface bootargs parameter
To: barebox@lists.infradead.org
Cc: Michael Olbrich <m.olbrich@pengutronix.de>, Gavin Schenk <g.schenk@eckelmann.de>, Enrico Jorns <ejo@pengutronix.de>, u.kleine-koenig@pengutronix.de

This adds the linux.bootarg device parameter from the network device of
the current nfs connection and adds it to the nfs bootargs line.

This allows booting from nfs without manually setting a ip=dhcp or
ip=<ipaddr> option.

Signed-off-by: Enrico Jorns <ejo@pengutronix.de>
---
 fs/nfs.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/fs/nfs.c b/fs/nfs.c
index a0a9dfc..97f01cf 100644
--- a/fs/nfs.c
+++ b/fs/nfs.c
@@ -1314,6 +1314,7 @@ static char *rootnfsopts;
 static void nfs_set_rootarg(struct nfs_priv *npriv, struct fs_device_d *fsdev)
 {
 	char *str, *tmp;
+	const char *bootargs;
 
 	str = basprintf("root=/dev/nfs nfsroot=%pI4:%s%s%s", &npriv->server, npriv->path,
 			  rootnfsopts[0] ? "," : "", rootnfsopts);
@@ -1331,6 +1332,13 @@ static void nfs_set_rootarg(struct nfs_priv *npriv, struct fs_device_d *fsdev)
 		str = tmp;
 	}
 
+	bootargs = dev_get_param(&npriv->con->edev->dev, "linux.bootargs");
+	if (bootargs) {
+		tmp = basprintf("%s %s", str, bootargs);
+		free(str);
+		str = tmp;
+	}
+
 	fsdev_set_linux_rootarg(fsdev, str);
 
 	free(str);
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
