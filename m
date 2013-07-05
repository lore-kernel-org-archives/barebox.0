Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x22d.google.com ([2a00:1450:4013:c00::22d])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UvDSr-0006X3-H9
 for barebox@lists.infradead.org; Fri, 05 Jul 2013 21:22:51 +0000
Received: by mail-ee0-f45.google.com with SMTP id c1so1620694eek.18
 for <barebox@lists.infradead.org>; Fri, 05 Jul 2013 14:22:26 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Fri,  5 Jul 2013 23:22:18 +0200
Message-Id: <1373059339-20513-2-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1373059339-20513-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1373059339-20513-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [RFC 1/2] mci: add more defines to sdhci include
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

This adds more byte/word aligned defines to sdhci.h for controllers
supporting byte/word reads.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: barebox@lists.infradead.org
---
 drivers/mci/sdhci.h |   86 +++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 86 insertions(+)

diff --git a/drivers/mci/sdhci.h b/drivers/mci/sdhci.h
index b2d6779..267cb17 100644
--- a/drivers/mci/sdhci.h
+++ b/drivers/mci/sdhci.h
@@ -3,21 +3,107 @@
 
 #define SDHCI_DMA_ADDRESS					0x00
 #define SDHCI_BLOCK_SIZE__BLOCK_COUNT				0x04
+#define SDHCI_BLOCK_SIZE					0x04
+#define  SDHCI_DMA_BOUNDARY_512K		SDHCI_DMA_BOUNDARY(7)
+#define  SDHCI_DMA_BOUNDARY_256K		SDHCI_DMA_BOUNDARY(6)
+#define  SDHCI_DMA_BOUNDARY_128K		SDHCI_DMA_BOUNDARY(5)
+#define  SDHCI_DMA_BOUNDARY_64K			SDHCI_DMA_BOUNDARY(4)
+#define  SDHCI_DMA_BOUNDARY_32K			SDHCI_DMA_BOUNDARY(3)
+#define  SDHCI_DMA_BOUNDARY_16K			SDHCI_DMA_BOUNDARY(2)
+#define  SDHCI_DMA_BOUNDARY_8K			SDHCI_DMA_BOUNDARY(1)
+#define  SDHCI_DMA_BOUNDARY_4K			SDHCI_DMA_BOUNDARY(0)
+#define  SDHCI_DMA_BOUNDARY(x)			(((x) & 0x7) << 12)
+#define  SDHCI_TRANSFER_BLOCK_SIZE(x)		((x) & 0xfff)
+#define SDHCI_BLOCK_COUNT					0x06
 #define SDHCI_ARGUMENT						0x08
 #define SDHCI_TRANSFER_MODE__COMMAND				0x0c
+#define SDHCI_TRANSFER_MODE					0x0c
+#define  SDHCI_MULTIPLE_BLOCKS			BIT(5)
+#define  SDHCI_DATA_TO_HOST			BIT(4)
+#define  SDHCI_AUTO_CMD23_EN			SDHCI_AUTO_CMD(2)
+#define  SDHCI_AUTO_CMD12_EN			SDHCI_AUTO_CMD(1)
+#define  SDHCI_AUTO_CMD(x)			(((x) & 0x3) << 2)
+#define  SDHCI_BLOCK_COUNT_EN			BIT(1)
+#define  SDHCI_DMA_EN				BIT(0)
+#define SDHCI_COMMAND						0x0e
+#define  SDHCI_CMD_INDEX(c)			(((c) & 0x3f) << 8)
+#define  SDHCI_CMD_TYPE_ABORT			SDHCI_CMD_TYPE(3)
+#define  SDHCI_CMD_TYPE_RESUME			SDHCI_CMD_TYPE(2)
+#define  SDHCI_CMD_TYPE_SUSPEND			SDHCI_CMD_TYPE(1)
+#define  SDHCI_CMD_TYPE_NORMAL			SDHCI_CMD_TYPE(0)
+#define  SDHCI_CMD_TYPE(x)			(((x) & 0x3) << 6)
+#define  SDHCI_DATA_PRESENT			BIT(5)
+#define  SDHCI_CMD_INDEX_CHECK_EN		BIT(4)
+#define  SDHCI_CMD_CRC_CHECK_EN			BIT(3)
+#define  SDHCI_RESP_TYPE_48_BUSY		3
+#define  SDHCI_RESP_TYPE_48			2
+#define  SDHCI_RESP_TYPE_136			1
+#define  SDHCI_RESP_NONE			0
+#define SDHCI_RESPONSE						0x10
 #define SDHCI_RESPONSE_0					0x10
 #define SDHCI_RESPONSE_1					0x14
 #define SDHCI_RESPONSE_2					0x18
 #define SDHCI_RESPONSE_3					0x1c
 #define SDHCI_BUFFER						0x20
 #define SDHCI_PRESENT_STATE					0x24
+#define SDHCI_PRESENT_STATE0					0x24
+#define  SDHCI_CMD_INHIBIT_DATA			BIT(1)
+#define  SDHCI_CMD_INHIBIT_CMD			BIT(0)
+#define SDHCI_PRESENT_STATE1					0x26
 #define SDHCI_HOST_CONTROL__POWER_CONTROL__BLOCK_GAP_CONTROL	0x28
+#define SDHCI_HOST_CONTROL					0x28
+#define  SDHCI_DATA_WIDTH_8BIT			BIT(5)
+#define  SDHCI_DMA_ADMA64			SDHCI_DMA(3)
+#define  SDHCI_DMA_ADMA32			SDHCI_DMA(2)
+#define  SDHCI_DMA_ADMA1			SDHCI_DMA(1)
+#define  SDHCI_DMA_SDMA				SDHCI_DMA(0)
+#define  SDHCI_DMA(x)				(((x) & 0x3) << 3)
+#define  SDHCI_HIGHSPEED_EN			BIT(2)
+#define  SDHCI_DATA_WIDTH_4BIT			BIT(1)
+#define  SDHCI_LED_EN				BIT(0)
+#define SDHCI_POWER_CONTROL					0x29
+#define  SDHCI_BUS_VOLTAGE_330			SDHCI_BUS_VOLTAGE(7)
+#define  SDHCI_BUS_VOLTAGE_300			SDHCI_BUS_VOLTAGE(6)
+#define  SDHCI_BUS_VOLTAGE_180			SDHCI_BUS_VOLTAGE(5)
+#define  SDHCI_BUS_VOLTAGE(v)			((v) << 1)
+#define  SDHCI_BUS_POWER_EN			BIT(0)
+#define SDHCI_BLOCK_GAP_CONTROL					0x2a
 #define SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTWARE_RESET	0x2c
+#define SDHCI_CLOCK_CONTROL					0x2c
+#define  SDHCI_FREQ_SEL(x)			(((x) & 0xff) << 8)
+#define  SDHCI_SDCLOCK_EN			BIT(2)
+#define  SDHCI_INTCLOCK_STABLE			BIT(1)
+#define  SDHCI_INTCLOCK_EN			BIT(0)
+#define SDHCI_TIMEOUT_CONTROL					0x2e
+#define SDHCI_SOFTWARE_RESET					0x2f
+#define  SDHCI_RESET_DATA			BIT(2)
+#define  SDHCI_RESET_CMD			BIT(1)
+#define  SDHCI_RESET_ALL			BIT(0)
 #define SDHCI_INT_STATUS					0x30
+#define SDHCI_INT_NORMAL_STATUS					0x30
+#define  SDHCI_INT_ERROR			BIT(15)
+#define  SDHCI_INT_XFER_COMPLETE		BIT(1)
+#define  SDHCI_INT_CMD_COMPLETE			BIT(0)
+#define SDHCI_INT_ERROR_STATUS					0x32
 #define SDHCI_INT_ENABLE					0x34
 #define SDHCI_SIGNAL_ENABLE					0x38
 #define SDHCI_ACMD12_ERR__HOST_CONTROL2				0x3C
 #define SDHCI_CAPABILITIES					0x40
+#define SDHCI_CAPABILITIES_1					0x42
+#define  SDHCI_HOSTCAP_VOLTAGE_180		BIT(10)
+#define  SDHCI_HOSTCAP_VOLTAGE_300		BIT(9)
+#define  SDHCI_HOSTCAP_VOLTAGE_330		BIT(8)
+#define  SDHCI_HOSTCAP_SUSPEND_RESUME		BIT(7)
+#define  SDHCI_HOSTCAP_DMA			BIT(6)
+#define  SDHCI_HOSTCAP_HIGHSPEED		BIT(5)
+#define  SDHCI_HOSTCAP_8BIT			BIT(2)
+#define  SDHCI_HOSTCAP_MAXBLOCKLEN_512B		0x0
+#define  SDHCI_HOSTCAP_MAXBLOCKLEN_1024B	0x1
+#define  SDHCI_HOSTCAP_MAXBLOCKLEN_2048B	0x2
+#define  SDHCI_HOSTCAP_MAXBLOCKLEN(r)		(512 * (1 << ((r) & 0xf)))
+
+#define SDHCI_SPEC_300_MAX_CLK_DIVIDER	2046
+#define SDHCI_SPEC_200_MAX_CLK_DIVIDER	256
 
 #define COMMAND_CMD(x)		((x & 0x3f) << 24)
 #define COMMAND_CMDTYP_NORMAL	0x0
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
