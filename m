Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PocfC-0001Jc-N7
	for barebox@lists.infradead.org; Sun, 13 Feb 2011 14:11:01 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Sun, 13 Feb 2011 15:10:42 +0100
Message-Id: <1297606252-802-6-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1297606252-802-1-git-send-email-jbe@pengutronix.de>
References: <1297606252-802-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 05/15] mini2440: Fix a runtime warning when '.id=0' is used
To: barebox@lists.infradead.org
Cc: Juergen Beisert <juergen@kreuzholzen.de>

From: Juergen Beisert <juergen@kreuzholzen.de>

---
 arch/arm/boards/mini2440/mini2440.c |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/arch/arm/boards/mini2440/mini2440.c b/arch/arm/boards/mini2440/mini2440.c
index a3bb817..e22fbd0 100644
--- a/arch/arm/boards/mini2440/mini2440.c
+++ b/arch/arm/boards/mini2440/mini2440.c
@@ -45,6 +45,7 @@ static struct memory_platform_data ram_pdata = {
 };
 
 static struct device_d sdram_dev = {
+	.id		= -1,
 	.name		= "mem",
 	.map_base	= CS6_BASE,
 	.size		= 64 * 1024 * 1024,
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
