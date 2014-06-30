Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.microcatalog.org.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X1UpM-0001CC-2S
 for barebox@lists.infradead.org; Mon, 30 Jun 2014 06:12:33 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id AB12BBF155
 for <barebox@lists.infradead.org>; Mon, 30 Jun 2014 08:12:03 +0200 (CEST)
From: Christian Hemp <c.hemp@phytec.de>
Date: Mon, 30 Jun 2014 08:12:01 +0200
Message-Id: <1404108721-25689-1-git-send-email-c.hemp@phytec.de>
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
Subject: [PATCH] imx6: add new chip revisions
To: barebox@lists.infradead.org

Add new chip revisions for the new tap-out TO1.5 (i.MX6Q/D) and TO1.2
(i.MX6DL/S)

Signed-off-by: Christian Hemp <c.hemp@phytec.de>
---
 arch/arm/mach-imx/imx6.c                  |   12 ++++++++++++
 arch/arm/mach-imx/include/mach/revision.h |    2 ++
 2 files changed, 14 insertions(+), 0 deletions(-)

diff --git a/arch/arm/mach-imx/imx6.c b/arch/arm/mach-imx/imx6.c
index e14ce90..fabc161 100644
--- a/arch/arm/mach-imx/imx6.c
+++ b/arch/arm/mach-imx/imx6.c
@@ -130,6 +130,18 @@ int imx6_init(void)
 		mx6_silicon_revision = IMX_CHIP_REV_1_2;
 		break;
 
+	case 0x03:
+		mx6_silicon_revision = IMX_CHIP_REV_1_3;
+		break;
+
+	case 0x04:
+		mx6_silicon_revision = IMX_CHIP_REV_1_4;
+		break;
+
+	case 0x05:
+		mx6_silicon_revision = IMX_CHIP_REV_1_5;
+		break;
+
 	default:
 		mx6_silicon_revision = IMX_CHIP_REV_UNKNOWN;
 	}
diff --git a/arch/arm/mach-imx/include/mach/revision.h b/arch/arm/mach-imx/include/mach/revision.h
index bc6f20a..908a0a1 100644
--- a/arch/arm/mach-imx/include/mach/revision.h
+++ b/arch/arm/mach-imx/include/mach/revision.h
@@ -6,6 +6,8 @@
 #define IMX_CHIP_REV_1_1	0x11
 #define IMX_CHIP_REV_1_2	0x12
 #define IMX_CHIP_REV_1_3	0x13
+#define IMX_CHIP_REV_1_4	0x14
+#define IMX_CHIP_REV_1_5	0x15
 #define IMX_CHIP_REV_2_0	0x20
 #define IMX_CHIP_REV_2_1	0x21
 #define IMX_CHIP_REV_2_2	0x22
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
