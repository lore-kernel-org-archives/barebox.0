Delivery-date: Tue, 14 Jan 2025 09:39:27 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tXcSN-000wk4-1U
	for lore@lore.pengutronix.de;
	Tue, 14 Jan 2025 09:39:27 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tXcSM-00065I-3W
	for lore@pengutronix.de; Tue, 14 Jan 2025 09:39:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=F6AUni8RG4jX8Z8I06uEAOSIR7RR872MLXcZ7HoMlq8=; b=IHgHGkZhiwODKIxW8V6TZA/S9Y
	ofUrJMH+fARCfqBXz3j5A8tv1iDUKNxrjNLM+4Iizt7f8Jtfd4ywEGP0L9zWQKHSsOdTzyWdbEhjC
	oaP3nBvQuuzHWyjQ3TJ//loKGVDAVe1TpjDRbCzQj1GIXo3P13zI2nC7z7TW3k+pqGxgL+0+wC9VT
	sT25tpxt/fJAyO4N0p622In9gTBvCCeP54tBzLkMUgOm2qDd88/Q8kMriBiFqXBDg3EoVWOZtYLRr
	XEIZRpyaHa+TLMdt5CO43Wr9DIuaIwk84SQ343nPw3y9q6pQUOpbXRe2DmYlmsb9dUDOjefX/ZRjj
	y00poixQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tXcRw-00000007qfp-0daI;
	Tue, 14 Jan 2025 08:39:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tXcRt-00000007qdS-15CA
	for barebox@lists.infradead.org;
	Tue, 14 Jan 2025 08:38:58 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tXcRr-0005m6-I1; Tue, 14 Jan 2025 09:38:55 +0100
Message-ID: <801d9231-2563-405e-bcbf-a0ae8d38857e@pengutronix.de>
Date: Tue, 14 Jan 2025 09:38:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jules Maselbas <jmaselbas@zdiv.net>, barebox@lists.infradead.org
References: <20250107143740.16903-1-jmaselbas@zdiv.net>
 <20250107143740.16903-3-jmaselbas@zdiv.net>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250107143740.16903-3-jmaselbas@zdiv.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250114_003857_300757_A813E537 
X-CRM114-Status: GOOD (  20.30  )
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
Subject: Re: [PATCH v2 2/6] clk: Add clock driver for sun50i-a64
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 07.01.25 15:37, Jules Maselbas wrote:
> Adds a "one-size fit all" clock driver to be used for complex
> "composite" clock, composed of: a gate, a mux and severals dividers.
> This clk driver could be used to make SoC specific drivers easier
> to port from linux sources, but this is not the case yet.

Just curious: Here you say tha this driver can make porting kernel
drivers easier, but at the end you say this one-size fits all is
barebox-specific?

> The pll-cpux is set to 816MHz and pll-periph0-2x is set to 1.2GHz.
> 
> Signed-off-by: Jules Maselbas <jmaselbas@zdiv.net>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

As I read through the code, some nitpicks below, but nothing critical.

> ---

> +#define MHZ (1000UL * 1000UL)

There is linux/units.h with HZ_PER_MHZ.

> +static struct clk_div_table div_apb1[] = {
> +	{ .val = 0, .div = 2 },
> +	{ .val = 1, .div = 2 },
> +	{ .val = 2, .div = 4 },
> +	{ .val = 3, .div = 8 },
> +	{ /* Sentinel */ },

If comma is removed, it's less likely to add a member after it by mistake.

> +static void sun50i_a64_resets_init(void __iomem *regs)
> +{
> +	u32 rst;
> +
> +	rst = 0 |
> +		/* RST_USB_PHY0 */ BIT(0) |
> +		/* RST_USB_PHY1 */ BIT(1) |
> +		/* RST_USB_HSIC */ BIT(2);

Why not name this ${REG}_RST_USB_PHY0 and so on instead of the comments?

> +static inline void nop_delay(u32 cnt)
> +{
> +	while (cnt--)
> +		barrier();

While we use GCC by default, first clang support was recently added and
clang is known to do optimizations that would reorder cnt over a memory
clobber if cnt is held in a register. Better make cnt volatile here.

> +}
> +
> +/* a "one size fit all" clk for barebox */

Cheers,
Ahmad

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


