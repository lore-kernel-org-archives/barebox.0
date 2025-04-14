Delivery-date: Mon, 14 Apr 2025 13:51:51 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4ILv-000cxO-1A
	for lore@lore.pengutronix.de;
	Mon, 14 Apr 2025 13:51:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4ILu-00075a-M8
	for lore@pengutronix.de; Mon, 14 Apr 2025 13:51:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=egOi/mJX5LED16NFxsrNrvXmGQjBpBl88z4pNH/Om7w=; b=mfdxXtbL+webPjQ110ere5vMYc
	brVWalwmjEWipNAZ7EISHSZyzUt+8fB2BbGLKotmFTFl++kht3H87yeTBa/a99Urn0uIVSHrwVZxq
	LbayltFcDnLGa5PLUkZaU/bSHoXGampSvzUzI+ttq2X7Ki9/E30x5E3N8byBohYHG9b7bExLOgbZh
	o8oYO8jGByxTsB54ENPKD5myujVuUFH/GDrHnwfr3od8XWYPsYG9N2NzSTv2dHGriduPHqGoj7lVc
	9AfHuLVu2+iuGNupiWtuVHCMbLQOohONi/t/tZX9u0N4Bs5nPtvIAbQ9NeryjksSjumnw8P3E3h1Q
	qt/QwuUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4ILV-00000001q9t-2xVK;
	Mon, 14 Apr 2025 11:51:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4ICu-00000001oIN-0OeN
	for barebox@lists.infradead.org;
	Mon, 14 Apr 2025 11:42:33 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u4ICs-0003qD-Qk; Mon, 14 Apr 2025 13:42:30 +0200
Message-ID: <9f905302-9a79-485f-9afa-45e98fa1aa40@pengutronix.de>
Date: Mon, 14 Apr 2025 13:42:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, =?UTF-8?Q?Leonard_G=C3=B6hrs?=
 <l.goehrs@pengutronix.de>
References: <20250411072748.2017367-1-a.fatoum@pengutronix.de>
 <20250411072748.2017367-3-a.fatoum@pengutronix.de>
 <Z_zwJauQq7sEshIw@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <Z_zwJauQq7sEshIw@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250414_044232_132327_244C1E4D 
X-CRM114-Status: GOOD (  25.28  )
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
Subject: Re: [PATCH 2/3] ARM: stm32mp: add Linux Automation TAC board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 4/14/25 13:23, Sascha Hauer wrote:
> On Fri, Apr 11, 2025 at 09:27:47AM +0200, Ahmad Fatoum wrote:
>> Add support for the Linux Automation GmbH Test Automation
>> Controller (TAC). The board boots from eMMC, but requires USB loading if
>> no previous barebox has been put into the eMMC boot partition.
>>
>> Signed-off-by: Leonard Göhrs <l.goehrs@pengutronix.de>
>> Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
>> Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

[snip]

>> +static const int board_rev_pins[] = {0, 1, 2, 3, 6, 7};
>> +
>> +static u32 get_board_rev(void)
>> +{
>> +	u32 board_rev = 0;
>> +
>> +	/* Enable GPIOZ bank */
>> +	setbits_le32(STM32MP15_RCC_MP_AHB5ENSETR, BIT(0));
>> +
>> +	for (size_t i = 0; i < ARRAY_SIZE(board_rev_pins); i++) {
>> +		int pin = board_rev_pins[i];
>> +
>> +		__stm32_pmx_gpio_input(STM32MP15_GPIOZ_BASE, pin);
>> +		board_rev |= __stm32_pmx_gpio_get(STM32MP15_GPIOZ_BASE, pin) << i;
>> +	}
>> +
>> +	return board_rev;
>> +}
> 
> Is this information available during runtime with some pr_* message or
> variable?

No. There is more extensive board revision information in the EEPROM
though, which is indeed available at runtime via the separately
submitted TLV series.

>> +static void noinline select_fdt_and_start(void *fdt)
>> +{
>> +	putc_ll('>');
>> +
>> +	switch (get_board_rev()) {
>> +	case BOARD_GEN1:
>> +		fdt = runtime_address(__dtb_z_stm32mp157c_lxa_tac_gen1_start);
>> +		break;
>> +	case BOARD_GEN2:
>> +		fdt = runtime_address(__dtb_z_stm32mp157c_lxa_tac_gen2_start);
>> +		break;
>> +	case BOARD_GEN3:
>> +		fdt = runtime_address(__dtb_z_stm32mp153c_lxa_tac_gen3_start);
>> +		break;
>> +	}
> 
> This check only matches for minor revision 0. Shouldn't the minor
> version rather be ignored here?

I am not sure if a generation is always equal to the major version - 1.
It seems we have no minor revisions != 0 in the field.

If Leonard (Cc'd) doesn't object, I'll mask away the lower 2 bits for v2.

>> +ENTRY_FUNCTION(start_stm32mp15xc_lxa_tac, r0, r1, r2)
>> +{
>> +	stm32mp_cpu_lowlevel_init();
>> +
>> +	/*
>> +	 * stm32mp_cpu_lowlevel_init sets up a stack. Do the remaining
>> +	 * init in a non-naked function. Register r2 points to the fdt
>> +	 * from the FIT image which can be used as a default.
>> +	 */
> 
> "the fdt from the FIT image" seems to imply that this entry is only used
> as a 2nd state entry, but it's used as a 1st stage entry as well, isn't
> it?

s/FIT/FIP. First stage bootloader is TF-A.

> I would rephrase that to something like "in case of a 2nd stage boot r2
> points to the fdt..."

There is no first stage boot.

Cheers,
Ahmad

> 
> Sascha
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



