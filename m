Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aQYlg-000502-Rq
 for barebox@lists.infradead.org; Tue, 02 Feb 2016 11:05:09 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=localhost)
 by metis.ext.pengutronix.de with esmtp (Exim 4.80)
 (envelope-from <jbe@pengutronix.de>) id 1aQYlJ-0007cX-Tj
 for barebox@lists.infradead.org; Tue, 02 Feb 2016 12:04:45 +0100
From: Juergen Borleis <jbe@pengutronix.de>
Date: Tue, 2 Feb 2016 12:06:30 +0100
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201602021206.30161.jbe@pengutronix.de>
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
Subject: [RFC] nfs: forward filesystem options to the kernel command line
To: barebox@lists.infradead.org

Using NFS in conjunction with boot spec and the feature to let barebox
auto generate a kernel command line must keep the options the NFS filesystem
was mounted in barebox.

This patch extends the kernel command line parameter on demand if something
different than the defaults were used.
    
The command:
    
barebox:/ boot nfs://myhost//root
    
expands to the kernel command line:
    
nfsroot=myhost:/root,v3,tcp
    
while the command:
    
barebox:/ boot nfs://myhost:2049//root
    
now expands to the kernel command line:
   
nfsroot=myhost:/root,v3,tcp,mountport=2049,port=2049
    
Signed-off-by: Juergen Borleis <jbe@pengutronix.de>

diff --git a/Documentation/user/booting-linux.rst b/Documentation/user/booting-linux.rst
index 39084e5afe08..5b021f0662de 100644
--- a/Documentation/user/booting-linux.rst
+++ b/Documentation/user/booting-linux.rst
@@ -203,7 +203,7 @@ compatible NFS URI string must be passed to the boot command:
 
 .. code-block:: sh
 
-  boot nfs://nfshost//path/
+  boot nfs://nfshost[:port]//path/
 
 Additionally to the options defined in the original spec barebox understands the
 ``linux-appendroot`` option. This is a boolean value and if set to ``true`` barebox
diff --git a/fs/nfs.c b/fs/nfs.c
index 382475249fc8..14d7cb138e40 100644
--- a/fs/nfs.c
+++ b/fs/nfs.c
@@ -1324,11 +1324,21 @@ static void nfs_set_rootarg(struct nfs_priv *npriv, struct fs_device_d *fsdev)
 	free(str);
 }
 
+static void nfs_extend_options(char **opts, const char *ext)
+{
+	size_t u;
+
+	u = strlen(*opts);
+	*opts = xrealloc(*opts, u + 1 + strlen(ext));
+	strcat(*opts + u, ext);
+}
+
 static int nfs_probe(struct device_d *dev)
 {
 	struct fs_device_d *fsdev = dev_to_fs_device(dev);
 	struct nfs_priv *npriv = xzalloc(sizeof(struct nfs_priv));
 	char *tmp = xstrdup(fsdev->backingstore);
+	char buf[20];
 	char *path;
 	int ret;
 
@@ -1367,6 +1377,9 @@ static int nfs_probe(struct device_d *dev)
 			goto err2;
 		}
 		npriv->mount_port = ret;
+	} else {
+		snprintf(buf, sizeof(buf), ",mountport=%d", npriv->mount_port);
+		nfs_extend_options(&rootnfsopts, buf);
 	}
 	debug("mount port: %hu\n", npriv->mount_port);
 
@@ -1378,6 +1391,9 @@ static int nfs_probe(struct device_d *dev)
 			goto err2;
 		}
 		npriv->nfs_port = ret;
+	} else {
+		snprintf(buf, sizeof(buf), ",port=%d", npriv->nfs_port);
+		nfs_extend_options(&rootnfsopts, buf);
 	}
 	debug("nfs port: %d\n", npriv->nfs_port);
 

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
