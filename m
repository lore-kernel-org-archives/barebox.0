Delivery-date: Tue, 12 Sep 2023 12:58:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qg15v-00CYFr-2f
	for lore@lore.pengutronix.de; Tue, 12 Sep 2023 12:58:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qg15s-0004uU-Pl
	for lore@pengutronix.de; Tue, 12 Sep 2023 12:58:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=A5PQp8JTBv9XeH2hFiFDvpXdB3dVhM5Gx3lCZ90Wr18=; b=n7arkFNVX4RT8dt4P5ya9/3wW3
	3CmmLiFuSlngPGekb+99FSAYLTufZjBk/hcbtXWh5wNc5cKDNoFIsEcvzZX8uLctyiy4zBuIR7hSf
	pcc/0uikC21I5AMh5YjFoOALROIqLX1gwI/T5w2Yw6vzztSzQfLvSUAMgMt+OP1Bsh3t1dyZJ/kIV
	xnP3SL86Ob2b2IMb5aWCVL0drIcoc5OWPvtvMv2ajR1GP1x8m281Deu3irGasayJRjc5LSLqgnvB6
	1vNc/wAZ+AsIzNV90fMGd9nQbKsyK0wGwE7qJLAD/8Y7Dn2kyoqEZNeDwdhXQbMFOorY2TK3N29KO
	yHNphqFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qg14p-0032xj-1Y;
	Tue, 12 Sep 2023 10:57:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qg14m-0032vd-12
	for barebox@lists.infradead.org;
	Tue, 12 Sep 2023 10:57:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qg14l-0004j4-4L; Tue, 12 Sep 2023 12:56:59 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qg14k-005l11-O4; Tue, 12 Sep 2023 12:56:58 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qg14k-005bQ3-Ci; Tue, 12 Sep 2023 12:56:58 +0200
Date: Tue, 12 Sep 2023 12:56:58 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230912105658.GC637806@pengutronix.de>
References: <20230912095809.287289-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230912095809.287289-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230912_035700_360616_51DBB2A4 
X-CRM114-Status: GOOD (  20.56  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] MIPS: bootm: fix format string type mismatch
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Sep 12, 2023 at 11:58:09AM +0200, Ahmad Fatoum wrote:
> While we always have sizeof (struct device_node *) == sizeof(ulong),
> clangd warns about mixing them as arguments to functions with printf-style
> format strings. Add a cast to silence the warning.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/mips/lib/bootm.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/mips/lib/bootm.c b/arch/mips/lib/bootm.c
> index 19d82ec37530..a5bfc6c88c17 100644
> --- a/arch/mips/lib/bootm.c
> +++ b/arch/mips/lib/bootm.c
> @@ -62,7 +62,7 @@ static int do_bootm_elf(struct image_data *data)
>  	}
>  
>  	pr_info("Starting application at 0x%08lx, dts 0x%08lx...\n",
> -		data->os_address, data->of_root_node);
> +		data->os_address, (ulong)data->of_root_node);

It's a pointer, so why not print it with 0x%p?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


