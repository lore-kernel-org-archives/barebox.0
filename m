Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jq4Nc-0007k2-5M
 for barebox@lists.infradead.org; Tue, 30 Jun 2020 00:44:08 +0000
Received: by mail-qk1-x744.google.com with SMTP id 145so14608902qke.9
 for <barebox@lists.infradead.org>; Mon, 29 Jun 2020 17:44:07 -0700 (PDT)
From: David Dgien <dgienda125@gmail.com>
Date: Mon, 29 Jun 2020 20:38:36 -0400
Message-Id: <20200630003838.7745-7-dgienda125@gmail.com>
In-Reply-To: <20200630003838.7745-1-dgienda125@gmail.com>
References: <20200630003838.7745-1-dgienda125@gmail.com>
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
Subject: [PATCH v2 6/8] arm: makefile: Fix compiler flag variable
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
index 46dfe1f62..42e409871 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -137,7 +137,7 @@ LDFLAGS_barebox += --gc-sections
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
