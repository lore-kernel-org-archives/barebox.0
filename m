Delivery-date: Tue, 13 Dec 2022 09:42:44 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p50s8-002RfQ-Ch
	for lore@lore.pengutronix.de; Tue, 13 Dec 2022 09:42:44 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p50s7-00083a-OI
	for lore@pengutronix.de; Tue, 13 Dec 2022 09:42:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UsoFDLq4RYhHQDCW+/qqxwajpaqIJlSjQy1F+sEGgwM=; b=oVLWgNDM6qzWYyw84Fj8RzpXyz
	kl+Cx2P9Vj+phYwtx6JBxJtpN9wa2kDv4PdxO9jNVUxBpIJq4XXDsVVYpdec8qzfv5V6eFwMBYlVJ
	mDKliRwbnpZqqAIxkAd7cJrstuDDjxZ9Oz441aimyhNXVW6clFez7FHmUW/l6MTn5u6+/vdosSCb5
	FRTuk8BIUnXTrZo0rnXwLNCSLekj759i3s2eh4ICiDkfS4vaxVb7cAjZ89hutbtjEqXSaKDHCtC2y
	qSNctUX8cxDHDUfC0hkfZOhhLTDGnETInSCZqXwAszOdzHc6nClJ3A5uHWh/ZJIJj+No9JvZLPyIn
	B3jw5Odw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p50qO-00E0SH-E5; Tue, 13 Dec 2022 08:40:56 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p50mv-00DyL8-0O
	for barebox@lists.infradead.org; Tue, 13 Dec 2022 08:37:23 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1p50mr-0007Km-Mm; Tue, 13 Dec 2022 09:37:17 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1p50mr-0005Ts-FP; Tue, 13 Dec 2022 09:37:17 +0100
Date: Tue, 13 Dec 2022 09:37:17 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20221213083717.GO29728@pengutronix.de>
References: <20221212163907.2356192-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221212163907.2356192-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221213_003721_099836_7006591C 
X-CRM114-Status: GOOD (  18.08  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master 1/2] KASan: test_kasan: silence warning with newer
 GCC
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Dec 12, 2022 at 05:39:06PM +0100, Ahmad Fatoum wrote:
> Newer GCC will rightly complain about this being an out-of-bounds
> access. This is intended as the kasan command is meant to cause
> out-of-bounds accesses to test proper operation of KASan.
> 
> Thus silence the warning for this specific instance.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  lib/kasan/test_kasan.c | 2 ++
>  1 file changed, 2 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/lib/kasan/test_kasan.c b/lib/kasan/test_kasan.c
> index d0ea91547711..14511cdb80bd 100644
> --- a/lib/kasan/test_kasan.c
> +++ b/lib/kasan/test_kasan.c
> @@ -290,6 +290,8 @@ static noinline void kasan_alloca_oob_left(void)
>  	char alloca_array[i];
>  	char *p = alloca_array - 1;
>  
> +	OPTIMIZER_HIDE_VAR(p);
> +
>  	pr_info("out-of-bounds to left on alloca\n");
>  	*(volatile char *)p;
>  }
> -- 
> 2.30.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


