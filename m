Delivery-date: Fri, 06 Nov 2026 13:21:26 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xPIwf-0080Dp-37
	for lore@lore.pengutronix.de;
	Fri, 06 Nov 2026 13:21:26 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id D12CC202AA8
	for <lore@pengutronix.de>; Fri, 06 Nov 2026 13:21:25 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="KU/tcUWV";
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=HURUUJNM;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793967686;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=dEVDu978aatRnuTQ4R9V275rOM0u5fCoSGoLcpr3x8g=;
	b=W+/q08jfQ4Oj13Fdf7G+uZYVUSbiWcCtV/HDLygRpPfsTobiUTP6rIfKqk8ewABXeksU7K
	JN4BwM+fAu8cVr/C3fGT1tBhBMuMz6N8NsGrWbeKuzxdGr6kbSfv4AsGaZdqXfXjFulZU/
	GTDjBaGyzMDnEn7bPv08fHDY4tiaOvkrCCBMmBhGUezp3XYwZ9rB3XR1DFBdHV42RRo6tx
	jWMn8vt6XlXaL0HuA9D9zhg9bhIRDz6EGX/lef+O7X1X8qAjrsndA5kQlFzgeC90fSTbiR
	L2QdEIpQVZj0mia7sR1EHE3iTnA4I4JMOGvLkIMS/GJHLq7MczE+24Z0wkFR5Q==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="KU/tcUWV";
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=HURUUJNM;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793967686; a=rsa-sha256;
	cv=pass;
	b=BNzwYJDFLJlO70+zMm0wqRfMEAXdz/qV8JsZFqIS5jTdYiiSY6d6mWQ9JqFborEDIlDiw+
	NGDYbtq/sXr4IDyygCNqRYhazBMuvRX5DBvYxmOsIOS7UltAe2RcPSWrSYI1cxtXehFAjW
	LyycCbeGke6mEHgF3y/tq/lRi6nBTLSw56dCmPJ4HX/ofw0DaAJ6Jan3VagOM/eQPyBxaI
	oXApyIKQHAy918BQXWLbSIVxb6jPKLGdjmRkijLJ6yWH5Fp69CN+KO3T3ebpqN0p4cqGwU
	46layv77QcS1J9H+pKnIoZoKt+ht4Q2jTk0e/9rzvUrZ+jiFYQ8QHmscKGBwqw==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:References:To:From:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=dEVDu978aatRnuTQ4R9V275rOM0u5fCoSGoLcpr3x8g=; b=KU/tcUWVXnPJZd
	01F8/qJV048BgTcz30dKUiZ43DAmGhLwNDTfFqTFUJZqyS3PnulOfitVf9L+rhQn4UOmeZ4R5DeR6
	/et++vxylSPbvygLSjj4SJObc7C1WDERvjA6W27ok0QcTMJsv3jG+p5PzIfICbX4fRYUE2KXcSnWw
	lUqrtMVmECAKYhAlcttN3V+wtmB8lXFiOT2mRfuCPPzaBAf1i39fZMRXQ34Fxpx7gdINyH1BeAV+B
	kak5rYFQM4HIdKDmBkmstKmOb6cuFZsnVq9rGWlkD3oueS1dkfnlnvdKs4mHCWP+M1BA9fyZHsXTH
	RmRSenFaPCUhOVzee6cQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPIvV-0000000CI7R-0DgS;
	Fri, 06 Nov 2026 12:20:13 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPIvR-0000000CI6m-1uHA
	for barebox@lists.infradead.org;
	Fri, 06 Nov 2026 12:20:11 +0000
Received: from [0.0.0.0] (ptz.office.stw.pengutronix.de [IPv6:2a0a:edc0:0:900:1d::77])
	(Authenticated sender: afa@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 796452000A8;
	Fri, 06 Nov 2026 13:20:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793967607;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=dEVDu978aatRnuTQ4R9V275rOM0u5fCoSGoLcpr3x8g=;
	b=HURUUJNMaTrzqUpfgzybvyy7dcxeA4QJ+GYSIqR5t5kSp90XqyUr93W7mbBJTX8Yj0Gp8z
	3G7oBFASu7lUgOJQbJq8yapPThyCEZvhqkVYoxS2g7NzfkVAYMAqUyt9VmdD98DEVWOK80
	5jFr4AgU5RQrYAdOTY9M/YFhM1JJJHsLPer4AswYyYH1Kw0InZqkR/6hys62Zkh5GOGXjx
	CAuMnzbkRH33zcnGiEi9FjVKloYYGV/dieIuxGC2jII/kxPnPug+LA+5gsWnh9GPfhi6B+
	zNL6c1oQEuPWINgaTqMeDHHYDaRTRAl7CnVhzOoLOs2h9rRDuUHsYQwqUbTRYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793967607;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=dEVDu978aatRnuTQ4R9V275rOM0u5fCoSGoLcpr3x8g=;
	b=EagRwlfA9iUMJqiaTOyVyPyLxgQ27DxRmxPDp+UNy7IrBjg+jWYH2TLz9+9Obo6jKrk2/X
	iwpAcphyMq9BHLXaFlOuEN2wud//6ULQSvk1544On3irot8Sk4ZpPsazZaCuM65LtqWora
	qBI2AWbOH2ImBSSdhYINJy47xgfwbVeGJjrG3IvS/FAeZujhd7b3k5TwemXBAm2X5QgCfu
	NYLKVv043hqFs+r+u0XmSYMggpzrIQ6bUgFJ66fXeBy5MybNWH8Xj0lskHRlI8JjtGLjOC
	JnwulivPzP3R1hdt3wDcRTDJJscwXicfpeF02+fX1SgwevUg/QmPn9xDUyuGOQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=afa@pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793967607; a=rsa-sha256;
	cv=none;
	b=BXHsQNDxlWTFK7y4ZYSAzCzVFef1Myx6I6jrQ7DlZceuFSefiYnQX9MnoXW/eYcGif6lqd
	B6NuRlzdADK0kFdL/inSwzw3FcUBUXBozRhl1yb+m9ZEBPmEsbiF48bFsLYZSpavA6sjn8
	r0kdMkiVRi2xD0OSNtgjAWyPM35ChjYwq5UBadU6jY5tZuf4hiA1k4+u2i4/EBh76afj8E
	Opc5gYxqhy0kbqWCk8mqpgkXGFF+TR7lgKFV4vLk+Bnqk3aY2JUQANsiovqiRO9bp8PR8b
	HhBLLl/G6afIyv9oxjSC0bivTvrPwV0Zireg34wtWQRFnXxK0wDO/1/9q+wgVg==
Message-ID: <bcb73947-c251-495f-bcc9-3633649de435@pengutronix.de>
Date: Fri, 6 Nov 2026 13:20:07 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC] ARM: at91: sama5d3: Migrate to MFD-based SMC driver
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: Alexander Shiyan <eagle.alexander923@gmail.com>,
 barebox@lists.infradead.org
References: <20250624091510.28947-1-eagle.alexander923@gmail.com>
 <CAP1tNvTuhdM4Yn206NrWyG+nOJaP0d4PDLfNn=FRs7dW424C+A@mail.gmail.com>
 <51239d12-ce56-48c9-89e9-0ee3edaf3ffd@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <51239d12-ce56-48c9-89e9-0ee3edaf3ffd@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261106_042009_652935_89BED7C0 
X-CRM114-Status: GOOD (  16.05  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi Alexander, On 7/18/25 7:07 PM, Ahmad Fatoum wrote: > On
    14.07.25 22:00, Alexander Shiyan wrote: >> Hi Ahmad, any news on this? >
   > Sorry, haven't come around to yet, but will try to soon. Soon was a lie,
    I am sorry about that. 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was blocked.
                             See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URI: pengutronix.de]
                             [URI: barebox.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: D12CC202AA8
X-Spamd-Result: default: False [-60.61 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:900:1d::77:received];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:eagle.alexander923@gmail.com,m:barebox@lists.infradead.org,m:eaglealexander923@gmail.com,s:lore@pengutronix.de];
	RCPT_COUNT_TWO(0.00)[2];
	DMARC_NA(0.00)[pengutronix.de];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FREEMAIL_TO(0.00)[gmail.com,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-0.999];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_RCPT(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: eqgmbqyk6pb9z8fop1zg3axfc4x7we8g

Hi Alexander,

On 7/18/25 7:07 PM, Ahmad Fatoum wrote:
> On 14.07.25 22:00, Alexander Shiyan wrote:
>> Hi Ahmad, any news on this?
> 
> Sorry, haven't come around to yet, but will try to soon.

Soon was a lie, I am sorry about that.

This works fine, I took the liberty of resending your patch:
https://lore.barebox.org/barebox/20261106111352.3535034-1-a.fatoum@pengutronix.de/T/#mbaea85a775fa0f09ebc6cc2eb8d2bc521bbc2f7d

Cheers,
Ahmad

> 
>>
>> вт, 24 июн. 2025 г. в 12:15, Alexander Shiyan <eagle.alexander923@gmail.com>:
>>>
>>> This replaces the low-level SMC driver implementation with the
>>> MFD-based driver for SAMA5D3 platforms.
>>>
>>> Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
>>> ---
>>>  arch/arm/boards/sama5d3_xplained/board.c | 46 ------------------------
>>>  arch/arm/mach-at91/Kconfig               |  1 -
>>>  arch/arm/mach-at91/sam9_smc.c            |  5 +--
>>>  3 files changed, 1 insertion(+), 51 deletions(-)
>>>
>>> diff --git a/arch/arm/boards/sama5d3_xplained/board.c b/arch/arm/boards/sama5d3_xplained/board.c
>>> index 4d908e6b9f..3ee3f2166e 100644
>>> --- a/arch/arm/boards/sama5d3_xplained/board.c
>>> +++ b/arch/arm/boards/sama5d3_xplained/board.c
>>> @@ -3,60 +3,14 @@
>>>  #include <common.h>
>>>  #include <init.h>
>>>  #include <envfs.h>
>>> -#include <mach/at91/at91sam9_smc.h>
>>> -#include <mach/at91/hardware.h>
>>> -#include <linux/clk.h>
>>> -
>>> -static struct sam9_smc_config sama5d3_xplained_nand_smc_config = {
>>> -       .ncs_read_setup         = 1,
>>> -       .nrd_setup              = 2,
>>> -       .ncs_write_setup        = 1,
>>> -       .nwe_setup              = 2,
>>> -
>>> -       .ncs_read_pulse         = 5,
>>> -       .nrd_pulse              = 3,
>>> -       .ncs_write_pulse        = 5,
>>> -       .nwe_pulse              = 3,
>>> -
>>> -       .read_cycle             = 8,
>>> -       .write_cycle            = 8,
>>> -
>>> -       .mode                   = AT91_SMC_READMODE | AT91_SMC_WRITEMODE |
>>> -                                 AT91_SMC_EXNWMODE_DISABLE | AT91_SMC_DBW_8,
>>> -       .tdf_cycles             = 3,
>>> -
>>> -       .tclr                   = 3,
>>> -       .tadl                   = 10,
>>> -       .tar                    = 3,
>>> -       .ocms                   = 0,
>>> -       .trr                    = 4,
>>> -       .twb                    = 5,
>>> -       .rbnsel                 = 3,
>>> -       .nfsel                  = 1
>>> -};
>>>
>>>  static int sama5d3_xplained_probe(struct device *dev)
>>>  {
>>> -       struct clk *clk;
>>> -
>>>         barebox_set_hostname("sama5d3_xplained");
>>>
>>>         if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC))
>>>                 defaultenv_append_directory(defaultenv_sama5d3_xplained);
>>>
>>> -       add_generic_device("at91sam9-smc", DEVICE_ID_SINGLE, NULL,
>>> -                          SAMA5D3_BASE_HSMC + 0x600, 0xa0,
>>> -                          IORESOURCE_MEM, NULL);
>>> -
>>> -       clk = clk_lookup("hsmc_clk");
>>> -       if (IS_ERR(clk))
>>> -               dev_warn(dev, "couldn't get hsmc_clk: %pe\n", clk);
>>> -
>>> -       clk_enable(clk);
>>> -
>>> -       /* configure chip-select 3 (NAND) */
>>> -       sama5_smc_configure(0, 3, &sama5d3_xplained_nand_smc_config);
>>> -
>>>         return 0;
>>>  }
>>>
>>> diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
>>> index db79ad2d26..22ab99d9c8 100644
>>> --- a/arch/arm/mach-at91/Kconfig
>>> +++ b/arch/arm/mach-at91/Kconfig
>>> @@ -107,7 +107,6 @@ config SOC_SAMA5D2
>>>  config SOC_SAMA5D3
>>>         bool
>>>         select SOC_SAMA5
>>> -       select AT91SAM9_SMC
>>>         select CLOCKSOURCE_ATMEL_PIT
>>>         select HAVE_AT91_SMD
>>>         select HAVE_AT91_USB_CLK
>>> diff --git a/arch/arm/mach-at91/sam9_smc.c b/arch/arm/mach-at91/sam9_smc.c
>>> index 6c9e169a8e..66b30694ce 100644
>>> --- a/arch/arm/mach-at91/sam9_smc.c
>>> +++ b/arch/arm/mach-at91/sam9_smc.c
>>> @@ -14,8 +14,7 @@
>>>
>>>  #define AT91_SAM9_SMC_CS_STRIDE                0x10
>>>  #define AT91_SAMA5_SMC_CS_STRIDE       0x14
>>> -#define AT91_SMC_CS_STRIDE     ((at91_soc_initdata.type == AT91_SOC_SAMA5D3 \
>>> -                                || at91_soc_initdata.type == AT91_SOC_SAMA5D4) \
>>> +#define AT91_SMC_CS_STRIDE     ((at91_soc_initdata.type == AT91_SOC_SAMA5D4) \
>>>                                  ? AT91_SAMA5_SMC_CS_STRIDE : AT91_SAM9_SMC_CS_STRIDE)
>>>  #define AT91_SMC_CS(id, n)     (smc_base_addr[id] + ((n) * AT91_SMC_CS_STRIDE))
>>>
>>> @@ -27,7 +26,6 @@ static void sam9_smc_cs_write_mode(void __iomem *base,
>>>         void __iomem *mode_reg;
>>>
>>>         switch (at91_soc_initdata.type) {
>>> -       case AT91_SOC_SAMA5D3:
>>>         case AT91_SOC_SAMA5D4:
>>>                 mode_reg = base + AT91_SAMA5_SMC_MODE;
>>>                 break;
>>> @@ -101,7 +99,6 @@ static void sam9_smc_cs_read_mode(void __iomem *base,
>>>         void __iomem *mode_reg;
>>>
>>>         switch (at91_soc_initdata.type) {
>>> -       case AT91_SOC_SAMA5D3:
>>>         case AT91_SOC_SAMA5D4:
>>>                 mode_reg = base + AT91_SAMA5_SMC_MODE;
>>>                 break;
>>> --
>>> 2.39.1
>>>
>>
> 
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



