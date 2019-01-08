Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-he1eur02on062f.outbound.protection.outlook.com
 ([2a01:111:f400:fe05::62f]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ggsU7-0007zV-CK
 for barebox@lists.infradead.org; Tue, 08 Jan 2019 14:36:06 +0000
From: =?iso-8859-1?Q?Thomas_H=E4mmerle?= <Thomas.Haemmerle@wolfvision.net>
Date: Tue, 8 Jan 2019 14:35:57 +0000
Message-ID: <1546958133-6556-5-git-send-email-thomas.haemmerle@wolfvision.net>
References: <1546958133-6556-1-git-send-email-thomas.haemmerle@wolfvision.net>
 <afd44571-b69b-41cc-bf15-9eff29f89a72.95bf7d06-047e-438c-8c7b-895af195351a.365885ea-854d-40ae-9139-9d74dd250caf@emailsignatures365.codetwo.com>
In-Reply-To: <1546958133-6556-1-git-send-email-thomas.haemmerle@wolfvision.net>
Content-Language: en-US
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 5/6] macb: disable second priority queue for zynqmp gem support
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Cc: =?iso-8859-1?Q?Thomas_H=E4mmerle?= <Thomas.Haemmerle@wolfvision.net>

Provide descriptors for second priority rx and tx queues and disable the
the queues if hardware is GEM. Otherwise the function macb_send() will run
into a timeout.

Signed-off-by: Thomas Haemmerle <thomas.haemmerle@wolfvision.net>
---
 drivers/net/macb.c | 21 +++++++++++++++++++++
 drivers/net/macb.h |  2 ++
 2 files changed, 23 insertions(+)

diff --git a/drivers/net/macb.c b/drivers/net/macb.c
index c129282..2a30457 100644
--- a/drivers/net/macb.c
+++ b/drivers/net/macb.c
@@ -46,9 +46,11 @@
 #define RX_BUFFER_MULTIPLE	64  /* bytes */
 #define RX_NB_PACKET		10
 #define TX_RING_SIZE		2 /* must be power of 2 */
+#define GEM_Q1_DESCS		2
 =

 #define RX_RING_BYTES(bp)	(sizeof(struct macb_dma_desc) * bp->rx_ring_size)
 #define TX_RING_BYTES		(sizeof(struct macb_dma_desc) * TX_RING_SIZE)
+#define GEM_Q1_DESC_BYTES	(sizeof(struct macb_dma_desc) * GEM_Q1_DESCS)
 =

 struct macb_device {
 	void			__iomem *regs;
@@ -60,6 +62,7 @@ struct macb_device {
 	void			*tx_buffer;
 	struct macb_dma_desc	*rx_ring;
 	struct macb_dma_desc	*tx_ring;
+	struct macb_dma_desc	*gem_q1_descs;
 =

 	int			rx_buffer_size;
 	int			rx_ring_size;
@@ -340,6 +343,20 @@ static void macb_init(struct macb_device *macb)
 	macb_writel(macb, RBQP, (ulong)macb->rx_ring);
 	macb_writel(macb, TBQP, (ulong)macb->tx_ring);
 =

+	if (macb->is_gem && macb->gem_q1_descs) {
+		/* Disable the second priority queue */
+		macb->gem_q1_descs[0].addr =3D 0;
+		macb->gem_q1_descs[0].ctrl =3D MACB_BIT(TX_WRAP) |
+				MACB_BIT(TX_LAST) |
+				MACB_BIT(TX_USED);
+		macb->gem_q1_descs[1].addr =3D MACB_BIT(RX_USED) |
+				MACB_BIT(RX_WRAP);
+		macb->gem_q1_descs[1].ctrl =3D 0;
+
+		gem_writel(macb, TQ1, (ulong)&macb->gem_q1_descs[0]);
+		gem_writel(macb, RQ1, (ulong)&macb->gem_q1_descs[1]);
+	}
+
 	switch(macb->interface) {
 	case PHY_INTERFACE_MODE_RGMII:
 		val =3D GEM_BIT(RGMII);
@@ -689,6 +706,10 @@ static int macb_probe(struct device_d *dev)
 	macb->rx_ring =3D dma_alloc_coherent(RX_RING_BYTES(macb), DMA_ADDRESS_BRO=
KEN);
 	macb->tx_ring =3D dma_alloc_coherent(TX_RING_BYTES, DMA_ADDRESS_BROKEN);
 =

+	if (macb->is_gem)
+		macb->gem_q1_descs =3D dma_alloc_coherent(GEM_Q1_DESC_BYTES,
+				DMA_ADDRESS_BROKEN);
+
 	macb_reset_hw(macb);
 	ncfgr =3D macb_mdc_clk_div(macb);
 	ncfgr |=3D MACB_BIT(PAE);		/* PAuse Enable */
diff --git a/drivers/net/macb.h b/drivers/net/macb.h
index 6be9732..979f53c 100644
--- a/drivers/net/macb.h
+++ b/drivers/net/macb.h
@@ -72,6 +72,8 @@
 #define GEM_DCFG5				0x0290
 #define GEM_DCFG6				0x0294
 #define GEM_DCFG7				0x0298
+#define GEM_TQ1					0x0440
+#define GEM_RQ1					0x0480
 =

 /* Bitfields in NCR */
 #define MACB_LB_OFFSET				0
-- =

2.7.4


Thomas H=E4mmerle
Research and Development =


Wolfvision GmbH
 | 6833 Klaus | Austria =

Tel: +43 5523 52250 | Mail: Thomas.Haemmerle@wolfvision.net =


Webpage: www.wolfvision.com | www.wolfvision.com/green
Firmenbuch / Commercial Register: FN283521v Feldkirch/Austria


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
