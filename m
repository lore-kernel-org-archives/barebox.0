Delivery-date: Thu, 07 May 2026 10:12:44 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKtqf-001tkd-0y
	for lore@lore.pengutronix.de;
	Thu, 07 May 2026 10:12:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKtqa-0002RD-Nn
	for lore@pengutronix.de; Thu, 07 May 2026 10:12:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hTolHFV4DtE3HWld37HFPQ/CoEf1iAynC/0WFuXmYj0=; b=Fw4zA6Q5GBO3iho+FoHX6Pn+jr
	Nfd4HufNKZAgxHe6Rk0301Wzr8TGtAk0owSaZO4TCmNJexA9KQbxq9KGKORiILoH4QfDviOkVe1jp
	UEjlIHTkn/6EPBGASpDSoMwovKglzc8d8xtNpGQgVSvgVIVuPim/4HKkflRp3rcV0E5Qkuh1/2jvi
	iY9NosbvX9aDgnI0nATVnKo7j2R44Wt3SmazrM23DilC27kGaaCs12CO8Q9/sHk0KQQ90E+lVSuPG
	TyDHa0jqMM/CVlII9kN4PtWm7GVB8zW8lQmYXdcZzx372v0+25sPU0hlcIVIZELgRW6I9LvCA6jXf
	tWfJjqqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKtoR-000000036iz-0wVU;
	Thu, 07 May 2026 08:10:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKtoO-000000036ie-0e1u
	for barebox@lists.infradead.org;
	Thu, 07 May 2026 08:10:25 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wKtoM-000139-FN; Thu, 07 May 2026 10:10:22 +0200
Message-ID: <b5f84677-b583-40dc-8cbb-3b033e7b6b95@pengutronix.de>
Date: Thu, 7 May 2026 10:10:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
References: <20260507-rockchip-emmc-v1-0-5e8109e8059d@pengutronix.de>
 <20260507-rockchip-emmc-v1-2-5e8109e8059d@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260507-rockchip-emmc-v1-2-5e8109e8059d@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260507_011024_202512_82290443 
X-CRM114-Status: UNSURE (   9.59  )
X-CRM114-Notice: Please train this message.
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
Subject: Re: [PATCH 2/6] mci: sdhci: rockchip: disable clock while setting DLL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 5/7/26 9:02 AM, Sascha Hauer wrote:
> sdhci_set_clock() enabled the clock. Linux explicitly disables the clock
> after that is called and before the DLL is configured. Do likewise in barebox.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> +enable_clock:
> +	sdhci_enable_clk(&host->sdhci, 0);
> +
> +	return;

Nit: Redundant return

>  }
>  
>  static void rk_sdhci_set_ios(struct mci_host *mci, struct mci_ios *ios)
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



