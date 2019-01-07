Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ggPW8-00015y-9M
 for barebox@lists.infradead.org; Mon, 07 Jan 2019 07:40:15 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  7 Jan 2019 08:40:04 +0100
Message-Id: <20190107074008.3797-6-s.hauer@pengutronix.de>
In-Reply-To: <20190107074008.3797-1-s.hauer@pengutronix.de>
References: <20190107074008.3797-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
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
Subject: [PATCH 5/9] defaultenv: Pass serverip to nfsroot string
To: Barebox List <barebox@lists.infradead.org>

This is necessary to allow overwriting the NFS server Linux boots from.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 defaultenv/defaultenv-2-base/boot/net | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/defaultenv/defaultenv-2-base/boot/net b/defaultenv/defaultenv-2-base/boot/net
index aaa5394f27..840e9fc1f0 100644
--- a/defaultenv/defaultenv-2-base/boot/net
+++ b/defaultenv/defaultenv-2-base/boot/net
@@ -9,7 +9,7 @@ if [ -f "${oftree}" ]; then
 	global.bootm.oftree="$oftree"
 fi
 
-nfsroot="/home/${global.user}/nfsroot/${global.hostname}"
+nfsroot="${global.net.server}:/home/${global.user}/nfsroot/${global.hostname}"
 
 ip_route_get -b ${global.net.server} global.linux.bootargs.dyn.ip
 
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
