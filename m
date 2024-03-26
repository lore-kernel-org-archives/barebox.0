Delivery-date: Tue, 26 Mar 2024 13:35:43 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rp61n-005Ezd-11
	for lore@lore.pengutronix.de;
	Tue, 26 Mar 2024 13:35:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rp61m-0007Lv-Om
	for lore@pengutronix.de; Tue, 26 Mar 2024 13:35:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ppXxd3kQuW+0HZUBaaQIg2Sg/Rb74B4FQwwwZl9tkx4=; b=ELhW0VOA4U8EIUD+oE7uoLIFMK
	om10FJtKYh2CzogIXvRTuh1UJbgwAsu5FLlpUGbzI4buHacwqRaZPgihVqdkFJYlcgKUho3VKinKV
	OBNgcwCpYe2i8mMKYK6qQvui4SrnhM7rZZ2hSO2keW4E1r86iPEaLcCBHNxD/NQ2s9AhTzxpK9yaS
	wSFUSeFQiRLiRU+je0/fdHTD8Cc9LidJgnmJJ8nxv8ocQgVCMOuIVwVY6aKurePxAh/4XipeQ0gUB
	pZH7APBn+pbyddbtRixPA2bjKK7f0ZTsWm0FBFo7b61Le8Ll9CgVntk4WrZjVMgSjZo/QSrOjC8x1
	TP1tmRxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rp610-00000004UEC-2rWQ;
	Tue, 26 Mar 2024 12:34:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rp60x-00000004UD0-3xWX
	for barebox@lists.infradead.org;
	Tue, 26 Mar 2024 12:34:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rp60w-0006ub-8L; Tue, 26 Mar 2024 13:34:50 +0100
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rp60v-008cOV-SC; Tue, 26 Mar 2024 13:34:49 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rp60v-0004FE-2Y;
	Tue, 26 Mar 2024 13:34:49 +0100
Date: Tue, 26 Mar 2024 13:34:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <ZgLA6SyzyB8aBGJE@pengutronix.de>
References: <20240326-worktree-barebox-bosch-be-ppm4-v1-0-7ea75c487348@pengutronix.de>
 <20240326-worktree-barebox-bosch-be-ppm4-v1-2-7ea75c487348@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240326-worktree-barebox-bosch-be-ppm4-v1-2-7ea75c487348@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240326_053452_003479_4A9FCED9 
X-CRM114-Status: GOOD (  20.46  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/2] mci: arasan: fix build for non-ZynqMP
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Mar 26, 2024 at 12:50:42PM +0100, Steffen Trumtrar wrote:
> Registering sdclk only makes sense on the ZynqMP architecture. Guard
> calling the function with a IS_ENABLED()
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
>  drivers/mci/arasan-sdhci.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/mci/arasan-sdhci.c b/drivers/mci/arasan-sdhci.c
> index f01396d7ee..b7dd98049f 100644
> --- a/drivers/mci/arasan-sdhci.c
> +++ b/drivers/mci/arasan-sdhci.c
> @@ -772,7 +772,8 @@ static int arasan_sdhci_probe(struct device *dev)
>  
>  	mci->f_min = 50000000 / 256;
>  
> -	arasan_sdhci_register_sdclk(&arasan_sdhci->clk_data, clk_xin, dev);
> +	if (IS_ENABLED(CONFIG_ARCH_ZYNQMP))
> +		arasan_sdhci_register_sdclk(&arasan_sdhci->clk_data, clk_xin, dev);

CONFIG_ARCH_ZYNQMP being enabled doesn't necessarily mean the code
actually runs on Zynqmp. Does this need a runtime check for other
architectures?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


