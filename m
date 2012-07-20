Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f177.google.com ([209.85.217.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Ss8sr-0001Zq-RE
 for barebox@lists.infradead.org; Fri, 20 Jul 2012 08:48:29 +0000
Received: by mail-lb0-f177.google.com with SMTP id gg6so4936640lbb.36
 for <barebox@lists.infradead.org>; Fri, 20 Jul 2012 01:48:22 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri, 20 Jul 2012 12:47:38 +0400
Message-Id: <1342774059-2169-7-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1342774059-2169-1-git-send-email-antonynpavlov@gmail.com>
References: <1342774059-2169-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC 6/7] MIPS: qemu-malta: add KSEG0 memory region
To: barebox@lists.infradead.org

As most of ELF files are linked to KSEG0,
we need declaration for memory region (KSEG0)
for loading ELF files.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/boards/qemu-malta/init.c |    1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/mips/boards/qemu-malta/init.c b/arch/mips/boards/qemu-malta/init.c
index 0efc92a..1dd268f 100644
--- a/arch/mips/boards/qemu-malta/init.c
+++ b/arch/mips/boards/qemu-malta/init.c
@@ -34,6 +34,7 @@
 static int malta_mem_init(void)
 {
 	barebox_add_memory_bank("ram0", 0xa0000000, SZ_256M);
+	barebox_add_memory_bank("cram0", 0x80000000, SZ_256M);
 
 	return 0;
 }
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
