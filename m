Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycore.de ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.87 #1 (Red Hat Linux))
 id 1d45II-000798-6I
 for barebox@lists.infradead.org; Fri, 28 Apr 2017 12:46:42 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 57E04A002DC
 for <barebox@lists.infradead.org>; Fri, 28 Apr 2017 14:46:54 +0200 (CEST)
From: Daniel Schultz <d.schultz@phytec.de>
Date: Fri, 28 Apr 2017 14:46:03 +0200
Message-Id: <1493383568-27798-2-git-send-email-d.schultz@phytec.de>
In-Reply-To: <1493383568-27798-1-git-send-email-d.schultz@phytec.de>
References: <1493383568-27798-1-git-send-email-d.schultz@phytec.de>
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
Subject: [PATCH 2/7] arm: boards: Add MLO handler for EMMC devices
To: barebox@lists.infradead.org

This patch enables the barebox handler to flash MLOs on EMMC devices
with 'barebox_update'.

Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
---
 arch/arm/boards/phytec-som-am335x/board.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boards/phytec-som-am335x/board.c b/arch/arm/boards/phytec-som-am335x/board.c
index 7f62453..dc3b84a 100644
--- a/arch/arm/boards/phytec-som-am335x/board.c
+++ b/arch/arm/boards/phytec-som-am335x/board.c
@@ -112,6 +112,7 @@ static int physom_devices_init(void)
 		xloadslots, ARRAY_SIZE(xloadslots));
 	am33xx_bbu_nand_slots_register_handler("nand", nandslots,
 				ARRAY_SIZE(nandslots));
+	am33xx_bbu_emmc_mlo_register_handler("MLO.emmc", "/dev/mmc1");
 
 	if (IS_ENABLED(CONFIG_SHELL_NONE))
 		return am33xx_of_register_bootdevice();
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
