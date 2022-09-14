Delivery-date: Wed, 14 Sep 2022 10:35:26 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oYNri-004b6i-Dx
	for lore@lore.pengutronix.de; Wed, 14 Sep 2022 10:35:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oYNrg-0007dW-2G
	for lore@pengutronix.de; Wed, 14 Sep 2022 10:35:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2Tdglzp+OBQ3T6nl7KddKua7r5fpy6Dku064xAGXEU4=; b=KwUezFFmx2hLPuJZqu5UAQStlr
	KGciIN6XSCclZP8jlDAAr+2QGWBSpWAD2R5cW4gNWtGD0jGyonxeqH19e1hQDazYAysBSl1nqTrI5
	C2ZdnPSjwidGM+Ezp3vfpVtjbvLQwSrgVEaJRDjK/5XqP3+hhAq2sjatPXXhB6a/8hI2KOfuwKlBV
	Rw6nMU6kCKWPLqWVCv1VeaEom3SScfCvNz7ZUD04WSW5Uc8zRVQVEMBFMIz1I5IGd0l4BgA3NKPPP
	/41BEmGDI6nhcLS9v5NXItsd9UeyJ/nFKx7rP3aqyMxcN9MiUunqz4Hspd5vgrfYnUmm7z5hEviaw
	b75tBjKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYNqP-00DbMH-C0; Wed, 14 Sep 2022 08:34:05 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYNqK-00DbKe-1E
	for barebox@lists.infradead.org; Wed, 14 Sep 2022 08:34:01 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oYNqI-0007ME-Ow; Wed, 14 Sep 2022 10:33:58 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oYNqI-0002gY-GA; Wed, 14 Sep 2022 10:33:58 +0200
Date: Wed, 14 Sep 2022 10:33:58 +0200
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220914083358.GK12909@pengutronix.de>
References: <20220913124954.1346533-1-m.felsch@pengutronix.de>
 <20220913124954.1346533-3-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220913124954.1346533-3-m.felsch@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220914_013400_090437_30B353CD 
X-CRM114-Status: GOOD (  17.81  )
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
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/6] RISC-V: add riscv_vendor_id() support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Sep 13, 2022 at 02:49:50PM +0200, Marco Felsch wrote:
> +static inline long __riscv_vendor_id(u32 flags)
> +{
> +	struct sbiret ret = { .error = -1 };
> +	long id;
> +
> +	switch (__riscv_mode(flags)) {
> +	case RISCV_M_MODE:
> +		__asm__ volatile("csrr %0, mvendorid\n" : "=r"(id));
> +		return id;
> +	case RISCV_S_MODE:
> +		/*
> +		 * We need to use the sbi_ecall() since it can be that we got
> +		 * called without a working stack
> +		 */
> +		ret = sbi_ecall(SBI_EXT_BASE, SBI_EXT_BASE_GET_MVENDORID,
> +				0, 0, 0, 0, 0, 0);
> +		if (!ret.error)
> +			return ret.value;
> +	default:
> +	}

arch/riscv/include/asm/system.h:27:2: error: label at end of compound statement

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


