Delivery-date: Tue, 21 Oct 2025 13:44:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBAmX-00AEjh-1e
	for lore@lore.pengutronix.de;
	Tue, 21 Oct 2025 13:44:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBAmW-0005vF-Vm
	for lore@pengutronix.de; Tue, 21 Oct 2025 13:44:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mIm9C9Ykjbm9hxl3NlKGOlGyZGA9I6yFf+wOWdIdQ6s=; b=MZSIm5caLY3f2S27rkNaAkF+oA
	jBoeNIhlZ8xpbaEEtSa4J+vPEenMryzw7QbpEuDnoqwZVjJZh6XALjrnUknEzp1gpy3+3ZIZbXfwx
	iOeTXWEMkSHykkSPqGafnMSb+I8ZYRqtq/0sBjn0EJVnvQ6HjbQQyyYFJdVNzj9Qan5hyWP29gbGB
	/LmAhcC/4m50J3TSG/3lhhwHAV160K9iltkgkdJRzbC0PAoKm6aKXUiHdFJ5PfVffDYbRPbjJDpyP
	r2gcsYBi9/KqSSlqrq9qlRJTNOkvgRdMfa+ZsVjMCm010aTfwg1k1cEGYIlCNQle+nTvj4x7TTaA5
	nLVfYaoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBAm9-0000000Gnyw-0l3s;
	Tue, 21 Oct 2025 11:43:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBAm5-0000000GnyX-425J
	for barebox@lists.infradead.org;
	Tue, 21 Oct 2025 11:43:35 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vBAm4-0005ny-CG; Tue, 21 Oct 2025 13:43:32 +0200
Message-ID: <f71d6e88-32f7-46ab-97ff-b417848377b3@pengutronix.de>
Date: Tue, 21 Oct 2025 13:43:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Fabian Pflug <f.pflug@pengutronix.de>, barebox@lists.infradead.org
Cc: maud_spierings@hotmail.com
References: <20250527114241.325357-1-f.pflug@pengutronix.de>
 <20251021110149.1151936-1-f.pflug@pengutronix.de>
 <20251021110149.1151936-5-f.pflug@pengutronix.de>
 <22735bfd-c673-45ec-8b98-4bb4ae6cfad0@pengutronix.de>
 <1a4b90c0b61abfc0ea15f81021656d467ecc818a.camel@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <1a4b90c0b61abfc0ea15f81021656d467ecc818a.camel@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251021_044334_003683_00C7D0D1 
X-CRM114-Status: GOOD (  16.96  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 2/2] ARM: boards: i.MX93: Add NXP FRDM i.MX93 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Fabian,

On 10/21/25 1:37 PM, Fabian Pflug wrote:
> Hello Ahmad,
> 
> On Tue, 2025-10-21 at 13:11 +0200, Ahmad Fatoum wrote:
>> Hello Fabian,
>>
>>> +static noinline void frdm_imx93_continue(void)
>>> +{
>>> +	void __iomem *base = IOMEM(MX9_UART1_BASE_ADDR);
>>> +	void __iomem *muxbase = IOMEM(MX9_IOMUXC_BASE_ADDR);
>>> +
>>> +	/* configure LPUART1 TX pin */
>>> +	writel(0x0, muxbase + 0x184);
>>> +
>>> +	imx9_uart_setup(base);
>>> +	pbl_set_putc(lpuart32_putc, base + 0x10);
>>> +	putchar('>');
>>
>> Do you see the > character on bootup if CONFIG_PBL_CONSOLE is enabled?
>> Maud (Cc'd) mentioned on the IRC that the 0x10 offset shouldn't be
>> necessary.
>>
> 
> I did see the > character with (working with a 2025.07.0 barebox here):

Ok, good to know.


> But there seems to be another Problem. If I enable
> 
> CONFIG_DEBUG_LL=y
> CONFIG_DEBUG_IMX_UART=y
> CONFIG_DEBUG_IMX8M_UART=y
> CONFIG_DEBUG_IMX_UART_PORT=1
> CONFIG_DEBUG_PBL=y

Given that you are using the i.MX9's LPUART, I think it's expected that
DEBUG_LL misbehaves. PBL output works, because the PBL console has
precedence over DEBUG_LL.

Cheers,
Ahmad

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



