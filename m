Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-iw0-f177.google.com ([209.85.214.177])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PaFq9-00007f-3i
	for barebox@lists.infradead.org; Tue, 04 Jan 2011 22:58:55 +0000
Received: by mail-iw0-f177.google.com with SMTP id 38so15836097iwn.36
	for <barebox@lists.infradead.org>; Tue, 04 Jan 2011 14:58:53 -0800 (PST)
From: Marc Reilly <marc@cpdesign.com.au>
Date: Wed,  5 Jan 2011 09:57:56 +1100
Message-Id: <1294181876-16619-2-git-send-email-marc@cpdesign.com.au>
In-Reply-To: <1294181876-16619-1-git-send-email-marc@cpdesign.com.au>
References: <1294181876-16619-1-git-send-email-marc@cpdesign.com.au>
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
Subject: [PATCH] Put the explicit flash header sections back in.
To: barebox@lists.infradead.org

This (re)enables boards to have multiple boot headers so that the one
image can be used for booting from multiple boot sources.

Signed-off-by: Marc Reilly <marc@cpdesign.com.au>
---
 arch/arm/mach-imx/include/mach/imx-flash-header.h |   12 ++++++++++++
 1 files changed, 12 insertions(+), 0 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/imx-flash-header.h b/arch/arm/mach-imx/include/mach/imx-flash-header.h
index f1054da..b8f5176 100644
--- a/arch/arm/mach-imx/include/mach/imx-flash-header.h
+++ b/arch/arm/mach-imx/include/mach/imx-flash-header.h
@@ -20,6 +20,18 @@
 	#define FLASH_HEADER_OFFSET 0x0400
 #endif
 
+#define __flash_header_0x1000	__section(.flash_header_0x1000)
+#define __dcd_entry_0x1000	__section(.dcd_entry_0x1000)
+#define __image_len_0x1000	__section(.image_len_0x1000)
+
+#define __flash_header_0x0100	__section(.flash_header_0x0100)
+#define __dcd_entry_0x0100	__section(.dcd_entry_0x0100)
+#define __image_len_0x0100	__section(.image_len_0x0100)
+
+#define __flash_header_0x0400	__section(.flash_header_0x0400)
+#define __dcd_entry_0x0400	__section(.dcd_entry_0x0400)
+#define __image_len_0x0400	__section(.image_len_0x0400)
+
 /*
  * NOR is not automatically copied anywhere by the boot ROM
  */
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
