Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp6-g21.free.fr ([2a01:e0c:1:1599::15])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SUPBR-0003oq-3a
 for barebox@lists.infradead.org; Tue, 15 May 2012 21:21:29 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
Date: Tue, 15 May 2012 23:21:13 +0200
Message-Id: <1337116877-17657-2-git-send-email-robert.jarzmik@free.fr>
In-Reply-To: <1337116877-17657-1-git-send-email-robert.jarzmik@free.fr>
References: <1337116877-17657-1-git-send-email-robert.jarzmik@free.fr>
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
Subject: [PATCH 1/5] arm/board: mioa701 align kernel options with kernel mtd
To: barebox@lists.infradead.org

Recent evolutions of linux kernel's drivers for docg3 chip,
ie. it's renaming for mtdparts option, is handled by this
patch.

Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>
---
 arch/arm/boards/mioa701/env/bin/init |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boards/mioa701/env/bin/init b/arch/arm/boards/mioa701/env/bin/init
index 8a54da0..2e806b9 100644
--- a/arch/arm/boards/mioa701/env/bin/init
+++ b/arch/arm/boards/mioa701/env/bin/init
@@ -31,5 +31,5 @@ if [ $? != 0 ]; then
 fi
 
 echo "Booting linux kernel on docg3 chip ..."
-bootargs="$bootargs mtdparts=mtd0:$mtdparts root=/dev/mtd4"
+bootargs="$bootargs mtdparts=docg3.0:$mtdparts ubi.mtd=4 rootfstype=ubifs root=ubi0:linux_root ro"
 bootm /dev/mtd0.kernel
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
