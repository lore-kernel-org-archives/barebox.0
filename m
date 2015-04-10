Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x22b.google.com ([2a00:1450:400c:c00::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YgNMp-0003Hj-E2
 for barebox@lists.infradead.org; Fri, 10 Apr 2015 01:04:20 +0000
Received: by wgin8 with SMTP id n8so3447156wgi.0
 for <barebox@lists.infradead.org>; Thu, 09 Apr 2015 18:03:57 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Fri, 10 Apr 2015 03:03:40 +0200
Message-Id: <1428627830-17281-4-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1428627830-17281-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1428627830-17281-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 03/13] spi: ath79: move spidelay from spi-bitbang-txrx
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

Bitbang helpers for SPI require spidelay. This should be set
by the user and not the helper itself. Move it to ath79_spi
instead.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: barebox@lists.infradead.org
---
 drivers/spi/ath79_spi.c        | 2 ++
 drivers/spi/spi-bitbang-txrx.h | 2 --
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/spi/ath79_spi.c b/drivers/spi/ath79_spi.c
index d9ab269da770..4d71eba695a5 100644
--- a/drivers/spi/ath79_spi.c
+++ b/drivers/spi/ath79_spi.c
@@ -100,6 +100,8 @@ static inline u32 getmiso(struct spi_device *spi)
 	return !!((ath79_spi_rr(sc, AR71XX_SPI_REG_RDS) & 1));
 }
 
+#define spidelay(nsecs) udelay(nsecs/1000)
+
 #include "spi-bitbang-txrx.h"
 
 static inline void ath79_spi_chipselect(struct ath79_spi *sp, int chipselect)
diff --git a/drivers/spi/spi-bitbang-txrx.h b/drivers/spi/spi-bitbang-txrx.h
index 4c74d4e0c514..078ab8c6c000 100644
--- a/drivers/spi/spi-bitbang-txrx.h
+++ b/drivers/spi/spi-bitbang-txrx.h
@@ -42,8 +42,6 @@
  * particular CPU clock rate.
  */
 
-#define spidelay(nsecs) udelay(nsecs/1000)
-
 static inline u32
 bitbang_txrx_be_cpha0(struct spi_device *spi,
 		unsigned nsecs, unsigned cpol,
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
