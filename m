Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp8.mail.ru ([94.100.176.53])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Txbic-0002T0-N2
 for barebox@lists.infradead.org; Tue, 22 Jan 2013 11:08:43 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Tue, 22 Jan 2013 15:08:33 +0400
Message-Id: <1358852915-17983-3-git-send-email-shc_work@mail.ru>
In-Reply-To: <1358852915-17983-1-git-send-email-shc_work@mail.ru>
References: <1358852915-17983-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 3/5] ARM: ccmx51: Set MAC address before FEC device
 registration
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/boards/ccxmx51/ccxmx51.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/arch/arm/boards/ccxmx51/ccxmx51.c b/arch/arm/boards/ccxmx51/ccxmx51.c
index 1ca966e..a9bf16a 100644
--- a/arch/arm/boards/ccxmx51/ccxmx51.c
+++ b/arch/arm/boards/ccxmx51/ccxmx51.c
@@ -433,8 +433,8 @@ static int ccxmx51_devices_init(void)
 
 #ifdef CONFIG_DRIVER_NET_FEC_IMX
 	if (ccxmx51_id->eth0 && !pwr) {
-		imx51_add_fec(&fec_info);
 		eth_register_ethaddr(0, hwid);
+		imx51_add_fec(&fec_info);
 	}
 #endif
 
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
