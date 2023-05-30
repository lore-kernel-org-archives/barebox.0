Delivery-date: Tue, 30 May 2023 12:27:27 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q3wZc-002iDW-RR
	for lore@lore.pengutronix.de; Tue, 30 May 2023 12:27:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q3wZa-00031L-9z
	for lore@pengutronix.de; Tue, 30 May 2023 12:27:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iZ5sz6ZViaEh9UkTEDgNMEoI216LsDhd4+Njq6wb71k=; b=V9DtxsFnGT8rtqtBHFXlXQNXnr
	ceg4wKGTSXkzgTQZSY/aJFyLbGnXDaEVaNXvaNavhQh/Y5/UNfIi6I+VunuZ850FZzXReNa65/240
	eWdzJb8GHODoQH9qU3Yuya98gBLwZpT/ez2hIJvG6ynMOMVmR835QmlGwWettBUUbfE/LXQDJ1CD0
	2STeDBAoMZXpjUcgvqCS7bx7tRkS6Ydc8lSN5U6CYMDu8XqS9jg8WEbZRNRyCpUM8+hBGOVKGnq8f
	d7v7bPSI0FrzYve06P52rO8yglWIWsEU4Sg9le1OG2Qp0XRngtw7JuwcOONnW8GAnLxvnqGoLY2bs
	JTpJrU3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q3wYK-00DMh7-0R;
	Tue, 30 May 2023 10:26:08 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q3wYG-00DMgU-1Q
	for barebox@lists.infradead.org;
	Tue, 30 May 2023 10:26:05 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q3wYE-0002se-D0; Tue, 30 May 2023 12:26:02 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q3wYE-0002eD-63; Tue, 30 May 2023 12:26:02 +0200
Date: Tue, 30 May 2023 12:26:02 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230530102602.GC17518@pengutronix.de>
References: <20230526063354.1145474-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230526063354.1145474-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230530_032604_503903_0D2BAB80 
X-CRM114-Status: GOOD (  25.05  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH master 1/4] ARM: mmu64: request TTB region
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, May 26, 2023 at 08:33:51AM +0200, Ahmad Fatoum wrote:
> ARM64 MMU code used to disable early MMU, reallocate TTB from malloc
> area and then reenable it. This has recently been changed, so MMU is
> left enabled like on ARM32, but unlike ARM32, the SDRAM region used in
> PBL is not requested in barebox proper. Do that now.
> 
> Fixes: b53744ffe333 ("ARM: mmu64: Use two level pagetables in early code")
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/arm/cpu/mmu_64.c | 12 ++++++++++++
>  1 file changed, 12 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
> index cdc482542202..1d5a5355c6be 100644
> --- a/arch/arm/cpu/mmu_64.c
> +++ b/arch/arm/cpu/mmu_64.c
> @@ -192,8 +192,20 @@ static void mmu_enable(void)
>   */
>  void __mmu_init(bool mmu_on)
>  {
> +	uint64_t *ttb = get_ttb();
>  	struct memory_bank *bank;
>  
> +	if (!request_sdram_region("ttb", (unsigned long)ttb,
> +				  ARM_EARLY_PAGETABLE_SIZE))
> +		/*
> +		 * This can mean that:
> +		 * - the early MMU code has put the ttb into a place
> +		 *   which we don't have inside our available memory
> +		 * - Somebody else has occupied the ttb region which means
> +		 *   the ttb will get corrupted.
> +		 */
> +		pr_crit("Can't request SDRAM region for ttb at %p\n", ttb);
> +
>  	for_each_memory_bank(bank) {
>  		struct resource *rsv;
>  		resource_size_t pos;
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


