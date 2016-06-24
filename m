Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x242.google.com ([2a00:1450:400c:c09::242])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bGQAR-00017o-S1
 for barebox@lists.infradead.org; Fri, 24 Jun 2016 12:25:07 +0000
Received: by mail-wm0-x242.google.com with SMTP id a66so4547585wme.2
 for <barebox@lists.infradead.org>; Fri, 24 Jun 2016 05:24:43 -0700 (PDT)
From: Raphael Poggi <poggi.raph@gmail.com>
Date: Fri, 24 Jun 2016 14:23:53 +0200
Message-Id: <1466771041-89803-7-git-send-email-poggi.raph@gmail.com>
In-Reply-To: <1466771041-89803-1-git-send-email-poggi.raph@gmail.com>
References: <1466771041-89803-1-git-send-email-poggi.raph@gmail.com>
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
Subject: [PATCH v3 06/14] arm: cpu: start: arm64 does not support relocation
To: barebox@lists.infradead.org
Cc: Raphael Poggi <poggi.raph@gmail.com>

For now, the relocation is not supported in arm64, so
enclosed call to "setup_c" with #if directive

Signed-off-by: Raphael Poggi <poggi.raph@gmail.com>
---
 arch/arm/cpu/start.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index e037d91..5051115 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -151,7 +151,9 @@ __noreturn void barebox_non_pbl_start(unsigned long membase,
 		relocate_to_adr(barebox_base);
 	}
 
+#if __LINUX_ARM_ARCH__ <= 7
 	setup_c();
+#endif
 
 	barrier();
 
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
