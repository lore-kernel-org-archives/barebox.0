Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1OKTcP-00034w-AA
	for barebox@lists.infradead.org; Fri, 04 Jun 2010 09:55:16 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  4 Jun 2010 11:55:05 +0200
Message-Id: <1275645309-9756-10-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1275645309-9756-1-git-send-email-s.hauer@pengutronix.de>
References: <1275645309-9756-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 09/13] network drivers: call net_receive directly instead of
	NetReceive
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/at91_ether.c  |    2 +-
 drivers/net/cs8900.c      |    2 +-
 drivers/net/dm9000.c      |    2 +-
 drivers/net/ep93xx.c      |    4 ++--
 drivers/net/fec_imx.c     |    2 +-
 drivers/net/fec_mpc5200.c |    2 +-
 drivers/net/macb.c        |    2 +-
 drivers/net/netx_eth.c    |    2 +-
 drivers/net/smc91111.c    |    2 +-
 drivers/net/smc911x.c     |    2 +-
 drivers/net/tap.c         |    2 +-
 drivers/net/usb/asix.c    |    2 +-
 drivers/net/usb/usbnet.c  |    2 +-
 13 files changed, 14 insertions(+), 14 deletions(-)

diff --git a/drivers/net/at91_ether.c b/drivers/net/at91_ether.c
index a2d1594..3c4f4b0 100644
--- a/drivers/net/at91_ether.c
+++ b/drivers/net/at91_ether.c
@@ -190,7 +190,7 @@ static int at91rm9200_eth_rx (struct eth_device *edev)
 		return 0;
 
 	size = rbfp->size & RBF_SIZE;
-	NetReceive ((volatile uchar *) (rbfp->addr & RBF_ADDR), size);
+	net_receive((volatile uchar *) (rbfp->addr & RBF_ADDR), size);
 
 	rbfp->addr &= ~RBF_OWNER;
 	if (rbfp->addr & RBF_WRAP)
diff --git a/drivers/net/cs8900.c b/drivers/net/cs8900.c
index 64366ac..8120877 100644
--- a/drivers/net/cs8900.c
+++ b/drivers/net/cs8900.c
@@ -309,7 +309,7 @@ static int cs8900_recv(struct eth_device *dev)
 	if (len & 1) {
 		*addr++ = readw(priv->regs + CS8900_RTDATA0);
 	}
-	NetReceive(NetRxPackets[0], len);
+	net_receive(NetRxPackets[0], len);
 
 	return len;
 }
diff --git a/drivers/net/dm9000.c b/drivers/net/dm9000.c
index 77c771b..2062c66 100644
--- a/drivers/net/dm9000.c
+++ b/drivers/net/dm9000.c
@@ -416,7 +416,7 @@ static int dm9000_eth_rx (struct eth_device *edev)
 
 		/* Pass to upper layer */
 		debug("passing packet to upper layer\n");
-		NetReceive(NetRxPackets[0], RxLen);
+		net_receive(NetRxPackets[0], RxLen);
 		return RxLen;
 	}
 	return 0;
diff --git a/drivers/net/ep93xx.c b/drivers/net/ep93xx.c
index e91a92e..c6c4671 100644
--- a/drivers/net/ep93xx.c
+++ b/drivers/net/ep93xx.c
@@ -335,9 +335,9 @@ static int ep93xx_eth_rcv_packet(struct eth_device *edev)
 			 * protocol stack. We track the total number of
 			 * bytes in the frame (nbytes_frame) which will be
 			 * used when we pass the data off to the protocol
-			 * layer via NetReceive().
+			 * layer via net_receive().
 			 */
-			NetReceive((uchar *)priv->rx_dq.current->word1,
+			net_receive((uchar *)priv->rx_dq.current->word1,
 				RX_STATUS_FRAME_LEN(priv->rx_sq.current));
 			pr_debug("reporting %d bytes...\n",
 				RX_STATUS_FRAME_LEN(priv->rx_sq.current));
diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index 5e8e5ca..40a7543 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -515,7 +515,7 @@ static int fec_recv(struct eth_device *dev)
 			 */
 			frame = phys_to_virt(readl(&rbd->data_pointer));
 			frame_length = readw(&rbd->data_length) - 4;
-			NetReceive(frame->data, frame_length);
+			net_receive(frame->data, frame_length);
 			len = frame_length;
 		} else {
 			if (bd_status & FEC_RBD_ERR) {
diff --git a/drivers/net/fec_mpc5200.c b/drivers/net/fec_mpc5200.c
index d803ddf..ce9a21d 100644
--- a/drivers/net/fec_mpc5200.c
+++ b/drivers/net/fec_mpc5200.c
@@ -645,7 +645,7 @@ static int mpc5xxx_fec_recv(struct eth_device *dev)
 			 */
 			memcpy(buff, frame->head, 14);
 			memcpy(buff + 14, frame->data, frame_length);
-			NetReceive(buff, frame_length);
+			net_receive(buff, frame_length);
 			len = frame_length;
 		}
 		/*
diff --git a/drivers/net/macb.c b/drivers/net/macb.c
index 1bb833a..4feeed0 100644
--- a/drivers/net/macb.c
+++ b/drivers/net/macb.c
@@ -190,7 +190,7 @@ static int macb_recv(struct eth_device *edev)
 				buffer = (void *)NetRxPackets[0];
 			}
 
-			NetReceive(buffer, length);
+			net_receive(buffer, length);
 			if (++rx_tail >= CFG_MACB_RX_RING_SIZE)
 				rx_tail = 0;
 			reclaim_rx_buffers(macb, rx_tail);
diff --git a/drivers/net/netx_eth.c b/drivers/net/netx_eth.c
index 673007a..f2d7b4a 100644
--- a/drivers/net/netx_eth.c
+++ b/drivers/net/netx_eth.c
@@ -111,7 +111,7 @@ static int netx_eth_rx (struct eth_device *edev)
 	/* get data */
 	memcpy((void*)NetRxPackets[0], (void *)(SRAM_BASE(seg) + frameno * 1560), len);
 	/* pass to barebox */
-	NetReceive(NetRxPackets[0], len);
+	net_receive(NetRxPackets[0], len);
 
 	PFIFO_REG(PFIFO_BASE(EMPTY_PTR_FIFO(xcno))) =
 		FIFO_PTR_SEGMENT(seg) |
diff --git a/drivers/net/smc91111.c b/drivers/net/smc91111.c
index 9b41c67..58ebaa9 100644
--- a/drivers/net/smc91111.c
+++ b/drivers/net/smc91111.c
@@ -1156,7 +1156,7 @@ static int smc91c111_eth_rx(struct eth_device *edev)
 
 	if (!is_error) {
 		/* Pass the packet up to the protocol layers. */
-		NetReceive(NetRxPackets[0], packet_length);
+		net_receive(NetRxPackets[0], packet_length);
 		return packet_length;
 	}
 
diff --git a/drivers/net/smc911x.c b/drivers/net/smc911x.c
index 4a5e7b6..ca320d5 100644
--- a/drivers/net/smc911x.c
+++ b/drivers/net/smc911x.c
@@ -668,7 +668,7 @@ static int smc911x_eth_rx(struct eth_device *edev)
 				": dropped bad packet. Status: 0x%08x\n",
 				status);
 		else
-			NetReceive(NetRxPackets[0], pktlen);
+			net_receive(NetRxPackets[0], pktlen);
 	}
 
 	return 0;
diff --git a/drivers/net/tap.c b/drivers/net/tap.c
index 8673436..522a9f1 100644
--- a/drivers/net/tap.c
+++ b/drivers/net/tap.c
@@ -48,7 +48,7 @@ int tap_eth_rx (struct eth_device *edev)
 	length = linux_read_nonblock(priv->fd, NetRxPackets[0], PKTSIZE);
 
 	if (length > 0)
-		NetReceive(NetRxPackets[0], length);
+		net_receive(NetRxPackets[0], length);
 
 	return 0;
 }
diff --git a/drivers/net/usb/asix.c b/drivers/net/usb/asix.c
index e44ce67..fc4146f 100644
--- a/drivers/net/usb/asix.c
+++ b/drivers/net/usb/asix.c
@@ -425,7 +425,7 @@ static int asix_rx_fixup(struct usbnet *dev, void *buf, int len)
 			return 0;
 		}
 
-		NetReceive(buf, size);
+		net_receive(buf, size);
 
 		buf += ((size + 1) & 0xfffe);
 		len -= ((size + 1) & 0xfffe);
diff --git a/drivers/net/usb/usbnet.c b/drivers/net/usb/usbnet.c
index 123cc3b..b0e3090 100644
--- a/drivers/net/usb/usbnet.c
+++ b/drivers/net/usb/usbnet.c
@@ -137,7 +137,7 @@ static int usbnet_recv(struct eth_device *edev)
 		if (info->rx_fixup)
 			return info->rx_fixup(dev, rx_buf, alen);
 		else
-			NetReceive(rx_buf, alen);
+			net_receive(rx_buf, alen);
 	}
 
         return 0;
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
