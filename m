Delivery-date: Tue, 24 May 2022 11:04:50 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ntQTB-007N5d-UK
	for lore@lore.pengutronix.de; Tue, 24 May 2022 11:04:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ntQT8-0000CL-Tv
	for lore@pengutronix.de; Tue, 24 May 2022 11:04:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GB7DUu01f7TCKbssbXSclmU7tukIcy7UKCLI568Gs2k=; b=JZ3CsnaG0jtbhl
	xvZhKZYoLOOYO0ikbCeHQqScmBM09pE3/aOItg6sZcUEh6HpD0jpiv1mKvw8/SoEiNKIGWNGYtjXK
	e+P1ja1Isod5PtLO/eDBlmb+yz6GAJLrtUTgx3Vq3TW7PD/jB8SnyRsHt9WAWKRnnlErTJehEfeif
	2NU8+Qq44vRacS0q5+ozj4c5HpPDVhHrN3uOdC+nBbRvq3SEhSm0af5y3tHMKPQl1qFWDmWgDdf4H
	IY+tfq/E2tFnVIT2tg2b8AMTsOKZA5yERhUD/LIothQq2ZJd2j6u4FueJINWh4E5K6p4P+0yy1HzO
	7q+Y1sTEamzP2o9Eqiqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ntQRl-007Mdd-3L; Tue, 24 May 2022 09:03:21 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ntQRg-007MdK-NO
 for barebox@lists.infradead.org; Tue, 24 May 2022 09:03:17 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1ntQRf-00008A-3H; Tue, 24 May 2022 11:03:15 +0200
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1ntQRe-0008EF-Qh; Tue, 24 May 2022 11:03:14 +0200
Date: Tue, 24 May 2022 11:03:14 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20220524090314.sdb3tt6jhtjpmm6o@pengutronix.de>
References: <20220524073048.18467-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220524073048.18467-1-eagle.alexander923@gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220524_020316_794113_41DBFDC9 
X-CRM114-Status: GOOD (  15.64  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: DTS: myir-x335x: Add GPIO aliases
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 22-05-24, Alexander Shiyan wrote:
> For the correct work of GPIO driver, we need to define aliases.
> Let's add them to the devicetree.
> 
> Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
> ---
>  arch/arm/dts/am335x-myirtech-myd.dts | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/arch/arm/dts/am335x-myirtech-myd.dts b/arch/arm/dts/am335x-myirtech-myd.dts
> index 6ec65e533d..1ea0f2a440 100644
> --- a/arch/arm/dts/am335x-myirtech-myd.dts
> +++ b/arch/arm/dts/am335x-myirtech-myd.dts
> @@ -6,6 +6,13 @@
>  #include <arm/am335x-myirtech-myd.dts>
>  
>  / {
> +	aliases {
> +		gpio0 = &gpio0;
> +		gpio1 = &gpio1;
> +		gpio2 = &gpio2;
> +		gpio3 = &gpio3;
> +	};

Out of curiousity, are those aliases not defined in the "upstream" linux
device-tree? If not, wouldn't it be better to defined it there?

Regards,
  Marco

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

