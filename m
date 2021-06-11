Delivery-date: Fri, 11 Jun 2021 10:24:49 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lrcTB-0002Bu-K0
	for lore@lore.pengutronix.de; Fri, 11 Jun 2021 10:24:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lrcTA-0001TC-Hh
	for lore@pengutronix.de; Fri, 11 Jun 2021 10:24:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=mEKdzJ0M0GEPeDB2yoH+ExXLWT9eJH/2ERZIBuj4U/4=; b=Ae4gexRKFNIyoxjAPNRn4dh+94
	FvlvVhmW1neJkfiP4q159VADueCQa+OpU4kKVyF71O3KtxJtDkSLLmuzdilKobHZ9bxCfFVe/9DZH
	k6ptxGFNhGPHLaIk49K8qGH1ZmT4Bj8U0s6iAeQeVm1sqo5FUD7lTwbHn3VmOZMtQ9B0I/0AdYc/M
	SYV01t4b2rwa6C0omwdiQSbvDBV2scNxPZzvdwSLO0r+ByNjFCXT738iDAVcKXngLCenUJxfGR42d
	Yrk3hL8fvI+LHZDLgvJ4CRvus37FQ4Zhwx+BplhT0L9jhJ6l1T5jTES6P9zuMSJ301JGpJX4rD8PQ
	JCNayQYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lrcRx-004JrR-4X; Fri, 11 Jun 2021 08:23:33 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lrcRs-004Jqs-Bl
 for barebox@lists.infradead.org; Fri, 11 Jun 2021 08:23:29 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lrcRp-0001Oy-Ku; Fri, 11 Jun 2021 10:23:25 +0200
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20210610131032.6645-1-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <a08e527d-7557-a2fa-1bef-c3875a4c9072@pengutronix.de>
Date: Fri, 11 Jun 2021 10:23:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.2
MIME-Version: 1.0
In-Reply-To: <20210610131032.6645-1-s.hauer@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210611_012328_430743_EB9A696D 
X-CRM114-Status: GOOD (  15.01  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] mci: dw_mmc: set dma mask to work correctly on 64bit
 platforms
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Sascha,

On 10.06.21 15:10, Sascha Hauer wrote:
> The variant we support currently can only do 32bit DMA. Adjust dma mask
> accordingly. Also use dma_map_single() rather than dma_sync_single() to
> actually get errors when the mapping fails.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Tested-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

On a StarFive JH7100 (64-bit CPU, 32-bit MMC controller, non-1:1 mapping for
coherent DMA).

>  	host->idmac = dma_alloc_coherent(sizeof(*host->idmac) * DW_MMC_NUM_IDMACS,
> -					 DMA_ADDRESS_BROKEN);
> +					 &host->idmac_dma);
> +	if (!host->idmac)

That works for Linux, but not for barebox: barebox dma_alloc_coherent doesn't have

a dev parameter, so it can't check for dma_mapping_error() internally.

dma_alloc_coherent also never returns NULL in barebox, all implementations, except

for kvx, abort if no memory could be allocated.

> +		return PTR_ERR(-ENOMEM);

-ENOMEM is no pointer.

>  
>  	host->mci.send_cmd = dwmci_cmd;
>  	host->mci.set_ios = dwmci_set_ios;
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

