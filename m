Delivery-date: Thu, 22 May 2025 22:08:43 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uICDb-001eDJ-2T
	for lore@lore.pengutronix.de;
	Thu, 22 May 2025 22:08:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uICDb-00033M-6V
	for lore@pengutronix.de; Thu, 22 May 2025 22:08:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FjKU0o2AVkrGP+GRg4O+polpZiMvqPsrmmVFbK2HtlU=; b=OyMVUghDYq0eeruo52I4YzZzFq
	gg6mf4IWfSBny1Bbyd16jL3YdOwc1orwcyiyt5dymlC1CKM7BplopU1RCwOf/7FLMGEPxee3f00XI
	D1zrAPEuJGe4yK2JGlcfIZXk4WHKw940det7pqKnbnfTxoyJujnOjQjAniPj6CuPf6+yNkJRlpErx
	jMZWi4Z8JeiUOp/ZXnpV/aRtJwvqU+3/zcGi4431hWKLHfdAVrK9ZM7ZBoifJxdtwXRn1H7aHJXZF
	bIubqfy7HwVnqW3wlL8vzct2hDzyKYs+4RPIwXDFY/604l2Sy5ZwBkCVh4uRsYl4fxmzJF8f7dQWC
	Qf4r1rkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uICD1-000000026Dh-2itH;
	Thu, 22 May 2025 20:08:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uICCy-000000026Bk-1FLr
	for barebox@lists.infradead.org;
	Thu, 22 May 2025 20:08:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1uICCv-0002cG-4x; Thu, 22 May 2025 22:08:01 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uICCu-000n5d-1W;
	Thu, 22 May 2025 22:08:00 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uICCu-002qP1-13;
	Thu, 22 May 2025 22:08:00 +0200
Date: Thu, 22 May 2025 22:08:00 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Michael Graichen <michael.graichen@hotmail.com>
Message-ID: <aC-EIHYin8cjNZG2@pengutronix.de>
References: <VI1PR02MB4429961876C186741ADDF9B1AB9CA@VI1PR02MB4429.eurprd02.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <VI1PR02MB4429961876C186741ADDF9B1AB9CA@VI1PR02MB4429.eurprd02.prod.outlook.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250522_130804_343302_50D0180F 
X-CRM114-Status: GOOD (  22.05  )
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
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>, "m.tretter@pengutronix.de" <m.tretter@pengutronix.de>, "a.fatoum@pengutronix.de" <a.fatoum@pengutronix.de>, "johannes@gnu-linux.rocks" <johannes@gnu-linux.rocks>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2025] added-zynq-fpga-manager
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Michael,

On Mon, May 19, 2025 at 07:03:44AM +0000, Michael Graichen wrote:
> This adds support to programm the PL part of the Zynq-7000 SoC,
> It adds the 'zynq_fpga_manager' so we can use
> 
> firmwareload -l
> firmwareload -t zynq-fpga-manager /mnt/mmc0.0/design_1_wrapper.bit
> 
> to programm the PL.
> 
> +
> +	buf_aligned = dma_alloc_coherent(DMA_DEVICE_BROKEN, body_length, DMA_ADDRESS_BROKEN);
> +	if (!buf_aligned) {
> +		status = -ENOBUFS;
> +		goto err_free;
> +	}
> +
> +#ifdef CONFIG_FIRMWARE_ZYNQMP_FPGA
> +	if (!(mgr->features & ZYNQMP_PM_FEATURE_SIZE_NOT_NEEDED)) {
> +		buf_size = dma_alloc_coherent(sizeof(*buf_size),
> +		DMA_ADDRESS_BROKEN);
> +		if (!buf_size) {
> +			status = -ENOBUFS;
> +			goto err_free;
> +		}
> +		*buf_size = body_length;
> +	}
> +
> +	if (!(mgr->features & ZYNQMP_PM_FEATURE_BYTE_ORDER_IRREL) &&
> +	    byte_order == XILINX_BYTE_ORDER_BIN)
> +		copy_words_swapped((u32 *)buf_aligned, body,
> +				   body_length / sizeof(u32));
> +	else
> +		memcpy((u32 *)buf_aligned, body, body_length);
> +
> +	addr = (u64)buf_aligned;
> +
> +	/* we do not provide a header */
> +	flags |= ZYNQMP_FPGA_BIT_ONLY_BIN;
> +
> +	if (!(mgr->features & ZYNQMP_PM_FEATURE_SIZE_NOT_NEEDED) && buf_size) {
> +		status = mgr->eemi_ops->fpga_load(addr,
> +				(u32)(uintptr_t)buf_size,
> +				flags);
> +		dma_free_coherent(buf_size, 0, sizeof(*buf_size));
> +	} else {
> +		status = mgr->eemi_ops->fpga_load(addr, (u32)(body_length),
> +						  flags);
> +	}
> +#endif
> +#ifdef CONFIG_FIRMWARE_ZYNQ7000_FPGA

The ZYNQ7000 part should ideally be integrated into the existing driver
using runtime decisions instead of compile time decisions.

If that's not feasible please just drop everything inside
CONFIG_FIRMWARE_ZYNQMP_FPGA and drop the #ifdef
CONFIG_FIRMWARE_ZYNQ7000_FPGA.

> +
> +static struct of_device_id zynq_fpga_id_table[] = {
> +	{ .compatible = "xlnx,zynqmp-pcap-fpga" },
> +	{ .compatible = "xlnx,zynq-devcfg-1.0" },
> +	{ /* sentinel */ }
> +};

The compatible should then only match the part the driver actually
supports.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


