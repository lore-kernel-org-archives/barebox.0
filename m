Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UhDqo-0005om-UY
 for barebox@lists.infradead.org; Tue, 28 May 2013 06:57:44 +0000
Date: Tue, 28 May 2013 08:57:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130528065720.GU32299@pengutronix.de>
References: <1369208989-14369-1-git-send-email-linux@rempel-privat.de>
 <1369208989-14369-3-git-send-email-linux@rempel-privat.de>
 <20130524070916.GX32299@pengutronix.de>
 <51A0DF4E.8020009@rempel-privat.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <51A0DF4E.8020009@rempel-privat.de>
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
Subject: Re: [RFC, PATCH v2 2/3] net: add ar231x-eth support
To: Oleksij Rempel <linux@rempel-privat.de>
Cc: barebox@lists.infradead.org

On Sat, May 25, 2013 at 05:57:02PM +0200, Oleksij Rempel wrote:
> Am 24.05.2013 09:09, schrieb Sascha Hauer:
> >On Wed, May 22, 2013 at 09:49:48AM +0200, Oleksij Rempel wrote:
> >>This driver should work with some Atheros WiSoCs:
> >>- ar2312, ar2313
> >>- ar2315, ar2316 ...
> >>
> >>Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
> >>---
> >>  drivers/net/Kconfig  |   7 +
> >>  drivers/net/Makefile |   1 +
> >>  drivers/net/ar231x.c | 429 +++++++++++++++++++++++++++++++++++++++++++++++++++
> >>  drivers/net/ar231x.h | 219 ++++++++++++++++++++++++++
> >>  4 files changed, 656 insertions(+)
> >>  create mode 100644 drivers/net/ar231x.c
> >>  create mode 100644 drivers/net/ar231x.h
> >>
> >>+
> >>+	/* FIXME: priv->{t,r}x_ring are virtual addresses,
> >>+	 * use virt-to-phys convertion */
> >
> >We use 1:1 mappings, so I think this comment should be removed.
> 
> This part should be fixed after Anthonys "MIPS: add initial cache support"
> 
> >>+
> >>+static void ar231x_allocate_dma_descriptors(struct eth_device *edev)
> >>+{
> >>+	struct ar231x_eth_priv *priv = edev->priv;
> >>+	u16 ar231x_descr_size = sizeof(struct ar231x_descr);
> >>+	u16 i;
> >>+
> >>+	priv->tx_ring = xmalloc(ar231x_descr_size);
> >
> >What alignment do you need here? This may or may not be safe.
> 
> Currently there is no other choice.
> 
> >>+
> >>+static int ar231x_eth_recv(struct eth_device *edev)
> >>+{
> >>+	struct ar231x_eth_priv *priv = edev->priv;
> >>+
> >>+	while (1) {
> >>+		struct ar231x_descr *rxdsc = priv->next_rxdsc;
> >>+		u32 status = rxdsc->status;
> >>+
> >>+		/* owned by DMA? */
> >>+		if (status & DMA_RX_OWN)
> >>+			break;
> >>+
> >>+		/* Pick only packets what we can handle:
> >>+		 * - only complete packet per buffer
> >>+		 *   (First and Last at same time)
> >>+		 * - drop multicast */
> >>+		if (!priv->kill_rx_ring &&
> >>+				((status & DMA_RX_MASK) == DMA_RX_FSLS)) {
> >>+			u16 length =
> >>+				((status >> DMA_RX_LEN_SHIFT) & 0x3fff)
> >>+				- CRC_LEN;
> >>+			net_receive((void *)rxdsc->buffer_ptr, length);
> >>+		}
> >>+		/* Clean descriptor. now it is owned by DMA. */
> >>+		priv->next_rxdsc = (struct ar231x_descr *)rxdsc->next_dsc_ptr;
> >>+		ar231x_flash_rxdsc(rxdsc);
> >>+	}
> >
> >This loop looks wrong. You should only receive a single packet for each
> >call of this function.
> 
> This loop is needed to filter broadcast packtes. If remove this loop
> and reduce rx buffer, i will get really bad packet losses.

What I meant is that you should only pull a single packet out of the
queue each time you enter ar231x_eth_recv. You shouldn't have to reduce
the rx buffer for this.

Anyway, thinking about it it should be fine to call net_receive on all
currently available buffers like you did above. Just keep it like it is
now.

So with the request_mem_region fix this driver should be fine.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
