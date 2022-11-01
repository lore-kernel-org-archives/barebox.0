Delivery-date: Tue, 01 Nov 2022 16:34:38 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1optHh-00B0Ak-Sb
	for lore@lore.pengutronix.de; Tue, 01 Nov 2022 16:34:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1optHf-0005sw-48
	for lore@pengutronix.de; Tue, 01 Nov 2022 16:34:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BxTNt5loBcmMthfkcQDZ1L+4o3lPC8QuGl/aZsliCp4=; b=u3BzHbtVpgW3+h9zVnqj0Z97+F
	P39cX05X3++H0mayM8n0Lba+Ir1yx8XhIiU6QDnO6K7iuUO3Ayj+4QwD0ot+rCCtmbesiTmxvLQ1J
	LmYMglgabwTxD8nnAjjVjP6cX0SOLiw1csWDFkha2Wwsgx29qgTEQLwrBbJ7YbV+RKLZeaG0y/uvU
	PmuxERNNNrFi4F7/fkjieGE8JtUQiQUJfoMq4hZcm5Ofc2cdVSzUsyP5K0WHpOWZT+fqjX+6e96AD
	eXn+MTscyViTBFYHplOCTzN9d/rIjEwsb3XHy6dWFEuOqVWV3XTrRhupM11h21Vg8Rju1vpXOJkGi
	7+WMklhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1optG6-005pct-MZ; Tue, 01 Nov 2022 15:32:58 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1optEu-005oXK-4G
	for barebox@lists.infradead.org; Tue, 01 Nov 2022 15:31:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1optE4-0004g0-4Z; Tue, 01 Nov 2022 16:30:52 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1optE4-001hdt-DM; Tue, 01 Nov 2022 16:30:51 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1optE1-003Exq-9q; Tue, 01 Nov 2022 16:30:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  1 Nov 2022 16:30:38 +0100
Message-Id: <20221101153048.772146-5-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221101153048.772146-1-s.hauer@pengutronix.de>
References: <20221101153048.772146-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221101_083144_717526_1A5038ED 
X-CRM114-Status: GOOD (  37.29  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 04/14] dma: apbh-dma: Simplify code
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The apbh-dma driver supports chaining DMA descriptors while the DMA
engine is running. This is unused in barebox as well as in the Kernel.
We just queue one descriptor chain and wait for its completion, and
the MTD layer doesn't even support the more advanced features. Just
drop the unused code and greatly simplify it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/dma/apbh_dma.c      | 487 ++----------------------------------
 drivers/mtd/nand/nand_mxs.c | 182 ++++++--------
 include/dma/apbh-dma.h      |  48 +---
 3 files changed, 98 insertions(+), 619 deletions(-)

diff --git a/drivers/dma/apbh_dma.c b/drivers/dma/apbh_dma.c
index 83bd783d34..e93bffd595 100644
--- a/drivers/dma/apbh_dma.c
+++ b/drivers/dma/apbh_dma.c
@@ -43,8 +43,6 @@
 #define	BM_APBHX_CHn_SEMA_PHORE			(0xff << 16)
 #define	BP_APBHX_CHn_SEMA_PHORE			16
 
-static struct mxs_dma_chan mxs_dma_channels[MXS_MAX_DMA_CHANNELS];
-
 enum mxs_dma_id {
 	UNKNOWN_DMA_ID,
 	IMX23_DMA,
@@ -66,185 +64,9 @@ static struct apbh_dma *apbh_dma;
  */
 static int mxs_dma_validate_chan(int channel)
 {
-	struct mxs_dma_chan *pchan;
-
 	if ((channel < 0) || (channel >= MXS_MAX_DMA_CHANNELS))
 		return -EINVAL;
 
-	pchan = mxs_dma_channels + channel;
-	if (!(pchan->flags & MXS_DMA_FLAGS_ALLOCATED))
-		return -EINVAL;
-
-	return 0;
-}
-
-/*
- * Return the address of the command within a descriptor.
- */
-static unsigned int mxs_dma_cmd_address(struct mxs_dma_desc *desc)
-{
-	return desc->address + offsetof(struct mxs_dma_desc, cmd);
-}
-
-/*
- * Read a DMA channel's hardware semaphore.
- *
- * As used by the MXS platform's DMA software, the DMA channel's hardware
- * semaphore reflects the number of DMA commands the hardware will process, but
- * has not yet finished. This is a volatile value read directly from hardware,
- * so it must be be viewed as immediately stale.
- *
- * If the channel is not marked busy, or has finished processing all its
- * commands, this value should be zero.
- *
- * See mxs_dma_append() for details on how DMA command blocks must be configured
- * to maintain the expected behavior of the semaphore's value.
- */
-static int mxs_dma_read_semaphore(int channel)
-{
-	struct apbh_dma *apbh = apbh_dma;
-	uint32_t tmp;
-	int ret;
-
-	ret = mxs_dma_validate_chan(channel);
-	if (ret)
-		return ret;
-
-	if (apbh_dma_is_imx23(apbh))
-		tmp = readl(apbh->regs + HW_APBHX_CHn_SEMA_MX23(channel));
-	else
-		tmp = readl(apbh->regs + HW_APBHX_CHn_SEMA_MX28(channel));
-
-	tmp &= BM_APBHX_CHn_SEMA_PHORE;
-	tmp >>= BP_APBHX_CHn_SEMA_PHORE;
-
-	return tmp;
-}
-
-/*
- * Enable a DMA channel.
- *
- * If the given channel has any DMA descriptors on its active list, this
- * function causes the DMA hardware to begin processing them.
- *
- * This function marks the DMA channel as "busy," whether or not there are any
- * descriptors to process.
- */
-static int mxs_dma_enable(int channel)
-{
-	struct apbh_dma *apbh = apbh_dma;
-	unsigned int sem;
-	struct mxs_dma_chan *pchan;
-	struct mxs_dma_desc *pdesc;
-	int channel_bit, ret;
-
-	ret = mxs_dma_validate_chan(channel);
-	if (ret)
-		return ret;
-
-	pchan = mxs_dma_channels + channel;
-
-	if (pchan->pending_num == 0) {
-		pchan->flags |= MXS_DMA_FLAGS_BUSY;
-		return 0;
-	}
-
-	pdesc = list_first_entry(&pchan->active, struct mxs_dma_desc, node);
-	if (pdesc == NULL)
-		return -EFAULT;
-
-	if (pchan->flags & MXS_DMA_FLAGS_BUSY) {
-		if (!(pdesc->cmd.data & MXS_DMA_DESC_CHAIN))
-			return 0;
-
-		sem = mxs_dma_read_semaphore(channel);
-		if (sem == 0)
-			return 0;
-
-		if (sem == 1) {
-			pdesc = list_entry(pdesc->node.next,
-					   struct mxs_dma_desc, node);
-			if (apbh_dma_is_imx23(apbh))
-				writel(mxs_dma_cmd_address(pdesc),
-					apbh->regs + HW_APBHX_CHn_NXTCMDAR_MX23(channel));
-			else
-				writel(mxs_dma_cmd_address(pdesc),
-					apbh->regs + HW_APBHX_CHn_NXTCMDAR_MX28(channel));
-		}
-
-		if (apbh_dma_is_imx23(apbh))
-			writel(pchan->pending_num,
-					apbh->regs + HW_APBHX_CHn_SEMA_MX23(channel));
-		else
-			writel(pchan->pending_num,
-					apbh->regs + HW_APBHX_CHn_SEMA_MX28(channel));
-
-		pchan->active_num += pchan->pending_num;
-		pchan->pending_num = 0;
-	} else {
-		pchan->active_num += pchan->pending_num;
-		pchan->pending_num = 0;
-		if (apbh_dma_is_imx23(apbh)) {
-			writel(mxs_dma_cmd_address(pdesc),
-				apbh->regs + HW_APBHX_CHn_NXTCMDAR_MX23(channel));
-			writel(pchan->active_num,
-				apbh->regs + HW_APBHX_CHn_SEMA_MX23(channel));
-			channel_bit = channel + BP_APBH_CTRL0_CLKGATE_CHANNEL;
-		} else {
-			writel(mxs_dma_cmd_address(pdesc),
-				apbh->regs + HW_APBHX_CHn_NXTCMDAR_MX28(channel));
-			writel(pchan->active_num,
-				apbh->regs + HW_APBHX_CHn_SEMA_MX28(channel));
-			channel_bit = channel;
-		}
-		writel(1 << channel_bit, apbh->regs + HW_APBHX_CTRL0 + STMP_OFFSET_REG_CLR);
-	}
-
-	pchan->flags |= MXS_DMA_FLAGS_BUSY;
-	return 0;
-}
-
-/*
- * Disable a DMA channel.
- *
- * This function shuts down a DMA channel and marks it as "not busy." Any
- * descriptors on the active list are immediately moved to the head of the
- * "done" list, whether or not they have actually been processed by the
- * hardware. The "ready" flags of these descriptors are NOT cleared, so they
- * still appear to be active.
- *
- * This function immediately shuts down a DMA channel's hardware, aborting any
- * I/O that may be in progress, potentially leaving I/O hardware in an undefined
- * state. It is unwise to call this function if there is ANY chance the hardware
- * is still processing a command.
- */
-static int mxs_dma_disable(int channel)
-{
-	struct mxs_dma_chan *pchan;
-	struct apbh_dma *apbh = apbh_dma;
-	int channel_bit, ret;
-
-	ret = mxs_dma_validate_chan(channel);
-	if (ret)
-		return ret;
-
-	pchan = mxs_dma_channels + channel;
-
-	if (!(pchan->flags & MXS_DMA_FLAGS_BUSY))
-		return -EINVAL;
-
-	if (apbh_dma_is_imx23(apbh))
-		channel_bit = channel + BP_APBH_CTRL0_CLKGATE_CHANNEL;
-	else
-		channel_bit = channel + 0;
-
-	writel(1 << channel_bit, apbh->regs + HW_APBHX_CTRL0 + STMP_OFFSET_REG_SET);
-
-	pchan->flags &= ~MXS_DMA_FLAGS_BUSY;
-	pchan->active_num = 0;
-	pchan->pending_num = 0;
-	list_splice_init(&pchan->active, &pchan->done);
-
 	return 0;
 }
 
@@ -254,11 +76,6 @@ static int mxs_dma_disable(int channel)
 static int mxs_dma_reset(int channel)
 {
 	struct apbh_dma *apbh = apbh_dma;
-	int ret;
-
-	ret = mxs_dma_validate_chan(channel);
-	if (ret)
-		return ret;
 
 	if (apbh_dma_is_imx23(apbh))
 		writel(1 << (channel + BP_APBH_CTRL0_RESET_CHANNEL),
@@ -270,30 +87,6 @@ static int mxs_dma_reset(int channel)
 	return 0;
 }
 
-/*
- * Enable or disable DMA interrupt.
- *
- * This function enables the given DMA channel to interrupt the CPU.
- */
-static int mxs_dma_enable_irq(int channel, int enable)
-{
-	struct apbh_dma *apbh = apbh_dma;
-	int ret;
-
-	ret = mxs_dma_validate_chan(channel);
-	if (ret)
-		return ret;
-
-	if (enable)
-		writel(1 << (channel + BP_APBHX_CTRL1_CH_CMDCMPLT_IRQ_EN),
-			apbh->regs + HW_APBHX_CTRL1 + STMP_OFFSET_REG_SET);
-	else
-		writel(1 << (channel + BP_APBHX_CTRL1_CH_CMDCMPLT_IRQ_EN),
-			apbh->regs + HW_APBHX_CTRL1 + STMP_OFFSET_REG_CLR);
-
-	return 0;
-}
-
 /*
  * Clear DMA interrupt.
  *
@@ -303,11 +96,6 @@ static int mxs_dma_enable_irq(int channel, int enable)
 static int mxs_dma_ack_irq(int channel)
 {
 	struct apbh_dma *apbh = apbh_dma;
-	int ret;
-
-	ret = mxs_dma_validate_chan(channel);
-	if (ret)
-		return ret;
 
 	writel(1 << channel, apbh->regs + HW_APBHX_CTRL1 + STMP_OFFSET_REG_CLR);
 	writel(1 << channel, apbh->regs + HW_APBHX_CTRL2 + STMP_OFFSET_REG_CLR);
@@ -315,230 +103,12 @@ static int mxs_dma_ack_irq(int channel)
 	return 0;
 }
 
-/*
- * Request to reserve a DMA channel
- */
-static int mxs_dma_request(int channel)
-{
-	struct mxs_dma_chan *pchan;
-
-	if ((channel < 0) || (channel >= MXS_MAX_DMA_CHANNELS))
-		return -EINVAL;
-
-	pchan = mxs_dma_channels + channel;
-	if ((pchan->flags & MXS_DMA_FLAGS_VALID) != MXS_DMA_FLAGS_VALID)
-		return -ENODEV;
-
-	if (pchan->flags & MXS_DMA_FLAGS_ALLOCATED)
-		return -EBUSY;
-
-	pchan->flags |= MXS_DMA_FLAGS_ALLOCATED;
-	pchan->active_num = 0;
-	pchan->pending_num = 0;
-
-	INIT_LIST_HEAD(&pchan->active);
-	INIT_LIST_HEAD(&pchan->done);
-
-	return 0;
-}
-
-/*
- * Release a DMA channel.
- *
- * This function releases a DMA channel from its current owner.
- *
- * The channel will NOT be released if it's marked "busy" (see
- * mxs_dma_enable()).
- */
-static int mxs_dma_release(int channel)
-{
-	struct mxs_dma_chan *pchan;
-	int ret;
-
-	ret = mxs_dma_validate_chan(channel);
-	if (ret)
-		return ret;
-
-	pchan = mxs_dma_channels + channel;
-
-	if (pchan->flags & MXS_DMA_FLAGS_BUSY)
-		return -EBUSY;
-
-	pchan->dev = 0;
-	pchan->active_num = 0;
-	pchan->pending_num = 0;
-	pchan->flags &= ~MXS_DMA_FLAGS_ALLOCATED;
-
-	return 0;
-}
-
-/*
- * Allocate DMA descriptor
- */
-struct mxs_dma_desc *mxs_dma_desc_alloc(void)
-{
-	struct mxs_dma_desc *pdesc;
-	dma_addr_t dma_address;
-
-	pdesc = dma_alloc_coherent(sizeof(struct mxs_dma_desc),
-				   &dma_address);
-
-	if (pdesc == NULL)
-		return NULL;
-
-	pdesc->address = dma_address;
-
-	return pdesc;
-};
-
-/*
- * Free DMA descriptor
- */
-void mxs_dma_desc_free(struct mxs_dma_desc *pdesc)
-{
-	if (pdesc == NULL)
-		return;
-
-	free(pdesc);
-}
-
-/*
- * Add a DMA descriptor to a channel.
- *
- * If the descriptor list for this channel is not empty, this function sets the
- * CHAIN bit and the NEXTCMD_ADDR fields in the last descriptor's DMA command so
- * it will chain to the new descriptor's command.
- *
- * Then, this function marks the new descriptor as "ready," adds it to the end
- * of the active descriptor list, and increments the count of pending
- * descriptors.
- *
- * The MXS platform DMA software imposes some rules on DMA commands to maintain
- * important invariants. These rules are NOT checked, but they must be carefully
- * applied by software that uses MXS DMA channels.
- *
- * Invariant:
- *     The DMA channel's hardware semaphore must reflect the number of DMA
- *     commands the hardware will process, but has not yet finished.
- *
- * Explanation:
- *     A DMA channel begins processing commands when its hardware semaphore is
- *     written with a value greater than zero, and it stops processing commands
- *     when the semaphore returns to zero.
- *
- *     When a channel finishes a DMA command, it will decrement its semaphore if
- *     the DECREMENT_SEMAPHORE bit is set in that command's flags bits.
- *
- *     In principle, it's not necessary for the DECREMENT_SEMAPHORE to be set,
- *     unless it suits the purposes of the software. For example, one could
- *     construct a series of five DMA commands, with the DECREMENT_SEMAPHORE
- *     bit set only in the last one. Then, setting the DMA channel's hardware
- *     semaphore to one would cause the entire series of five commands to be
- *     processed. However, this example would violate the invariant given above.
- *
- * Rule:
- *    ALL DMA commands MUST have the DECREMENT_SEMAPHORE bit set so that the DMA
- *    channel's hardware semaphore will be decremented EVERY time a command is
- *    processed.
- */
-int mxs_dma_desc_append(int channel, struct mxs_dma_desc *pdesc)
-{
-	struct mxs_dma_chan *pchan;
-	struct mxs_dma_desc *last;
-	int ret;
-
-	ret = mxs_dma_validate_chan(channel);
-	if (ret)
-		return ret;
-
-	pchan = mxs_dma_channels + channel;
-
-	pdesc->cmd.next = mxs_dma_cmd_address(pdesc);
-	pdesc->flags |= MXS_DMA_DESC_FIRST | MXS_DMA_DESC_LAST;
-
-	if (!list_empty(&pchan->active)) {
-		last = list_entry(pchan->active.prev, struct mxs_dma_desc,
-					node);
-
-		pdesc->flags &= ~MXS_DMA_DESC_FIRST;
-		last->flags &= ~MXS_DMA_DESC_LAST;
-
-		last->cmd.next = mxs_dma_cmd_address(pdesc);
-		last->cmd.data |= MXS_DMA_DESC_CHAIN;
-	}
-	pdesc->flags |= MXS_DMA_DESC_READY;
-	if (pdesc->flags & MXS_DMA_DESC_FIRST)
-		pchan->pending_num++;
-	list_add_tail(&pdesc->node, &pchan->active);
-
-	return ret;
-}
-
-/*
- * Clean up processed DMA descriptors.
- *
- * This function removes processed DMA descriptors from the "active" list. Pass
- * in a non-NULL list head to get the descriptors moved to your list. Pass NULL
- * to get the descriptors moved to the channel's "done" list. Descriptors on
- * the "done" list can be retrieved with mxs_dma_get_finished().
- *
- * This function marks the DMA channel as "not busy" if no unprocessed
- * descriptors remain on the "active" list.
- */
-static int mxs_dma_finish(int channel, struct list_head *head)
-{
-	int sem;
-	struct mxs_dma_chan *pchan;
-	struct list_head *p, *q;
-	struct mxs_dma_desc *pdesc;
-	int ret;
-
-	ret = mxs_dma_validate_chan(channel);
-	if (ret)
-		return ret;
-
-	pchan = mxs_dma_channels + channel;
-
-	sem = mxs_dma_read_semaphore(channel);
-	if (sem < 0)
-		return sem;
-
-	if (sem == pchan->active_num)
-		return 0;
-
-	list_for_each_safe(p, q, &pchan->active) {
-		if ((pchan->active_num) <= sem)
-			break;
-
-		pdesc = list_entry(p, struct mxs_dma_desc, node);
-		pdesc->flags &= ~MXS_DMA_DESC_READY;
-
-		if (head)
-			list_move_tail(p, head);
-		else
-			list_move_tail(p, &pchan->done);
-
-		if (pdesc->flags & MXS_DMA_DESC_LAST)
-			pchan->active_num--;
-	}
-
-	if (sem == 0)
-		pchan->flags &= ~MXS_DMA_FLAGS_BUSY;
-
-	return 0;
-}
-
 /*
  * Wait for DMA channel to complete
  */
 static int mxs_dma_wait_complete(uint32_t timeout, unsigned int chan)
 {
 	struct apbh_dma *apbh = apbh_dma;
-	int ret;
-
-	ret = mxs_dma_validate_chan(chan);
-	if (ret)
-		return ret;
 
 	while (--timeout) {
 		if (readl(apbh->regs + HW_APBHX_CTRL1) & (1 << chan))
@@ -546,38 +116,47 @@ static int mxs_dma_wait_complete(uint32_t timeout, unsigned int chan)
 		udelay(1);
 	}
 
-	if (timeout == 0) {
-		ret = -ETIMEDOUT;
-		mxs_dma_reset(chan);
-	}
+	if (!timeout)
+		return -ETIMEDOUT;
 
-	return ret;
+	return 0;
 }
 
 /*
  * Execute the DMA channel
  */
-int mxs_dma_go(int chan)
+int mxs_dma_go(int chan, struct mxs_dma_cmd *cmd, int ncmds)
 {
+	struct apbh_dma *apbh = apbh_dma;
 	uint32_t timeout = 10000;
-	int ret;
+	int i, ret, channel_bit;
+
+	ret = mxs_dma_validate_chan(chan);
+	if (ret)
+		return ret;
 
-	LIST_HEAD(tmp_desc_list);
+	for (i = 0; i < ncmds - 1; i++) {
+		cmd[i].next = (unsigned long)(&cmd[i + 1]);
+		cmd[i].data |= MXS_DMA_DESC_CHAIN;
+	}
 
-	mxs_dma_enable_irq(chan, 1);
-	mxs_dma_enable(chan);
+	if (apbh_dma_is_imx23(apbh)) {
+		writel(cmd, apbh->regs + HW_APBHX_CHn_NXTCMDAR_MX23(chan));
+		writel(1, apbh->regs + HW_APBHX_CHn_SEMA_MX23(chan));
+		channel_bit = chan + BP_APBH_CTRL0_CLKGATE_CHANNEL;
+	} else {
+		writel(cmd, apbh->regs + HW_APBHX_CHn_NXTCMDAR_MX28(chan));
+		writel(1, apbh->regs + HW_APBHX_CHn_SEMA_MX28(chan));
+		channel_bit = chan;
+	}
+	writel(1 << channel_bit, apbh->regs + HW_APBHX_CTRL0 + STMP_OFFSET_REG_CLR);
 
 	/* Wait for DMA to finish. */
 	ret = mxs_dma_wait_complete(timeout, chan);
 
-	/* Clear out the descriptors we just ran. */
-	mxs_dma_finish(chan, &tmp_desc_list);
-
 	/* Shut the DMA channel down. */
 	mxs_dma_ack_irq(chan);
 	mxs_dma_reset(chan);
-	mxs_dma_enable_irq(chan, 0);
-	mxs_dma_disable(chan);
 
 	return ret;
 }
@@ -589,7 +168,6 @@ static int apbh_dma_probe(struct device_d *dev)
 {
 	struct resource *iores;
 	struct apbh_dma *apbh;
-	struct mxs_dma_chan *pchan;
 	enum mxs_dma_id id;
 	int ret, channel;
 
@@ -627,28 +205,11 @@ static int apbh_dma_probe(struct device_d *dev)
 		apbh->regs + HW_APBHX_CTRL0 + STMP_OFFSET_REG_SET);
 
 	for (channel = 0; channel < MXS_MAX_DMA_CHANNELS; channel++) {
-		pchan = mxs_dma_channels + channel;
-		pchan->flags = MXS_DMA_FLAGS_VALID;
-
-		ret = mxs_dma_request(channel);
-
-		if (ret) {
-			printf("MXS DMA: Can't acquire DMA channel %i\n",
-				channel);
-
-			goto err;
-		}
-
 		mxs_dma_reset(channel);
 		mxs_dma_ack_irq(channel);
 	}
 
 	return 0;
-
-err:
-	while (--channel >= 0)
-		mxs_dma_release(channel);
-	return ret;
 }
 
 static struct platform_device_id apbh_ids[] = {
diff --git a/drivers/mtd/nand/nand_mxs.c b/drivers/mtd/nand/nand_mxs.c
index d711708ff2..9f53c437b7 100644
--- a/drivers/mtd/nand/nand_mxs.c
+++ b/drivers/mtd/nand/nand_mxs.c
@@ -102,7 +102,7 @@ struct mxs_nand_info {
 				loff_t to, struct mtd_oob_ops *ops);
 
 	/* DMA descriptors */
-	struct mxs_dma_desc	**desc;
+	struct mxs_dma_cmd	*desc;
 	uint32_t		desc_index;
 
 #define GPMI_ASYNC_EDO_ENABLED	(1 << 0)
@@ -118,16 +118,16 @@ static inline int mxs_nand_is_imx6(struct mxs_nand_info *info)
 	return info->type == GPMI_IMX6;
 }
 
-static struct mxs_dma_desc *mxs_nand_get_dma_desc(struct mxs_nand_info *info)
+static struct mxs_dma_cmd *mxs_nand_get_dma_desc(struct mxs_nand_info *info)
 {
-	struct mxs_dma_desc *desc;
+	struct mxs_dma_cmd *desc;
 
 	if (info->desc_index >= MXS_NAND_DMA_DESCRIPTOR_COUNT) {
 		printf("MXS NAND: Too many DMA descriptors requested\n");
 		return NULL;
 	}
 
-	desc = info->desc[info->desc_index];
+	desc = &info->desc[info->desc_index];
 	info->desc_index++;
 
 	return desc;
@@ -136,12 +136,11 @@ static struct mxs_dma_desc *mxs_nand_get_dma_desc(struct mxs_nand_info *info)
 static void mxs_nand_return_dma_descs(struct mxs_nand_info *info)
 {
 	int i;
-	struct mxs_dma_desc *desc;
+	struct mxs_dma_cmd *desc;
 
 	for (i = 0; i < info->desc_index; i++) {
-		desc = info->desc[i];
-		memset(desc, 0, sizeof(struct mxs_dma_desc));
-		desc->address = (dma_addr_t)desc;
+		desc = &info->desc[i];
+		memset(desc, 0, sizeof(struct mxs_dma_cmd));
 	}
 
 	info->desc_index = 0;
@@ -324,7 +323,7 @@ static int mxs_nand_wait_for_bch_complete(struct mxs_nand_info *nand_info)
 static void mxs_nand_cmd_ctrl(struct nand_chip *chip, int data, unsigned int ctrl)
 {
 	struct mxs_nand_info *nand_info = chip->priv;
-	struct mxs_dma_desc *d;
+	struct mxs_dma_cmd *d;
 	uint32_t channel = nand_info->dma_channel_base + nand_info->cur_chip;
 	int ret;
 
@@ -364,15 +363,15 @@ static void mxs_nand_cmd_ctrl(struct nand_chip *chip, int data, unsigned int ctr
 
 	/* Compile the DMA descriptor -- a descriptor that sends command. */
 	d = mxs_nand_get_dma_desc(nand_info);
-	d->cmd.data =
+	d->data =
 		MXS_DMA_DESC_COMMAND_DMA_READ | MXS_DMA_DESC_IRQ |
 		MXS_DMA_DESC_CHAIN | MXS_DMA_DESC_DEC_SEM |
 		MXS_DMA_DESC_WAIT4END | (3 << MXS_DMA_DESC_PIO_WORDS_OFFSET) |
 		(nand_info->cmd_queue_len << MXS_DMA_DESC_BYTES_OFFSET);
 
-	d->cmd.address = (dma_addr_t)nand_info->cmd_buf;
+	d->address = (dma_addr_t)nand_info->cmd_buf;
 
-	d->cmd.pio_words[0] =
+	d->pio_words[0] =
 		GPMI_CTRL0_COMMAND_MODE_WRITE |
 		GPMI_CTRL0_WORD_LENGTH |
 		FIELD_PREP(GPMI_CTRL0_CS, nand_info->cur_chip) |
@@ -380,10 +379,8 @@ static void mxs_nand_cmd_ctrl(struct nand_chip *chip, int data, unsigned int ctr
 		GPMI_CTRL0_ADDRESS_INCREMENT |
 		nand_info->cmd_queue_len;
 
-	mxs_dma_desc_append(channel, d);
-
 	/* Execute the DMA chain. */
-	ret = mxs_dma_go(channel);
+	ret = mxs_dma_go(channel, nand_info->desc, nand_info->desc_index);
 	if (ret)
 		printf("MXS NAND: Error sending command (%d)\n", ret);
 
@@ -479,7 +476,7 @@ static void mxs_nand_swap_block_mark(struct nand_chip *chip,
 static void mxs_nand_read_buf(struct nand_chip *chip, uint8_t *buf, int length)
 {
 	struct mxs_nand_info *nand_info = chip->priv;
-	struct mxs_dma_desc *d;
+	struct mxs_dma_cmd *d;
 	uint32_t channel = nand_info->dma_channel_base + nand_info->cur_chip;
 	int ret;
 
@@ -495,23 +492,21 @@ static void mxs_nand_read_buf(struct nand_chip *chip, uint8_t *buf, int length)
 
 	/* Compile the DMA descriptor - a descriptor that reads data. */
 	d = mxs_nand_get_dma_desc(nand_info);
-	d->cmd.data =
+	d->data =
 		MXS_DMA_DESC_COMMAND_DMA_WRITE | MXS_DMA_DESC_IRQ |
 		MXS_DMA_DESC_DEC_SEM | MXS_DMA_DESC_WAIT4END |
 		(1 << MXS_DMA_DESC_PIO_WORDS_OFFSET) |
 		(length << MXS_DMA_DESC_BYTES_OFFSET);
 
-	d->cmd.address = (dma_addr_t)nand_info->data_buf;
+	d->address = (dma_addr_t)nand_info->data_buf;
 
-	d->cmd.pio_words[0] =
+	d->pio_words[0] =
 		GPMI_CTRL0_COMMAND_MODE_READ |
 		GPMI_CTRL0_WORD_LENGTH |
 		FIELD_PREP(GPMI_CTRL0_CS, nand_info->cur_chip) |
 		GPMI_CTRL0_ADDRESS_NAND_DATA |
 		length;
 
-	mxs_dma_desc_append(channel, d);
-
 	/*
 	 * A DMA descriptor that waits for the command to end and the chip to
 	 * become ready.
@@ -521,23 +516,21 @@ static void mxs_nand_read_buf(struct nand_chip *chip, uint8_t *buf, int length)
 	 * did that and no one has re-thought it yet.
 	 */
 	d = mxs_nand_get_dma_desc(nand_info);
-	d->cmd.data =
+	d->data =
 		MXS_DMA_DESC_COMMAND_NO_DMAXFER | MXS_DMA_DESC_IRQ |
 		MXS_DMA_DESC_NAND_WAIT_4_READY | MXS_DMA_DESC_DEC_SEM |
 		MXS_DMA_DESC_WAIT4END | (4 << MXS_DMA_DESC_PIO_WORDS_OFFSET);
 
-	d->cmd.address = 0;
+	d->address = 0;
 
-	d->cmd.pio_words[0] =
+	d->pio_words[0] =
 		GPMI_CTRL0_COMMAND_MODE_WAIT_FOR_READY |
 		GPMI_CTRL0_WORD_LENGTH |
 		FIELD_PREP(GPMI_CTRL0_CS, nand_info->cur_chip) |
 		GPMI_CTRL0_ADDRESS_NAND_DATA;
 
-	mxs_dma_desc_append(channel, d);
-
 	/* Execute the DMA chain. */
-	ret = mxs_dma_go(channel);
+	ret = mxs_dma_go(channel, nand_info->desc, nand_info->desc_index);
 	if (ret) {
 		printf("MXS NAND: DMA read error\n");
 		goto rtn;
@@ -556,7 +549,7 @@ static void mxs_nand_write_buf(struct nand_chip *chip, const uint8_t *buf,
 				int length)
 {
 	struct mxs_nand_info *nand_info = chip->priv;
-	struct mxs_dma_desc *d;
+	struct mxs_dma_cmd *d;
 	uint32_t channel = nand_info->dma_channel_base + nand_info->cur_chip;
 	int ret;
 
@@ -574,25 +567,23 @@ static void mxs_nand_write_buf(struct nand_chip *chip, const uint8_t *buf,
 
 	/* Compile the DMA descriptor - a descriptor that writes data. */
 	d = mxs_nand_get_dma_desc(nand_info);
-	d->cmd.data =
+	d->data =
 		MXS_DMA_DESC_COMMAND_DMA_READ | MXS_DMA_DESC_IRQ |
 		MXS_DMA_DESC_DEC_SEM | MXS_DMA_DESC_WAIT4END |
 		(4 << MXS_DMA_DESC_PIO_WORDS_OFFSET) |
 		(length << MXS_DMA_DESC_BYTES_OFFSET);
 
-	d->cmd.address = (dma_addr_t)nand_info->data_buf;
+	d->address = (dma_addr_t)nand_info->data_buf;
 
-	d->cmd.pio_words[0] =
+	d->pio_words[0] =
 		GPMI_CTRL0_COMMAND_MODE_WRITE |
 		GPMI_CTRL0_WORD_LENGTH |
 		FIELD_PREP(GPMI_CTRL0_CS, nand_info->cur_chip) |
 		GPMI_CTRL0_ADDRESS_NAND_DATA |
 		length;
 
-	mxs_dma_desc_append(channel, d);
-
 	/* Execute the DMA chain. */
-	ret = mxs_dma_go(channel);
+	ret = mxs_dma_go(channel, nand_info->desc, nand_info->desc_index);
 	if (ret)
 		printf("MXS NAND: DMA write error\n");
 
@@ -644,89 +635,81 @@ static int mxs_nand_do_bch_read(struct nand_chip *chip, int channel, int readtot
 				bool randomizer, int page)
 {
 	struct mxs_nand_info *nand_info = chip->priv;
-	struct mxs_dma_desc *d;
+	struct mxs_dma_cmd *d;
 	int ret;
 
 	/* Compile the DMA descriptor - wait for ready. */
 	d = mxs_nand_get_dma_desc(nand_info);
-	d->cmd.data =
+	d->data =
 		MXS_DMA_DESC_COMMAND_NO_DMAXFER | MXS_DMA_DESC_CHAIN |
 		MXS_DMA_DESC_NAND_WAIT_4_READY | MXS_DMA_DESC_WAIT4END |
 		(1 << MXS_DMA_DESC_PIO_WORDS_OFFSET);
 
-	d->cmd.address = 0;
+	d->address = 0;
 
-	d->cmd.pio_words[0] =
+	d->pio_words[0] =
 		GPMI_CTRL0_COMMAND_MODE_WAIT_FOR_READY |
 		GPMI_CTRL0_WORD_LENGTH |
 		FIELD_PREP(GPMI_CTRL0_CS, nand_info->cur_chip) |
 		GPMI_CTRL0_ADDRESS_NAND_DATA;
 
-	mxs_dma_desc_append(channel, d);
-
 	/* Compile the DMA descriptor - enable the BCH block and read. */
 	d = mxs_nand_get_dma_desc(nand_info);
-	d->cmd.data =
+	d->data =
 		MXS_DMA_DESC_COMMAND_NO_DMAXFER | MXS_DMA_DESC_CHAIN |
 		MXS_DMA_DESC_WAIT4END |	(6 << MXS_DMA_DESC_PIO_WORDS_OFFSET);
 
-	d->cmd.address = 0;
+	d->address = 0;
 
-	d->cmd.pio_words[0] =
+	d->pio_words[0] =
 		GPMI_CTRL0_COMMAND_MODE_READ |
 		GPMI_CTRL0_WORD_LENGTH |
 		FIELD_PREP(GPMI_CTRL0_CS, nand_info->cur_chip) |
 		GPMI_CTRL0_ADDRESS_NAND_DATA |
 		readtotal;
-	d->cmd.pio_words[1] = 0;
-	d->cmd.pio_words[2] =
+	d->pio_words[1] = 0;
+	d->pio_words[2] =
 		GPMI_ECCCTRL_ENABLE_ECC |
 		GPMI_ECCCTRL_ECC_CMD_DECODE |
 		GPMI_ECCCTRL_BUFFER_MASK_BCH_PAGE;
-	d->cmd.pio_words[3] = readtotal;
-	d->cmd.pio_words[4] = (dma_addr_t)nand_info->data_buf;
-	d->cmd.pio_words[5] = (dma_addr_t)nand_info->oob_buf;
+	d->pio_words[3] = readtotal;
+	d->pio_words[4] = (dma_addr_t)nand_info->data_buf;
+	d->pio_words[5] = (dma_addr_t)nand_info->oob_buf;
 
 	if (randomizer) {
-		d->cmd.pio_words[2] |= GPMI_ECCCTRL_RANDOMIZER_ENABLE |
+		d->pio_words[2] |= GPMI_ECCCTRL_RANDOMIZER_ENABLE |
 				       GPMI_ECCCTRL_RANDOMIZER_TYPE2;
-		d->cmd.pio_words[3] |= (page % 256) << 16;
+		d->pio_words[3] |= (page % 256) << 16;
 	}
 
-	mxs_dma_desc_append(channel, d);
-
 	/* Compile the DMA descriptor - disable the BCH block. */
 	d = mxs_nand_get_dma_desc(nand_info);
-	d->cmd.data =
+	d->data =
 		MXS_DMA_DESC_COMMAND_NO_DMAXFER | MXS_DMA_DESC_CHAIN |
 		MXS_DMA_DESC_NAND_WAIT_4_READY | MXS_DMA_DESC_WAIT4END |
 		(3 << MXS_DMA_DESC_PIO_WORDS_OFFSET);
 
-	d->cmd.address = 0;
+	d->address = 0;
 
-	d->cmd.pio_words[0] =
+	d->pio_words[0] =
 		GPMI_CTRL0_COMMAND_MODE_WAIT_FOR_READY |
 		GPMI_CTRL0_WORD_LENGTH |
 		FIELD_PREP(GPMI_CTRL0_CS, nand_info->cur_chip) |
 		GPMI_CTRL0_ADDRESS_NAND_DATA |
 		readtotal;
-	d->cmd.pio_words[1] = 0;
-	d->cmd.pio_words[2] = 0;
-
-	mxs_dma_desc_append(channel, d);
+	d->pio_words[1] = 0;
+	d->pio_words[2] = 0;
 
 	/* Compile the DMA descriptor - deassert the NAND lock and interrupt. */
 	d = mxs_nand_get_dma_desc(nand_info);
-	d->cmd.data =
+	d->data =
 		MXS_DMA_DESC_COMMAND_NO_DMAXFER | MXS_DMA_DESC_IRQ |
 		MXS_DMA_DESC_DEC_SEM;
 
-	d->cmd.address = 0;
-
-	mxs_dma_desc_append(channel, d);
+	d->address = 0;
 
 	/* Execute the DMA chain. */
-	ret = mxs_dma_go(channel);
+	ret = mxs_dma_go(channel, nand_info->desc, nand_info->desc_index);
 	if (ret) {
 		dev_err(nand_info->dev, "MXS NAND: DMA read error (ecc)\n");
 		goto out;
@@ -891,7 +874,7 @@ static int mxs_nand_ecc_write_page(struct nand_chip *chip, const uint8_t *buf,
 {
 	struct mtd_info *mtd = nand_to_mtd(chip);
 	struct mxs_nand_info *nand_info = chip->priv;
-	struct mxs_dma_desc *d;
+	struct mxs_dma_cmd *d;
 	uint32_t channel = nand_info->dma_channel_base + nand_info->cur_chip;
 	int ret = 0;
 
@@ -905,31 +888,29 @@ static int mxs_nand_ecc_write_page(struct nand_chip *chip, const uint8_t *buf,
 
 	/* Compile the DMA descriptor - write data. */
 	d = mxs_nand_get_dma_desc(nand_info);
-	d->cmd.data =
+	d->data =
 		MXS_DMA_DESC_COMMAND_NO_DMAXFER | MXS_DMA_DESC_IRQ |
 		MXS_DMA_DESC_DEC_SEM | MXS_DMA_DESC_WAIT4END |
 		(6 << MXS_DMA_DESC_PIO_WORDS_OFFSET);
 
-	d->cmd.address = 0;
+	d->address = 0;
 
-	d->cmd.pio_words[0] =
+	d->pio_words[0] =
 		GPMI_CTRL0_COMMAND_MODE_WRITE |
 		GPMI_CTRL0_WORD_LENGTH |
 		FIELD_PREP(GPMI_CTRL0_CS, nand_info->cur_chip) |
 		GPMI_CTRL0_ADDRESS_NAND_DATA;
-	d->cmd.pio_words[1] = 0;
-	d->cmd.pio_words[2] =
+	d->pio_words[1] = 0;
+	d->pio_words[2] =
 		GPMI_ECCCTRL_ENABLE_ECC |
 		GPMI_ECCCTRL_ECC_CMD_ENCODE |
 		GPMI_ECCCTRL_BUFFER_MASK_BCH_PAGE;
-	d->cmd.pio_words[3] = (mtd->writesize + mtd->oobsize);
-	d->cmd.pio_words[4] = (dma_addr_t)nand_info->data_buf;
-	d->cmd.pio_words[5] = (dma_addr_t)nand_info->oob_buf;
-
-	mxs_dma_desc_append(channel, d);
+	d->pio_words[3] = (mtd->writesize + mtd->oobsize);
+	d->pio_words[4] = (dma_addr_t)nand_info->data_buf;
+	d->pio_words[5] = (dma_addr_t)nand_info->oob_buf;
 
 	/* Execute the DMA chain. */
-	ret = mxs_dma_go(channel);
+	ret = mxs_dma_go(channel, nand_info->desc, nand_info->desc_index);
 	if (ret) {
 		printf("MXS NAND: DMA write error\n");
 		goto rtn;
@@ -1242,7 +1223,7 @@ int mxs_nand_write_fcb_bch62(unsigned int block, void *buf, size_t size)
 	struct nand_chip *chip;
 	struct mtd_info *mtd = mxs_nand_mtd;
 	struct mxs_nand_info *nand_info;
-	struct mxs_dma_desc *d;
+	struct mxs_dma_cmd *d;
 	uint32_t channel;
 	int ret = 0;
 	int page;
@@ -1273,24 +1254,24 @@ int mxs_nand_write_fcb_bch62(unsigned int block, void *buf, size_t size)
 
 	/* Compile the DMA descriptor - write data. */
 	d = mxs_nand_get_dma_desc(nand_info);
-	d->cmd.data = MXS_DMA_DESC_COMMAND_NO_DMAXFER | MXS_DMA_DESC_IRQ |
+	d->data = MXS_DMA_DESC_COMMAND_NO_DMAXFER | MXS_DMA_DESC_IRQ |
 		      MXS_DMA_DESC_DEC_SEM | MXS_DMA_DESC_WAIT4END |
 		      (6 << MXS_DMA_DESC_PIO_WORDS_OFFSET);
 
-	d->cmd.address = 0;
+	d->address = 0;
 
-	d->cmd.pio_words[0] = GPMI_CTRL0_COMMAND_MODE_WRITE |
+	d->pio_words[0] = GPMI_CTRL0_COMMAND_MODE_WRITE |
 			      GPMI_CTRL0_WORD_LENGTH |
 			      GPMI_CTRL0_ADDRESS_NAND_DATA;
-	d->cmd.pio_words[1] = 0;
-	d->cmd.pio_words[2] = GPMI_ECCCTRL_ENABLE_ECC |
+	d->pio_words[1] = 0;
+	d->pio_words[2] = GPMI_ECCCTRL_ENABLE_ECC |
 			      GPMI_ECCCTRL_ECC_CMD_ENCODE |
 			      GPMI_ECCCTRL_BUFFER_MASK_BCH_PAGE;
-	d->cmd.pio_words[3] = BCH62_PAGESIZE;
-	d->cmd.pio_words[4] = (dma_addr_t)nand_info->data_buf;
-	d->cmd.pio_words[5] = (dma_addr_t)nand_info->oob_buf;
+	d->pio_words[3] = BCH62_PAGESIZE;
+	d->pio_words[4] = (dma_addr_t)nand_info->data_buf;
+	d->pio_words[5] = (dma_addr_t)nand_info->oob_buf;
 
-	d->cmd.pio_words[2] |= GPMI_ECCCTRL_RANDOMIZER_ENABLE |
+	d->pio_words[2] |= GPMI_ECCCTRL_RANDOMIZER_ENABLE |
 			       GPMI_ECCCTRL_RANDOMIZER_TYPE2;
 	/*
 	 * Write NAND page number needed to be randomized
@@ -1299,12 +1280,10 @@ int mxs_nand_write_fcb_bch62(unsigned int block, void *buf, size_t size)
 	 * The value is between 0-255. For additional details
 	 * check 9.6.6.4 of i.MX7D Applications Processor reference
 	 */
-	d->cmd.pio_words[3] |= (page % 256) << 16;
-
-	mxs_dma_desc_append(channel, d);
+	d->pio_words[3] |= (page % 256) << 16;
 
 	/* Execute the DMA chain. */
-	ret = mxs_dma_go(channel);
+	ret = mxs_dma_go(channel, nand_info->desc, nand_info->desc_index);
 	if (ret) {
 		dev_err(nand_info->dev, "MXS NAND: DMA write error: %d\n", ret);
 		goto out;
@@ -1416,20 +1395,13 @@ static int mxs_nand_hw_init(struct mxs_nand_info *info)
 {
 	void __iomem *gpmi_regs = info->io_base;
 	void __iomem *bch_regs = info->bch_base;
-	int i = 0, ret;
+	int ret;
 	u32 val;
 
-	info->desc = malloc(sizeof(struct mxs_dma_desc *) *
-				MXS_NAND_DMA_DESCRIPTOR_COUNT);
+	info->desc = dma_alloc_coherent(sizeof(struct mxs_dma_cmd) * MXS_NAND_DMA_DESCRIPTOR_COUNT,
+				   DMA_ADDRESS_BROKEN);
 	if (!info->desc)
-		goto err1;
-
-	/* Allocate the DMA descriptors. */
-	for (i = 0; i < MXS_NAND_DMA_DESCRIPTOR_COUNT; i++) {
-		info->desc[i] = mxs_dma_desc_alloc();
-		if (!info->desc[i])
-			goto err2;
-	}
+		return -ENOMEM;
 
 	/* Reset the GPMI block. */
 	ret = stmp_reset_block(gpmi_regs + GPMI_CTRL0, 0);
@@ -1456,14 +1428,6 @@ static int mxs_nand_hw_init(struct mxs_nand_info *info)
 	writel(val, gpmi_regs + GPMI_CTRL1);
 
 	return 0;
-
-err2:
-	free(info->desc);
-err1:
-	for (--i; i >= 0; i--)
-		mxs_dma_desc_free(info->desc[i]);
-	printf("MXS NAND: Unable to allocate DMA descriptors\n");
-	return -ENOMEM;
 }
 
 static void mxs_nand_probe_dt(struct device_d *dev, struct mxs_nand_info *nand_info)
diff --git a/include/dma/apbh-dma.h b/include/dma/apbh-dma.h
index f10bb6f615..e5b5825925 100644
--- a/include/dma/apbh-dma.h
+++ b/include/dma/apbh-dma.h
@@ -88,53 +88,7 @@ struct mxs_dma_cmd {
 	unsigned long		pio_words[APBH_DMA_PIO_WORDS];
 };
 
-/*
- * MXS DMA command descriptor.
- *
- * This structure incorporates an MXS DMA hardware command structure, along
- * with metadata.
- */
-#define	MXS_DMA_DESC_FIRST	(1 << 0)
-#define	MXS_DMA_DESC_LAST	(1 << 1)
-#define	MXS_DMA_DESC_READY	(1 << 31)
-
-struct mxs_dma_desc {
-	struct mxs_dma_cmd	cmd;
-	unsigned int		flags;
-	dma_addr_t		address;
-	void			*buffer;
-	struct list_head	node;
-};
-
-/**
- * MXS DMA channel
- *
- * This structure represents a single DMA channel. The MXS platform code
- * maintains an array of these structures to represent every DMA channel in the
- * system (see mxs_dma_channels).
- */
-#define	MXS_DMA_FLAGS_IDLE	0
-#define	MXS_DMA_FLAGS_BUSY	(1 << 0)
-#define	MXS_DMA_FLAGS_FREE	0
-#define	MXS_DMA_FLAGS_ALLOCATED	(1 << 16)
-#define	MXS_DMA_FLAGS_VALID	(1 << 31)
-
-struct mxs_dma_chan {
-	const char *name;
-	unsigned long dev;
-	struct mxs_dma_device *dma;
-	unsigned int flags;
-	unsigned int active_num;
-	unsigned int pending_num;
-	struct list_head active;
-	struct list_head done;
-};
-
-struct mxs_dma_desc *mxs_dma_desc_alloc(void);
-void mxs_dma_desc_free(struct mxs_dma_desc *);
-int mxs_dma_desc_append(int channel, struct mxs_dma_desc *pdesc);
-
-int mxs_dma_go(int chan);
+int mxs_dma_go(int chan, struct mxs_dma_cmd *cmd, int ncmds);
 int mxs_dma_init(void);
 
 #endif	/* __DMA_H__ */
-- 
2.30.2



