Delivery-date: Thu, 22 Sep 2022 10:15:27 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1obHMl-00C1ds-Cw
	for lore@lore.pengutronix.de; Thu, 22 Sep 2022 10:15:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1obHMj-0001wg-BH
	for lore@pengutronix.de; Thu, 22 Sep 2022 10:15:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=isJ0ChP7V6Opbuywm+wUje6SnyDJVP5BCeqI0VQCg7s=; b=jMGLyscK/7TCMRhkNukjM1QXYh
	0hvJsqukuxndOjW5jxEYz+GsALlGDGVhlU3ClWQ/F+D4CQJR0/ftGiW/sIsdLDeGRVl1Is73fKUvU
	2baEhang0m4Ntz3mxReZPw59GeI2Bk/xgQaCH3YhTLN7a/iM6q1880FfLpYK6vjKPHqcaP2YINx5M
	o7PmIdIFJ2royi0aqlgn/ngD+8iqKlguq9KR0CyQNRq9CMoGSrNZp2041NPVWIgTA6jbhxMwxZ9wU
	MQsbzgSgsDfKUaXAf0sAUnb7DJQU4GA8tMRbXIU32PBzuSPe5DMWtc7AqxWE8ta5MeP06saF/biV8
	z4ECck5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obHLE-00E38R-R7; Thu, 22 Sep 2022 08:13:52 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obHL9-00E36K-AS
	for barebox@lists.infradead.org; Thu, 22 Sep 2022 08:13:49 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1obHL5-0001Pc-D2; Thu, 22 Sep 2022 10:13:43 +0200
Message-ID: <d4e9f025-4327-2370-89f1-ad79d72e62af@pengutronix.de>
Date: Thu, 22 Sep 2022 09:13:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
To: Sascha Hauer <sha@pengutronix.de>,
 Michael Riesch <michael.riesch@wolfvision.net>
Cc: barebox@lists.infradead.org, Frank Wunderlich <frank-w@public-files.de>
References: <20220919113948.991245-1-michael.riesch@wolfvision.net>
 <20220919113948.991245-2-michael.riesch@wolfvision.net>
 <20220921094649.GC986@pengutronix.de>
 <223f9b7c-a95a-7847-503d-e51cb2abaf64@wolfvision.net>
 <20220922080329.GG986@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220922080329.GG986@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220922_011347_395852_D2077CD4 
X-CRM114-Status: GOOD (  46.45  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 1/7] soc: rockchip: add driver for rockchip io domains
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

On 22.09.22 09:03, Sascha Hauer wrote:
> On Wed, Sep 21, 2022 at 01:49:49PM +0200, Michael Riesch wrote:
>> Hi Sascha,
>>
>> On 9/21/22 11:46, Sascha Hauer wrote:
>>> On Mon, Sep 19, 2022 at 01:39:42PM +0200, Michael Riesch wrote:
>>>> The IO domains in Rockchip SoCs need to be configured to match the
>>>> corresponding bank voltage. In Linux this is achieved by means of a
>>>> platform driver that reads the voltage value of the supplies and
>>>> configures the bits in the general register file (GRF) accordingly.
>>>> Port this driver to barebox to provide support for the Rockchip
>>>> RK356x SoCs.
>>>>
>>>> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
>>>> ---
>>>>  drivers/soc/Kconfig              |   1 +
>>>>  drivers/soc/Makefile             |   1 +
>>>>  drivers/soc/rockchip/Kconfig     |  17 +++
>>>>  drivers/soc/rockchip/Makefile    |   6 +
>>>>  drivers/soc/rockchip/io-domain.c | 223 +++++++++++++++++++++++++++++++
>>>>  5 files changed, 248 insertions(+)
>>>>  create mode 100644 drivers/soc/rockchip/Kconfig
>>>>  create mode 100644 drivers/soc/rockchip/Makefile
>>>>  create mode 100644 drivers/soc/rockchip/io-domain.c
>>>
>>> There's nothing in this driver that makes sure it is probed before the
>>> users of the io domains. What happens when the users are probed before
>>> the io domain driver?
>>
>> Correct. Unfortunately, the situation is quite the same in the kernel.
>> Only recently there was a discussion as to how to resolve this issue
>> [0]. While the RFC in [0] was received well there is no mainline
>> solution to this problem. I would suggest that the mainline kernel
>> solution is adopted once there is one.
>>
>> In the mean time we could
>>  - accept that it just works for some reason (TM)
>>  - leave the magic bits in the low-level initialization to be on the
>>    safe side
> 
> Decided for this solution for now.
> 
> I added the following as a reminder that there's still something
> to do.

Why not do an of_device_ensure_probed for the I/O domain driver in
rk3568_init()?

> 
> Sascha
> 
> ---------------------------8<---------------------------
> 
> From 502c4e819b80a6ccaefbce4af4c55b830b7e2c73 Mon Sep 17 00:00:00 2001
> From: Sascha Hauer <s.hauer@pengutronix.de>
> Date: Thu, 22 Sep 2022 09:56:57 +0200
> Subject: [PATCH] ARM: Rockchip: Add FIXME comment to io domain setup
> 
> We have a io-domain driver for rockchip boards which correctly
> configures the io domain voltages, but currently there is no way
> to make sure the io-domain driver is probed before its consumers.
> 
> To be on the safe side keep the io domain setup in the lowlevel code
> for now, but add a comment that it should be removed once this issue
> is resolved.
> 
> To solve this issue we need a phandle from the consumers to the io
> domain node. We could add this in barebox locally, but decided to
> wait until the upstream dts files have them.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/boards/radxa-rock3/lowlevel.c               | 4 ++++
>  arch/arm/boards/rockchip-rk3568-bpi-r2pro/lowlevel.c | 4 ++++
>  arch/arm/boards/rockchip-rk3568-evb/lowlevel.c       | 4 ++++
>  3 files changed, 12 insertions(+)
> 
> diff --git a/arch/arm/boards/radxa-rock3/lowlevel.c b/arch/arm/boards/radxa-rock3/lowlevel.c
> index 2a449c17ae..a62f60dff8 100644
> --- a/arch/arm/boards/radxa-rock3/lowlevel.c
> +++ b/arch/arm/boards/radxa-rock3/lowlevel.c
> @@ -17,6 +17,10 @@ static noinline void rk3568_start(void)
>  	/*
>  	 * Enable vccio4 1.8V and vccio6 1.8V
>  	 * Needed for GMAC to work.
> +	 * FIXME: This is done by the io-domain driver as well, but there
> +	 * currently is no mechanism to make sure the driver gets probed
> +	 * before its consumers. Remove this setup once this issue is
> +	 * resolved.
>  	 */
>  	writel(RK_SETBITS(0x50), 0xfdc20140);
>  
> diff --git a/arch/arm/boards/rockchip-rk3568-bpi-r2pro/lowlevel.c b/arch/arm/boards/rockchip-rk3568-bpi-r2pro/lowlevel.c
> index f79f975080..4336d99365 100644
> --- a/arch/arm/boards/rockchip-rk3568-bpi-r2pro/lowlevel.c
> +++ b/arch/arm/boards/rockchip-rk3568-bpi-r2pro/lowlevel.c
> @@ -18,6 +18,10 @@ static noinline void rk3568_start(void)
>  	/*
>  	 * set iodomain vccio6 to 1.8V needed for GMAC1 to work.
>  	 * vccio4 (gmac0/switch) needs to stay at 3v3 (default)
> +	 * FIXME: This is done by the io-domain driver as well, but there
> +	 * currently is no mechanism to make sure the driver gets probed
> +	 * before its consumers. Remove this setup once this issue is
> +	 * resolved.
>  	 */
>  	//set bit 6 in PMU_GRF_IO_VSEL0 for vccio6 1v8
>  	writel(RK_SETBITS(BIT(6)), PMU_GRF_IO_VSEL0);
> diff --git a/arch/arm/boards/rockchip-rk3568-evb/lowlevel.c b/arch/arm/boards/rockchip-rk3568-evb/lowlevel.c
> index 363639d21b..9ab436135c 100644
> --- a/arch/arm/boards/rockchip-rk3568-evb/lowlevel.c
> +++ b/arch/arm/boards/rockchip-rk3568-evb/lowlevel.c
> @@ -18,6 +18,10 @@ static noinline void rk3568_start(void)
>  	/*
>  	 * Enable vccio4 1.8V and vccio6 1.8V
>  	 * Needed for GMAC to work.
> +	 * FIXME: This is done by the io-domain driver as well, but there
> +	 * currently is no mechanism to make sure the driver gets probed
> +	 * before its consumers. Remove this setup once this issue is
> +	 * resolved.
>  	 */
>  	writel(RK_SETBITS(0x50), 0xfdc20140);
>  


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


