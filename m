Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 16.mo3.mail-out.ovh.net ([188.165.56.217]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T9xR4-0005sc-J8
 for barebox@lists.infradead.org; Fri, 07 Sep 2012 12:13:27 +0000
Received: from mail91.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 45A27FF8776
 for <barebox@lists.infradead.org>; Fri,  7 Sep 2012 14:21:01 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri,  7 Sep 2012 14:13:35 +0200
Message-Id: <1347020017-12110-9-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 09/11] defaultenv-2: boot/net add bootp support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 defaultenv-2/base/boot/net |   35 ++++++++++++++++++++++++++++++++++-
 1 file changed, 34 insertions(+), 1 deletion(-)

diff --git a/defaultenv-2/base/boot/net b/defaultenv-2/base/boot/net
index 922bef1..ff05077 100644
--- a/defaultenv-2/base/boot/net
+++ b/defaultenv-2/base/boot/net
@@ -7,8 +7,41 @@ fi
 
 path="/mnt/tftp"
 
+# to get the dhcp info (global.dhcp.rootpath, global.dhcp.bootfile, global.dhcp.oftree_file)
+ifdown eth0
+ifup eth0
+
 global.bootm.image="${path}/${global.user}-linux-${global.hostname}"
 #global.bootm.oftree="${path}/${global.user}-oftree-${global.hostname}"
-nfsroot="/home/${global.user}/nfsroot/${global.hostname}"
+
+if [ -n "${global.dhcp.rootpath}" ]; then
+	bootp=1
+	nfsroot="${global.dhcp.rootpath}"
+else
+	nfsroot="/home/${global.user}/nfsroot/${global.hostname}"
+fi
+
+if [ -n "${global.dhcp.bootfile}" -o -n "${global.dhcp.oftree_file}" ]; then
+	bootp=1
+	path="/mnt/dhcp"
+
+	if [ -d "${path}" ]; then
+		umount "${path}"
+	else
+		mkdir "${path}"
+	fi
+	mount -t tftp $eth0.serverip "${path}"
+
+	[ -n "${global.dhcp.bootfile}" ] && global.bootm.image="${path}/${global.dhcp.bootfile}"
+	[ -n "${global.dhcp.oftree_file}" ] && global.bootm.oftree="${path}/${global.dhcp.oftree_file}"
+fi
+
+if [ x${bootp} = x1 ]; then
+	echo "Boot via bootp/dhcp on server ${eth0.serverip}"
+	[ -n "${global.dhcp.bootfile}" ] && echo "bootm.image => ${global.dhcp.bootfile}"
+	[ -n "${global.dhcp.oftree_file}" ] && echo "bootm.oftree => ${global.dhcp.oftree_file}"
+	[ -n "${global.dhcp.rootpath}" ] && echo "nfsroot => ${global.dhcp.rootpath}"
+fi
+
 bootargs-ip
 bootargs-root-nfs -n "$nfsroot"
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
