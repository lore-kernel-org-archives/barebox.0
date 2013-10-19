Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x22f.google.com ([2a00:1450:4013:c00::22f])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VXVV2-0002ko-ME
 for barebox@lists.infradead.org; Sat, 19 Oct 2013 12:19:21 +0000
Received: by mail-ee0-f47.google.com with SMTP id d49so2669444eek.34
 for <barebox@lists.infradead.org>; Sat, 19 Oct 2013 05:18:59 -0700 (PDT)
Received: from mamamia.internal (a89-182-1-5.net-htp.de. [89.182.1.5])
 by mx.google.com with ESMTPSA id i1sm17216948eeg.0.2013.10.19.05.18.57
 for <barebox@lists.infradead.org>
 (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
 Sat, 19 Oct 2013 05:18:58 -0700 (PDT)
From: Andre Heider <a.heider@gmail.com>
Date: Sat, 19 Oct 2013 14:18:42 +0200
Message-Id: <1382185130-28995-2-git-send-email-a.heider@gmail.com>
In-Reply-To: <1382185130-28995-1-git-send-email-a.heider@gmail.com>
References: <1382185130-28995-1-git-send-email-a.heider@gmail.com>
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
Subject: [PATCH 01/10] ARM: cache: restore cache functions from the PBL
To: barebox@lists.infradead.org

When using CONFIG_MMU_EARLY combined with CONFIG_PBL_IMAGE, the barebox
setup reuses the MMU setup from the PBL, but doesn't setup the cache
functions.

Set these up to guarantee proper early cache handing before mmu_initcall().

Signed-off-by: Andre Heider <a.heider@gmail.com>
---
 arch/arm/cpu/start.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index f8d343f..f0a7df3 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -70,7 +70,9 @@ static noinline __noreturn void __start(uint32_t membase, uint32_t memsize,
 		endmem &= ~0x3fff;
 		endmem -= SZ_16K; /* ttb */
 
-		if (!IS_ENABLED(CONFIG_PBL_IMAGE)) {
+		if (IS_ENABLED(CONFIG_PBL_IMAGE)) {
+			arm_set_cache_functions();
+		} else {
 			arm_early_mmu_cache_invalidate();
 			mmu_early_enable(membase, memsize, endmem);
 		}
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
