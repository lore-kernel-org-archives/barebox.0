Delivery-date: Tue, 15 Jul 2025 08:28:17 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ubZ9F-0003TS-1C
	for lore@lore.pengutronix.de;
	Tue, 15 Jul 2025 08:28:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ubZ9E-0007mK-OX
	for lore@pengutronix.de; Tue, 15 Jul 2025 08:28:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6a+Ddpl6hGqinygYHDfS+cYiaVhBF6ZsLP3/pmuKdC4=; b=cKh41Bg1tIdpp6K7mVeoTh48qL
	z1+qepyAHiY9JL3hV3tf9VjXCf9yGQHTDVksQnq80OwKrX0/NXRhHD1xOu6W+CSrhRrYWk+5Tuulb
	oKXxM+Ft0KPMMYnTQ3vzdEg7kPAsICWtu7UB4C9WgoQ4TF6LiVWuGTrzB8UvJDe3HqYAo9XhLQsva
	r5lQKTt/aJMZcU0YBos76O4Fwx71ERFcdOh4Ak/Zv7XIE9J3Qy6hn1LP3vwvtwm4946IyO0aq5Px9
	Ytmh+ENZ1Ac5AKp1IgGPlDyv+sKbtxSX99GEUQBP3TTup/Z+wA5dDAv0Kpm3xcq2Vditb7CAbjJ2u
	hzJsghGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubZ8X-00000004CcW-46eA;
	Tue, 15 Jul 2025 06:27:33 +0000
Received: from smtp1-g21.free.fr ([2a01:e0c:1:1599::10])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubZ6Z-00000004CRi-30mH
	for barebox@lists.infradead.org;
	Tue, 15 Jul 2025 06:25:33 +0000
Received: from [IPV6:2a01:e0a:efa:53b0:468a:5bff:fe9a:3c4d] (unknown [IPv6:2a01:e0a:efa:53b0:468a:5bff:fe9a:3c4d])
	by smtp1-g21.free.fr (Postfix) with ESMTP id 687F3B00576;
	Tue, 15 Jul 2025 08:25:28 +0200 (CEST)
Message-ID: <52478a91-2052-4205-b4fb-18480781db40@trabucayre.com>
Date: Tue, 15 Jul 2025 08:25:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Ahmad Fatoum <a.fatoum@barebox.org>, barebox@lists.infradead.org
Cc: Gwenhael Goavec-Merou <gwenhael.goavec-merou@trabucayre.com>
References: <20250714071249.2428110-1-a.fatoum@barebox.org>
 <20250714071249.2428110-2-a.fatoum@barebox.org>
Content-Language: en-US
From: Gwenhael Goavec-Merou <gwenj@trabucayre.com>
In-Reply-To: <20250714071249.2428110-2-a.fatoum@barebox.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250714_232532_086788_B0578296 
X-CRM114-Status: GOOD (  13.48  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/2] ARM: zynq: drop the board-specific environment
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

Le 14/07/2025 à 9:12 AM, Ahmad Fatoum a écrit :
> The Linux device tree hardcodes per DT alias (since 2015) the
> stdout-path to uart1, not uart0 and thus the Linux TTY device is called
> ttyPS0 and not ttyPS1.
> 
> With previous changes to the serial driver to fix up the console device,
> hardcoding this option is no longer needed, so drop it along with its
> environment overlay that's now empty.
> 
> Reported-by: Gwenhael Goavec-Merou <gwenhael.goavec-merou@trabucayre.com>
> Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
> ---
>   arch/arm/boards/avnet-zedboard/env/nv/linux.bootargs.console | 1 -
>   arch/arm/configs/zynq_defconfig                              | 2 +-
>   2 files changed, 1 insertion(+), 2 deletions(-)
>   delete mode 100644 arch/arm/boards/avnet-zedboard/env/nv/linux.bootargs.console
> 
> diff --git a/arch/arm/boards/avnet-zedboard/env/nv/linux.bootargs.console b/arch/arm/boards/avnet-zedboard/env/nv/linux.bootargs.console
> deleted file mode 100644
> index 6c9f9dabcf1b..000000000000
> --- a/arch/arm/boards/avnet-zedboard/env/nv/linux.bootargs.console
> +++ /dev/null
> @@ -1 +0,0 @@
> -console=ttyPS1,115200
> diff --git a/arch/arm/configs/zynq_defconfig b/arch/arm/configs/zynq_defconfig
> index 1a1378d3e079..752068f69196 100644
> --- a/arch/arm/configs/zynq_defconfig
> +++ b/arch/arm/configs/zynq_defconfig
> @@ -17,7 +17,7 @@ CONFIG_BOOTM_VERBOSE=y
>   CONFIG_BOOTM_INITRD=y
>   CONFIG_BOOTM_OFTREE=y
>   CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
> -CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/avnet-zedboard/env"
> +CONFIG_DEFAULT_ENVIRONMENT_PATH=""
>   CONFIG_DEBUG_LL=y
>   CONFIG_LONGHELP=y
>   CONFIG_CMD_MEMINFO=y
Tested-by: Gwenhael Goavec-Merou <gwenhael.goavec-merou@trabucayre.com>

Thanks

Gwen


