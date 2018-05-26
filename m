Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x234.google.com ([2607:f8b0:400e:c05::234])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fMg6D-0005yX-1f
 for barebox@lists.infradead.org; Sat, 26 May 2018 20:47:38 +0000
Received: by mail-pg0-x234.google.com with SMTP id p21-v6so3669461pgd.11
 for <barebox@lists.infradead.org>; Sat, 26 May 2018 13:47:26 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sat, 26 May 2018 13:44:43 -0700
Message-Id: <20180526204451.16530-41-andrew.smirnov@gmail.com>
In-Reply-To: <20180526204451.16530-1-andrew.smirnov@gmail.com>
References: <20180526204451.16530-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 40/48] ARM: cache: Remove unused cache ops struct
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Remove what appears to be a leftover from moving ARMv8 cache function
into a separate file that happened in 4b57aae26 ("ARM: Create own
cache.c file for aarch64")

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/cpu/cache.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/cpu/cache.c b/arch/arm/cpu/cache.c
index 7047470f0..f4781fe3b 100644
--- a/arch/arm/cpu/cache.c
+++ b/arch/arm/cpu/cache.c
@@ -36,7 +36,6 @@ DEFINE_CPU_FNS(v4)
 DEFINE_CPU_FNS(v5)
 DEFINE_CPU_FNS(v6)
 DEFINE_CPU_FNS(v7)
-DEFINE_CPU_FNS(v8)
 
 void __dma_clean_range(unsigned long start, unsigned long end)
 {
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
