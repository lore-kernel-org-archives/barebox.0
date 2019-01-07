Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ggPWF-0001AI-Oi
 for barebox@lists.infradead.org; Mon, 07 Jan 2019 07:40:23 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  7 Jan 2019 08:40:08 +0100
Message-Id: <20190107074008.3797-10-s.hauer@pengutronix.de>
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
Subject: [PATCH 9/9] defaultenv: resolve global.net.server before using it
To: Barebox List <barebox@lists.infradead.org>

global.net.server may contain a hostname, so we have to resolve it
before using it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/Kconfig                        | 1 +
 defaultenv/defaultenv-2-base/boot/net | 8 +++++++-
 2 files changed, 8 insertions(+), 1 deletion(-)

diff --git a/common/Kconfig b/common/Kconfig
index 1c2669084a..b522a86ad4 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -867,6 +867,7 @@ config DEFAULT_ENVIRONMENT_GENERIC_NEW
 	select CMD_BOOT
 	select NET_CMD_IFUP if NET
 	select CMD_IP_ROUTE_GET if NET
+	select CMD_HOST if NET
 
 config DEFAULT_ENVIRONMENT_GENERIC
 	bool "Generic environment template (old version)"
diff --git a/defaultenv/defaultenv-2-base/boot/net b/defaultenv/defaultenv-2-base/boot/net
index 840e9fc1f0..f8895290ad 100644
--- a/defaultenv/defaultenv-2-base/boot/net
+++ b/defaultenv/defaultenv-2-base/boot/net
@@ -9,7 +9,13 @@ if [ -f "${oftree}" ]; then
 	global.bootm.oftree="$oftree"
 fi
 
-nfsroot="${global.net.server}:/home/${global.user}/nfsroot/${global.hostname}"
+host ${global.net.server} nfsserver
+if [ $? != 0 ]; then
+	echo "Cannot resolve \"${global.net.server}\""
+	exit 1
+fi
+
+nfsroot="${nfsserver}:/home/${global.user}/nfsroot/${global.hostname}"
 
 ip_route_get -b ${global.net.server} global.linux.bootargs.dyn.ip
 
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
