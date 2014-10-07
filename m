Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XbVf6-0000J4-Qq
 for barebox@lists.infradead.org; Tue, 07 Oct 2014 14:22:50 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1XbVef-0003P3-5t
 for barebox@lists.infradead.org; Tue, 07 Oct 2014 16:22:21 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.84)
 (envelope-from <jbe@pengutronix.de>) id 1XbVef-0004Dt-4M
 for barebox@lists.infradead.org; Tue, 07 Oct 2014 16:22:21 +0200
From: Juergen Borleis <jbe@pengutronix.de>
Date: Tue,  7 Oct 2014 16:22:15 +0200
Message-Id: <1412691738-11145-17-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1412691738-11145-1-git-send-email-jbe@pengutronix.de>
References: <1412691738-11145-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 16/19] MPC5xxx/serial: add support for the MPC5125 SoC
To: barebox@lists.infradead.org

Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
---
 arch/ppc/mach-mpc5xxx/include/mach/mpc5xxx_psc.h |  98 ++++++++++++++
 drivers/serial/Kconfig                           |   4 +-
 drivers/serial/serial_mpc5xxx.c                  | 157 +++++++++++++++++++++++
 3 files changed, 257 insertions(+), 2 deletions(-)

diff --git a/arch/ppc/mach-mpc5xxx/include/mach/mpc5xxx_psc.h b/arch/ppc/mach-mpc5xxx/include/mach/mpc5xxx_psc.h
index a44d213..839b394 100644
--- a/arch/ppc/mach-mpc5xxx/include/mach/mpc5xxx_psc.h
+++ b/arch/ppc/mach-mpc5xxx/include/mach/mpc5xxx_psc.h
@@ -60,6 +60,7 @@
 #define PSC_MODE_ONE_STOP		0x07
 #define PSC_MODE_TWO_STOP		0x0f
 
+#ifdef CONFIG_MPC5200
 struct mpc5xxx_psc {
 	u8	mode;		/* PSC + 0x00 */
 	u8	reserved0[3];
@@ -152,3 +153,100 @@ struct mpc5xxx_psc {
 	u16	reserved31;
 	u16	tflwfptr;	/* PSC + 0x9e */
 };
+#endif
+
+#ifdef CONFIG_SOC_MPC5125
+/* PSC definition for MPC5125 */
+struct mpc5xxx_psc {
+	u8 mode;
+	u8 res0[3];
+	u8 mode2;
+	u8 res1[3];
+	u16 psc_status;
+	u8 resx[2];
+	u8 clock_select;
+	u8 res2[3];
+	u8 command;
+	u8 res3[3];
+	u32 buffer_32;
+	u8 ipcr;
+	u8 res4[3];
+	u8 acr;
+	u8 res5[3];
+	u16 isr;
+	u8 res5a[2];
+	u16 psc_imr;
+	u8 res5b[2];
+	u8 ctur;
+	u8 res6[3];
+	u8 ctlr;
+	u8 res7[3];
+	u32 ccr;
+	u32 ac97slots;
+	u32 ac97cmd;
+	u32 ac97data;
+	u8 res8[4];
+	u8 ip;
+	u8 res9[3];
+	u8 op1;
+	u8 res10[3];
+	u8 op0;
+	u8 res11[3];
+	u32 sicr;
+	u8 res12[44];
+	u32 tfcmd;
+	u32 tfalarm;
+	u32 tfstat;
+	u32 tfintstat;
+	u32 tfintmask;
+	u32 tfcount;
+	u32 tfwptr;
+	u32 tfsize;
+	u8 res13[28];
+	union {
+		u8 buffer_8;
+		u16 buffer_16;
+		u32 buffer_32;
+	} tfdata_buffer;
+#define tfdata_8 tfdata_buffer.buffer_8
+#define tfdata_16 tfdata_buffer.buffer_16
+#define tfdata_32 tfdata_buffer.buffer_32
+	u32 rfcmd;
+	u32 rfalarm;
+	u32 rfstat;
+	u32 rfintstat;
+	u32 rfintmask;
+	u32 rfcount;
+	u32 rfrptr;
+	u32 rfsize;
+	u8 res14[28];
+	union {
+		u8 buffer_8;
+		u16 buffer_16;
+		u32 buffer_32;
+	} rfdata_buffer;
+#define rfdata_8 rfdata_buffer.buffer_8
+#define rfdata_16 rfdata_buffer.buffer_16
+#define rfdata_32 rfdata_buffer.buffer_32
+};
+
+struct fifoc5125 {
+	u32 fifoc_cmd;
+	u32 fifoc_int;
+	u32 fifoc_dma;
+	u32 res1;
+	u32 fifoc_debug;
+};
+
+/* PSC FIFO Command values */
+#define PSC_FIFO_RESET_SLICE		0x80
+#define PSC_FIFO_ENABLE_SLICE		0x01
+
+/* PSC FIFO Controller Command values */
+#define FIFOC_ENABLE_CLOCK_GATE		0x01
+#define FIFOC_DISABLE_CLOCK_GATE	0x00
+
+/* PSC FIFO status */
+#define PSC_FIFO_EMPTY			0x01
+
+#endif
diff --git a/drivers/serial/Kconfig b/drivers/serial/Kconfig
index 146bf1e..63c0703 100644
--- a/drivers/serial/Kconfig
+++ b/drivers/serial/Kconfig
@@ -50,9 +50,9 @@ config DRIVER_SERIAL_EFI_STDIO
 	bool "EFI stdio driver"
 
 config DRIVER_SERIAL_MPC5XXX
-	depends on MPC5200
+	depends on ARCH_MPC5XXX
 	default y
-	bool "MPC5200 serial driver"
+	bool "MPC5XXX serial driver"
 
 config DRIVER_SERIAL_BLACKFIN
 	depends on BLACKFIN
diff --git a/drivers/serial/serial_mpc5xxx.c b/drivers/serial/serial_mpc5xxx.c
index 7cd448c..670c514 100644
--- a/drivers/serial/serial_mpc5xxx.c
+++ b/drivers/serial/serial_mpc5xxx.c
@@ -39,6 +39,142 @@
 #include <mach/clocks.h>
 #include <mach/mpc5xxx_psc.h>
 
+#ifdef CONFIG_SOC_MPC5125
+
+#define MPC512x_PSC_FIFO_EMPTY (1 << 0)
+
+static struct fifoc5125 * const fifoc = (struct fifoc5125 *)MPC512X_FIFOC;
+
+struct fifo_adr_pair {
+	unsigned tsize, toffs;
+	unsigned rsize, roffs;
+};
+
+/* describe the FIFO's internal memory layout */
+static const struct fifo_adr_pair mpc5xxx_fifo_addresses[] = {
+	{
+		.tsize = 0x04, .toffs = 0x000,
+		.rsize = 0x04, .roffs = 0x010,
+	}, {
+		.tsize = 0x04, .toffs = 0x020,
+		.rsize = 0x04, .roffs = 0x030,
+	}, {
+		.tsize = 0x04, .toffs = 0x040,
+		.rsize = 0x04, .roffs = 0x050,
+	}, {
+		.tsize = 0x04, .toffs = 0x060,
+		.rsize = 0x04, .roffs = 0x070,
+	}, {
+		.tsize = 0x04, .toffs = 0x080,
+		.rsize = 0x04, .roffs = 0x090,
+	}, {
+		.tsize = 0x04, .toffs = 0x0a0,
+		.rsize = 0x04, .roffs = 0x0b0,
+	}, {
+		.tsize = 0x04, .toffs = 0x0c0,
+		.rsize = 0x04, .roffs = 0x0d0,
+	}, {
+		.tsize = 0x04, .toffs = 0x0e0,
+		.rsize = 0x04, .roffs = 0x0f0,
+	}, {
+		.tsize = 0x04, .toffs = 0x100,
+		.rsize = 0x04, .roffs = 0x110,
+	}, {
+		.tsize = 0x04, .toffs = 0x120,
+		.rsize = 0x04, .roffs = 0x130,
+	},
+};
+
+static unsigned mpc5xxx_get_psc_index(void *p)
+{
+	/* all PSC offsets differ in 0x100 steps */
+	return ((unsigned)p & 0xf00) >> 8;
+}
+
+static void mpc5xxx_fifo_init(struct mpc5xxx_psc *psc)
+{
+	unsigned idx = mpc5xxx_get_psc_index(psc);
+	u32 tfsize, rfsize;
+
+	/*
+	 * we must enable the FIFO unit's clock,
+	 * when at least one PSC unit is in use
+	 */
+	mpc5125_enable_psc_fifo_clock();
+
+	/* reset Rx & Tx fifo slice */
+	out_be32(&psc->rfcmd, PSC_FIFO_RESET_SLICE);
+	out_be32(&psc->tfcmd, PSC_FIFO_RESET_SLICE);
+
+	/* disable Tx & Rx FIFO interrupts */
+	out_be32(&psc->rfintmask, 0);
+	out_be32(&psc->tfintmask, 0);
+
+	tfsize = mpc5xxx_fifo_addresses[idx].tsize |
+			(mpc5xxx_fifo_addresses[idx].toffs << 16);
+	rfsize = mpc5xxx_fifo_addresses[idx].rsize |
+			(mpc5xxx_fifo_addresses[idx].roffs << 16);
+
+	out_be32(&psc->tfsize, tfsize);
+	out_be32(&psc->rfsize, rfsize);
+
+	/* enable Tx & Rx FIFO slice */
+	out_be32(&psc->rfcmd, PSC_FIFO_ENABLE_SLICE);
+	out_be32(&psc->tfcmd, PSC_FIFO_ENABLE_SLICE);
+
+	out_be32(&fifoc->fifoc_cmd, FIFOC_DISABLE_CLOCK_GATE);
+	__asm__ volatile ("sync");
+}
+
+static int psc_tx_rdy(struct mpc5xxx_psc *psc)
+{
+	return in_be32(&psc->tfstat) & MPC512x_PSC_FIFO_EMPTY;
+}
+
+static int psc_rx_rdy(struct mpc5xxx_psc *psc)
+{
+	return !(in_be32(&psc->rfstat) & MPC512x_PSC_FIFO_EMPTY);
+}
+
+static void psc_tx_write(struct mpc5xxx_psc *psc, char c)
+{
+	out_8(&psc->tfdata_8, c);
+}
+
+static int psc_rx_read(struct mpc5xxx_psc *psc)
+{
+	return in_8(&psc->rfdata_8);
+}
+
+static unsigned long mpc5xxx_get_base_clock(struct mpc5xxx_psc *psc)
+{
+	return (get_ips_clock() + 8) / 16;
+}
+
+static void mpc5xxx_select_clock_source(struct mpc5xxx_psc *psc)
+{
+	out_8(&psc->clock_select, 0xdd);
+}
+
+static void mpc5xxx_configure_serial_protocol(struct mpc5xxx_psc *psc)
+{
+	out_8(&psc->mode, PSC_MODE_8_BITS | PSC_MODE_PARNONE);
+	out_8(&psc->mode2, PSC_MODE_ONE_STOP);
+}
+
+static int mpc5xxx_enable_psc_unit(struct mpc5xxx_psc *psc)
+{
+	unsigned idx = mpc5xxx_get_psc_index(psc);
+
+	if (idx > ARRAY_SIZE(mpc5xxx_fifo_addresses))
+		return -ENODEV;
+
+	mpc5xxx_enable_psc_clock(idx);
+	return 0;
+}
+
+#else /* CONFIG_MPC512X */
+
 static int psc_tx_rdy(struct mpc5xxx_psc *psc)
 {
 	return in_be16(&psc->psc_status) & PSC_SR_TXEMP;
@@ -81,6 +217,11 @@ static void mpc5xxx_select_clock_source(struct mpc5xxx_psc *psc)
 #endif
 }
 
+static void mpc5xxx_fifo_init(struct mpc5xxx_psc *psc)
+{
+	/* nothing to be done here */
+}
+
 static void mpc5xxx_configure_serial_protocol(struct mpc5xxx_psc *psc)
 {
 #if defined(CONFIG_MGT5100)
@@ -93,6 +234,14 @@ static void mpc5xxx_configure_serial_protocol(struct mpc5xxx_psc *psc)
 #endif
 }
 
+static int mpc5xxx_enable_psc_unit(struct mpc5xxx_psc *psc)
+{
+	/* nothing to be done here */
+	return 0;
+}
+
+#endif /* !CONFIG_MPC512X */
+
 static int __mpc5xxx_serial_setbaudrate(struct mpc5xxx_psc *psc, int baudrate)
 {
 	unsigned long baseclk;
@@ -120,11 +269,19 @@ static int mpc5xxx_serial_setbaudrate(struct console_device *cdev, int baudrate)
 
 static int __mpc5xxx_serial_init(struct mpc5xxx_psc *psc)
 {
+	int ret;
+
+	ret = mpc5xxx_enable_psc_unit(psc);
+	if (ret != 0)
+		return ret;
+
 	/* reset PSC */
 	out_8(&psc->command, PSC_SEL_MODE_REG_1);
 
 	mpc5xxx_select_clock_source(psc);
 
+	mpc5xxx_fifo_init(psc);
+
 	/* switch to UART mode */
 	out_be32(&psc->sicr, 0);
 
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
