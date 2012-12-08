Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp45.i.mail.ru ([94.100.177.105])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1ThEHn-0004Jb-BE
 for barebox@lists.infradead.org; Sat, 08 Dec 2012 06:53:20 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sat,  8 Dec 2012 10:51:21 +0400
Message-Id: <1354949486-12917-3-git-send-email-shc_work@mail.ru>
In-Reply-To: <1354949486-12917-1-git-send-email-shc_work@mail.ru>
References: <1354949486-12917-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 3/8] Remove bad Kconfig reference to HAVE_MMU
To: barebox@lists.infradead.org

Barebox not contain symbol HAVE_MMU, so remove all references to it.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/mach-pxa/Kconfig |    1 -
 1 files changed, 0 insertions(+), 1 deletions(-)

diff --git a/arch/arm/mach-pxa/Kconfig b/arch/arm/mach-pxa/Kconfig
index 6671da9..6808d2f 100644
--- a/arch/arm/mach-pxa/Kconfig
+++ b/arch/arm/mach-pxa/Kconfig
@@ -43,7 +43,6 @@ config MACH_MIOA701
 config MACH_PCM027
 	bool "Phytec phyCORE-PXA270"
 	select MACH_HAS_LOWLEVEL_INIT
-	select HAVE_MMU
 	help
 	  Say Y here if you are using a Phytec phyCORE PXA270
 	  board
-- 
1.7.8.6


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
