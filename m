Delivery-date: Mon, 17 Mar 2025 16:21:52 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuCHo-000fAs-24
	for lore@lore.pengutronix.de;
	Mon, 17 Mar 2025 16:21:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuCHn-00077f-GA
	for lore@pengutronix.de; Mon, 17 Mar 2025 16:21:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=r24QipFea66iP9joKR7Qstx6dQLkZIyywI06WJldERw=; b=fKiNELuxM/wTXwU1LPad+Cc5hn
	ySM5lZXObOoGKnjhnQ4nZlAm0VRbQjUXhumSL5cyiL2KoH7VWnnKukzIs+SxDtKmRzYW3Ma2206Pu
	45qL1Fo83Q4L0ndL23mdPR1oD1QtdrEDqr2OUi9qXQBeYrcGtnPMw2606pP7A38hfXgehNM/xgl4h
	5GQLAE/+kROdJZC5eGvi1QzbyucuOxaEy9/VcHtilRpxOASNirNlT+T++LS0LUDyTCu/DW4acIf1I
	GlG+sQaAPPkkHgFGHW14ACI0TFrdpujquAzzTy2s59QZ1AuNYkS0CAOOXga+VHRta0rjtemtdhdvl
	HV4uYkEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuCH7-000000037md-2tkz;
	Mon, 17 Mar 2025 15:21:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tuCEc-00000003775-45Ap
	for barebox@lists.infradead.org;
	Mon, 17 Mar 2025 15:18:36 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tuCEb-0006ML-1n; Mon, 17 Mar 2025 16:18:33 +0100
Message-ID: <9c66b31b-a79c-4a07-a03f-119c7c3dadc7@pengutronix.de>
Date: Mon, 17 Mar 2025 16:18:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 "open list:BAREBOX" <barebox@lists.infradead.org>
References: <20250312-rpmb-v1-0-0f213382a3f3@pengutronix.de>
 <20250312-rpmb-v1-4-0f213382a3f3@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20250312-rpmb-v1-4-0f213382a3f3@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250317_081835_082927_3DA03C58 
X-CRM114-Status: GOOD (  16.11  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 4/9] mci: add RPMB support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 3/12/25 13:16, Sascha Hauer wrote:
> +
> +int mci_rpmb_route_frames(struct mci *mci, void *req, unsigned long reqlen,
> +			  void *rsp, unsigned long rsplen)
> +{
> +	/*
> +	 * Whoever crafted the data supplied to this function knows how to
> +	 * format the PRMB frames and which response is expected. If
> +	 * there's some unexpected mismatch it's more helpful to report an
> +	 * error immediately than trying to guess what was the intention
> +	 * and possibly just delay an eventual error which will be harder
> +	 * to track down.
> +	 */
> +	void *rpmb_data = NULL;
> +	int ret;
> +
> +	mci_blk_part_switch(mci->rpmb_part);
> +
> +	if (!IS_ALIGNED((uintptr_t)req, ARCH_DMA_MINALIGN)) {

Even if alignment happens to be correct, there is no guarantee that
there is no other data sharing a cache line.

Let's just return an error for the unaligned case instead and expect
users to align the request.

Thanks,
Ahmad

> +		/* Memory alignment is required by MMC driver */
> +		rpmb_data = dma_alloc(reqlen);
> +		if (!rpmb_data)
> +			return -ENOMEM;
> +
> +		memcpy(rpmb_data, req, reqlen);
> +		req = rpmb_data;
> +	}
> +
> +	ret = rpmb_route_frames(mci, req, reqlen, rsp, rsplen);
> +
> +	free(rpmb_data);
> +
> +	return ret;
> +}
> diff --git a/include/mci.h b/include/mci.h
> index 08a3e46f7d..ec0390eedf 100644
> --- a/include/mci.h
> +++ b/include/mci.h
> @@ -736,6 +736,9 @@ int mmc_select_timing(struct mci *mci);
>  int mci_set_blockcount(struct mci *mci, unsigned int cmdarg);
>  int mci_blk_part_switch(struct mci_part *part);
>  int mci_send_cmd(struct mci *mci, struct mci_cmd *cmd, struct mci_data *data);
> +struct mci *mci_get_rpmb_dev(void);
> +int mci_rpmb_route_frames(struct mci *mci, void *req, unsigned long reqlen,
> +			  void *rsp, unsigned long rsplen);
>  
>  static inline bool mmc_card_hs200(struct mci *mci)
>  {
> 



