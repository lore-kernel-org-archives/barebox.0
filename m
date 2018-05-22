Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x243.google.com ([2607:f8b0:400e:c01::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fKxmQ-0002M6-Mc
 for barebox@lists.infradead.org; Tue, 22 May 2018 03:16:25 +0000
Received: by mail-pl0-x243.google.com with SMTP id u6-v6so9985288pls.9
 for <barebox@lists.infradead.org>; Mon, 21 May 2018 20:15:56 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 21 May 2018 20:15:01 -0700
Message-Id: <20180522031510.25505-21-andrew.smirnov@gmail.com>
In-Reply-To: <20180522031510.25505-1-andrew.smirnov@gmail.com>
References: <20180522031510.25505-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v4 20/29] ARM: mmu: Use xmemalign in mmu_init()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

We don't handle OOM case in that code, so using xmemalign seems like a
better option.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/cpu/mmu.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index 9fbefa453..fc4046e85 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -450,7 +450,7 @@ static int mmu_init(void)
 			pr_crit("Critical Error: Can't request SDRAM region for ttb at %p\n",
 					ttb);
 	} else {
-		ttb = memalign(0x10000, 0x4000);
+		ttb = xmemalign(0x10000, 0x4000);
 	}
 
 	pr_debug("ttb: 0x%p\n", ttb);
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
