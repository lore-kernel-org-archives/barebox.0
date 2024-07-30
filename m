Delivery-date: Tue, 30 Jul 2024 11:19:09 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sYj0f-004Pvh-2A
	for lore@lore.pengutronix.de;
	Tue, 30 Jul 2024 11:19:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sYj0e-0002px-UV
	for lore@pengutronix.de; Tue, 30 Jul 2024 11:19:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GRaLyjgCO34OMoT9N+A8Nia024KmU3dkGulb8oMnDCc=; b=RmwovedBbDxS4LJlrgEhgEzBCo
	6OqZTUcglmmwoewHeFfrj+DAar3887H5RU9CFSMNzT7bKchS1Dfe6ih7/B1eUFVCZaKOFIDFdHTaB
	3bn8Jv52hhJOoJ1e0+WqnJCBoEM1zBg9yaGk8YbKdPrYG5/VCn4GRVsPG2Rref6tyhx1/ud3C9jMY
	Kk7W+p8epi9N+htEaW5Owdu81ZzuVhPJ3kEF/D5Vx94QsuBMXEFnsBHgpmGWmf3x6LG+PYaXa2Mmy
	c1I395tWmJBlJPPLlrEhzYdIMzUnnYDBq04nwphkduxwBpPmcvSL00RMI7lPC+qgKdRew122lRPYx
	IkdBXTdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYj03-0000000EToR-1LXW;
	Tue, 30 Jul 2024 09:18:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYizz-0000000ETnt-3CVI
	for barebox@lists.infradead.org;
	Tue, 30 Jul 2024 09:18:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1sYizx-0002lx-SB; Tue, 30 Jul 2024 11:18:25 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1sYizx-003FcK-FB; Tue, 30 Jul 2024 11:18:25 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1sYizx-0095TL-1D;
	Tue, 30 Jul 2024 11:18:25 +0200
Date: Tue, 30 Jul 2024 11:18:25 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Zqiv4ROuyhUNQz4p@pengutronix.de>
References: <20240730071929.2016537-1-a.fatoum@pengutronix.de>
 <20240730071929.2016537-7-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240730071929.2016537-7-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240730_021827_822768_124F5A3D 
X-CRM114-Status: GOOD (  25.09  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 06/10] mci: core: use CONFIG_MCI_WRITE, not
 CONFIG_BLOCK_WRITE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Jul 30, 2024 at 09:19:25AM +0200, Ahmad Fatoum wrote:
> There's a more specific CONFIG_MCI_WRITE that's so far only used to
> remove write support for in the Atmel MCI driver. We should use the same
> symbol also to remove support in the MCI core instead of relying on its
> parent CONFIG_BLOCK_WRITE option.

Currently CONFIG_MCI_WRITE has no relation to CONFIG_BLOCK_WRITE.
Having CONFIG_MCI_WRITE enabled and CONFIG_BLOCK_WRITE disabled doesn't
make sense. Shouldn't CONFIG_MCI_WRITE depend on CONFIG_BLOCK_WRITE?

Also having CONFIG_BLOCK_WRITE enabled and CONFIG_MCI_WRITE disabled
allows you to support writing to block devices that are not MCI devices.
Given that the vast majority of block devices are actually MCI devices
this seems rather exotic.

Maybe we should drop CONFIG_MCI_WRITE and replace it with
CONFIG_BLOCK_WRITE, or just have

config MCI_WRITE
	bool
	default y if BLOCK_WRITE

Sascha

> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/mci/mci-core.c | 8 +++-----
>  1 file changed, 3 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
> index f6f8a6adabb9..3a5fb0330700 100644
> --- a/drivers/mci/mci-core.c
> +++ b/drivers/mci/mci-core.c
> @@ -1801,8 +1801,8 @@ static int mci_blk_part_switch(struct mci_part *part)
>   *
>   * This routine expects the buffer has the correct size to read all data!
>   */
> -static int __maybe_unused mci_sd_write(struct block_device *blk,
> -				const void *buffer, sector_t block, blkcnt_t num_blocks)
> +static int mci_sd_write(struct block_device *blk,
> +			const void *buffer, sector_t block, blkcnt_t num_blocks)
>  {
>  	struct mci_part *part = container_of(blk, struct mci_part, blk);
>  	struct mci *mci = part->mci;
> @@ -2179,9 +2179,7 @@ static int mci_check_if_already_initialized(struct mci *mci)
>  
>  static struct block_device_ops mci_ops = {
>  	.read = mci_sd_read,
> -#ifdef CONFIG_BLOCK_WRITE
> -	.write = mci_sd_write,
> -#endif
> +	.write = IS_ENABLED(CONFIG_MCI_WRITE) ? mci_sd_write : NULL,
>  };
>  
>  static int mci_set_boot(struct param_d *param, void *priv)
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


