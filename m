Delivery-date: Tue, 12 Oct 2021 09:36:26 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1maCKo-00029J-EC
	for lore@lore.pengutronix.de; Tue, 12 Oct 2021 09:36:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1maCKn-0005na-BJ
	for lore@pengutronix.de; Tue, 12 Oct 2021 09:36:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=63XYQstHKxkmdV6C1y8cbQLGyMsENSLXXz/4Lyu78L4=; b=5Fd5C3vimmBNDcPXOur9inEEFf
	87pZAwa3cryfwsA1SK2z2Kupqlm7KZlseAHiSZZzSuTcSRqta/c/4BZqKt/YDGk3xeTKEAO/WGCZd
	2IbzgDSfqUEy1qZK5d0tcgc5Lvh0BNeESlgS4uMkqeKiYc2C4zJnABjD4R8iRbZVnEnHmcZeBt9M2
	1gI9ntKV+E75/ZpxCpevHe7/aPYLvnDCLoWi5fPsfSoTgxK+dXCceGXdOut/ID3N+hbYjsAS007D9
	tE1srylzA+7g1C8S2vJoIE+iFI/fqnDPWnNmOGKMr+vtpPDlejxzhFmK87/7dnpyE6u+dOYyWMkLv
	E4qN3fZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1maCJW-00BnHm-Rs; Tue, 12 Oct 2021 07:35:06 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1maCJR-00BnFw-88
 for barebox@lists.infradead.org; Tue, 12 Oct 2021 07:35:02 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1maCJQ-00057E-0H; Tue, 12 Oct 2021 09:35:00 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1maCJP-0000JR-Mz; Tue, 12 Oct 2021 09:34:59 +0200
Date: Tue, 12 Oct 2021 09:34:59 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20211012073459.GH28453@pengutronix.de>
References: <20211011142215.25846-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211011142215.25846-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:34:51 up 236 days, 10:58, 131 users,  load average: 0.37, 0.27,
 0.21
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211012_003501_315089_A53F8F57 
X-CRM114-Status: GOOD (  23.95  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: Rockchip: fix path to rkbin firmware in documentation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Oct 11, 2021 at 04:22:15PM +0200, Ahmad Fatoum wrote:
> Like in the two lines following it, the rk3568_bl31_v1.24.elf
> firmware's top level directory is bin/.
> 
> Checked against 7d631e0d5b2d ("rk3568: bl31: update version to v1.24").
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  Documentation/boards/rockchip.rst | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/Documentation/boards/rockchip.rst b/Documentation/boards/rockchip.rst
> index 9c1b8ef200dd..d52d979cbf2a 100644
> --- a/Documentation/boards/rockchip.rst
> +++ b/Documentation/boards/rockchip.rst
> @@ -59,7 +59,7 @@ The build process needs three binary files which have to be copied from the
>  `rkbin https://github.com/rockchip-linux/rkbin` repository to the barebox source tree:
>  
>  .. code-block:: sh
> -  cp $RKBIN/rk35/rk3568_bl31_v1.24.elf firmware/rk3568-bl31.bin
> +  cp $RKBIN/bin/rk35/rk3568_bl31_v1.24.elf firmware/rk3568-bl31.bin
>    cp $RKBIN/bin/rk35/rk3568_bl32_v1.05.bin firmware/rk3568-op-tee.bin
>    cp $RKBIN/bin/rk35/rk3568_ddr_1560MHz_v1.08.bin arch/arm/boards/rockchip-rk3568-evb/sdram-init.bin
>  
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

