Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kVPq8-0000hW-KS
 for barebox@lists.infradead.org; Thu, 22 Oct 2020 01:56:29 +0000
Received: by mail-pl1-x643.google.com with SMTP id w11so116441pll.8
 for <barebox@lists.infradead.org>; Wed, 21 Oct 2020 18:56:26 -0700 (PDT)
From: Du Huanpeng <u74147@gmail.com>
Date: Thu, 22 Oct 2020 09:56:16 +0800
Message-Id: <1603331776-10429-1-git-send-email-u74147@gmail.com>
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
Subject: [PATCH] MIPS: dtb: remove unused variable ``root''
To: barebox@lists.infradead.org
Cc: Du Huanpeng <u74147@gmail.com>

the ``root'' is not used and cause a warning.

Signed-off-by: Du Huanpeng <u74147@gmail.com>
---
 arch/mips/boot/dtb.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/mips/boot/dtb.c b/arch/mips/boot/dtb.c
index 2aff4ad..6fce470 100644
--- a/arch/mips/boot/dtb.c
+++ b/arch/mips/boot/dtb.c
@@ -35,7 +35,6 @@ extern char __dtb_start[];
 
 static int of_mips_init(void)
 {
-	struct device_node *root;
 	void *fdt;
 
 	fdt = glob_fdt;
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
