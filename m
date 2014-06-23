Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x236.google.com ([2a00:1450:4010:c04::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WzBgU-0006x2-PP
 for barebox@lists.infradead.org; Mon, 23 Jun 2014 21:21:51 +0000
Received: by mail-lb0-f182.google.com with SMTP id c11so5230872lbj.41
 for <barebox@lists.infradead.org>; Mon, 23 Jun 2014 14:21:27 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue, 24 Jun 2014 01:21:09 +0400
Message-Id: <1403558473-26199-4-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1403558473-26199-1-git-send-email-antonynpavlov@gmail.com>
References: <1403558473-26199-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 3/7] MIPS: malta: enable gpiolib
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
index 9a240b7..f6b9765 100644
--- a/arch/mips/Kconfig
+++ b/arch/mips/Kconfig
@@ -44,6 +44,7 @@ config MACH_MIPS_MALTA
 	select SYS_SUPPORTS_32BIT_KERNEL
 	select SYS_SUPPORTS_BIG_ENDIAN
 	select HAS_DEBUG_LL
+	select GPIOLIB
 
 config MACH_MIPS_AR231X
 	bool "Atheros ar231x-based boards"
-- 
1.9.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
