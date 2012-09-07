Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 20.mo3.mail-out.ovh.net ([178.33.47.94]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T9xR5-0005se-2l
 for barebox@lists.infradead.org; Fri, 07 Sep 2012 12:13:29 +0000
Received: from mail91.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id A63A0FF87EF
 for <barebox@lists.infradead.org>; Fri,  7 Sep 2012 14:21:01 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri,  7 Sep 2012 14:13:37 +0200
Message-Id: <1347020017-12110-11-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 11/11] defaultenv-2: add symbolic link support to boot/nfs
To: barebox@lists.infradead.org

If the symlink is not find on barebox try on the host.
So we are back compatible with nfs command.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 defaultenv-2/base/boot/nfs |   64 +++++++++++++++++++++++++++++++++++++++++---
 1 file changed, 61 insertions(+), 3 deletions(-)

diff --git a/defaultenv-2/base/boot/nfs b/defaultenv-2/base/boot/nfs
index 892f103..bf27d38 100644
--- a/defaultenv-2/base/boot/nfs
+++ b/defaultenv-2/base/boot/nfs
@@ -5,6 +5,8 @@ if [ "$1" = menu ]; then
 	exit
 fi
 
+. /env/data/ansi-colors
+
 path="/mnt/tftp"
 
 # to get the dhcp info (global.dhcp.rootpath, global.dhcp.bootfile, global.dhcp.oftree_file)
@@ -44,6 +46,24 @@ if [ -n "${global.dhcp.bootfile}" ]; then
 	mount -t nfs "${eth0.serverip}:${mnt}" "${path}"
 
 	global.bootm.image="${path}/${bootfile}"
+
+	if [ -L "${global.bootm.image}" ]; then
+		readlink -f "${global.bootm.image}" bootfile_symlink
+
+		# if the file is not on barebox fs assume it's on the host
+		if [ ! -e "${bootfile_symlink}" ]; then
+			dirname "${bootfile_symlink}" mnt
+			basename "${bootfile_symlink}" bootfile
+
+			umount "${path}"
+			mount -t nfs "${eth0.serverip}:${mnt}" "${path}"
+
+			bootfile_symlink="${path}/${bootfile_symlink}"
+			global.bootm.image="${path}/${bootfile}"
+		else
+			global.bootm.image="${bootfile_symlink}"
+		fi
+	fi
 fi
 
 if [ -n "${global.dhcp.oftree_file}" ]; then
@@ -62,13 +82,51 @@ if [ -n "${global.dhcp.oftree_file}" ]; then
 	mount -t nfs "${eth0.serverip}:${mnt}" "${path}"
 
 	global.bootm.oftree="${path}/${bootfile}"
+
+	if [ -L "${global.bootm.oftree}" ]; then
+		readlink -f "${global.bootm.oftree}" oftree_symlink
+
+		# if the file is not on barebox fs assume it's on the host
+		if [ ! -e "${oftree_symlink}" ]; then
+			dirname "${oftree_symlink}" mnt
+			basename "${oftree_symlink}" bootfile
+
+			umount "${path}"
+			mount -t nfs "${eth0.serverip}:${mnt}" "${path}"
+
+			oftree_symlink="${path}/${oftree_symlink}"
+			global.bootm.oftree="${path}/${bootfile}"
+		else
+			global.bootm.oftree="${oftree_symlink}"
+		fi
+	fi
 fi
 
 if [ x${bootp} = x1 ]; then
 	echo "Boot via bootp/dhcp on server ${eth0.serverip}"
-	[ -n "${global.dhcp.bootfile}" ] && echo "bootm.image => ${global.dhcp.bootfile}"
-	[ -n "${global.dhcp.oftree_file}" ] && echo "bootm.oftree => ${global.dhcp.oftree_file}"
-	[ -n "${global.dhcp.rootpath}" ] && echo "nfsroot => ${global.dhcp.rootpath}"
+	if [ -n "${global.dhcp.bootfile}" ]; then
+		echo -n "bootm.image => "
+		if [ "x${bootfile_symlink}" != x ]; then
+			echo -e -n "${CYAN}${global.dhcp.bootfile}${NC}"
+			echo -n " -> ${bootfile_symlink}"
+		else
+			echo -n "${global.dhcp.bootfile}"
+		fi
+		echo ""
+	fi
+
+	if [ -n "${global.dhcp.oftree_file}" ]; then
+		echo "bootm.oftree => "
+		if [ "x${oftree_symlink}" != x ]; then
+			echo -e -n "${CYAN}${global.dhcp.oftree_file}${NC}"
+			echo -n " -> ${oftree_symlink}"
+		else
+			echo -n "${global.dhcp.oftree_file}"
+		fi
+		echo ""
+	fi
+
+	[ -n "${global.dhcp.rootpath}" ] && echo "nfsroot -> ${global.dhcp.rootpath}"
 fi
 
 bootargs-ip
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
