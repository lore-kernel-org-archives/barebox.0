Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp60.i.mail.ru ([217.69.128.40])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gl480-0007rN-Oh
 for barebox@lists.infradead.org; Sun, 20 Jan 2019 03:50:34 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sun, 20 Jan 2019 06:50:24 +0300
Message-Id: <20190120035024.18282-3-shc_work@mail.ru>
In-Reply-To: <20190120035024.18282-1-shc_work@mail.ru>
References: <20190120035024.18282-1-shc_work@mail.ru>
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
Subject: [PATCH 3/3] MIPS: malta: Typo fix
To: barebox@lists.infradead.org

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/mips/mach-malta/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/mips/mach-malta/Kconfig b/arch/mips/mach-malta/Kconfig
index ceea937..dab0a7c 100644
--- a/arch/mips/mach-malta/Kconfig
+++ b/arch/mips/mach-malta/Kconfig
@@ -6,7 +6,7 @@ config ARCH_TEXT_BASE
 
 config MIPS_MALTA_MULTI_BOARDS
 	bool "Allow multiple boards to be selected"
-	select HAVE_PBL_MULTI_IMAGE
+	select HAVE_PBL_MULTI_IMAGES
 
 if MIPS_MALTA_MULTI_BOARDS
 
-- 
2.10.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
