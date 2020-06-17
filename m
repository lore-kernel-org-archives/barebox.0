Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlOzB-000297-Qr
 for barebox@lists.infradead.org; Wed, 17 Jun 2020 03:43:39 +0000
Received: by mail-qk1-x743.google.com with SMTP id b4so767918qkn.11
 for <barebox@lists.infradead.org>; Tue, 16 Jun 2020 20:43:36 -0700 (PDT)
From: David Dgien <dgienda125@gmail.com>
Date: Tue, 16 Jun 2020 23:44:02 -0400
Message-Id: <20200617034404.5904-7-dgienda125@gmail.com>
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
Subject: [RFC PATCH 6/8] arm: makefile: Fix compiler flag variable
To: barebox@lists.infradead.org
Cc: David Dgien <dgienda125@gmail.com>

In order for ARM modules to compile with the correct relocation types,
they must be built without -fPIE. Move -fPIE from KBUILD_CPPFLAGS to
KBUILD_CFLAGS_KERNEL so that the flag is only included when compiling
files being built into the barebox image.

Signed-off-by: David Dgien <dgienda125@gmail.com>
---
 arch/arm/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 6c7373c20..c18a1d802 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -139,7 +139,7 @@ LDFLAGS_barebox += --gc-sections
 LDFLAGS_pbl += --gc-sections
 
 # early code often runs at addresses we are not linked at
-KBUILD_CPPFLAGS += -fPIE
+KBUILD_CFLAGS_KERNEL += -fPIE
 
 ifdef CONFIG_RELOCATABLE
 LDFLAGS_barebox += -pie
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
