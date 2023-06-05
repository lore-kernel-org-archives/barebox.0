Delivery-date: Mon, 05 Jun 2023 16:18:05 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6B26-00Brd8-Fd
	for lore@lore.pengutronix.de; Mon, 05 Jun 2023 16:18:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6B24-0003Al-2Q
	for lore@pengutronix.de; Mon, 05 Jun 2023 16:18:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OrgOir9c65rrFKR5rFv33joyGH8URBX11T7CWV3UJd4=; b=GeczKm2TlxFIPOElFjuLXsjX3i
	eEKZwPgCSa7SRWloid2fZk8uMrJq5cKBfOa/T5LVSQ+zpD5AhdXD/3to6pJPVrzPKIFq6IuPsRjb7
	KQj4YD3y2GqdtqVRA7f06+4ejNcfDGEC2Jt1Y8O/of1m3u74g1gkMtyyvRW8xI4ibIfN0aZCH05XE
	VVs4KGzfXM32IXjbAxJxlWes4Z3L4jlfQCUXTkvz65g0FZEh81GKB5qFq8Bc5LXYgdGnliWudgodM
	1WukkPhoQWaM07I5aZHJgg69ry/BFMc/QTIMD6orJBEIxATMKyhC6V1z7znqGmi/gWFQ6WgDkPg14
	FRLdNmnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6B0r-00Fl3w-0W;
	Mon, 05 Jun 2023 14:16:49 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6B0o-00Fl2m-0q
	for barebox@lists.infradead.org;
	Mon, 05 Jun 2023 14:16:47 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q6B0j-00034V-Sr; Mon, 05 Jun 2023 16:16:41 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q6B0j-0000Cw-Kp; Mon, 05 Jun 2023 16:16:41 +0200
Date: Mon, 5 Jun 2023 16:16:41 +0200
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <20230605141641.GS18491@pengutronix.de>
References: <20230602110746.697121-1-mkl@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230602110746.697121-1-mkl@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230605_071646_300793_71D4DCF7 
X-CRM114-Status: GOOD (  18.88  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] ARM: dts: InnoComm: fix node address of environment
 partitions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Jun 02, 2023 at 01:07:46PM +0200, Marc Kleine-Budde wrote:
> Fixes: e190e932b918 ("ARM: i.MX8MM: add InnoComm WB15 support")
> Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
> Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
> ---
>  arch/arm/dts/imx8mm-innocomm-wb15-evk.dts | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/dts/imx8mm-innocomm-wb15-evk.dts b/arch/arm/dts/imx8mm-innocomm-wb15-evk.dts
> index 8808441b6094..907d9c96baa6 100644
> --- a/arch/arm/dts/imx8mm-innocomm-wb15-evk.dts
> +++ b/arch/arm/dts/imx8mm-innocomm-wb15-evk.dts
> @@ -34,7 +34,7 @@ partition@0 {
>  			reg = <0x0 0x0 0x0 0x100000>;
>  		};
>  
> -		env_sd1: partition@e0000 {
> +		env_sd1: partition@100000 {
>  			label = "barebox-environment";
>  			reg = <0x0 0x100000 0x0 0x100000>;
>  		};
> @@ -52,7 +52,7 @@ partition@0 {
>  			reg = <0x0 0x0 0x0 0x100000>;
>  		};
>  
> -		env_sd2: partition@e0000 {
> +		env_sd2: partition@100000 {
>  			label = "barebox-environment";
>  			reg = <0x0 0x100000 0x0 0x100000>;
>  		};
> -- 
> 2.39.2
> 
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


