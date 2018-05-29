Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x242.google.com ([2607:f8b0:400e:c01::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fNWYT-0006w8-3s
 for barebox@lists.infradead.org; Tue, 29 May 2018 04:48:21 +0000
Received: by mail-pl0-x242.google.com with SMTP id i5-v6so8222420plt.2
 for <barebox@lists.infradead.org>; Mon, 28 May 2018 21:48:06 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 28 May 2018 21:47:28 -0700
Message-Id: <20180529044731.3964-5-andrew.smirnov@gmail.com>
In-Reply-To: <20180529044731.3964-1-andrew.smirnov@gmail.com>
References: <20180529044731.3964-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 4/7] i.MX: ocotp: Simplify BF macro
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, Vivien Didelot <vivien.didelot@savoirfairelinux.com>

Cc: Vivien Didelot <vivien.didelot@savoirfairelinux.com>
Tested-by: Vivien Didelot <vivien.didelot@savoirfairelinux.com>
Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/ocotp.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/arch/arm/mach-imx/ocotp.c b/arch/arm/mach-imx/ocotp.c
index 5b21479eb..8c44bbb16 100644
--- a/arch/arm/mach-imx/ocotp.c
+++ b/arch/arm/mach-imx/ocotp.c
@@ -55,16 +55,13 @@
 #define OCOTP_CTRL_ERROR		(1 << 9)
 #define OCOTP_CTRL_RELOAD_SHADOWS	(1 << 10)
 
-#define OCOTP_TIMING_STROBE_READ	16
 #define OCOTP_TIMING_STROBE_READ_MASK	0x003F0000
-#define OCOTP_TIMING_RELAX		12
 #define OCOTP_TIMING_RELAX_MASK		0x0000F000
-#define OCOTP_TIMING_STROBE_PROG	0
 #define OCOTP_TIMING_STROBE_PROG_MASK	0x00000FFF
 
 #define OCOTP_READ_CTRL_READ_FUSE	0x00000001
 
-#define BF(value, field)		(((value) << field) & field##_MASK)
+#define BF(value, field)		FIELD_PREP(field##_MASK, value)
 
 #define OCOTP_OFFSET_TO_ADDR(o)		(OCOTP_OFFSET_TO_INDEX(o) * 4)
 
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
