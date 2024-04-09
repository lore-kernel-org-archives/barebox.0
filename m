Delivery-date: Tue, 09 Apr 2024 15:06:40 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ruBBQ-004Vil-0P
	for lore@lore.pengutronix.de;
	Tue, 09 Apr 2024 15:06:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ruBBP-0000oC-HU
	for lore@pengutronix.de; Tue, 09 Apr 2024 15:06:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=olNtimPyZZxSmU/iY4xjdxyvBjDHzKYoI+WM6TguAjQ=; b=YvtWXihwFZaqAPBMpKfE03pKMS
	h95QheQHAxF/t1j/Etp9o8u5JEObS5hA+7f7zW3h8wGeCrUKj7xFBaY2uFIidayGyj8sogPS9yB+4
	kbhibolTkjLh1QkdMkI+1Z9pAarXAdV6p/DewVK9z5R2J2irGMqWyX1iAZJw2mUQtekWtG+QYvYSH
	32gOMMgUYw6rW2mw0WB11vfIfLCkmwGbOGsVT9HSujyXuREb06988BCocABDTjQh89YV6asGbavEq
	h0xi9gEKPXnHrsZz4SCH2sM77koMGg6J6IDKsbxRAHh7azGefCTqDxeyf5l1vKxuOfZAc0U+vgAXw
	39pGursQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruBAw-000000023Nj-0R1m;
	Tue, 09 Apr 2024 13:06:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruBAt-000000023LP-05WL
	for barebox@lists.infradead.org;
	Tue, 09 Apr 2024 13:06:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ruBAq-0000bc-5Z; Tue, 09 Apr 2024 15:06:04 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1ruBAp-00BJBt-P6; Tue, 09 Apr 2024 15:06:03 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1ruBAp-004SqP-2E;
	Tue, 09 Apr 2024 15:06:03 +0200
Date: Tue, 9 Apr 2024 15:06:03 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <ZhU9OyY4Tl_RCLbX@pengutronix.de>
References: <20240409-v2024-03-0-topic-arasan-fixes-v1-1-abdd8501b311@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240409-v2024-03-0-topic-arasan-fixes-v1-1-abdd8501b311@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240409_060607_081813_146B38F1 
X-CRM114-Status: GOOD (  25.22  )
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] mci: arasan: rework register_sdclk
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Apr 09, 2024 at 07:57:20AM +0200, Steffen Trumtrar wrote:
> Instead of guarding this at compile time, always call register_sdclk
> with the correct clk_ops, like in linux.
> 
> Currently only ZynqMP and default arasan ops are supported.
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
> Instead of guarding the zynqmp functions at compile time and introducing
> possible run-time problems, copy more of the linux driver and add
> soc-specific clk_ops.
> 
> As the zynqmp_pm_* functions are only defined for ARCH_ZYNQMP we need to
> add stub function definitions for other platforms that might use the
> arasan-sdhci driver.
> ---
>  drivers/mci/arasan-sdhci.c            | 53 ++++++++++++++++++++++++-----------
>  include/mach/zynqmp/firmware-zynqmp.h | 11 ++++++++
>  2 files changed, 47 insertions(+), 17 deletions(-)
> 
> diff --git a/drivers/mci/arasan-sdhci.c b/drivers/mci/arasan-sdhci.c
> index b7dd98049f..5187dbe468 100644
> --- a/drivers/mci/arasan-sdhci.c
> +++ b/drivers/mci/arasan-sdhci.c
> @@ -65,6 +65,8 @@ struct arasan_sdhci_host {
>  	struct mci_host		mci;
>  	struct sdhci		sdhci;
>  	unsigned int		quirks; /* Arasan deviations from spec */
> +	const struct clk_ops	*sdcardclk_ops;
> +	const struct clk_ops	*sampleclk_ops;
>  	struct sdhci_arasan_clk_data clk_data;
>  /* Controller does not have CD wired and will not function normally without */
>  #define SDHCI_ARASAN_QUIRK_FORCE_CDTEST		BIT(0)
> @@ -352,7 +354,7 @@ static void arasan_dt_read_clk_phase(struct device *dev,
>   *
>   * Return: 0 on success and error value on error
>   */
> -static int arasan_zynqmp_sampleclk_set_phase(struct clk_hw *hw, int degrees)
> +static __maybe_unused int arasan_zynqmp_sampleclk_set_phase(struct clk_hw *hw, int degrees)

Dropped this unnecessary __maybe_unused here...

> -static int arasan_zynqmp_sdcardclk_set_phase(struct clk_hw *hw, int degrees)
> +static __maybe_unused int arasan_zynqmp_sdcardclk_set_phase(struct clk_hw *hw, int degrees)

...and here while applying.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


