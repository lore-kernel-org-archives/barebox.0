Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.rapiddevelopmentkit.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YKpsI-0008WS-Fj
 for barebox@lists.infradead.org; Mon, 09 Feb 2015 15:03:47 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 4833EA00150
 for <barebox@lists.infradead.org>; Mon,  9 Feb 2015 16:04:03 +0100 (CET)
From: Wadim Egorov <w.egorov@phytec.de>
Date: Mon, 9 Feb 2015 16:01:47 +0100
Message-Id: <1423494107-29051-2-git-send-email-w.egorov@phytec.de>
In-Reply-To: <1423494107-29051-1-git-send-email-w.egorov@phytec.de>
References: <1423494107-29051-1-git-send-email-w.egorov@phytec.de>
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
Subject: [PATCH: For next 2/2] board: phytec-som-am335x: Print last occurred
 reset reason.
To: barebox@lists.infradead.org

Print the last occurred reset reason in MLO.

Signed-off-by: Wadim Egorov <w.egorov@phytec.de>
---
 arch/arm/boards/phytec-som-am335x/board.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boards/phytec-som-am335x/board.c b/arch/arm/boards/phytec-som-am335x/board.c
index d084898..61ee0f9 100644
--- a/arch/arm/boards/phytec-som-am335x/board.c
+++ b/arch/arm/boards/phytec-som-am335x/board.c
@@ -96,8 +96,10 @@ static int physom_devices_init(void)
 		xloadslots, ARRAY_SIZE(xloadslots));
 	am33xx_bbu_nand_register_handler("nand", "/dev/nand0.barebox.bb");
 
-	if (IS_ENABLED(CONFIG_SHELL_NONE))
+	if (IS_ENABLED(CONFIG_SHELL_NONE)) {
+		printf("%s reset occurred\n", am33xx_get_reset_reason_str());
 		return am33xx_of_register_bootdevice();
+	}
 
 	return 0;
 }
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
