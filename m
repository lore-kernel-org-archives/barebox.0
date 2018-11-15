Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gNMpN-0000qi-NR
 for barebox@lists.infradead.org; Thu, 15 Nov 2018 18:57:23 +0000
Received: by mail-pl1-x643.google.com with SMTP id a14so5304615plm.12
 for <barebox@lists.infradead.org>; Thu, 15 Nov 2018 10:57:11 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 15 Nov 2018 10:57:00 -0800
Message-Id: <20181115185700.24823-3-andrew.smirnov@gmail.com>
In-Reply-To: <20181115185700.24823-1-andrew.smirnov@gmail.com>
References: <20181115185700.24823-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 3/3] net/e1000: Mark e1000_register_invm() static
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Mark e1000_register_invm() static because it is not used outside the
source file.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/net/e1000/eeprom.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/e1000/eeprom.c b/drivers/net/e1000/eeprom.c
index aec533325..c0f2db552 100644
--- a/drivers/net/e1000/eeprom.c
+++ b/drivers/net/e1000/eeprom.c
@@ -1504,7 +1504,7 @@ static int e1000_mtd_unlock(struct mtd_info *mtd, loff_t ofs, size_t len)
 	return e1000_mtd_sr_rmw(mtd, SR_BPALL, 0x0);
 }
 
-int e1000_register_invm(struct e1000_hw *hw)
+static int e1000_register_invm(struct e1000_hw *hw)
 {
 	int ret;
 	u16 word;
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
