Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x231.google.com ([2a00:1450:4010:c04::231])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1acvFT-0004up-Rm
 for barebox@lists.infradead.org; Mon, 07 Mar 2016 13:31:01 +0000
Received: by mail-lb0-x231.google.com with SMTP id x1so129959363lbj.3
 for <barebox@lists.infradead.org>; Mon, 07 Mar 2016 05:30:39 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon,  7 Mar 2016 16:30:12 +0300
Message-Id: <1457357426-9868-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1457357426-9868-1-git-send-email-antonynpavlov@gmail.com>
References: <1457357426-9868-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 01/15] MIPS: probe_scache(): use MIPS_CONF_M linux kernel macro
To: barebox@lists.infradead.org
Cc: Peter Mamonov <pmamonov@gmail.com>

We already have MIPS_CONF_M macro in <asm/mipsregs.h> so
we have no need in homebrew CONFIG_M macro.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
Cc: Peter Mamonov <pmamonov@gmail.com>
---
 arch/mips/lib/c-r4k.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/arch/mips/lib/c-r4k.c b/arch/mips/lib/c-r4k.c
index 0a9dd0e..ff68677 100644
--- a/arch/mips/lib/c-r4k.c
+++ b/arch/mips/lib/c-r4k.c
@@ -91,7 +91,6 @@ static void probe_pcache(void)
 	}
 }
 
-#define CONFIG_M	(1 << 31)
 #define CONFIG2_SS_OFFSET	8
 #define CONFIG2_SL_OFFSET	4
 #define CONFIG2_SA_OFFSET	0
@@ -101,10 +100,10 @@ static void probe_scache(void)
 	unsigned int config2, config1, config = read_c0_config();
 	unsigned int ss, sl, sa;
 
-	if ((config & CONFIG_M) == 0)
+	if ((config & MIPS_CONF_M) == 0)
 		goto noscache;
 	config1 = read_c0_config1();
-	if ((config1 & CONFIG_M) == 0)
+	if ((config1 & MIPS_CONF_M) == 0)
 		goto noscache;
 	config2 = read_c0_config2();
 	ss = 0xf & (config2 >> CONFIG2_SS_OFFSET);
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
