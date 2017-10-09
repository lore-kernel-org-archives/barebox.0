Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x243.google.com ([2a00:1450:4010:c07::243])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1e1YJ8-0001iF-Mh
 for barebox@lists.infradead.org; Mon, 09 Oct 2017 13:41:25 +0000
Received: by mail-lf0-x243.google.com with SMTP id l23so20495597lfk.10
 for <barebox@lists.infradead.org>; Mon, 09 Oct 2017 06:41:01 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon,  9 Oct 2017 16:40:53 +0300
Message-Id: <20171009134053.28215-1-antonynpavlov@gmail.com>
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
Subject: [PATCH] elf.h: Use EI_NIDENT instead of numeric value
To: barebox@lists.infradead.org

This is an adoption of the linux kernel commit

| commit eb6900fbfa43cb50391b80b38608e25280705693
| Author: Cyrill Gorcunov <gorcunov@gmail.com>
| Date:   Tue Apr 29 01:01:17 2008 -0700
|
|     ELF: Use EI_NIDENT instead of numeric value
|
|     Signed-off-by: Cyrill Gorcunov <gorcunov@gmail.com>
|     Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
|     Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 include/elf.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/elf.h b/include/elf.h
index a749bec34e..ebcec7db0d 100644
--- a/include/elf.h
+++ b/include/elf.h
@@ -207,7 +207,7 @@ typedef struct elf32_hdr{
 } Elf32_Ehdr;
 
 typedef struct elf64_hdr {
-  unsigned char	e_ident[16];		/* ELF "magic number" */
+  unsigned char	e_ident[EI_NIDENT];	/* ELF "magic number" */
   Elf64_Half e_type;
   Elf64_Half e_machine;
   Elf64_Word e_version;
-- 
2.14.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
