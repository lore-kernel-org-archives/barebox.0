Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp46.i.mail.ru ([94.100.177.106])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WsXxe-0001Wp-CM
 for barebox@lists.infradead.org; Thu, 05 Jun 2014 13:44:08 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Thu,  5 Jun 2014 17:43:40 +0400
Message-Id: <1401975820-29215-3-git-send-email-shc_work@mail.ru>
In-Reply-To: <1401975820-29215-1-git-send-email-shc_work@mail.ru>
References: <1401975820-29215-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 3/3] ARM: clep7212: Make partition names more generic
To: barebox@lists.infradead.org

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/boards/clep7212/env/init/mtdparts-nor | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boards/clep7212/env/init/mtdparts-nor b/arch/arm/boards/clep7212/env/init/mtdparts-nor
index 7910299..8702b40 100644
--- a/arch/arm/boards/clep7212/env/init/mtdparts-nor
+++ b/arch/arm/boards/clep7212/env/init/mtdparts-nor
@@ -5,7 +5,7 @@ if [ "$1" = menu ]; then
 	exit
 fi
 
-mtdparts="256k(barebox),256k(bareboxenv),3584k(kernel),-(root)"
+mtdparts="256k(boot),256k(env),3584k(kernel),-(root)"
 kernelname="physmap-flash.0"
 
 mtdparts-add -d nor0 -k ${kernelname} -p ${mtdparts}
-- 
1.8.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
