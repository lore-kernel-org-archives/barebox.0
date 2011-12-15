Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rb8sp-0006wJ-0H
 for barebox@lists.infradead.org; Thu, 15 Dec 2011 10:49:55 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 15 Dec 2011 11:49:35 +0100
Message-Id: <1323946179-9883-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1323946179-9883-1-git-send-email-s.hauer@pengutronix.de>
References: <1323946179-9883-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 3/7] ARM cpuinfo: decode more bits, use ARRAY_SIZE
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/cpuinfo.c |    6 +++---
 1 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/cpu/cpuinfo.c b/arch/arm/cpu/cpuinfo.c
index 05971b3..7be1671 100644
--- a/arch/arm/cpu/cpuinfo.c
+++ b/arch/arm/cpu/cpuinfo.c
@@ -47,8 +47,8 @@ static void decode_cache(unsigned long size)
 }
 
 static char *crbits[] = {"M", "A", "C", "W", "P", "D", "L", "B", "S", "R",
-	"F", "Z", "I", "V", "RR", "L4", "", "", "", "", "", "FI", "U", "XP",
-	"VE", "EE", "L2"};
+	"F", "Z", "I", "V", "RR", "L4", "DT", "", "IT", "ST", "", "FI", "U", "XP",
+	"VE", "EE", "L2", "", "TRE", "AFE", "TE"};
 
 static int do_cpuinfo(struct command *cmdtp, int argc, char *argv[])
 {
@@ -170,7 +170,7 @@ static int do_cpuinfo(struct command *cmdtp, int argc, char *argv[])
 	}
 
 	printf("Control register: ");
-	for (i = 0; i < 27; i++)
+	for (i = 0; i < ARRAY_SIZE(crbits); i++)
 		if (cr & (1 << i))
 			printf("%s ", crbits[i]);
 	printf("\n");
-- 
1.7.7.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
