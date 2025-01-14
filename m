Delivery-date: Tue, 14 Jan 2025 09:39:27 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tXcSN-000wkG-2R
	for lore@lore.pengutronix.de;
	Tue, 14 Jan 2025 09:39:27 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tXcSN-000662-0O
	for lore@pengutronix.de; Tue, 14 Jan 2025 09:39:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CImAF3XCPNXAJqODpOgRSXPBDMBe7J3GKUcv8feyVyo=; b=2dI/bCgxiZ+uVLIiatZQ+kfamO
	hBGDuRMRq1ZLdXIwK2ADbROPeKYSTye1fZ6MhgBRbDuyYxGw4+Slfw6bs9oRBtCBB2BZxzZ3ACues
	wYw2+nS8g8Cpb9eypUyyafmWxTTARejLaZRdZqWu8d7Jk2Gi75wSIlvZNRAYML634RR/EBNi+xU5H
	M8VtgvDczLFJYtSkxtmeHJ5jFQDcetHzKSwGOErq7a7Zmj2xJpzkQ77nHXkYl8783Uqbo1DYMQMvx
	MXIkoGuIDrhD4TBHJJme2mhChW6t4gdc0MiKZSexQDu2Nne48EczKXbFJLb+xjbnt2vcJrItO6lhW
	rHFnNtzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tXcRy-00000007qi9-3a9w;
	Tue, 14 Jan 2025 08:39:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tXcRu-00000007qec-45Cp
	for barebox@lists.infradead.org;
	Tue, 14 Jan 2025 08:39:01 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tXcRt-0005m6-Rq; Tue, 14 Jan 2025 09:38:57 +0100
Message-ID: <cb5ea9c1-044c-46e2-a519-2dcfc3819605@pengutronix.de>
Date: Tue, 14 Jan 2025 09:38:57 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jules Maselbas <jmaselbas@zdiv.net>, barebox@lists.infradead.org
References: <20250107143740.16903-1-jmaselbas@zdiv.net>
 <20250107143740.16903-5-jmaselbas@zdiv.net>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250107143740.16903-5-jmaselbas@zdiv.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250114_003859_018248_A050CDA1 
X-CRM114-Status: GOOD (  21.85  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 4/6] mci: Add sunxi-mmc driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 07.01.25 15:37, Jules Maselbas wrote:
> This driver is adapted from different sources: Linux, u-boot and p-boot.
> The latter, p-boot (forked from u-boot), is a bootloader for pinephones.
> 
> It currently only support PIO xfer but could be further improved to also
> support DMA xfer. This driver is split in three files so it can be used
> by the PBL and barebox proper.
> 
> Signed-off-by: Jules Maselbas <jmaselbas@zdiv.net>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> +	ret = sdxc_xfer_complete(host, 1000 * MSECOND, SDXC_INT_COMMAND_DONE);

That's

> +		ret = sdxc_xfer_complete(host, 1000 * MSECOND, data->blocks > 1 ?
> +					 SDXC_INT_AUTO_COMMAND_DONE :
> +					 SDXC_INT_DATA_OVER);

a lot

> +	if (cmd->resp_type & MMC_RSP_BUSY) {
> +		u32 status;
> +		u64 start;
> +		start = get_time_ns();
> +		do {
> +			status = sdxc_readl(host, SDXC_REG_STAS);
> +			if (is_timeout(start, 2000 * MSECOND)) {

of timeouts :o

> +				err_why = "resp timeout";
> +				ret = -ETIMEDOUT;
> +				goto err;
> +			}
> +		} while (status & SDXC_STATUS_BUSY);
> +	}
> +
> +	if (wait_on_timeout(1000 * MSECOND, !sdxc_is_card_busy(host))) {

There's mci_cmd::busy_timeout in ms now. Could you use it and fallback to
1000 * MSECOND only if it's zero?

This is ging to be useful down the line when we do longer operations
in barebox like large erases.

> +static int sunxi_mmc_read_block(struct sunxi_mmc_host *host,
> +				void *dst, unsigned int blocknum,
> +				unsigned int blocks)
> +{
> +	struct mci_data data;
> +	struct mci_cmd cmd = {
> +		.cmdidx = (blocks > 1) ? MMC_CMD_READ_MULTIPLE_BLOCK : MMC_CMD_READ_SINGLE_BLOCK,
> +		 /* mci->high_capacity ? blocknum : blocknum * mci->read_bl_len, */
> +		 /* TODO: detect if card is high-capacity */

I had an idea about that, but haven't come around to give it a try.
Quoting myself from IRC 2 years back:

"ye, that's what is used normally, but the problem is doing it while in transmission state
I looked into Part1_Physical_Layer_Simplified_Specification_Ver9.00.pdf again and for the
first time I see "Figure 4-13 : SD Memory Card State Diagram (data transfer mode)"
Apparently,  you don't necessarily need CMD0 (Go idle) to be able to get to a state where
you can execute CMD9 (SEND CSD), but one could also execute CMD7 (SELECT CARD) to deselect
card and then run CMD9 and get back to transmission mode One would need to issue a CMD3
(SEND_RELATIVE_ADDR) to get the RCA to communicate with the correct SD (it's argument to
CMD9), but this might work"

Cheers,
Ahmad

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


