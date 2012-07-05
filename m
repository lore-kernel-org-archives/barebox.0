Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SmgKy-0000Fs-0W
 for barebox@lists.infradead.org; Thu, 05 Jul 2012 07:18:54 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  5 Jul 2012 09:18:39 +0200
Message-Id: <1341472720-3248-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1341472720-3248-1-git-send-email-s.hauer@pengutronix.de>
References: <1341472720-3248-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/3] defenv-2: Add usage information for bootargs scripts
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 defaultenv-2/base/bin/bootargs-root-initrd |    7 ++++++-
 defaultenv-2/base/bin/bootargs-root-jffs2  |   16 +++++++++++++++-
 defaultenv-2/base/bin/bootargs-root-nfs    |    7 ++++++-
 defaultenv-2/base/bin/bootargs-root-ubi    |   13 ++++++++++++-
 4 files changed, 39 insertions(+), 4 deletions(-)

diff --git a/defaultenv-2/base/bin/bootargs-root-initrd b/defaultenv-2/base/bin/bootargs-root-initrd
index 4c59625..7072cea 100644
--- a/defaultenv-2/base/bin/bootargs-root-initrd
+++ b/defaultenv-2/base/bin/bootargs-root-initrd
@@ -2,9 +2,14 @@
 
 rdinit="/sbin/init"
 
-while getopt "i:" opt; do
+usage="$0 [OPTIONS]\n -i <rdinitpath> (/sbin/init)"
+
+while getopt "i:h" opt; do
 	if [ ${opt} = i ]; then
 		rdinit=${OPTARG}
+	elif [ ${opt} = h ]; then
+		echo -e "$usage"
+		exit 0
 	fi
 done
 
diff --git a/defaultenv-2/base/bin/bootargs-root-jffs2 b/defaultenv-2/base/bin/bootargs-root-jffs2
index db036da..ac9a4bd 100644
--- a/defaultenv-2/base/bin/bootargs-root-jffs2
+++ b/defaultenv-2/base/bin/bootargs-root-jffs2
@@ -1,9 +1,23 @@
 #!/bin/sh
 
-while getopt "m:" opt; do
+mtd=
+
+usage="$0 [OPTIONS]\n -m <mtd>"
+
+while getopt "m:h" opt; do
 	if [ ${opt} = m ]; then
 		mtd=${OPTARG}
+	elif [ ${opt} = h ]; then
+		echo -e "$usage"
+		exit 0
 	fi
 done
 
+echo "huhu; $1"
+
+if [ -z "$mtd" ]; then
+	echo -e "$usage"
+	exit 1
+fi
+
 global.linux.bootargs.root="root=$mtd rootfstype=jffs2"
diff --git a/defaultenv-2/base/bin/bootargs-root-nfs b/defaultenv-2/base/bin/bootargs-root-nfs
index bf97555..27bb6c4 100644
--- a/defaultenv-2/base/bin/bootargs-root-nfs
+++ b/defaultenv-2/base/bin/bootargs-root-nfs
@@ -1,10 +1,15 @@
 #!/bin/sh
 
-while getopt "n:s:" opt; do
+usage="$0 [OPTIONS]\n -n <nfspath>\n -s <serverip>"
+
+while getopt "n:s:h" opt; do
 	if [ ${opt} = n ]; then
 		nfsroot=${OPTARG}
 	elif [ ${opt} = s ]; then
 		serverip=${OPTARG}
+	elif [ ${opt} = h ]; then
+		echo -e "$usage"
+		exit 0
 	fi
 done
 
diff --git a/defaultenv-2/base/bin/bootargs-root-ubi b/defaultenv-2/base/bin/bootargs-root-ubi
index ef89104..fb7f328 100644
--- a/defaultenv-2/base/bin/bootargs-root-ubi
+++ b/defaultenv-2/base/bin/bootargs-root-ubi
@@ -1,13 +1,24 @@
 #!/bin/sh
 
 ubiroot=root
+mtd=
 
-while getopt "m:r:" opt; do
+usage="$0 [OPTIONS]\n -r <ubiroot> (root)\n -m <mtd>"
+
+while getopt "m:r:h" opt; do
 	if [ ${opt} = r ]; then
 		ubiroot=${OPTARG}
 	elif [ ${opt} = m ]; then
 		mtd=${OPTARG}
+	elif [ ${opt} = h ]; then
+		echo -e "$usage"
+		exit 0
 	fi
 done
 
+if [ -z "$mtd" ]; then
+	echo -e "$usage"
+	exit 1
+fi
+
 global.linux.bootargs.root="root=ubi0:$ubiroot ubi.mtd=$mtd rootfstype=ubifs"
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
