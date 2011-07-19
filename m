Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 16.mo4.mail-out.ovh.net ([188.165.55.104]
	helo=mo4.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QjEBa-0005Bd-Dv
	for barebox@lists.infradead.org; Tue, 19 Jul 2011 17:34:23 +0000
Received: from mail187.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo4.mail-out.ovh.net (Postfix) with SMTP id E3AA2FF9873
	for <barebox@lists.infradead.org>;
	Tue, 19 Jul 2011 19:34:50 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 19 Jul 2011 19:17:25 +0200
Message-Id: <1311095849-16071-4-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1311095849-16071-1-git-send-email-plagnioj@jcrosoft.com>
References: <1311095849-16071-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 4/8] nomadik: add missing IORESOURCE_MEM flags to resources
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/nhk8815/setup.c |    4 ++++
 arch/arm/mach-nomadik/8815.c    |    2 ++
 2 files changed, 6 insertions(+), 0 deletions(-)

diff --git a/arch/arm/boards/nhk8815/setup.c b/arch/arm/boards/nhk8815/setup.c
index 3b67e44..b7fa50a 100644
--- a/arch/arm/boards/nhk8815/setup.c
+++ b/arch/arm/boards/nhk8815/setup.c
@@ -37,6 +37,7 @@ static struct resource nhk8815_network_resources[] = {
 	[0] = {
 		.start	= 0x34000300,
 		.size	= 16,
+		.flags	= IORESOURCE_MEM,
 	},
 };
 
@@ -70,12 +71,15 @@ static struct resource nhk8815_nand_resources[] = {
 	{
 		.start	= NAND_IO_ADDR,
 		.size	= 0xfff,
+		.flags	= IORESOURCE_MEM,
 	}, {
 		.start	= NAND_IO_CMD,
 		.size	= 0xfff,
+		.flags	= IORESOURCE_MEM,
 	}, {
 		.start	= NAND_IO_DATA,
 		.size	= 0xfff,
+		.flags	= IORESOURCE_MEM,
 	}
 };
 
diff --git a/arch/arm/mach-nomadik/8815.c b/arch/arm/mach-nomadik/8815.c
index e5adafd..9df32a3 100644
--- a/arch/arm/mach-nomadik/8815.c
+++ b/arch/arm/mach-nomadik/8815.c
@@ -44,6 +44,7 @@ static struct resource uart0_serial_resources[] = {
 	[0] = {
 		.start	= NOMADIK_UART0_BASE,
 		.size	= 4096,
+		.flags	= IORESOURCE_MEM,
 	},
 };
 
@@ -58,6 +59,7 @@ static struct resource uart1_serial_resources[] = {
 	[0] = {
 		.start	= NOMADIK_UART1_BASE,
 		.size	= 4096,
+		.flags	= IORESOURCE_MEM,
 	},
 };
 
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
