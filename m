Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ww0-f49.google.com ([74.125.82.49])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1QGzBD-0000K8-8I
	for barebox@lists.infradead.org; Mon, 02 May 2011 19:53:17 +0000
Received: by wwb39 with SMTP id 39so4761328wwb.18
	for <barebox@lists.infradead.org>; Mon, 02 May 2011 12:53:13 -0700 (PDT)
From: Marek Belisko <marek.belisko@open-nandra.com>
Date: Mon,  2 May 2011 21:52:57 +0200
Message-Id: <1304365979-5546-1-git-send-email-marek.belisko@open-nandra.com>
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
Subject: [PATCH 1/3] arm: eukrea: Fix compilation warning.
To: barebox@lists.infradead.org
Cc: Marek Belisko <marek.belisko@open-nandra.com>

Fix following warning:
arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c: In function 'eukrea_cpuimx35_devices_init':
arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c:176:15: warning: unused variable 'tmp'

Signed-off-by: Marek Belisko <marek.belisko@open-nandra.com>
---
 arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c |    2 --
 1 files changed, 0 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c b/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
index 73bb2e1..f0eb088 100644
--- a/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
+++ b/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
@@ -173,8 +173,6 @@ postcore_initcall(eukrea_cpuimx35_mmu_init);
 
 static int eukrea_cpuimx35_devices_init(void)
 {
-	unsigned int tmp;
-
 	imx35_add_nand(&nand_info);
 
 	devfs_add_partition("nand0", 0x00000, 0x40000, PARTITION_FIXED, "self_raw");
-- 
1.7.4.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
