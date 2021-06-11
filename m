Delivery-date: Fri, 11 Jun 2021 10:27:31 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lrcVn-0002Jp-O3
	for lore@lore.pengutronix.de; Fri, 11 Jun 2021 10:27:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lrcVm-0001wg-Ef
	for lore@pengutronix.de; Fri, 11 Jun 2021 10:27:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=WlOVmVafA1k8Y1gTQB8fGPssXH8/zRRWA5pHWHp9a3k=; b=5DlSK7G+3KdkDJPIrHg87/fvnF
	vTHOGKGHUECs7z8ZaLwfiE6FqISDeQPOg+SjvudPL6TwoUYY2mQDlaXCbQo/gpUpocJ8DpHZb5dBz
	nhXCp+LLAdCy/0g3gNRVgLBzDGgFN2zDCqv1/NTvIyTGOEdyIB0WeLY+guudem4XUf6Uy8NRCriUU
	8nxSyCTUU1jqYDlRuR6AtPq3dviderjxVP8w4g9+JKQQCyBl8kFaeAzygsPmqWSoih7qvnHOY6D/9
	IyMmx/IWDmaHvSfcshdooWQ18W41S2JgUxEv+/KZNAevMyOunfqBP6UL0uQvuNeXwTgM+tQZkjEX1
	d25iFwIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lrcUW-004KP4-1w; Fri, 11 Jun 2021 08:26:12 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lrcUQ-004KOB-UY
 for barebox@lists.infradead.org; Fri, 11 Jun 2021 08:26:08 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lrcUP-0001k6-I8; Fri, 11 Jun 2021 10:26:05 +0200
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20210610131032.6645-1-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <2f23597e-855f-2424-24e7-40ca16e332ed@pengutronix.de>
Date: Fri, 11 Jun 2021 10:26:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.2
MIME-Version: 1.0
In-Reply-To: <20210610131032.6645-1-s.hauer@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210611_012607_014262_09CC031B 
X-CRM114-Status: GOOD (  16.21  )
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

On 10.06.21 15:10, Sascha Hauer wrote:
> The variant we support currently can only do 32bit DMA. Adjust dma mask
> accordingly. Also use dma_map_single() rather than dma_sync_single() to
> actually get errors when the mapping fails.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/mci/dw_mmc.c | 53 ++++++++++++++++++++++++++------------------
>  1 file changed, 31 insertions(+), 22 deletions(-)

>  static int dwmci_set_transfer_mode(struct dwmci_host *host,
> @@ -272,6 +271,7 @@ dwmci_cmd(struct mci_host *mci, struct mci_cmd *cmd, struct mci_data *data)
>  	uint64_t start;
>  	int ret;
>  	unsigned int num_bytes = 0;
> +	dma_addr_t dma = 0;
>  
>  	start = get_time_ns();
>  	while (1) {
> @@ -287,16 +287,20 @@ dwmci_cmd(struct mci_host *mci, struct mci_cmd *cmd, struct mci_data *data)
>  	dwmci_writel(host, DWMCI_RINTSTS, DWMCI_INTMSK_ALL);
>  
>  	if (data) {
> +

stray new line



-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

