Delivery-date: Mon, 26 Jun 2023 12:01:48 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qDj2b-004Kml-SE
	for lore@lore.pengutronix.de; Mon, 26 Jun 2023 12:01:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qDj2Z-0007FT-Cx
	for lore@pengutronix.de; Mon, 26 Jun 2023 12:01:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3vSz8ovG+gd6lTtN++PHuvdq0rVMjJcHCTGLa/k8ic0=; b=2iwY19kpmj30gVKwcda/PmJhAf
	7UmgtMIoBof5Tg81chxWwcMl68PPXgVdQKbLIjVW6W+wxm8yjDeVrFadUSiRWo0jIDf7BYMlmRG/G
	YzMpxlZHwdwGDuA7AHUEqytqmyKZIGaIeMMuZ4KYNgti8bLVZuIdO7uppgIlTRlJfOK4qAm0jZkPa
	w4M8hqIpqQA2yRgM26EnBStjm6AmMsF3jN3n/zO+mrNqkCLK5eBpqMBQphrgVqL+zEhQXeRwTToeW
	ARNX45glFfOP8QQStDwJoJF3vq7dhrCroGz9Lz7fEqlMU4tGfYznWZirZdiv1pbnITK56msYxefgB
	3c6MaFzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qDj0k-009nFi-2K;
	Mon, 26 Jun 2023 09:59:54 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qDj0g-009nEv-1m
	for barebox@lists.infradead.org;
	Mon, 26 Jun 2023 09:59:52 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qDj0f-0006UG-7Q; Mon, 26 Jun 2023 11:59:49 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qDj0e-0003nd-Vq; Mon, 26 Jun 2023 11:59:48 +0200
Date: Mon, 26 Jun 2023 11:59:48 +0200
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org, mtr@pengutronix.de, str@pengutronix.de
Message-ID: <20230626095948.GW18491@pengutronix.de>
References: <20230623114348.26213-1-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230623114348.26213-1-s.trumtrar@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230626_025950_612736_89A06037 
X-CRM114-Status: GOOD (  34.12  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] firmware: zynqmp: fix loading for PMU FWv1.1
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Jun 23, 2023 at 01:42:56PM +0200, Steffen Trumtrar wrote:
> FPGA programming on ZynqMP is done by the PMU. The SoC just hands a
> file to the PMU and lets it load this file to the FPGA.
> 
> The bitstream that is sent to the FPGA consists of two headers, the
> optional struct bs_header and a binary-header. See comment in driver:
> 
>  (...)
>  * Bitstream can be provided with an optinal header (`struct bs_header`).
>  * The true bitstream starts with the binary-header composed of 21 words:
>  (...)
> 
> The PMUFW v1.0 had a feature for taking the bitstream only, skipping
> the header, or including the binary-header and only skipping the
> optional header. This is controlled via the BIT_ONLY_BIN flag. When
> the flag is set, the complete header should be skipped.
> 
> The current implementation sets the flag *and* sends the binary-header
> to the PMU:
> 
> 	header_length = get_header_length(mgr->buf, mgr->size);
> 	(...)
> 	body = (u32 *)&mgr->buf[header_length];
> 
> get_header_length searches for the first DUMMY_WORD, i.e. the beginning
> of the binary header. Then we set body to this offset, skipping the
> optional header.
> 
> The flag is always set to ZYNQMP_FPGA_BIT_ONLY_BIN, which is then obviously
> incorrect. It seems like the PMUFW v1.0 was capable of still handling this
> although the flag was set.
> 
> The newer PMUFW v1.1 doesn't support this and expects the flag to be
> unset and getting handed binary-header+bitstream. This is the same as
> the linux kernel handles bitstream loading on the ZynqMP. There the flag
> is also always unset.
> 
> As this wasn't correct in the first place (although it most likely still
> worked depending on PMUFW and its configuration), we won't break anything
> when we just set the flag to zero as the PMUFW v1.1 expects it.
> 
> TLDR: set fpga_load flags to zero to fix firmwareloading with newer
> PMUFW versions.
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
>  drivers/firmware/zynqmp-fpga.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/firmware/zynqmp-fpga.c b/drivers/firmware/zynqmp-fpga.c
> index 9c160e9098..1a9a5c1b2c 100644
> --- a/drivers/firmware/zynqmp-fpga.c
> +++ b/drivers/firmware/zynqmp-fpga.c
> @@ -206,7 +206,7 @@ static int fpgamgr_program_finish(struct firmware_handler *fh)
>  	enum xilinx_byte_order byte_order;
>  	dma_addr_t addr;
>  	int status = 0;
> -	u8 flags = ZYNQMP_FPGA_BIT_ONLY_BIN;
> +	u8 flags = 0;
>  
>  	if (!mgr->buf) {
>  		status = -ENOBUFS;
> -- 
> 2.41.0
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


