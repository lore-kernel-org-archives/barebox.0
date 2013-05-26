Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f180.google.com ([209.85.217.180])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UgZ7i-0003x2-2f
 for barebox@lists.infradead.org; Sun, 26 May 2013 11:28:26 +0000
Received: by mail-lb0-f180.google.com with SMTP id r10so5985156lbi.11
 for <barebox@lists.infradead.org>; Sun, 26 May 2013 04:28:03 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sun, 26 May 2013 15:27:00 +0400
Message-Id: <1369567621-12415-3-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1369567621-12415-1-git-send-email-antonynpavlov@gmail.com>
References: <1369567621-12415-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 2/3] MIPS: XBurst: enable pbl support
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/Kconfig |    2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
index d58b804..555dbb2 100644
--- a/arch/mips/Kconfig
+++ b/arch/mips/Kconfig
@@ -61,6 +61,8 @@ config MACH_MIPS_XBURST
 	select SYS_SUPPORTS_32BIT_KERNEL
 	select DRIVER_SERIAL_NS16550
 	select HAS_DEBUG_LL
+	select HAVE_PBL_IMAGE
+	select HAVE_IMAGE_COMPRESSION
 endchoice
 
 source arch/mips/mach-malta/Kconfig
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
