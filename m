Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlOzB-0002AH-Qk
 for barebox@lists.infradead.org; Wed, 17 Jun 2020 03:43:39 +0000
Received: by mail-qk1-x743.google.com with SMTP id q2so835271qkb.2
 for <barebox@lists.infradead.org>; Tue, 16 Jun 2020 20:43:37 -0700 (PDT)
From: David Dgien <dgienda125@gmail.com>
Date: Tue, 16 Jun 2020 23:44:03 -0400
Message-Id: <20200617034404.5904-8-dgienda125@gmail.com>
In-Reply-To: <20200617034404.5904-1-dgienda125@gmail.com>
References: <20200617034404.5904-1-dgienda125@gmail.com>
MIME-Version: 1.0
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [RFC PATCH 7/8] arm: elf: Add THM relocation types
To: barebox@lists.infradead.org
Cc: David Dgien <dgienda125@gmail.com>

Signed-off-by: David Dgien <dgienda125@gmail.com>
---
 arch/arm/include/asm/elf.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/include/asm/elf.h b/arch/arm/include/asm/elf.h
index b98b3e52a..3def56769 100644
--- a/arch/arm/include/asm/elf.h
+++ b/arch/arm/include/asm/elf.h
@@ -30,6 +30,9 @@ typedef struct user_fp elf_fpregset_t;
 #define R_ARM_CALL	28
 #define R_ARM_JUMP24	29
 
+#define R_ARM_THM_CALL		10
+#define R_ARM_THM_JUMP24	30
+
 /*
  * These are used to set parameters in the core dumps.
  */
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
