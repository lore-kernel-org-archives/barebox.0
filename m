Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo2.mail-out.ovh.net ([87.98.181.248]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T4m6a-0007LM-AB
 for barebox@lists.infradead.org; Fri, 24 Aug 2012 05:06:50 +0000
Received: from mail21.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 5F52FDC0FC4
 for <barebox@lists.infradead.org>; Fri, 24 Aug 2012 07:11:45 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 24 Aug 2012 07:06:56 +0200
Message-Id: <1345784816-31344-7-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1345784816-31344-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120824050332.GK6271@game.jcrosoft.org>
 <1345784816-31344-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 7/7] defaultenv-2: add symbolic link support to boot/nfs
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 defaultenv-2/base/boot/nfs |   55 +++++++++++++++++++++++++++++++++++++++++---
 1 file changed, 52 insertions(+), 3 deletions(-)

diff --git a/defaultenv-2/base/boot/nfs b/defaultenv-2/base/boot/nfs
index 248f975..a33a21c 100644
--- a/defaultenv-2/base/boot/nfs
+++ b/defaultenv-2/base/boot/nfs
@@ -43,6 +43,18 @@ if [ -n "${global.dhcp.bootfile}" ]; then
 	mount -t nfs "${eth0.serverip}:${mnt}" "${path}"
 
 	global.bootm.image="${path}/${bootfile}"
+
+	if [ -L "${global.bootm.image}" ]; then
+		readlink -f "${global.bootm.image}" bootfile_symlink
+
+		dirname -V "${bootfile_symlink}" mnt
+		basename "${bootfile_symlink}" bootfile
+
+		umount "${path}"
+		mount -t nfs "${eth0.serverip}:${mnt}" "${path}"
+
+		global.bootm.image="${path}/${bootfile}"
+	fi
 fi
 
 if [ -n "${global.dhcp.oftree_file}" ]; then
@@ -61,13 +73,50 @@ if [ -n "${global.dhcp.oftree_file}" ]; then
 	mount -t nfs "${eth0.serverip}:${mnt}" "${path}"
 
 	global.bootm.oftree="${path}/${bootfile}"
+
+	if [ -L "${global.bootm.oftree}" ]; then
+		readlink -f "${global.bootm.oftree}" oftree_symlink
+
+		dirname -V "${oftree_symlink}" mnt
+		basename "${oftree_symlink}" bootfile
+
+		umount "${path}"
+		mount -t nfs "${eth0.serverip}:${mnt}" "${path}"
+
+		global.bootm.oftree="${path}/${bootfile}"
+	fi
+fi
+
+if [ ${global.allow_color} = "true" ]; then
+	blue="\e[1;36m"
+	normal="\e[0m"
 fi
 
 if [ x${bootp} = x1 ]; then
 	echo "Boot via bootp/dhcp on server ${eth0.serverip}"
-	[ -n "${global.dhcp.bootfile}" ] && echo "bootm.image => ${global.dhcp.bootfile}"
-	[ -n "${global.dhcp.oftree_file}" ] && echo "bootm.oftree => ${global.dhcp.oftree_file}"
-	[ -n "${global.dhcp.rootpath}" ] && echo "nfsroot => ${global.dhcp.rootpath}"
+	if [ -n "${global.dhcp.bootfile}" ]; then
+		echo -n "bootm.image => "
+		if [ "x${bootfile_symlink}" != x ]; then
+			echo -e -n "${blue}${global.dhcp.bootfile}${normal}"
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
+			echo -e -n "${blue}${global.dhcp.oftree_file}${normal}"
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
