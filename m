Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x241.google.com ([2607:f8b0:400e:c01::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fTffB-0004UU-6i
 for barebox@lists.infradead.org; Fri, 15 Jun 2018 03:44:38 +0000
Received: by mail-pl0-x241.google.com with SMTP id b14-v6so4630540pls.5
 for <barebox@lists.infradead.org>; Thu, 14 Jun 2018 20:44:26 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 14 Jun 2018 20:44:00 -0700
Message-Id: <20180615034409.22180-2-andrew.smirnov@gmail.com>
In-Reply-To: <20180615034409.22180-1-andrew.smirnov@gmail.com>
References: <20180615034409.22180-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v7 01/10] ARM: i.MX: ocotp: Provide missing .format_mac for
 i.MX8MQ
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

From: Sascha Hauer <s.hauer@pengutronix.de>

Provide missing .format_mac for i.MX8MQ to prevent driver from
crashing on start.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/nvmem/ocotp.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/nvmem/ocotp.c b/drivers/nvmem/ocotp.c
index f3af8620e..c2d2982ee 100644
--- a/drivers/nvmem/ocotp.c
+++ b/drivers/nvmem/ocotp.c
@@ -652,6 +652,7 @@ static struct imx_ocotp_data imx8mq_ocotp_data = {
 	.addr_to_offset = imx6sl_addr_to_offset,
 	.mac_offsets_num = 1,
 	.mac_offsets = { 0x90 },
+	.format_mac = imx_ocotp_format_mac,
 };
 
 static __maybe_unused struct of_device_id imx_ocotp_dt_ids[] = {
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
