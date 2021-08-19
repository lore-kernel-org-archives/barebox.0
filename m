Delivery-date: Thu, 19 Aug 2021 10:16:28 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mGdDv-0001Br-Vq
	for lore@lore.pengutronix.de; Thu, 19 Aug 2021 10:16:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mGdDr-0008RM-GA
	for lore@pengutronix.de; Thu, 19 Aug 2021 10:16:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mtqMxGhcux8JIZ5J3UNW79tY0s6RpsTr6jLEfHAYzzM=; b=u3vHVdcNT8BhMe
	3jZTftWCN7IUxk0k2v7X3Z9EZe8m0cAyedPASM7Z3isom0f1vkSrw/OX3Pm3D8V0s5t2hwQPLjTa0
	9PA8EtOpekhr2Y/5OPB6QmhXVaHlPBAv0Vl1PTolRArITGJcJAay6AdfiYFwuXAQyXNVg4T3X0FEe
	spuFfoCOrPKfQE3WptHIEX5jrggolG787jZM9F4+kPToDk9Dm4n6hTmXuXXSIZi/iR+h1mcw/N9LW
	3SW11Oa9qUzisGVyT77l9q7NuhG4+SVa31wYQDjvteC7wjsTcTVdgkMn/++k26I6Bg9uGOVUMWqvs
	16GBx33wqs/FVfUrJvjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mGdCE-007gCL-SZ; Thu, 19 Aug 2021 08:14:42 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mGdC8-007gBL-Ti
 for barebox@lists.infradead.org; Thu, 19 Aug 2021 08:14:38 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1mGdC7-0007xX-O8; Thu, 19 Aug 2021 10:14:35 +0200
Received: from mtr by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1mGdC7-0003LS-F8; Thu, 19 Aug 2021 10:14:35 +0200
Date: Thu, 19 Aug 2021 10:14:35 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210819081435.GE12231@pengutronix.de>
References: <20210818133505.582698-1-m.tretter@pengutronix.de>
 <20210818133505.582698-4-m.tretter@pengutronix.de>
 <8719b93227095011ebf0a83b5aed202acc8f8d23.camel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8719b93227095011ebf0a83b5aed202acc8f8d23.camel@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:13:10 up 182 days, 11:37, 93 users,  load average: 0.23, 0.37,
 0.31
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210819_011437_004168_9E72AC0B 
X-CRM114-Status: GOOD (  28.93  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/3] firmware: zynqmp-fpga: do not use DMA coherent
 memory for bitstream
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, 18 Aug 2021 15:47:02 +0200, Lucas Stach wrote:
> Am Mittwoch, dem 18.08.2021 um 15:35 +0200 schrieb Michael Tretter:
> > Trying to do unaligned access of coherent memory on AArch64 will lead to
> > an abort. This can happen when the FPGA loader copies the bitstream to
> > the temporary buffer for the transfer to the FPGA.
> > 
> > Convert the driver to use regular memory for the temporary buffer to
> > prevent the issue.
> > 
> > Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
> > ---
> >  drivers/firmware/zynqmp-fpga.c | 20 +++++++++++++-------
> >  1 file changed, 13 insertions(+), 7 deletions(-)
> > 
> > diff --git a/drivers/firmware/zynqmp-fpga.c b/drivers/firmware/zynqmp-fpga.c
> > index 667910479aa7..0a0e7e880849 100644
> > --- a/drivers/firmware/zynqmp-fpga.c
> > +++ b/drivers/firmware/zynqmp-fpga.c
> > @@ -203,7 +203,7 @@ static int fpgamgr_program_finish(struct firmware_handler *fh)
> >  	size_t body_length;
> >  	int header_length = 0;
> >  	enum xilinx_byte_order byte_order;
> > -	u64 addr;
> > +	dma_addr_t addr;
> >  	int status = 0;
> >  	u8 flags = ZYNQMP_FPGA_BIT_ONLY_BIN;
> >  
> > @@ -240,13 +240,19 @@ static int fpgamgr_program_finish(struct firmware_handler *fh)
> >  	 * memory. Allocate some extra space at the end of the buffer for the
> >  	 * bitstream size.
> >  	 */
> > -	buf_aligned = dma_alloc_coherent(body_length + sizeof(buf_size),
> > -					 DMA_ADDRESS_BROKEN);
> > +	buf_aligned = dma_alloc(body_length + sizeof(u32));
> >  	if (!buf_aligned) {
> >  		status = -ENOBUFS;
> >  		goto err_free;
> >  	}
> >  
> > +	addr = dma_map_single(&mgr->dev, buf_aligned,
> > +			      body_length + sizeof(u32), DMA_TO_DEVICE);
> > +	if (dma_mapping_error(&mgr->dev, addr)) {
> > +		status = -EFAULT;
> > +		goto err_free;
> > +	}
> > +
> Usage of both dma_map_single and explicit dma_sync_single_for_* for a
> single transfer looks odd. dma_map_single already does the cache sync,
> which you then do a second time in the sync calls.
> 
> Instead you should move this dma_map_single call to the place where you
> added the dma_sync_single_for_device and replace the
> dma_sync_single_for_cpu with a dma_unmap_single.

Thanks, I just sent a v2.

Michael

> 
> Regards,
> Lucas
> 
> >  	if (!(mgr->features & ZYNQMP_PM_FEATURE_BYTE_ORDER_IRREL) &&
> >  	    byte_order == XILINX_BYTE_ORDER_BIN)
> >  		copy_words_swapped((u32 *)buf_aligned, body,
> > @@ -254,8 +260,6 @@ static int fpgamgr_program_finish(struct firmware_handler *fh)
> >  	else
> >  		memcpy((u32 *)buf_aligned, body, body_length);
> >  
> > -	addr = (u64)buf_aligned;
> > -
> >  	if (mgr->features & ZYNQMP_PM_FEATURE_SIZE_NOT_NEEDED) {
> >  		buf_size = body_length;
> >  	} else {
> > @@ -263,11 +267,13 @@ static int fpgamgr_program_finish(struct firmware_handler *fh)
> >  		buf_size = addr + body_length;
> >  	}
> >  
> > -	status = mgr->eemi_ops->fpga_load(addr, buf_size, flags);
> > +	dma_sync_single_for_device(addr, body_length + sizeof(u32), DMA_TO_DEVICE);
> > +	status = mgr->eemi_ops->fpga_load((u64)addr, buf_size, flags);
> > +	dma_sync_single_for_cpu(addr, body_length + sizeof(u32), DMA_TO_DEVICE);
> >  	if (status < 0)
> >  		dev_err(&mgr->dev, "unable to load fpga\n");
> >  
> > -	dma_free_coherent(buf_aligned, 0, body_length + sizeof(buf_size));
> > +	dma_free(buf_aligned);
> >  
> >   err_free:
> >  	free(mgr->buf);
> 
> 
> 

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

