Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 17.mo4.mail-out.ovh.net ([46.105.41.16]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SMd5k-0002Ee-WF
 for barebox@lists.infradead.org; Tue, 24 Apr 2012 10:35:29 +0000
Received: from mail97.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id C47C71058556
 for <barebox@lists.infradead.org>; Tue, 24 Apr 2012 12:36:34 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 24 Apr 2012 12:15:20 +0200
Message-Id: <1335262521-26145-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20120424100916.GX20601@game.jcrosoft.org>
References: <20120424100916.GX20601@game.jcrosoft.org>
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
Subject: [PATCH 1/2] at91: at91_register_uart use number instead of IDs
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/mach-at91/at91rm9200_devices.c  |   13 ++++---------
 arch/arm/mach-at91/at91sam9260_devices.c |   19 ++++++-------------
 arch/arm/mach-at91/at91sam9261_devices.c |   10 +++-------
 arch/arm/mach-at91/at91sam9263_devices.c |   10 +++-------
 arch/arm/mach-at91/at91sam9g45_devices.c |   13 ++++---------
 5 files changed, 20 insertions(+), 45 deletions(-)

diff --git a/arch/arm/mach-at91/at91rm9200_devices.c b/arch/arm/mach-at91/at91rm9200_devices.c
index c380c7d..7e721e5 100644
--- a/arch/arm/mach-at91/at91rm9200_devices.c
+++ b/arch/arm/mach-at91/at91rm9200_devices.c
@@ -273,27 +273,22 @@ struct device_d * __init at91_register_uart(unsigned id, unsigned pins)
 		case 0:		/* DBGU */
 			configure_dbgu_pins();
 			start = AT91_BASE_SYS + AT91_DBGU;
-			id = 0;
 			break;
-		case AT91RM9200_ID_US0:
+		case 1:
 			configure_usart0_pins(pins);
 			start = AT91RM9200_BASE_US0;
-			id = 1;
 			break;
-		case AT91RM9200_ID_US1:
+		case 2:
 			configure_usart1_pins(pins);
 			start = AT91RM9200_BASE_US1;
-			id = 2;
 			break;
-		case AT91RM9200_ID_US2:
+		case 3:
 			configure_usart2_pins(pins);
 			start = AT91RM9200_BASE_US2;
-			id = 3;
 			break;
-		case AT91RM9200_ID_US3:
+		case 4:
 			configure_usart3_pins(pins);
 			start = AT91RM9200_BASE_US3;
-			id = 4;
 			break;
 		default:
 			return NULL;
diff --git a/arch/arm/mach-at91/at91sam9260_devices.c b/arch/arm/mach-at91/at91sam9260_devices.c
index 23da8c1..17dbd1a 100644
--- a/arch/arm/mach-at91/at91sam9260_devices.c
+++ b/arch/arm/mach-at91/at91sam9260_devices.c
@@ -290,37 +290,30 @@ struct device_d * __init at91_register_uart(unsigned id, unsigned pins)
 		case 0:		/* DBGU */
 			configure_dbgu_pins();
 			start = AT91_BASE_SYS + AT91_DBGU;
-			id = 0;
 			break;
-		case AT91SAM9260_ID_US0:
+		case 1:
 			configure_usart0_pins(pins);
 			start = AT91SAM9260_BASE_US0;
-			id = 1;
 			break;
-		case AT91SAM9260_ID_US1:
+		case 2:
 			configure_usart1_pins(pins);
 			start = AT91SAM9260_BASE_US1;
-			id = 2;
 			break;
-		case AT91SAM9260_ID_US2:
+		case 3:
 			configure_usart2_pins(pins);
 			start = AT91SAM9260_BASE_US2;
-			id = 3;
 			break;
-		case AT91SAM9260_ID_US3:
+		case 4:
 			configure_usart3_pins(pins);
 			start = AT91SAM9260_BASE_US3;
-			id = 4;
 			break;
-		case AT91SAM9260_ID_US4:
+		case 5:
 			configure_usart4_pins();
 			start = AT91SAM9260_BASE_US4;
-			id = 5;
 			break;
-		case AT91SAM9260_ID_US5:
+		case 6:
 			configure_usart5_pins();
 			start = AT91SAM9260_BASE_US5;
-			id = 6;
 			break;
 		default:
 			return NULL;
diff --git a/arch/arm/mach-at91/at91sam9261_devices.c b/arch/arm/mach-at91/at91sam9261_devices.c
index d4f7b5e..8a63d2a 100644
--- a/arch/arm/mach-at91/at91sam9261_devices.c
+++ b/arch/arm/mach-at91/at91sam9261_devices.c
@@ -211,22 +211,18 @@ struct device_d * __init at91_register_uart(unsigned id, unsigned pins)
 		case 0:		/* DBGU */
 			configure_dbgu_pins();
 			start = AT91_BASE_SYS + AT91_DBGU;
-			id = 0;
 			break;
-		case AT91SAM9261_ID_US0:
+		case 1:
 			configure_usart0_pins(pins);
 			start = AT91SAM9261_BASE_US0;
-			id = 1;
 			break;
-		case AT91SAM9261_ID_US1:
+		case 2:
 			configure_usart1_pins(pins);
 			start = AT91SAM9261_BASE_US1;
-			id = 2;
 			break;
-		case AT91SAM9261_ID_US2:
+		case 3:
 			configure_usart2_pins(pins);
 			start = AT91SAM9261_BASE_US2;
-			id = 3;
 			break;
 		default:
 			return NULL;
diff --git a/arch/arm/mach-at91/at91sam9263_devices.c b/arch/arm/mach-at91/at91sam9263_devices.c
index 12d6a24..b28e9e2 100644
--- a/arch/arm/mach-at91/at91sam9263_devices.c
+++ b/arch/arm/mach-at91/at91sam9263_devices.c
@@ -261,22 +261,18 @@ struct device_d * __init at91_register_uart(unsigned id, unsigned pins)
 		case 0:		/* DBGU */
 			configure_dbgu_pins();
 			start = AT91_BASE_SYS + AT91_DBGU;
-			id = 0;
 			break;
-		case AT91SAM9263_ID_US0:
+		case 1:
 			configure_usart0_pins(pins);
 			start = AT91SAM9263_BASE_US0;
-			id = 1;
 			break;
-		case AT91SAM9263_ID_US1:
+		case 2:
 			configure_usart1_pins(pins);
 			start = AT91SAM9263_BASE_US1;
-			id = 2;
 			break;
-		case AT91SAM9263_ID_US2:
+		case 3:
 			configure_usart2_pins(pins);
 			start = AT91SAM9263_BASE_US2;
-			id = 3;
 			break;
 		default:
 			return NULL;
diff --git a/arch/arm/mach-at91/at91sam9g45_devices.c b/arch/arm/mach-at91/at91sam9g45_devices.c
index 25a8d80..ca96f58 100644
--- a/arch/arm/mach-at91/at91sam9g45_devices.c
+++ b/arch/arm/mach-at91/at91sam9g45_devices.c
@@ -190,27 +190,22 @@ struct device_d * __init at91_register_uart(unsigned id, unsigned pins)
 		case 0:		/* DBGU */
 			configure_dbgu_pins();
 			start = AT91_BASE_SYS + AT91_DBGU;
-			id = 0;
 			break;
-		case AT91SAM9G45_ID_US0:
+		case 1:
 			configure_usart0_pins(pins);
 			start = AT91SAM9G45_BASE_US0;
-			id = 1;
 			break;
-		case AT91SAM9G45_ID_US1:
+		case 2:
 			configure_usart1_pins(pins);
 			start = AT91SAM9G45_BASE_US1;
-			id = 2;
 			break;
-		case AT91SAM9G45_ID_US2:
+		case 3:
 			configure_usart2_pins(pins);
 			start = AT91SAM9G45_BASE_US2;
-			id = 3;
 			break;
-		case AT91SAM9G45_ID_US3:
+		case 4:
 			configure_usart3_pins(pins);
 			start = AT91SAM9G45_BASE_US3;
-			id = 4;
 			break;
 		default:
 			return NULL;
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
