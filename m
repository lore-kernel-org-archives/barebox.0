Delivery-date: Tue, 07 Jan 2025 12:17:53 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tV7aq-000IIV-2Q
	for lore@lore.pengutronix.de;
	Tue, 07 Jan 2025 12:17:53 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tV7am-0007H2-Re
	for lore@pengutronix.de; Tue, 07 Jan 2025 12:17:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=W2MrlqPXyg020KaV1wlSfzO1Uzw1QM1Nn0RcnNMgOZ0=; b=Jsj87TsNucjHTM6uiIRyKnK00f
	lA/NHdVZkLAKCBC1f83V4CZpFeMWdwtZh1A5f17SrNPT4ZUdSUnDx+wptW5ccbgCYXH4/7Mb51Mbs
	h4txrO42dkN0UdTrqvugD0UdhL88gVY22/tiJpetnbAHOGyCANBd/zsKheqp6MaHqPoOpnXB4EStm
	Ix9Nl+PsaQWrpIO7Exyg87YIBv6AgTVUPjd5vejW8ib8PC8cIRUh+JXZdCtEuNDlPUjG8DKRPMuQa
	DWZXHTp/ebZLvfP+XsuxhA4/A48Q3G4kBN3tVEYflzdyFL3mixO2YvgkQHyjnCft3ue+q5umDOk0t
	X7w8G+Ww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tV7aA-00000004WBZ-2ImA;
	Tue, 07 Jan 2025 11:17:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tV7a5-00000004WAu-2NA5
	for barebox@lists.infradead.org;
	Tue, 07 Jan 2025 11:17:09 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tV7a4-00077p-9P; Tue, 07 Jan 2025 12:17:04 +0100
Message-ID: <76532287-74b7-42ca-860c-b2e6bda8484e@pengutronix.de>
Date: Tue, 7 Jan 2025 12:17:03 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
Cc: barebox@lists.infradead.org
References: <b91eaf6c-9559-466a-bd20-297647401c63@pengutronix.de>
 <Z03A9rr21q320J0t@hephaistos>
 <19923329-f254-435d-9557-5e1b6835b8ec@pengutronix.de>
 <Z09TKeFZaT6InuPX@hephaistos>
 <49df1ec9-aca8-49b0-95fe-d577c5b615db@pengutronix.de>
 <Z098Eor4bedpsol9@hephaistos>
 <f7b92750-f3ec-42d1-aacb-deaa6fb408d9@pengutronix.de>
 <Z1CDcFAPdlDBkGJ5@hephaistos>
 <0125561a-a868-43da-a7d3-4b85540cc78d@pengutronix.de>
 <Z1mnJB8Suz3SNWbI@hephaistos> <Z2VPgRnxah5lc09X@hephaistos>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <Z2VPgRnxah5lc09X@hephaistos>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250107_031705_610869_C2F8B66A 
X-CRM114-Status: GOOD (  21.14  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Reset on Beaglebone Black has become unreliable/broken
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Konstantin,

On 20.12.24 12:05, Konstantin Kletschke wrote:
> I found the minimum change required to make barebox warm restart every
> time I hot S1, write warm restart register, type reset or linux kernel
> reboot.
> I needed to figure out to realize in my yocto the MLO stage is another
> package to test my changes in this vanilla defconfig part carefully.
> 
> My barebox-pbl stage package calls the defconfig am335x_mlo_defconfig, I
> apply only this patch on top on my 2022.04 version:

Thanks for the follow-up.

> diff --git a/arch/arm/boards/beaglebone/lowlevel.c b/arch/arm/boards/beaglebone/lowlevel.c
> index 544e396e03..329d7a9150 100644
> --- a/arch/arm/boards/beaglebone/lowlevel.c
> +++ b/arch/arm/boards/beaglebone/lowlevel.c
> @@ -97,6 +97,12 @@ extern char __dtb_z_am335x_boneblack_start[];
>  extern char __dtb_z_am335x_bone_common_start[];
>  extern char __dtb_z_am335x_bone_start[];
> 
> +static void __udelay(int us)
> +{
> +	volatile int i;
> +	for (i = 0; i < us * 3; i++);
> +}
> +
>  /**
>   * @brief The basic entry point for board initialization.
>   *
> @@ -142,6 +148,7 @@ static noinline int beaglebone_sram_init(void)
>  	omap_uart_lowlevel_init((void *)AM33XX_UART0_BASE);
>  	putc_ll('>');
> 
> +	__udelay(1000);
>  	barebox_arm_entry(0x80000000, sdram_size, fdt);
>  }
> 
> 
> This delay loop (side quest: how do I calculate how long it waits?)

Try multiplying it by 1 000 or 1 000 000 and print a character before
and after and measure this time difference, e.g. with grabserial[0]
or ts(1) and then divide by the factor you first used for multiplication.

[0]: https://elinux.org/Grabserial

> on its own with no changes in CONFIG or debugging or whatsoever
> fixes everything.

If it's indeed just a millisecond, I am in favor of adding this to
barebox upstream with a comment explaining what this fixes, even
if we don't fully understand it yet.

Cheers,
Ahmad

> 
> Regards
> Konstantin
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


