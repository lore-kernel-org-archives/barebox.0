Delivery-date: Thu, 05 Aug 2021 15:54:56 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mBdpo-0001WE-3T
	for lore@lore.pengutronix.de; Thu, 05 Aug 2021 15:54:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mBdpn-0000RB-5J
	for lore@pengutronix.de; Thu, 05 Aug 2021 15:54:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=A/o3QtUCgMEvPb/JPmPVYpf6EMtn3IoAEDDvzLi9pAU=; b=qa6neFRvNQMVoHPKkateg/H8lP
	78IOi7GHpzyRzW3kQBOE2HC4Mdvsd90dEI3T7UnlX8XF2JKF3aKWR/4CvtxtPOJ+vsQ7zh1Iw2PJe
	JKUPB+B3ulXGLRrSMOnrN4v/Yl4B3+N8fghb1OPOrpvl0N3Sf+3En645fGh5Gl89aQvooQfViVZGG
	6UpVqE5/iy3CZGC3UFrcE9071O71SQLghu0c3I42r3YMqfpFG9aV6w9Pybu0RPMimoB/js7yTyKZt
	WQmlYHhrrsXadenze+k+qNMvXeHB4KQpuQYWN9zprXXhvmWQkG5ey7olP7RCCEnAcD3pw3/gDsK7J
	/+T/L/Ow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mBdoZ-009kPP-6Q; Thu, 05 Aug 2021 13:53:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mBdoU-009kOw-PX
 for barebox@lists.infradead.org; Thu, 05 Aug 2021 13:53:36 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1mBdoT-0000DR-Hp; Thu, 05 Aug 2021 15:53:33 +0200
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>,
 barebox@lists.infradead.org
References: <20210803094418.475609-1-r.czerwinski@pengutronix.de>
 <20210803094418.475609-9-r.czerwinski@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <edee4bbe-ba6e-7356-5ce7-984a4009134d@pengutronix.de>
Date: Thu, 5 Aug 2021 15:53:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <20210803094418.475609-9-r.czerwinski@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210805_065334_883376_AB10863E 
X-CRM114-Status: GOOD (  20.37  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 8/8] PBL: enable LIBFDT for OP-TEE early loading
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 03.08.21 11:44, Rouven Czerwinski wrote:
> This allows the OP-TEE early loaded board to add the reserved memory
> entries for the correct MMU setup. This is done by including pbl/fdt.h
> and using fdt_fill_reserve_mem().
> 
> Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Would be nice if we had a board upstream that made use of this.

> ---
>  common/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/common/Kconfig b/common/Kconfig
> index a9feae2ae8..4f7a08bc8f 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -1116,6 +1116,7 @@ config BOOTM_OPTEE
>  
>  config PBL_OPTEE
>  	bool "Enable OP-TEE early start"
> +	select LIBFDT
>  	depends on ARM
>  	depends on !THUMB2_BAREBOX
>  	help
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

