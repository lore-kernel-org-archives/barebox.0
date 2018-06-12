Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x22c.google.com ([2607:f8b0:400e:c01::22c])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fSoLE-0008Qc-9o
 for barebox@lists.infradead.org; Tue, 12 Jun 2018 18:48:51 +0000
Received: by mail-pl0-x22c.google.com with SMTP id z9-v6so14864276plk.11
 for <barebox@lists.infradead.org>; Tue, 12 Jun 2018 11:48:17 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 12 Jun 2018 11:47:54 -0700
Message-Id: <20180612184800.4940-9-andrew.smirnov@gmail.com>
In-Reply-To: <20180612184800.4940-1-andrew.smirnov@gmail.com>
References: <20180612184800.4940-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 08/14] VFxxx: zii-vf610-dev: Drop most custom DDRMC DCD code
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Both zii-vf610-dev and vf610-twr boards have same DDR layout. Since
provenance of those custom settings is unclear, drop them in favor of
what vf610-twr board does.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 .../zii-vf610-dev/flash-header-zii-vf610-dev.imxcfg       | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/arch/arm/boards/zii-vf610-dev/flash-header-zii-vf610-dev.imxcfg b/arch/arm/boards/zii-vf610-dev/flash-header-zii-vf610-dev.imxcfg
index d45aa2740..e03bd9b74 100644
--- a/arch/arm/boards/zii-vf610-dev/flash-header-zii-vf610-dev.imxcfg
+++ b/arch/arm/boards/zii-vf610-dev/flash-header-zii-vf610-dev.imxcfg
@@ -11,15 +11,7 @@ dcdofs 0x400
 
 wm 32 DDRMC_CR26 0x0c300068
 wm 32 DDRMC_CR31 0x006c0200
-wm 32 DDRMC_CR49 0x00000000
-wm 32 DDRMC_CR51 0x00000000
-wm 32 DDRMC_CR57 0x02000000
 wm 32 DDRMC_CR73 0x0a010100
-wm 32 DDRMC_CR76 0x03030000
-wm 32 DDRMC_CR102 0x00000000
-wm 32 DDRMC_CR105 0x00000c00
-wm 32 DDRMC_CR106 0x00000000
-wm 32 DDRMC_CR110 0x0000000c
 
 /*
  * zii-vf610-dev derivatives come with 512MiB of RAM, so we need to
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
