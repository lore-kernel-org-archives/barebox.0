Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo2.mail-out.ovh.net ([87.98.181.248]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T4m6a-0007LN-8l
 for barebox@lists.infradead.org; Fri, 24 Aug 2012 05:06:49 +0000
Received: from mail21.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id E1A70DC0FC0
 for <barebox@lists.infradead.org>; Fri, 24 Aug 2012 07:11:44 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 24 Aug 2012 07:06:54 +0200
Message-Id: <1345784816-31344-5-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 5/7] defaultenv-2: boot/net add bootp support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 defaultenv-2/base/boot/net |   34 +++++++++++++++++++++++++++++++++-
 1 file changed, 33 insertions(+), 1 deletion(-)

diff --git a/defaultenv-2/base/boot/net b/defaultenv-2/base/boot/net
index 922bef1..a232e8c 100644
--- a/defaultenv-2/base/boot/net
+++ b/defaultenv-2/base/boot/net
@@ -7,8 +7,40 @@ fi
 
 path="/mnt/tftp"
 
+# to get the dhcp info (global.dhcp.rootpath, global.dhcp.bootfile, global.dhcp.oftree_file)
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
