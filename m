Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aQbJ5-0004hK-Ib
 for barebox@lists.infradead.org; Tue, 02 Feb 2016 13:47:48 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=localhost)
 by metis.ext.pengutronix.de with esmtp (Exim 4.80)
 (envelope-from <jbe@pengutronix.de>) id 1aQbIj-0005Q5-UC
 for barebox@lists.infradead.org; Tue, 02 Feb 2016 14:47:25 +0100
From: Juergen Borleis <jbe@pengutronix.de>
Date: Tue, 2 Feb 2016 14:49:09 +0100
References: <201602021206.30161.jbe@pengutronix.de>
In-Reply-To: <201602021206.30161.jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201602021449.10041.jbe@pengutronix.de>
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
Subject: [PATCH v2] nfs: forward filesystem options to the kernel command line
To: barebox@lists.infradead.org

Using NFS in conjunction with boot spec and the feature to let barebox
auto generate a kernel command line must keep the options the NFS filesystem
was mounted in barebox. This patch extends the kernel command line parameter
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
index 382475249fc8..effedcc6649c 100644
--- a/fs/nfs.c
+++ b/fs/nfs.c
@@ -1311,7 +1311,7 @@ static char *rootnfsopts;
 
 static void nfs_set_rootarg(struct nfs_priv *npriv, struct fs_device_d *fsdev)
 {
-	char *str;
+	char *str, *tmp;
 	const char *ip;
 
 	ip = ip_to_string(npriv->server);
@@ -1319,6 +1319,19 @@ static void nfs_set_rootarg(struct nfs_priv *npriv, struct fs_device_d *fsdev)
 			ip, npriv->path, rootnfsopts[0] ? "," : "",
 			rootnfsopts);
 
+	/* forward specific mount options on demand */
+	if (npriv->nfs_port != PROG_NFS) {
+		tmp = asprintf("%s,port=%hu", str, npriv->nfs_port);
+		free(str);
+		str = tmp;
+	}
+
+	if (npriv->mount_port != PROG_MOUNT) {
+		tmp = asprintf("%s,mountport=%hu", str, npriv->mount_port);
+		free(str);
+		str = tmp;
+	}
+
 	fsdev_set_linux_rootarg(fsdev, str);
 
 	free(str);

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
