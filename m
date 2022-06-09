Delivery-date: Thu, 09 Jun 2022 09:38:30 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzCkQ-008WAu-GI
	for lore@lore.pengutronix.de; Thu, 09 Jun 2022 09:38:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzCkO-0000O7-Mq
	for lore@pengutronix.de; Thu, 09 Jun 2022 09:38:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=tGpV4Sbv+6VUVOlu0uAjzHiqD8/8w1lCn+MRkozMrmY=; b=Y9zwXFTGPkBcBVoNNEDGT5QN4q
	1TZAaouV3YrY/gF5geo7f2AfJJ1kDd+E2P0eG2bK6BF5uIZkpaf8kn4cyk3zOQkBd6LgtbQk66RcP
	jQKxBJsQIfUFHjulE76xATE4kBt+/rZoHuyeYff1gYgMuAjDdVv/r6qrojhrd/K/C6AAskbYYs5t/
	NUS3ecNFlggVSo/rdchqNetbiID1oX3AKR+VHP/50flFidnLQq2wDYJE+t0Mj7d/EmlmrII95rObn
	vcScHxde2Xqb/KFkAK9KvkwnkmKfCtzf/31QpP1X9b2e0dgB1RKulj5Uml8BMO2Dhr/euc+wNLYTc
	36CrNMtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzCjC-00HTaM-4f; Thu, 09 Jun 2022 07:37:14 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzCj3-00HTYe-DF
	for barebox@lists.infradead.org; Thu, 09 Jun 2022 07:37:07 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1nzCj2-0000He-3x; Thu, 09 Jun 2022 09:37:04 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1nzCj1-0006I7-Qg; Thu, 09 Jun 2022 09:37:03 +0200
Date: Thu, 9 Jun 2022 09:37:03 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220609073703.GE1615@pengutronix.de>
References: <20220608202709.3821837-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220608202709.3821837-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220609_003705_497943_3E104D73 
X-CRM114-Status: GOOD (  20.87  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] fixup! ARM64/RISC-V: booti: support
 global.bootm.image.loadaddr
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Jun 08, 2022 at 10:27:09PM +0200, Ahmad Fatoum wrote:
> data->os_address may be UIMAGE_INVALID_ADDRESS, in which case, barebox
> should determine on its own, which address to use.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> Please squash
> ---
>  common/booti.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/common/booti.c b/common/booti.c
> index fbf0d8008443..dde1605fe1f1 100644
> --- a/common/booti.c
> +++ b/common/booti.c
> @@ -12,7 +12,8 @@ static unsigned long get_kernel_address(unsigned long os_address,
>  	resource_size_t start, end;
>  	int ret;
>  
> -	if (os_address == UIMAGE_SOME_ADDRESS) {
> +	if (os_address == UIMAGE_SOME_ADDRESS ||
> +	    os_address == UIMAGE_INVALID_ADDRESS) {
>  		ret = memory_bank_first_find_space(&start, &end);
>  		if (ret)
>  			return UIMAGE_INVALID_ADDRESS;
> -- 
> 2.30.2
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
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

