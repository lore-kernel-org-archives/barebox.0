Delivery-date: Tue, 21 Jun 2022 11:33:44 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o3aGU-0097VV-SM
	for lore@lore.pengutronix.de; Tue, 21 Jun 2022 11:33:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o3aGU-0001Gs-La
	for lore@pengutronix.de; Tue, 21 Jun 2022 11:33:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Message-ID:References:In-Reply-To:
	Subject:Cc:To:From:Date:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kuqMwPFtlVKJUY9c9gO853+9TgcMP5ZoT8lqw3lkbF0=; b=dZvyg++2mLkDx2
	VGJZTBq9HAOCMM9Ies80xou2zHvF+Bipp1SkyCoEWpzKjnTk1z40pU/draL+6d40c2nuIxslWWEvT
	itHyq0td1+rnckXoQJ3w2M+ESVAmMjjqOwbuVBzvGyFhsQO0VplAvRV6vd9/sMjw7qgqXPpVOwEi/
	ZQSkZhzc0+HwKQSHF+C+P1KJGAM1DhUHp+/+3saj1BntAU9xMHLMTW0cBAEOioYufbywdZ6AYvgGv
	ke0730pft4Yhq8iCgIrrdbKxbLasKFvk77b0pCAz4ryY8ZdVnNEZIGXBUWUIE0wCm2YCh3dZwSUgj
	UGHOSQnjFH1xfpY7D2Kw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3aF6-004eET-An; Tue, 21 Jun 2022 09:32:16 +0000
Received: from smtp15.bhosted.nl ([2a02:9e0:8000::26])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3aEz-004eBb-6t
	for barebox@lists.infradead.org; Tue, 21 Jun 2022 09:32:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=protonic.nl; s=202111;
	h=content-transfer-encoding:content-type:message-id:references:in-reply-to:
	 reply-to:subject:cc:to:from:date:mime-version:from;
	bh=kuqMwPFtlVKJUY9c9gO853+9TgcMP5ZoT8lqw3lkbF0=;
	b=LOCrUH4nTvjikbCMyGktlX3WoHMc2gfOI0L4Vplv2yweaEiigTsB6VwdTEFUSu2dR2qYRZhQeFtwg
	 L4w1oWd5CZHnuNzFMXYVVcp649KhEkPKgr6QKoDW7AXVxdJmJ6n7tzWI4hNIHx5pcg9sir9l8ZyB+z
	 VXUctghG59FSEvbnl5cJ9Mx4ONAyIVB3kd1h6RlXIttXCy02RXhugAEy1UCFMtpZO6eZ1CEGZed5zI
	 yY2m0z8kh2fV9ZO7U6CionqJ0IQtsQ8apbDfZI01FaZt+e0YD4YjCmT2IHNyFKaMQwhkTlSlBpcYFk
	 bgtHirvZdzH7+fdB9+4JPcCK+3MCzHQ==
X-MSG-ID: 0101f6e6-f145-11ec-ba03-0050569d3a82
MIME-Version: 1.0
Date: Tue, 21 Jun 2022 11:32:01 +0200
From: Robin van der Gracht <robin@protonic.nl>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox <barebox@lists.infradead.org>, Andrey Smirnov
 <andrew.smirnov@gmail.com>
In-Reply-To: <20220621074645.GS1615@pengutronix.de>
References: <28eba28ad8f42919edb1aee4e4303a96@protonic.nl>
 <20220621074645.GS1615@pengutronix.de>
User-Agent: Roundcube Webmail/1.4.11
Message-ID: <a78dad2e4e22d236ba30c237a84367a9@protonic.nl>
X-Sender: robin@protonic.nl
Organization: Protonic Holland
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220621_023209_876514_0899CB01 
X-CRM114-Status: GOOD (  23.14  )
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
Reply-To: robin@protonic.nl
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: Boot hangs during sdhci_transfer_data_dma
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Sascha,

On 2022-06-21 09:46, Sascha Hauer wrote:
> Hi Robin,
> 
> On Mon, Jun 20, 2022 at 04:33:02PM +0200, Robin van der Gracht wrote:
>> Hi,
>> 
>> Today I tried to run barebox with CONFIG_KEYBOARD_GPIO=y added to my 
>> config.
>> and noticed my board hangs during boot. When I modify the probe function to
>> run without registering the poller[1] it boots as expected.
>> 
>> I started digging into the code to see how far the boot gets when I do
>> register the poller. I found that Barebox hangs in a do/while loop in
>> sdhci_transfer_data_dma[2].
>> 
>> The contents of the interrupt status (SDHCI_INT_STATUS) is 0 and stays that
>> way forever trapping the process in the loop.
>> 
>> Call stack:
>> 
>> initcall -> barebox_of_populate
>>   state_probe                                          drivers/misc/state.c
>>     state_new_from_node                                common/state/state.c
>>       of_find_path_by_node                             drivers/of/of_path.c
>>         __of_find_path                                 drivers/of/of_path.c
>>           device_detect                                
>> drivers/base/driver.c
>>             mci_detect_card                            
>> drivers/mci/mci-core.c
>>               mci_card_probe                           
>> drivers/mci/mci-core.c
>>                 mci_startup                            
>> drivers/mci/mci-core.c
>>                   mci_startup_mmc                      
>> drivers/mci/mci-core.c
>>                     mmc_compare_ext_csds               
>> drivers/mci/mci-core.c
>>                       mci_send_ext_csd                 
>> drivers/mci/mci-core.c
>>                         mci_send_cmd                   
>> drivers/mci/mci-core.c
>>                           esdhc_send_cmd
>> drivers/mci/imx-esdhc.c
>>                             __esdhc_send_cmd
>> drivers/mci/imx-esdhc-common.c
>>                               sdhci_transfer_data_dma  drivers/mci/sdhci.c
>> 
>> 
>> I'm not sure how this happens. It's not the first transfer taking place. I
>> figured that mayby the poller[1] just adds some cpu load that opens up a
>> window for this to occur.
>> 
>> Maybe something else cleared the status register right before we entered 
>> the
>> loop. Thats when I spotted this read/write construction[3]. It's executed
>> right before we enter the do/while loop and (over)writes to the irq status
>> register.
>> 
>> I removed the line with the write command[3] and my board boots as 
>> expected.
>> Why are we (over)writing the status register right after reading it?
> 
> The idea is likely that we clear the interrupts that we just handled. It
> seems by the time the status register is overwritten the DMA transfer is
> already ongoing, and in your case even already done.

I can confirm this. When the data transfer is still ongoing the status
register holds 0x000000001 (SDHCI_INT_CMD_COMPLETE). A few lines above
the write there is a busy wait for this bit to be set.

When my board hangs the status register holds 0x0000000b at the timen it is
cleared. Which means the DMA engine has stopped on a buffer boundary.
Apparently this can sometimes happen shortly after starting.

> We should only ever
> clear the bits we have handled, like sdhci_transfer_data_dma() does with
> 
> 	sdhci_write32(sdhci, SDHCI_INT_STATUS, SDHCI_INT_DMA);

Ack. This would suffice:

sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, SDHCI_INT_CMD_COMPLETE);


> 
> Apart from this line the code never checks the same bit twice, so
> clearing anything shoudn't be necessary. Clearing the status register
> once either at the start or the end of the function should be enough.
> 
> I think the right thing to do is just to remove the erroneous status
> register write like you already did.

I'll submit a patch that removes the write. Thank you for thinking along.

- Robin


