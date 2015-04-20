Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x232.google.com ([2a00:1450:400c:c00::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YkI2u-0003Ae-Qw
 for barebox@lists.infradead.org; Mon, 20 Apr 2015 20:11:59 +0000
Received: by wgin8 with SMTP id n8so191180652wgi.0
 for <barebox@lists.infradead.org>; Mon, 20 Apr 2015 13:11:34 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Mon, 20 Apr 2015 22:11:15 +0200
Message-Id: <1429560686-11391-4-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1429560686-11391-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1429560686-11391-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH v2 03/14] spi: ath79: move spidelay from spi-bitbang-txrx
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

Bitbang helpers for SPI require spidelay. This should be set
by the user and not the helper itself. Move it to ath79_spi
instead.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: barebox@lists.infradead.org
Cc: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
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
