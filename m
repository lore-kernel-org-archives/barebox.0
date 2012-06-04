Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-f169.google.com ([209.85.212.169])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sbe58-0007BR-AR
 for barebox@lists.infradead.org; Mon, 04 Jun 2012 20:40:55 +0000
Received: by wibhn14 with SMTP id hn14so2608073wib.0
 for <barebox@lists.infradead.org>; Mon, 04 Jun 2012 13:40:52 -0700 (PDT)
From: =?UTF-8?q?Dirk=20H=C3=B6rner?= <dirker@gmail.com>
Date: Mon,  4 Jun 2012 22:40:14 +0200
Message-Id: <1338842419-27037-2-git-send-email-dirker@gmail.com>
In-Reply-To: <1338842419-27037-1-git-send-email-dirker@gmail.com>
References: <1338842419-27037-1-git-send-email-dirker@gmail.com>
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
Subject: [PATCH 1/6] kbuild: Use Elfnn_Half as replacement for Elfnn_Section
To: barebox@lists.infradead.org

From: Sam Ravnborg <sam@ravnborg.org>

The Elfnn_Section is not available on all platforms,
noteworthy are cygwin.
Use the safe replacement _Half.

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
---
 scripts/mod/modpost.h |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/scripts/mod/modpost.h b/scripts/mod/modpost.h
index 0c23259..497d614 100644
--- a/scripts/mod/modpost.h
+++ b/scripts/mod/modpost.h
@@ -17,7 +17,7 @@
 #define Elf_Shdr    Elf32_Shdr
 #define Elf_Sym     Elf32_Sym
 #define Elf_Addr    Elf32_Addr
-#define Elf_Section Elf32_Section
+#define Elf_Section Elf32_Half
 #define ELF_ST_BIND ELF32_ST_BIND
 #define ELF_ST_TYPE ELF32_ST_TYPE
 
@@ -31,7 +31,7 @@
 #define Elf_Shdr    Elf64_Shdr
 #define Elf_Sym     Elf64_Sym
 #define Elf_Addr    Elf64_Addr
-#define Elf_Section Elf64_Section
+#define Elf_Section Elf64_Half
 #define ELF_ST_BIND ELF64_ST_BIND
 #define ELF_ST_TYPE ELF64_ST_TYPE
 
-- 
1.7.10.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
