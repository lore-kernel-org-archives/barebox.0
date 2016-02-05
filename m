Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aRi1X-00068i-AD
 for barebox@lists.infradead.org; Fri, 05 Feb 2016 15:10:17 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <jbe@pengutronix.de>) id 1aRi1A-0005Ym-HP
 for barebox@lists.infradead.org; Fri, 05 Feb 2016 16:09:52 +0100
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.86)
 (envelope-from <jbe@pengutronix.de>) id 1aRi1A-0004yG-AS
 for barebox@lists.infradead.org; Fri, 05 Feb 2016 16:09:52 +0100
From: Juergen Borleis <jbe@pengutronix.de>
Date: Fri,  5 Feb 2016 16:09:47 +0100
Message-Id: <1454684987-16961-2-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1454684987-16961-1-git-send-email-jbe@pengutronix.de>
References: <1454684987-16961-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH] nfs: forward filesystem options to the kernel command line
To: barebox@lists.infradead.org

Using NFS in conjunction with boot spec and the feature to let Barebox
auto generate a kernel command line must keep the options the NFS filesystem
was mounted in Barebox. This patch extends the kernel command line parameter
on demand if something different than the defaults are used.

The command:

barebox:/ boot nfs://myhost//root

expands to the kernel command line:

nfsroot=myhost:/root,v3,tcp

while the command:

barebox:/ boot nfs://myhost:2049//root

expands now to the kernel command line:

nfsroot=myhost:/root,v3,tcp,mountport=2049,port=2049

Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
---
 Documentation/user/booting-linux.rst |  2 +-
 fs/nfs.c                             | 21 ++++++++++++++++++++-
 2 files changed, 21 insertions(+), 2 deletions(-)

diff --git a/Documentation/user/booting-linux.rst b/Documentation/user/booting-linux.rst
index 39084e5..5b021f0 100644
--- a/Documentation/user/booting-linux.rst
+++ b/Documentation/user/booting-linux.rst
@@ -203,7 +203,7 @@ compatible NFS URI string must be passed to the boot command:
 
 .. code-block:: sh
 
-  boot nfs://nfshost//path/
+  boot nfs://nfshost[:port]//path/
 
 Additionally to the options defined in the original spec barebox understands the
 ``linux-appendroot`` option. This is a boolean value and if set to ``true`` barebox
diff --git a/fs/nfs.c b/fs/nfs.c
index 3824752..87828fc 100644
--- a/fs/nfs.c
+++ b/fs/nfs.c
@@ -133,7 +133,9 @@ struct nfs_priv {
 	IPaddr_t server;
 	char *path;
 	uint16_t mount_port;
+	unsigned manual_mount_port:1;
 	uint16_t nfs_port;
+	unsigned manual_nfs_port:1;
 	uint32_t rpc_id;
 	uint32_t rootfh_len;
 	char rootfh[NFS3_FHSIZE];
@@ -1311,7 +1313,7 @@ static char *rootnfsopts;
 
 static void nfs_set_rootarg(struct nfs_priv *npriv, struct fs_device_d *fsdev)
 {
-	char *str;
+	char *str, *tmp;
 	const char *ip;
 
 	ip = ip_to_string(npriv->server);
@@ -1319,6 +1321,19 @@ static void nfs_set_rootarg(struct nfs_priv *npriv, struct fs_device_d *fsdev)
 			ip, npriv->path, rootnfsopts[0] ? "," : "",
 			rootnfsopts);
 
+	/* forward specific mount options on demand */
+	if (npriv->manual_nfs_port == 1) {
+		tmp = asprintf("%s,port=%hu", str, npriv->nfs_port);
+		free(str);
+		str = tmp;
+	}
+
+	if (npriv->manual_mount_port == 1) {
+		tmp = asprintf("%s,mountport=%hu", str, npriv->mount_port);
+		free(str);
+		str = tmp;
+	}
+
 	fsdev_set_linux_rootarg(fsdev, str);
 
 	free(str);
@@ -1367,6 +1382,8 @@ static int nfs_probe(struct device_d *dev)
 			goto err2;
 		}
 		npriv->mount_port = ret;
+	} else {
+		npriv->manual_mount_port = 1;
 	}
 	debug("mount port: %hu\n", npriv->mount_port);
 
@@ -1378,6 +1395,8 @@ static int nfs_probe(struct device_d *dev)
 			goto err2;
 		}
 		npriv->nfs_port = ret;
+	} else {
+		npriv->manual_nfs_port = 1;
 	}
 	debug("nfs port: %d\n", npriv->nfs_port);
 
-- 
2.7.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
