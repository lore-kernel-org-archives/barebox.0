Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1USQie-0002R0-0b
 for barebox@lists.infradead.org; Wed, 17 Apr 2013 11:40:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 17 Apr 2013 13:40:03 +0200
Message-Id: <1366198803-25613-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1366198803-25613-1-git-send-email-s.hauer@pengutronix.de>
References: <1366198803-25613-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] defaultenv-2: net: use oftree when existing
To: barebox@lists.infradead.org

For booting with devicetree we had to adjust /env/boot/net manually.
Instead, test if a devicetree exists and if yes, use it. This makes
for a better default.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 defaultenv-2/base/boot/net | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/defaultenv-2/base/boot/net b/defaultenv-2/base/boot/net
index 90c25aa..05bb728 100644
--- a/defaultenv-2/base/boot/net
+++ b/defaultenv-2/base/boot/net
@@ -8,7 +8,12 @@ fi
 path="/mnt/tftp"
 
 global.bootm.image="${path}/${global.user}-linux-${global.hostname}"
-#global.bootm.oftree="${path}/${global.user}-oftree-${global.hostname}"
+
+oftree="${path}/${global.user}-oftree-${global.hostname}"
+if [ -f "${oftree}" ]; then
+	global.bootm.oftree="$oftree"
+fi
+
 nfsroot="/home/${global.user}/nfsroot/${global.hostname}"
 bootargs-ip
 global.linux.bootargs.dyn.root="root=/dev/nfs nfsroot=$nfsroot,v3,tcp"
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
