Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sj80z-0004u9-Ed
 for barebox@lists.infradead.org; Mon, 25 Jun 2012 12:03:38 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 25 Jun 2012 14:03:26 +0200
Message-Id: <1340625806-7087-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] Makefile: echo size check error to stderr
To: barebox@lists.infradead.org

To be able to see it when in my build tests stdout goes to /dev/null

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Makefile |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Makefile b/Makefile
index 9294049..ff56591 100644
--- a/Makefile
+++ b/Makefile
@@ -540,7 +540,7 @@ quiet_cmd_check_file_size = CHKSIZE $@
 	max_size=`printf "%d" $2`;					\
 	if [ $$size -gt $$max_size ] ;					\
 	then								\
-		echo "$@ size $$size > of the maximum size $$max_size";	\
+		echo "$@ size $$size > of the maximum size $$max_size" >&2;	\
 		exit 1 ;						\
 	fi;
 
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
