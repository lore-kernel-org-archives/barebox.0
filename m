Delivery-date: Wed, 08 Apr 2026 16:00:08 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wATRw-009xAl-2I
	for lore@lore.pengutronix.de;
	Wed, 08 Apr 2026 16:00:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wATRw-00042j-5R
	for lore@pengutronix.de; Wed, 08 Apr 2026 16:00:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Mmi3PQM6T4aZa9k/l7lzRLgRApCdc0EPwvptvHf0Ogw=; b=MvxsQnx4PzWoHmEUzfpSSj0Xhm
	itlR6oxjjN3Un55oMolAILDbLow998K3uxQkqJRulSMyCy+jAYnrlVsragNx05hWQ5Wjm9TCxza3E
	AO7niuMYJiWxg7GDMbz6x/WjKfsHtsM5Tg7V0VnAu+l/+sU1PFdKbJb3EWQTiLbYkwYFdQtsJMmjc
	DkC8sL0Rbqy6/UXRBTjyZfIJ22yHcJq7srur/uVOCEGd7EzFzbFZx3FqEYbaNSHOhkfDYORarDt7/
	P+N6g53gEW4yFj5Rh+EE+R+iZ0CE9FG8A67RUVqsJd3LjnAqRg6dMJzVwpYcRkVTywpd3Z5ZGMAtQ
	59lGWMHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wATRS-00000008xcT-03Cy;
	Wed, 08 Apr 2026 13:59:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wATRP-00000008xc1-2JUo
	for barebox@lists.infradead.org;
	Wed, 08 Apr 2026 13:59:37 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wATRN-0003vc-Ev; Wed, 08 Apr 2026 15:59:33 +0200
Message-ID: <56377c59-066d-4e49-a249-0216a9d6629d@pengutronix.de>
Date: Wed, 8 Apr 2026 15:59:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Yunus Taskopru <yunus@protonic.nl>, barebox@lists.infradead.org
References: <20260408121912.1428585-1-yunus@protonic.nl>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260408121912.1428585-1-yunus@protonic.nl>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260408_065935_598159_82D60796 
X-CRM114-Status: GOOD (  19.50  )
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
Subject: Re: [PATCH] ARM: dts: rk3588-rock-5b: use broken-cd for sdmmc
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Yunus,

On 4/8/26 2:19 PM, Yunus Taskopru wrote:
> Using the card-detect GPIO caused SD card access to fail on a tested
> ROCK 5B.
> 
> Replace the card-detect GPIO setup with broken-cd and drop the detect
> pin from the sdmmc pinctrl configuration.
> 
> Signed-off-by: Yunus Taskopru <yunus@protonic.nl>

This sound very similar to commit bd5518cd7e34 ("ARM: rockchip: fix SD
card startup for Radxa ROCK 5T").

Optimally, we would support whatever is needed for the hardware chip
select to work, so we can use the same pinmux as Linux.

Next best thing is that we don't have different workarounds for the same
issue.

Can you check if the workaround in above commit also works for you if
you add it into the ROCK 5b DT?

Thanks,
Ahmad

> ---
>  arch/arm/dts/rk3588-rock-5b.dts | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/arch/arm/dts/rk3588-rock-5b.dts b/arch/arm/dts/rk3588-rock-5b.dts
> index aca675f57f..decece25d4 100644
> --- a/arch/arm/dts/rk3588-rock-5b.dts
> +++ b/arch/arm/dts/rk3588-rock-5b.dts
> @@ -55,6 +55,12 @@ environment_sd: partition@408000 {
>  	};
>  };
>  
> +&sdmmc {
> +	broken-cd;
> +	/delete-property/ cd-gpios;
> +	pinctrl-0 = <&sdmmc_bus4 &sdmmc_clk &sdmmc_cmd>;
> +};
> +
>  &pcie3x4 {
>  	/* Does not work in barebox (missing phy driver) */
>  	status = "disabled";

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



