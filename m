Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp30.i.mail.ru ([94.100.177.90])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U3n5F-0005Om-DR
 for barebox@lists.infradead.org; Fri, 08 Feb 2013 12:29:38 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Fri,  8 Feb 2013 16:28:26 +0400
Message-Id: <1360326508-30214-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 1/3] ARM: ccmx51: Fix printing board HW-revision
To: barebox@lists.infradead.org

Board hardware revision is 1-based. This patch corrects printed value,
so now value printed in console is equal value printed on PCB.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/boards/ccxmx51/ccxmx51.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/arch/arm/boards/ccxmx51/ccxmx51.c b/arch/arm/boards/ccxmx51/ccxmx51.c
index a9bf16a..5ec304b 100644
--- a/arch/arm/boards/ccxmx51/ccxmx51.c
+++ b/arch/arm/boards/ccxmx51/ccxmx51.c
@@ -392,7 +392,7 @@ static int ccxmx51_devices_init(void)
 	printf("Module Variant: %s (0x%02x)\n", ccxmx51_id->id_string, hwid[0]);
 
 	if (hwid[0]) {
-		printf("Module HW Rev : %02x\n", hwid[1]);
+		printf("Module HW Rev : %02x\n", hwid[1] + 1);
 		switch (hwid[2] & 0xc0) {
 		case 0x00:
 			manloc = 'B';
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
