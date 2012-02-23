Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-f177.google.com ([74.125.82.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1S0bvB-0005S4-9x
 for barebox@lists.infradead.org; Thu, 23 Feb 2012 16:53:34 +0000
Received: by wera10 with SMTP id a10so1131650wer.36
 for <barebox@lists.infradead.org>; Thu, 23 Feb 2012 08:53:31 -0800 (PST)
From: Mark Olleson <mark.olleson@yamaha.co.uk>
Date: Thu, 23 Feb 2012 16:53:28 +0000
References: <35246B69-4D16-4459-9E1E-0C79C4350EFF@yamaha.co.uk>
Message-Id: <AF4465C4-1845-4DA0-B5B8-EEE9CB5A8AB5@yamaha.co.uk>
Mime-Version: 1.0 (Apple Message framework v1251.1)
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: PATCH: Fix MMC boot in OMAP4 xload configurations
To: barebox@lists.infradead.org

omap4_bootsrc() always returns OMAP_BOOTSRC_UNKNOWN when an OMAP4 xload image is built with pcm049_xload_defconfig.  This is likely to be the case for all OMAP4 xload configurations.

This means that when the CPU is configured to boot from MMC1 with boot[5:0],  xload will load the second stage boot loader from NAND flash (if present) rather than MMC1 as intended. 

omap4_bootsrc() reads data left behind towards the top of the SRAM by the ROM-based boot-loader.  This is the same SRAM into which the xload image is loaded.   The xload image is of a sufficient size that it overwrites these locations, and OMAP4_TRACING_VECTOR3 always contains 0.

These locations are in fact trampled by data in the BSS section of the image.   The single largest item in there is FILE files[MAX_FILES].  This patch reduces the size of files[] considerably.  The image now JUST fits. 

Long term, a better solution would be to not rely on OMAP4_TRACING_VECTOR3, and instead use the structure passed into the xload by the ROM-based boot loader - which also indicates the boot device.     This wold allow us another 4kB of code before we overflow the SRAM completely. 


Signed-off-by: Mark Olleson <mark@yamaha.co.uk>
---
diff --git a/include/stdio.h b/include/stdio.h
index 4901bc7..98a4639 100644
--- a/include/stdio.h
+++ b/include/stdio.h
@@ -52,8 +52,21 @@ int  vscnprintf(char *buf, size_t size, const char *fmt, va_list args);
 #define stdin          0
 #define stdout         1
 #define stderr         2
+
+#if defined (CONFIG_SHELL_NONE) && defined (CONFIG_ARCH_OMAP4)
+
+// OMAP4 XLOAD configuations are very tight on RAM. If MAX_FILES is any
+// larger, FILE files[MAX_FILES] (fs.c) tramples over data left for us by
+// ROM-based bootloader and breaks boot from mmc.
+
+#define MAX_FILES      16
+
+#else
+
+
 #define MAX_FILES      128
 
+#endif 
 int    fprintf(int file, const char *fmt, ...) __attribute__ ((format(__printf__, 2, 3)));
 int    fputs(int file, const char *s);
 int    fputc(int file, const char c);




_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
