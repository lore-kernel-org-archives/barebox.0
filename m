Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WkpDb-0000rP-3R
 for barebox@lists.infradead.org; Thu, 15 May 2014 06:32:40 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 15 May 2014 08:32:13 +0200
Message-Id: <1400135535-29312-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1400135535-29312-1-git-send-email-s.hauer@pengutronix.de>
References: <1400135535-29312-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/4] net: Pass eth_device to net_receive
To: barebox@lists.infradead.org

So that barebox has the information which interface a packet
came from.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/altera_tse.c   | 2 +-
 drivers/net/ar231x.c       | 2 +-
 drivers/net/arc_emac.c     | 2 +-
 drivers/net/at91_ether.c   | 2 +-
 drivers/net/cpsw.c         | 2 +-
 drivers/net/cs8900.c       | 2 +-
 drivers/net/davinci_emac.c | 2 +-
 drivers/net/designware.c   | 2 +-
 drivers/net/dm9k.c         | 2 +-
 drivers/net/ep93xx.c       | 2 +-
 drivers/net/ethoc.c        | 2 +-
 drivers/net/fec_imx.c      | 2 +-
 drivers/net/fec_mpc5200.c  | 2 +-
 drivers/net/gianfar.c      | 2 +-
 drivers/net/ks8851_mll.c   | 2 +-
 drivers/net/macb.c         | 4 ++--
 drivers/net/netx_eth.c     | 2 +-
 drivers/net/orion-gbe.c    | 2 +-
 drivers/net/smc91111.c     | 2 +-
 drivers/net/smc911x.c      | 2 +-
 drivers/net/tap.c          | 2 +-
 drivers/net/usb/asix.c     | 2 +-
 drivers/net/usb/smsc95xx.c | 4 ++--
 drivers/net/usb/usbnet.c   | 2 +-
 drivers/net/xgmac.c        | 2 +-
 include/net.h              | 2 +-
 net/net.c                  | 2 +-
 27 files changed, 29 insertions(+), 29 deletions(-)

diff --git a/drivers/net/altera_tse.c b/drivers/net/altera_tse.c
index 6978e2a..4bbf595 100644
--- a/drivers/net/altera_tse.c
+++ b/drivers/net/altera_tse.c
@@ -402,7 +402,7 @@ static int tse_eth_rx(struct eth_device *edev)
 		ALT_SGDMA_DESCRIPTOR_STATUS_TERMINATED_BY_EOP_MSK) {
 
 		packet_length = rx_desc->actual_bytes_transferred;
-		net_receive(NetRxPackets[0], packet_length);
+		net_receive(edev, NetRxPackets[0], packet_length);
 
 		/* Clear Run */
 		rx_sgdma->control = (rx_sgdma->control & (~ALT_SGDMA_CONTROL_RUN_MSK));
diff --git a/drivers/net/ar231x.c b/drivers/net/ar231x.c
index 515de17..572008a 100644
--- a/drivers/net/ar231x.c
+++ b/drivers/net/ar231x.c
@@ -217,7 +217,7 @@ static int ar231x_eth_recv(struct eth_device *edev)
 			u16 length =
 				((status >> DMA_RX_LEN_SHIFT) & 0x3fff)
 				- CRC_LEN;
-			net_receive((void *)rxdsc->buffer_ptr, length);
+			net_receive(edev, (void *)rxdsc->buffer_ptr, length);
 		}
 		/* Clean descriptor. now it is owned by DMA. */
 		priv->next_rxdsc = (struct ar231x_descr *)rxdsc->next_dsc_ptr;
diff --git a/drivers/net/arc_emac.c b/drivers/net/arc_emac.c
index 1f1e889..3f6f814 100644
--- a/drivers/net/arc_emac.c
+++ b/drivers/net/arc_emac.c
@@ -304,7 +304,7 @@ static int arc_emac_recv(struct eth_device *edev)
 		dma_inv_range((unsigned long)rxbd->data,
 			      (unsigned long)rxbd->data + pktlen);
 
-		net_receive((unsigned char *)rxbd->data, pktlen);
+		net_receive(edev, (unsigned char *)rxbd->data, pktlen);
 
 		rxbd->info = cpu_to_le32(FOR_EMAC | PKTSIZE);
 	}
diff --git a/drivers/net/at91_ether.c b/drivers/net/at91_ether.c
index bf2f957..e09ea83 100644
--- a/drivers/net/at91_ether.c
+++ b/drivers/net/at91_ether.c
@@ -224,7 +224,7 @@ static int at91_ether_rx(struct eth_device *edev)
 
 	size = rbfp->size & RBF_SIZE;
 
-	net_receive((unsigned char *)(rbfp->addr & RBF_ADDR), size);
+	net_receive(edev, (unsigned char *)(rbfp->addr & RBF_ADDR), size);
 
 	rbfp->addr &= ~RBF_OWNER;
 	if (rbfp->addr & RBF_WRAP)
diff --git a/drivers/net/cpsw.c b/drivers/net/cpsw.c
index ec3263d..a5cbacf 100644
--- a/drivers/net/cpsw.c
+++ b/drivers/net/cpsw.c
@@ -895,7 +895,7 @@ static int cpsw_recv(struct eth_device *edev)
 
 	while (cpdma_process(priv, &priv->rx_chan, &buffer, &len) >= 0) {
 		dma_inv_range((ulong)buffer, (ulong)buffer + len);
-		net_receive(buffer, len);
+		net_receive(edev, buffer, len);
 		cpdma_submit(priv, &priv->rx_chan, buffer, PKTSIZE);
 	}
 
diff --git a/drivers/net/cs8900.c b/drivers/net/cs8900.c
index aa9d9a0..dccb808 100644
--- a/drivers/net/cs8900.c
+++ b/drivers/net/cs8900.c
@@ -309,7 +309,7 @@ static int cs8900_recv(struct eth_device *dev)
 	if (len & 1) {
 		*addr++ = readw(priv->regs + CS8900_RTDATA0);
 	}
-	net_receive(NetRxPackets[0], len);
+	net_receive(dev, NetRxPackets[0], len);
 
 	return len;
 }
diff --git a/drivers/net/davinci_emac.c b/drivers/net/davinci_emac.c
index 7848f50..ce367a3 100644
--- a/drivers/net/davinci_emac.c
+++ b/drivers/net/davinci_emac.c
@@ -462,7 +462,7 @@ static int davinci_emac_recv(struct eth_device *edev)
 		dev_dbg(priv->dev, "| emac_recv got packet (length %i)\n", len);
 		dma_inv_range((ulong)pkt,
 				(ulong)readl(rx_curr_desc + EMAC_DESC_BUFFER) + len);
-		net_receive(pkt, len);
+		net_receive(edev, pkt, len);
 		ret = len;
 	}
 
diff --git a/drivers/net/designware.c b/drivers/net/designware.c
index e706f54..ac2eca5 100644
--- a/drivers/net/designware.c
+++ b/drivers/net/designware.c
@@ -356,7 +356,7 @@ static int dwc_ether_rx(struct eth_device *dev)
 	dma_inv_range((unsigned long)desc_p->dmamac_addr,
 		      (unsigned long)desc_p->dmamac_addr + length);
 
-	net_receive(desc_p->dmamac_addr, length);
+	net_receive(dev, desc_p->dmamac_addr, length);
 
 	desc_p->txrx_status |= DESC_RXSTS_OWNBYDMA;
 
diff --git a/drivers/net/dm9k.c b/drivers/net/dm9k.c
index 4c28870..e98b8f4 100644
--- a/drivers/net/dm9k.c
+++ b/drivers/net/dm9k.c
@@ -633,7 +633,7 @@ static int dm9k_eth_rx(struct eth_device *edev)
 			dev_dbg(dev, "Receiving packet\n");
 			dm9k_rd(priv->buswidth, priv->iodata, priv->pckt, rx_len);
 			dev_dbg(dev, "passing %u bytes packet to upper layer\n", rx_len);
-			net_receive(priv->pckt, rx_len);
+			net_receive(edev, priv->pckt, rx_len);
 		} else {
 			dev_dbg(dev, "Discarding packet\n");
 			dm9k_dump(priv->buswidth, priv->iodata, rx_len); /* discard packet */
diff --git a/drivers/net/ep93xx.c b/drivers/net/ep93xx.c
index 1ecef13..4b73abf 100644
--- a/drivers/net/ep93xx.c
+++ b/drivers/net/ep93xx.c
@@ -344,7 +344,7 @@ static int ep93xx_eth_rcv_packet(struct eth_device *edev)
 			 * used when we pass the data off to the protocol
 			 * layer via net_receive().
 			 */
-			net_receive((uchar *)priv->rx_dq.current->word1,
+			net_receive(edev, (uchar *)priv->rx_dq.current->word1,
 				RX_STATUS_FRAME_LEN(priv->rx_sq.current));
 			pr_debug("reporting %d bytes...\n",
 				RX_STATUS_FRAME_LEN(priv->rx_sq.current));
diff --git a/drivers/net/ethoc.c b/drivers/net/ethoc.c
index b000875..ced84df 100644
--- a/drivers/net/ethoc.c
+++ b/drivers/net/ethoc.c
@@ -369,7 +369,7 @@ static int ethoc_rx(struct eth_device *edev, int limit)
 
 			size -= 4; /* strip the CRC */
 			invalidate_dcache_range(bd.addr, bd.addr + PKTSIZE);
-			net_receive((unsigned char *)bd.addr, size);
+			net_receive(edev, (unsigned char *)bd.addr, size);
 		}
 
 		/* clear the buffer descriptor so it can be reused */
diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index 72e689d..88f9e75 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -581,7 +581,7 @@ static int fec_recv(struct eth_device *dev)
 			 */
 			frame = phys_to_virt(readl(&rbd->data_pointer));
 			frame_length = readw(&rbd->data_length) - 4;
-			net_receive(frame->data, frame_length);
+			net_receive(dev, frame->data, frame_length);
 			len = frame_length;
 		} else {
 			if (bd_status & FEC_RBD_ERR) {
diff --git a/drivers/net/fec_mpc5200.c b/drivers/net/fec_mpc5200.c
index acad20c..41a3b58 100644
--- a/drivers/net/fec_mpc5200.c
+++ b/drivers/net/fec_mpc5200.c
@@ -622,7 +622,7 @@ static int mpc5xxx_fec_recv(struct eth_device *dev)
 			 */
 			memcpy(buff, frame->head, 14);
 			memcpy(buff + 14, frame->data, frame_length);
-			net_receive(buff, frame_length);
+			net_receive(dev, buff, frame_length);
 			len = frame_length;
 		}
 		/*
diff --git a/drivers/net/gianfar.c b/drivers/net/gianfar.c
index f944c6c..3370b5c 100644
--- a/drivers/net/gianfar.c
+++ b/drivers/net/gianfar.c
@@ -413,7 +413,7 @@ static int gfar_recv(struct eth_device *edev)
 
 	/* Send the packet up if there were no errors */
 	if (!(priv->rxbd[priv->rxidx].status & RXBD_STATS)) {
-		net_receive(NetRxPackets[priv->rxidx], length - 4);
+		net_receive(edev, NetRxPackets[priv->rxidx], length - 4);
 	} else {
 		dev_err(dev, "Got error %x\n",
 		       (priv->rxbd[priv->rxidx].status & RXBD_STATS));
diff --git a/drivers/net/ks8851_mll.c b/drivers/net/ks8851_mll.c
index 9c0e5a7..83d1b02 100644
--- a/drivers/net/ks8851_mll.c
+++ b/drivers/net/ks8851_mll.c
@@ -693,7 +693,7 @@ static int ks8851_rx_frame(struct ks_net *ks)
 	if (RxStatus & RXFSHR_RXFV) {
 		/* Pass to upper layer */
 		dev_dbg(dev, "passing packet to upper layer\n\n");
-		net_receive(NetRxPackets[0], RxLen);
+		net_receive(&ks->edev, NetRxPackets[0], RxLen);
 		return RxLen;
 	} else if (RxStatus & RXFSHR_ERR) {
 		dev_err(dev, "RxStatus error 0x%04x\n", RxStatus & RXFSHR_ERR);
diff --git a/drivers/net/macb.c b/drivers/net/macb.c
index d8523ce..12a2a3c 100644
--- a/drivers/net/macb.c
+++ b/drivers/net/macb.c
@@ -187,7 +187,7 @@ static int gem_recv(struct eth_device *edev)
 		status = macb->rx_ring[macb->rx_tail].ctrl;
 		length = MACB_BFEXT(RX_FRMLEN, status);
 		buffer = macb->rx_buffer + macb->rx_buffer_size * macb->rx_tail;
-		net_receive(buffer, length);
+		net_receive(edev, buffer, length);
 		macb->rx_ring[macb->rx_tail].addr &= ~MACB_BIT(RX_USED);
 		barrier();
 
@@ -237,7 +237,7 @@ static int macb_recv(struct eth_device *edev)
 				buffer = (void *)NetRxPackets[0];
 			}
 
-			net_receive(buffer, length);
+			net_receive(edev, buffer, length);
 			if (++rx_tail >= macb->rx_ring_size)
 				rx_tail = 0;
 			reclaim_rx_buffers(macb, rx_tail);
diff --git a/drivers/net/netx_eth.c b/drivers/net/netx_eth.c
index 309f4cb..96dbc7c 100644
--- a/drivers/net/netx_eth.c
+++ b/drivers/net/netx_eth.c
@@ -110,7 +110,7 @@ static int netx_eth_rx (struct eth_device *edev)
 	/* get data */
 	memcpy((void*)NetRxPackets[0], (void *)(SRAM_BASE(seg) + frameno * 1560), len);
 	/* pass to barebox */
-	net_receive(NetRxPackets[0], len);
+	net_receive(edev, NetRxPackets[0], len);
 
 	PFIFO_REG(PFIFO_BASE(EMPTY_PTR_FIFO(xcno))) =
 		FIFO_PTR_SEGMENT(seg) |
diff --git a/drivers/net/orion-gbe.c b/drivers/net/orion-gbe.c
index 00f5e54..1749704 100644
--- a/drivers/net/orion-gbe.c
+++ b/drivers/net/orion-gbe.c
@@ -303,7 +303,7 @@ static int port_recv(struct eth_device *edev)
 		      ALIGN(PKTSIZE, 8));
 
 	/* received packet is padded with two null bytes */
-	net_receive(rxdesc->buf_ptr + 0x2, rxdesc->byte_cnt - 0x2);
+	net_receive(edev, rxdesc->buf_ptr + 0x2, rxdesc->byte_cnt - 0x2);
 	ret = 0;
 
 recv_err:
diff --git a/drivers/net/smc91111.c b/drivers/net/smc91111.c
index ba81e24..7baa749 100644
--- a/drivers/net/smc91111.c
+++ b/drivers/net/smc91111.c
@@ -1169,7 +1169,7 @@ static int smc91c111_eth_rx(struct eth_device *edev)
 
 	if (!is_error) {
 		/* Pass the packet up to the protocol layers. */
-		net_receive(NetRxPackets[0], packet_length);
+		net_receive(edev, NetRxPackets[0], packet_length);
 		return 0;
 	}
 
diff --git a/drivers/net/smc911x.c b/drivers/net/smc911x.c
index e0d78d0..9977ae3 100644
--- a/drivers/net/smc911x.c
+++ b/drivers/net/smc911x.c
@@ -478,7 +478,7 @@ static int smc911x_eth_rx(struct eth_device *edev)
 			dev_err(&edev->dev, "dropped bad packet. Status: 0x%08x\n",
 				status);
 		else
-			net_receive(NetRxPackets[0], pktlen);
+			net_receive(edev, NetRxPackets[0], pktlen);
 	}
 
 	return 0;
diff --git a/drivers/net/tap.c b/drivers/net/tap.c
index 436b0e0..2458fb5 100644
--- a/drivers/net/tap.c
+++ b/drivers/net/tap.c
@@ -45,7 +45,7 @@ int tap_eth_rx (struct eth_device *edev)
 	length = linux_read_nonblock(priv->fd, NetRxPackets[0], PKTSIZE);
 
 	if (length > 0)
-		net_receive(NetRxPackets[0], length);
+		net_receive(edev, NetRxPackets[0], length);
 
 	return 0;
 }
diff --git a/drivers/net/usb/asix.c b/drivers/net/usb/asix.c
index 2145d3f..d6ac322 100644
--- a/drivers/net/usb/asix.c
+++ b/drivers/net/usb/asix.c
@@ -431,7 +431,7 @@ static int asix_rx_fixup(struct usbnet *dev, void *buf, int len)
 			return 0;
 		}
 
-		net_receive(buf, size);
+		net_receive(&dev->edev, buf, size);
 
 		buf += ((size + 1) & 0xfffe);
 		len -= ((size + 1) & 0xfffe);
diff --git a/drivers/net/usb/smsc95xx.c b/drivers/net/usb/smsc95xx.c
index eb8f0be..053da18 100644
--- a/drivers/net/usb/smsc95xx.c
+++ b/drivers/net/usb/smsc95xx.c
@@ -793,11 +793,11 @@ static int smsc95xx_rx_fixup(struct usbnet *dev, void *buf, int len)
 
 			/* last frame in this batch */
 			if (len == size) {
-				net_receive(buf, len - 4);
+				net_receive(&dev->edev, buf, len - 4);
 				return 1;
 			}
 
-			net_receive(packet, len - 4);
+			net_receive(&dev->edev, packet, len - 4);
 		}
 
 		len -= size;
diff --git a/drivers/net/usb/usbnet.c b/drivers/net/usb/usbnet.c
index 80b4ae7..13f58e3 100644
--- a/drivers/net/usb/usbnet.c
+++ b/drivers/net/usb/usbnet.c
@@ -138,7 +138,7 @@ static int usbnet_recv(struct eth_device *edev)
 		if (info->rx_fixup)
 			return info->rx_fixup(dev, rx_buf, alen);
 		else
-			net_receive(rx_buf, alen);
+			net_receive(edev, rx_buf, alen);
 	}
 
         return 0;
diff --git a/drivers/net/xgmac.c b/drivers/net/xgmac.c
index b4bfd08..cc22d0e 100644
--- a/drivers/net/xgmac.c
+++ b/drivers/net/xgmac.c
@@ -617,7 +617,7 @@ static int xgmac_recv(struct eth_device *edev)
 
 	length = desc_get_rx_frame_len(rxdesc);
 
-	net_receive(desc_get_buf_addr(rxdesc), length);
+	net_receive(edev, desc_get_buf_addr(rxdesc), length);
 
 	/* set descriptor back to owned by XGMAC */
 	desc_set_rx_owner(rxdesc);
diff --git a/include/net.h b/include/net.h
index 3b800b7..a166552 100644
--- a/include/net.h
+++ b/include/net.h
@@ -413,7 +413,7 @@ struct eth_device *eth_get_byname(const char *name);
  *
  * Return 0 if the packet is successfully handled. Can be ignored
  */
-int net_receive(unsigned char *pkt, int len);
+int net_receive(struct eth_device *edev, unsigned char *pkt, int len);
 
 struct net_connection {
 	struct ethernet *et;
diff --git a/net/net.c b/net/net.c
index 20051bc..e43a3ab 100644
--- a/net/net.c
+++ b/net/net.c
@@ -619,7 +619,7 @@ bad:
 	return 0;
 }
 
-int net_receive(unsigned char *pkt, int len)
+int net_receive(struct eth_device *edev, unsigned char *pkt, int len)
 {
 	struct ethernet *et = (struct ethernet *)pkt;
 	int et_protlen = ntohs(et->et_protlen);
-- 
2.0.0.rc0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
