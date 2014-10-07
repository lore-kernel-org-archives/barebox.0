Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XbVf2-0008Hh-6V
 for barebox@lists.infradead.org; Tue, 07 Oct 2014 14:22:46 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1XbVef-0003Oo-1m
 for barebox@lists.infradead.org; Tue, 07 Oct 2014 16:22:21 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.84)
 (envelope-from <jbe@pengutronix.de>) id 1XbVef-0004DU-0T
 for barebox@lists.infradead.org; Tue, 07 Oct 2014 16:22:21 +0200
From: Juergen Borleis <jbe@pengutronix.de>
Date: Tue,  7 Oct 2014 16:22:10 +0200
Message-Id: <1412691738-11145-12-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 11/19] MPC5xxx/serial: provide an easier way to share register
 description
To: barebox@lists.infradead.org

Separate the register definition to be able to add more SoCs to use them.

Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
---
 arch/ppc/mach-mpc5xxx/include/mach/mpc5xxx_psc.h | 154 +++++++++++++++++++++++
 1 file changed, 154 insertions(+)
 create mode 100644 arch/ppc/mach-mpc5xxx/include/mach/mpc5xxx_psc.h

diff --git a/arch/ppc/mach-mpc5xxx/include/mach/mpc5xxx_psc.h b/arch/ppc/mach-mpc5xxx/include/mach/mpc5xxx_psc.h
new file mode 100644
index 0000000..a44d213
--- /dev/null
+++ b/arch/ppc/mach-mpc5xxx/include/mach/mpc5xxx_psc.h
@@ -0,0 +1,154 @@
+#include <linux/types.h>
+
+/* Programmable Serial Controller (PSC) status register bits */
+#define PSC_SR_CDE		0x0080
+#define PSC_SR_RXRDY		0x0100
+#define PSC_SR_RXFULL		0x0200
+#define PSC_SR_TXRDY		0x0400
+#define PSC_SR_TXEMP		0x0800
+#define PSC_SR_OE		0x1000
+#define PSC_SR_PE		0x2000
+#define PSC_SR_FE		0x4000
+#define PSC_SR_RB		0x8000
+
+/* PSC Command values */
+#define PSC_RX_ENABLE		0x0001
+#define PSC_RX_DISABLE		0x0002
+#define PSC_TX_ENABLE		0x0004
+#define PSC_TX_DISABLE		0x0008
+#define PSC_SEL_MODE_REG_1	0x0010
+#define PSC_RST_RX		0x0020
+#define PSC_RST_TX		0x0030
+#define PSC_RST_ERR_STAT	0x0040
+#define PSC_RST_BRK_CHG_INT	0x0050
+#define PSC_START_BRK		0x0060
+#define PSC_STOP_BRK		0x0070
+
+/* PSC Rx FIFO status bits */
+#define PSC_RX_FIFO_ERR		0x0040
+#define PSC_RX_FIFO_UF		0x0020
+#define PSC_RX_FIFO_OF		0x0010
+#define PSC_RX_FIFO_FR		0x0008
+#define PSC_RX_FIFO_FULL	0x0004
+#define PSC_RX_FIFO_ALARM	0x0002
+#define PSC_RX_FIFO_EMPTY	0x0001
+
+/* PSC interrupt mask bits */
+#define PSC_IMR_TXRDY		0x0100
+#define PSC_IMR_RXRDY		0x0200
+#define PSC_IMR_DB		0x0400
+#define PSC_IMR_IPC		0x8000
+
+/* PSC input port change bits */
+#define PSC_IPCR_CTS		0x01
+#define PSC_IPCR_DCD		0x02
+
+/* PSC mode fields */
+#define PSC_MODE_5_BITS		0x00
+#define PSC_MODE_6_BITS		0x01
+#define PSC_MODE_7_BITS		0x02
+#define PSC_MODE_8_BITS		0x03
+#define PSC_MODE_PAREVEN	0x00
+#define PSC_MODE_PARODD		0x04
+#define PSC_MODE_PARFORCE	0x08
+#define PSC_MODE_PARNONE	0x10
+#define PSC_MODE_ERR		0x20
+#define PSC_MODE_FFULL		0x40
+#define PSC_MODE_RXRTS		0x80
+
+#define PSC_MODE_ONE_STOP_5_BITS	0x00
+#define PSC_MODE_ONE_STOP		0x07
+#define PSC_MODE_TWO_STOP		0x0f
+
+struct mpc5xxx_psc {
+	u8	mode;		/* PSC + 0x00 */
+	u8	reserved0[3];
+	union {				/* PSC + 0x04 */
+		u16	status;
+		u16	clock_select;
+	} sr_csr;
+#define psc_status	sr_csr.status
+#define psc_clock_select sr_csr.clock_select
+	u16	reserved1;
+	u8	command;	/* PSC + 0x08 */
+	u8	reserved2[3];
+	union {				/* PSC + 0x0c */
+		u8	buffer_8;
+		u16	buffer_16;
+		u32	buffer_32;
+	} buffer;
+#define psc_buffer_8	buffer.buffer_8
+#define psc_buffer_16	buffer.buffer_16
+#define psc_buffer_32	buffer.buffer_32
+	union {				/* PSC + 0x10 */
+		u8	ipcr;
+		u8	acr;
+	} ipcr_acr;
+#define psc_ipcr	ipcr_acr.ipcr
+#define psc_acr		ipcr_acr.acr
+	u8	reserved3[3];
+	union {				/* PSC + 0x14 */
+		u16	isr;
+		u16	imr;
+	} isr_imr;
+#define psc_isr		isr_imr.isr
+#define psc_imr		isr_imr.imr
+	u16	reserved4;
+	u8	ctur;		/* PSC + 0x18 */
+	u8	reserved5[3];
+	u8	ctlr;		/* PSC + 0x1c */
+	u8	reserved6[3];
+	u16	ccr;		/* PSC + 0x20 */
+	u8	reserved7[14];
+	u8	ivr;		/* PSC + 0x30 */
+	u8	reserved8[3];
+	u8	ip;		/* PSC + 0x34 */
+	u8	reserved9[3];
+	u8	op1;		/* PSC + 0x38 */
+	u8	reserved10[3];
+	u8	op0;		/* PSC + 0x3c */
+	u8	reserved11[3];
+	u32	sicr;		/* PSC + 0x40 */
+	u8	ircr1;		/* PSC + 0x44 */
+	u8	reserved12[3];
+	u8	ircr2;		/* PSC + 0x44 */
+	u8	reserved13[3];
+	u8	irsdr;		/* PSC + 0x4c */
+	u8	reserved14[3];
+	u8	irmdr;		/* PSC + 0x50 */
+	u8	reserved15[3];
+	u8	irfdr;		/* PSC + 0x54 */
+	u8	reserved16[3];
+	u16	rfnum;		/* PSC + 0x58 */
+	u16	reserved17;
+	u16	tfnum;		/* PSC + 0x5c */
+	u16	reserved18;
+	u32	rfdata;		/* PSC + 0x60 */
+	u16	rfstat;		/* PSC + 0x64 */
+	u16	reserved20;
+	u8	rfcntl;		/* PSC + 0x68 */
+	u8	reserved21[5];
+	u16	rfalarm;	/* PSC + 0x6e */
+	u16	reserved22;
+	u16	rfrptr;		/* PSC + 0x72 */
+	u16	reserved23;
+	u16	rfwptr;		/* PSC + 0x76 */
+	u16	reserved24;
+	u16	rflrfptr;	/* PSC + 0x7a */
+	u16	reserved25;
+	u16	rflwfptr;	/* PSC + 0x7e */
+	u32	tfdata;		/* PSC + 0x80 */
+	u16	tfstat;		/* PSC + 0x84 */
+	u16	reserved26;
+	u8	tfcntl;		/* PSC + 0x88 */
+	u8	reserved27[5];
+	u16	tfalarm;	/* PSC + 0x8e */
+	u16	reserved28;
+	u16	tfrptr;		/* PSC + 0x92 */
+	u16	reserved29;
+	u16	tfwptr;		/* PSC + 0x96 */
+	u16	reserved30;
+	u16	tflrfptr;	/* PSC + 0x9a */
+	u16	reserved31;
+	u16	tflwfptr;	/* PSC + 0x9e */
+};
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
