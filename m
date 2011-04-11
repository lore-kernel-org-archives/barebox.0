Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wy0-f177.google.com ([74.125.82.177])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q9P1s-00025w-0t
	for barebox@lists.infradead.org; Mon, 11 Apr 2011 21:52:20 +0000
Received: by wyb28 with SMTP id 28so6435332wyb.36
	for <barebox@lists.infradead.org>; Mon, 11 Apr 2011 14:52:14 -0700 (PDT)
From: franck.jullien@gmail.com
Date: Mon, 11 Apr 2011 23:52:09 +0200
Message-Id: <1302558729-3298-4-git-send-email-franck.jullien@gmail.com>
In-Reply-To: <1302558729-3298-1-git-send-email-franck.jullien@gmail.com>
References: <1302558729-3298-1-git-send-email-franck.jullien@gmail.com>
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
Subject: [PATCH 3/3] Add platform data to the mac device
To: barebox@lists.infradead.org

From: Franck JULLIEN <franck.jullien@gmail.com>

The PHY address must be passed to the driver via platform_data.

Signed-off-by: Franck JULLIEN <franck.jullien@gmail.com>
---
 arch/nios2/boards/generic/generic.c |   11 +++++++----
 1 files changed, 7 insertions(+), 4 deletions(-)

diff --git a/arch/nios2/boards/generic/generic.c b/arch/nios2/boards/generic/generic.c
index 99c855d..7e939ce 100644
--- a/arch/nios2/boards/generic/generic.c
+++ b/arch/nios2/boards/generic/generic.c
@@ -11,11 +11,14 @@ static struct device_d cfi_dev = {
 	.size     = NIOS_SOPC_FLASH_SIZE,
 };
 
+static int phy_address = 1;
+
 static struct device_d mac_dev = {
-	.id       = -1,
-	.name     = "altera_tse",
-	.map_base = NIOS_SOPC_TSE_BASE,
-	.size     = 0x00000400,
+	.id            = -1,
+	.name          = "altera_tse",
+	.map_base      = NIOS_SOPC_TSE_BASE,
+	.size          = 0x00000400,
+	.platform_data = &phy_address,
 };
 
 static struct memory_platform_data ram_pdata = {
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
