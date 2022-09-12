Delivery-date: Mon, 12 Sep 2022 14:32:50 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oXicK-002HFa-Qz
	for lore@lore.pengutronix.de; Mon, 12 Sep 2022 14:32:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oXicJ-0003uy-FV
	for lore@pengutronix.de; Mon, 12 Sep 2022 14:32:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8O1Vj4TsDZ0jlXKYCCpqFqHT+Yih7PwJF9qmqakc764=; b=V2FXH84B9iimCPHraHP6A7GNFf
	AMJiBHTdiTiH+SJJB3fNJhxxRXG7la1sNPeurFyiyZ2FHIMGDqx8Ou5Et6nrTXzptaGr5nJRQ2rO9
	0WBo70C4yA31jPwxGXBy3sy6JhPZoCHKGfvV3d5bf+I2XKyKoMoYnOQPiutMLGm4fD/k71JWEipUW
	cfRI8077LjKSAzALvFRlt1Z/i97MG+el87fNdUgQ+F3/4OA528z/TNATKp4oLU6sWf4asDV4Cze3d
	oNv9enmcAoGNW2ZCjcT3KOyDkeaX5rnjLK/CVkuAk+S15lBcMfhcXnVguxzJGGvrqid+CduCJioYV
	Zj3P26nA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXiab-009lgT-AJ; Mon, 12 Sep 2022 12:31:01 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXiaV-009lYy-55
	for barebox@bombadil.infradead.org; Mon, 12 Sep 2022 12:30:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=From:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=8O1Vj4TsDZ0jlXKYCCpqFqHT+Yih7PwJF9qmqakc764=; b=GEFJH9qqXb8NdhF0Un48/Le3+P
	7Z+dMoL176ok45Opr1AQQp4rASTtcNGZsruTxIO7Gbe+dcAP3G+kmQbRk5EvckRCmOHDHeO5y92Ct
	ol4pb6899jxq+XIVvHu3n7YQBRkZpYbdT+bNWJbq7r67UR1AQPK4u+rD/s82rzOdpoWNuxqn26GOt
	Kt4FetyWDxLjAN1NrTsIBm0c+TRUpVknjYHgw2HupruNf6UEdE+YPx6PgdcSC4xWa3uI2ZeoKJPSy
	Thi4KWkIvxh15bbo+sGVfRJeanVM+HaxFyO3RLlMxXYBdWpuGa8TAHPbAeRMw8mc1M340MazJ8QXO
	8dtognUQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXi88-00BnSQ-R3
	for barebox@lists.infradead.org; Mon, 12 Sep 2022 12:01:39 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oXi83-000076-9g; Mon, 12 Sep 2022 14:01:31 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oXi83-0007CS-0i; Mon, 12 Sep 2022 14:01:31 +0200
Date: Mon, 12 Sep 2022 14:01:30 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, uol@pengutronix.de
Message-ID: <20220912120130.GD12909@pengutronix.de>
References: <20220817114244.1810531-1-a.fatoum@pengutronix.de>
 <20220817114244.1810531-9-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220817114244.1810531-9-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220912_130136_971487_7F71CFFF 
X-CRM114-Status: GOOD (  22.92  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 08/10] ARM: mmu: use reserve mem entries to modify maps
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This patch breaks NAND support on my Phytec i.MX6 board. There are some
problems with this patch, so I ended up reverting it for now.

On Wed, Aug 17, 2022 at 01:42:42PM +0200, Ahmad Fatoum wrote:
> @@ -468,11 +469,28 @@ void __mmu_init(bool mmu_on)
>  	vectors_init();
>  
>  	for_each_memory_bank(bank) {
> +		struct resource *rsv;
> +
>  		create_sections(ttb, bank->start, bank->start + bank->size - 1,
>  				PMD_SECT_DEF_CACHED);
> -		__mmu_cache_flush();
> +
> +		for_each_reserved_region(bank, rsv) {
> +			create_sections(ttb, resource_first_page(rsv),
> +					resource_count_pages(rsv),
> +					attrs_uncached_mem());
> +		}

This operates on 1MiB sections, so everything requiring a finer
granularity will fail here. Not sure if we currently need that, but not
even issuing a warning is not good.

>  	}
>  
> +	/*
> +	 * We could set_ttbr(ttb) here instead and save on the copy, but
> +	 * for now we play it safe, so we don't mess with the older ARMs.
> +	 */
> +	if (oldttb) {
> +		memcpy(oldttb, ttb, ARM_TTB_SIZE);
> +		free(ttb);
> +	}

in the early MMU case the MMU still uses 'oldttb' as ttb whereas 'ttb'
now points to invalid memory. Still functions like arm_create_pte()
still operate on 'ttb'. It looks like a ttb = oldttb is missing here.

Also I wonder when we have to map the reserved regions as execute never,
then the early MMU setup seems broken as well, as that creates a flat
mapping without honoring the reserved regions. Shouldn't that be fixed?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


