Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSp5U-0002op-A5
 for barebox@lists.infradead.org; Thu, 07 Nov 2019 21:13:07 +0000
Received: from astat.fritz.box (a89-183-53-44.net-htp.de [89.183.53.44])
 by lynxeye.de (Postfix) with ESMTPA id 16F38E74293
 for <barebox@lists.infradead.org>; Thu,  7 Nov 2019 22:11:28 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Thu,  7 Nov 2019 22:11:18 +0100
Message-Id: <20191107211119.68064-18-dev@lynxeye.de>
In-Reply-To: <20191107211119.68064-1-dev@lynxeye.de>
References: <20191107211119.68064-1-dev@lynxeye.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 17/18] bootsource: add JTAG bootsource
To: barebox@lists.infradead.org

Some SoCs are able to detect if they are booted from JTAG. Add the
enum value to be able to represent this as a valid bootsource.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 common/bootsource.c  | 1 +
 include/bootsource.h | 1 +
 2 files changed, 2 insertions(+)

diff --git a/common/bootsource.c b/common/bootsource.c
index 4ef8d8ad9585..1f2bf87e99ed 100644
--- a/common/bootsource.c
+++ b/common/bootsource.c
@@ -37,6 +37,7 @@ static const char *bootsource_str[] = {
 	[BOOTSOURCE_USB] = "usb",
 	[BOOTSOURCE_NET] = "net",
 	[BOOTSOURCE_CAN] = "can",
+	[BOOTSOURCE_JTAG] = "jtag",
 };
 
 static enum bootsource bootsource = BOOTSOURCE_UNKNOWN;
diff --git a/include/bootsource.h b/include/bootsource.h
index 29347aaeb042..92f7f27cd4fa 100644
--- a/include/bootsource.h
+++ b/include/bootsource.h
@@ -17,6 +17,7 @@ enum bootsource {
 	BOOTSOURCE_USB,
 	BOOTSOURCE_NET,
 	BOOTSOURCE_CAN,
+	BOOTSOURCE_JTAG,
 };
 
 #define BOOTSOURCE_INSTANCE_UNKNOWN	-1
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
