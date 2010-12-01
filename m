Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bw0-f49.google.com ([209.85.214.49])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PNjnI-0004n3-Hs
	for barebox@lists.infradead.org; Wed, 01 Dec 2010 10:20:15 +0000
Received: by bwz5 with SMTP id 5so6201185bwz.36
	for <barebox@lists.infradead.org>; Wed, 01 Dec 2010 02:20:10 -0800 (PST)
From: Marek Belisko <marek.belisko@open-nandra.com>
Date: Wed,  1 Dec 2010 11:22:36 +0100
Message-Id: <1291198956-20628-1-git-send-email-marek.belisko@open-nandra.com>
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
Subject: [PATCH] arm: mini2440: Add memory size.
To: barebox@lists.infradead.org
Cc: Marek Belisko <marek.belisko@open-nandra.com>

MINI240 board has available always 64M of memory so add
size to memory device structure.

Signed-off-by: Marek Belisko <marek.belisko@open-nandra.com>
---
 arch/arm/boards/mini2440/mini2440.c |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/arch/arm/boards/mini2440/mini2440.c b/arch/arm/boards/mini2440/mini2440.c
index a673a5d..9639176 100644
--- a/arch/arm/boards/mini2440/mini2440.c
+++ b/arch/arm/boards/mini2440/mini2440.c
@@ -47,6 +47,7 @@ static struct memory_platform_data ram_pdata = {
 static struct device_d sdram_dev = {
 	.name		= "mem",
 	.map_base	= CS6_BASE,
+	.size		= 64 * 1024 * 1024,
 	.platform_data	= &ram_pdata,
 };
 
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
