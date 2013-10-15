Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-x231.google.com ([2a00:1450:4013:c01::231])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VW8a7-0007bf-RF
 for barebox@lists.infradead.org; Tue, 15 Oct 2013 17:38:56 +0000
Received: by mail-ea0-f177.google.com with SMTP id f15so4086742eak.22
 for <barebox@lists.infradead.org>; Tue, 15 Oct 2013 10:38:32 -0700 (PDT)
From: Andre Heider <a.heider@gmail.com>
Date: Tue, 15 Oct 2013 19:38:22 +0200
Message-Id: <1381858703-27993-1-git-send-email-a.heider@gmail.com>
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
Subject: [PATCH] ARM: rpi: fix tty device name in bootargs-base
To: barebox@lists.infradead.org

Signed-off-by: Andre Heider <a.heider@gmail.com>
---
 arch/arm/boards/raspberry-pi/env/init/bootargs-base | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boards/raspberry-pi/env/init/bootargs-base b/arch/arm/boards/raspberry-pi/env/init/bootargs-base
index d869754..4dda550 100644
--- a/arch/arm/boards/raspberry-pi/env/init/bootargs-base
+++ b/arch/arm/boards/raspberry-pi/env/init/bootargs-base
@@ -5,4 +5,4 @@ if [ "$1" = menu ]; then
 	exit
 fi
 
-global.linux.bootargs.base="console=ttymxc0,115200"
+global.linux.bootargs.base="console=ttyAMA0,115200"
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
