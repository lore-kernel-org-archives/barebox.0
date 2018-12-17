Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gYtTX-0000lT-2B
 for barebox@lists.infradead.org; Mon, 17 Dec 2018 14:02:29 +0000
From: Teresa Remmet <t.remmet@phytec.de>
Date: Mon, 17 Dec 2018 15:02:09 +0100
Message-Id: <1545055330-33957-1-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 1/2] arm: boards: vscom-baltos: Run environment_initcall only
 on correct board
To: barebox@lists.infradead.org

Check for the correct hardware before reading the eeprom.

Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 arch/arm/boards/vscom-baltos/board.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/boards/vscom-baltos/board.c b/arch/arm/boards/vscom-baltos/board.c
index 39f40a6061f8..c64864d43200 100644
--- a/arch/arm/boards/vscom-baltos/board.c
+++ b/arch/arm/boards/vscom-baltos/board.c
@@ -68,6 +68,9 @@ static int baltos_read_eeprom(void)
 	int rc;
 	unsigned char mac_addr[6];
 
+	if (!of_machine_is_compatible("vscom,onrisc"))
+		return 0;
+
 	rc = read_file_2("/dev/eeprom0",
 			 &size,
 			 (void *)&buf,
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
