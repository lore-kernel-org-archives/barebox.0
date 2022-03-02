Delivery-date: Wed, 02 Mar 2022 14:37:03 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nPPA7-00FWSl-LQ
	for lore@lore.pengutronix.de; Wed, 02 Mar 2022 14:37:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nPPA6-0000Mh-E5
	for lore@pengutronix.de; Wed, 02 Mar 2022 14:37:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=fXl/dOmNhXqp3FCrUEQ2Iu9LCILZRLm48hG/7frPWsE=; b=h4HINQruVHPs7DnX+gmyf4GOG7
	u8Uhi2K5lCIBClTxuVd+NehWBGwPJUxdh0U2+4peehGW+eCptGNyGt9CWiu2yq0AhCmj44O7bXNoh
	JYgVM0UWeWMggbFjT32I6IBNNgwuibmEX0sWP4/IV5L/v7t8Eh6G+XChv1AVlLzx3YWd34rJ9cl4N
	IZ9h36RSlb6f0R4Ba3Cof7pxClxH/BfQyUGPNK28fZQVL0xRUSbgSrtwNwRYLOAST8bMajzzPOqOQ
	U0bD+B0IPnuBl/HLstOEozYrRJqxpMbtMYXeru/YbPTCoZ6000c4uADWUAtWsEkVRYzymejzicU8a
	E2imlJzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPP8X-002pnI-Uu; Wed, 02 Mar 2022 13:35:26 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPP8S-002plS-6M
 for barebox@lists.infradead.org; Wed, 02 Mar 2022 13:35:21 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nPP8Q-0008Rs-BT; Wed, 02 Mar 2022 14:35:18 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nPP8Q-0006Tb-2V; Wed, 02 Mar 2022 14:35:18 +0100
Date: Wed, 2 Mar 2022 14:35:18 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220302133518.GW19585@pengutronix.de>
References: <20220301092024.3368293-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220301092024.3368293-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 14:35:09 up 81 days, 22:20, 88 users,  load average: 0.24, 0.29, 0.25
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220302_053520_255538_1EABFF16 
X-CRM114-Status: GOOD (  24.40  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] bootm: add missing space in error message
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Mar 01, 2022 at 10:20:24AM +0100, Ahmad Fatoum wrote:
> There is no space between the "at" and the hex base address currently.
> Fix the formatting.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  common/bootm.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/common/bootm.c b/common/bootm.c
> index 89e3e93f2ce0..a8b560c046c3 100644
> --- a/common/bootm.c
> +++ b/common/bootm.c
> @@ -113,7 +113,7 @@ int bootm_load_os(struct image_data *data, unsigned long load_address)
>  				load_address, kernel_size);
>  		if (!data->os_res) {
>  			pr_err("unable to request SDRAM region for kernel at"
> -					"0x%08llx-0x%08llx\n",
> +					" 0x%08llx-0x%08llx\n",
>  				(unsigned long long)load_address,
>  				(unsigned long long)load_address + kernel_size - 1);
>  			return -ENOMEM;
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

