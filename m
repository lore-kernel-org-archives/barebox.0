Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fLPNB-0001Ev-Kp
 for barebox@lists.infradead.org; Wed, 23 May 2018 08:43:58 +0000
Date: Wed, 23 May 2018 10:43:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180523084341.i5edq2nznd7spbi3@pengutronix.de>
References: <20180523051012.26148-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180523051012.26148-1-andrew.smirnov@gmail.com>
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
Subject: Re: [RFC] ARM: mmu: Do not try to pick early TTB up
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, May 22, 2018 at 10:10:12PM -0700, Andrey Smirnov wrote:
> The call to create_flat_mapping() in mmu.c will change both memory
> type and shareability of all RAM in use by barebox while MMU is on
> when done in conjunction with CONFIG_MMU_EARLY.

I notice that with MMU_EARLY enabled we call create_flat_mapping()
twice, once in the early MMU code and once when setting up the MMU for
real. In between we remap the the SDRAM cached which then is reverted
during the second call to create_flat_mapping().

This seems unnecessary. Does the following help you?

Sascha

------------------------8<-----------------------------

From 8abcb2fae2ee642bdcbf79aab2d9a3bdbb3dacc1 Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 23 May 2018 10:39:23 +0200
Subject: [PATCH] ARM: mmu: only create flat mapping when early MMU hasn't done
 it already

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/mmu.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index a89f420f20..7e2e5bf7e0 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -470,15 +470,15 @@ static int mmu_init(void)
 					ttb);
 	} else {
 		ttb = xmemalign(ARM_TTB_SIZE, ARM_TTB_SIZE);
-	}
 
-	pr_debug("ttb: 0x%p\n", ttb);
+		set_ttbr(ttb);
+		set_domain(DOMAIN_MANAGER);
 
-	set_ttbr(ttb);
-	set_domain(DOMAIN_MANAGER);
+		create_flat_mapping(ttb);
+		__mmu_cache_flush();
+	}
 
-	create_flat_mapping(ttb);
-	__mmu_cache_flush();
+	pr_debug("ttb: 0x%p\n", ttb);
 
 	vectors_init();
 
-- 
2.17.0

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
