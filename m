Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([94.23.35.102])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UfWtq-0007mp-FG
 for barebox@lists.infradead.org; Thu, 23 May 2013 14:53:51 +0000
From: Maxime Ripard <maxime.ripard@free-electrons.com>
Date: Thu, 23 May 2013 16:53:07 +0200
Message-Id: <1369320787-29172-1-git-send-email-maxime.ripard@free-electrons.com>
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
Subject: [PATCH] ARM: cfa10036: Add more board ID for boot time detection
To: barebox@lists.infradead.org
Cc: Maxime Ripard <maxime.ripard@free-electrons.com>, Brian Lilly <brian@crystalfontz.com>

From: Brian Lilly <brian@crystalfontz.com>

As new breakout boards are being developped, we need to add their IDs in
the device detection code, otherwise they will be treated as regular
CFA-10036.

Signed-off-by: Brian Lilly <brian@crystalfontz.com>
Signed-off-by: Maxime Ripard <maxime.ripard@free-electrons.com>
---
 arch/arm/boards/crystalfontz-cfa10036/hwdetect.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm/boards/crystalfontz-cfa10036/hwdetect.c b/arch/arm/boards/crystalfontz-cfa10036/hwdetect.c
index 5eb3ca4..21199d6 100644
--- a/arch/arm/boards/crystalfontz-cfa10036/hwdetect.c
+++ b/arch/arm/boards/crystalfontz-cfa10036/hwdetect.c
@@ -29,6 +29,10 @@ enum board_type {
 	BOARD_ID_CFA10036 = 0,
 	BOARD_ID_CFA10037 = 1,
 	BOARD_ID_CFA10049 = 2,
+	BOARD_ID_CFA10055 = 3,
+	BOARD_ID_CFA10056 = 4,
+	BOARD_ID_CFA10057 = 5,
+	BOARD_ID_CFA10058 = 6,
 };
 
 struct cfa_eeprom_info {
@@ -83,6 +87,18 @@ void cfa10036_detect_hw(void)
 	case BOARD_ID_CFA10049:
 		board_name = "cfa10049";
 		break;
+	case BOARD_ID_CFA10055:
+		board_name = "cfa10055";
+		break;
+	case BOARD_ID_CFA10056:
+		board_name = "cfa10056";
+		break;
+	case BOARD_ID_CFA10057:
+		board_name = "cfa10057";
+		break;
+	case BOARD_ID_CFA10058:
+		board_name = "cfa10058";
+		break;
 	default:
 		pr_err("Board ID not supported\n");
 		return;
-- 
1.8.1.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
