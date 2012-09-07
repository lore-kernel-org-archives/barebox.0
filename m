Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 16.mo3.mail-out.ovh.net ([188.165.56.217]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T9xR4-0005sd-JA
 for barebox@lists.infradead.org; Fri, 07 Sep 2012 12:13:29 +0000
Received: from mail91.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 6C43FFF8781
 for <barebox@lists.infradead.org>; Fri,  7 Sep 2012 14:21:01 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri,  7 Sep 2012 14:13:36 +0200
Message-Id: <1347020017-12110-10-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1347020017-12110-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120907120713.GQ20330@game.jcrosoft.org>
 <1347020017-12110-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 10/11] defaultenv-2: add net boot support with kernel and
 oftree via nfs
To: barebox@lists.infradead.org

This also support the bootp.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 defaultenv-2/base/boot/nfs |   75 ++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 75 insertions(+)
 create mode 100644 defaultenv-2/base/boot/nfs

diff --git a/defaultenv-2/base/boot/nfs b/defaultenv-2/base/boot/nfs
new file mode 100644
index 0000000..892f103
--- /dev/null
+++ b/defaultenv-2/base/boot/nfs
@@ -0,0 +1,75 @@
+#!/bin/sh
+
+if [ "$1" = menu ]; then
+	boot-menu-add-entry "$0" "network (nfs, nfs)"
+	exit
+fi
+
+path="/mnt/tftp"
+
+# to get the dhcp info (global.dhcp.rootpath, global.dhcp.bootfile, global.dhcp.oftree_file)
+ifdown eth0
+ifup eth0
+
+global.bootm.image="${path}/${global.user}-linux-${global.hostname}"
+#global.bootm.oftree="${path}/${global.user}-oftree-${global.hostname}"
+
+if [ -n "${global.dhcp.rootpath}" ]; then
+	bootp=1
+	nfsroot="${global.dhcp.rootpath}"
+else
+	nfsroot="/home/${global.user}/nfsroot/${global.hostname}"
+fi
+
+dhcp_patch_base="/mnt/dhcp"
+if [ -d "${dhcp_patch_base}" ]; then
+	umount "${dhcp_patch_base}"
+else
+	mkdir "${dhcp_patch_base}"
+fi
+
+if [ -n "${global.dhcp.bootfile}" ]; then
+	bootp=1
+	path="${dhcp_patch_base}/bootfile"
+
+	if [ -d "${path}" ]; then
+		umount "${path}"
+	else
+		mkdir "${path}"
+	fi
+
+	dirname "${global.dhcp.bootfile}" mnt
+	basename "${global.dhcp.bootfile}" bootfile
+
+	mount -t nfs "${eth0.serverip}:${mnt}" "${path}"
+
+	global.bootm.image="${path}/${bootfile}"
+fi
+
+if [ -n "${global.dhcp.oftree_file}" ]; then
+	bootp=1
+	path="${dhcp_patch_base}/oftree_file"
+
+	if [ -d "${path}" ]; then
+		umount "${path}"
+	else
+		mkdir "${path}"
+	fi
+
+	dirname "${global.dhcp.oftree_file}" mnt
+	basename "${global.dhcp.oftree_file}" bootfile
+
+	mount -t nfs "${eth0.serverip}:${mnt}" "${path}"
+
+	global.bootm.oftree="${path}/${bootfile}"
+fi
+
+if [ x${bootp} = x1 ]; then
+	echo "Boot via bootp/dhcp on server ${eth0.serverip}"
+	[ -n "${global.dhcp.bootfile}" ] && echo "bootm.image => ${global.dhcp.bootfile}"
+	[ -n "${global.dhcp.oftree_file}" ] && echo "bootm.oftree => ${global.dhcp.oftree_file}"
+	[ -n "${global.dhcp.rootpath}" ] && echo "nfsroot => ${global.dhcp.rootpath}"
+fi
+
+bootargs-ip
+bootargs-root-nfs -n "$nfsroot"
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
