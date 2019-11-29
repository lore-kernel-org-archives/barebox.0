Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iahze-00052X-V7
 for barebox@lists.infradead.org; Fri, 29 Nov 2019 15:15:45 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>) id 1iahz9-0006u0-AK
 for barebox@lists.infradead.org; Fri, 29 Nov 2019 16:15:07 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 29 Nov 2019 16:14:47 +0100
Message-Id: <20191129151505.23946-22-l.stach@pengutronix.de>
In-Reply-To: <20191129151505.23946-1-l.stach@pengutronix.de>
References: <20191129151505.23946-1-l.stach@pengutronix.de>
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
Subject: [PATCH 21/39] firmware: zynqmp-fpga: fix comparison between pointer
 and integer
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/firmware/zynqmp-fpga.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/firmware/zynqmp-fpga.c b/drivers/firmware/zynqmp-fpga.c
index 887865883ad2..1728e2a9545f 100644
--- a/drivers/firmware/zynqmp-fpga.c
+++ b/drivers/firmware/zynqmp-fpga.c
@@ -136,7 +136,7 @@ static int is_bin_header_valid(const u32 *bin_header, size_t size,
 		return 0;
 
 	for (i = 0; i < ARRAY_SIZE(bin_format); i++)
-		if (bin_header != (byte_order == XILINX_BYTE_ORDER_BIT) ?
+		if (bin_header[i] != (byte_order == XILINX_BYTE_ORDER_BIT) ?
 				  bin_format[i] : __swab32(bin_format[i]))
 			return 0;
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
