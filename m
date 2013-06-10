Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp47.i.mail.ru ([94.100.177.107])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UlwIa-0002PI-Eg
 for barebox@lists.infradead.org; Mon, 10 Jun 2013 07:13:53 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Mon, 10 Jun 2013 11:13:20 +0400
Message-Id: <1370848400-10380-3-git-send-email-shc_work@mail.ru>
In-Reply-To: <1370848400-10380-1-git-send-email-shc_work@mail.ru>
References: <1370848400-10380-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 3/3] ARM: ccmx51: Return error if module is not detected
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/boards/ccxmx51/ccxmx51.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boards/ccxmx51/ccxmx51.c b/arch/arm/boards/ccxmx51/ccxmx51.c
index d34759a..e60a101 100644
--- a/arch/arm/boards/ccxmx51/ccxmx51.c
+++ b/arch/arm/boards/ccxmx51/ccxmx51.c
@@ -415,7 +415,8 @@ static int ccxmx51_devices_init(void)
 		printf("Module Serial : %c%d\n", manloc, ((hwid[2] & 0x3f) << 24) | (hwid[3] << 16) | (hwid[4] << 8) | hwid[5]);
 		if ((ccxmx51_id->mem_sz - SZ_128M) > 0)
 			arm_add_mem_device("ram1", MX51_CSD0_BASE_ADDR + SZ_128M, ccxmx51_id->mem_sz - SZ_128M);
-	}
+	} else
+		return -ENOSYS;
 
 	imx51_add_uart1();
 	imx51_add_uart2();
-- 
1.8.1.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
