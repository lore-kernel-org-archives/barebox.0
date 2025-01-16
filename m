Delivery-date: Thu, 16 Jan 2025 15:21:17 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tYQkG-000cy0-1z
	for lore@lore.pengutronix.de;
	Thu, 16 Jan 2025 15:21:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tYQkG-0003t2-N3
	for lore@pengutronix.de; Thu, 16 Jan 2025 15:21:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:
	From:Subject:Message-Id:Date:Content-Type:Content-Transfer-Encoding:
	Mime-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ULbCr/MJWmWMnMqfrEUfIjMVYGNH/QLKx9g/YM50gp8=; b=oSkb35D4tN/cR5PTomRGkx4L3w
	W+Lt2uZjX5j2Pxc3cZruMULc2PNgwN8KQb35sqzX+o8adfkk2Qt4czUki0/FEc9zn7coCDSgWq6Qp
	aai/gUsvx5oNvkGpoHNjjk8RR+X7EyvUFsB3/wry7u72yjhaRf6HIvXlLVT3KkNr2dqQBkaQ1Xhyk
	C1NCON/lZH2aU3w0ubuSakwH2rHc9KoOnzbd3gA/ViXdSkv0FqvVVB3SNWy+PS/EFUNXUfY9IettL
	b9Yn8zgWyb/cvs82HdDTlvk1fHMuqLY+ocDic2QaaJAX8fueoWhf+btFUatG/Fdq6LZ8Cw7bxKK76
	R+TktBOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tYQjo-0000000F8hn-2M4Y;
	Thu, 16 Jan 2025 14:20:48 +0000
Received: from zdiv.net ([2001:4b98:dc0:43:f816:3eff:fee4:1d8c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tYQjk-0000000F8eg-02Le
	for barebox@lists.infradead.org;
	Thu, 16 Jan 2025 14:20:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zdiv.net; s=24;
	t=1737037233;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ULbCr/MJWmWMnMqfrEUfIjMVYGNH/QLKx9g/YM50gp8=;
	b=QFoY9UD9JT0eJ+qLzReP25ihldYlcEPdQO0cB64qMF55UQz4XuLcdpPQ0aYe2H0ontQNN0
	xnjcxx6Xt0PFePIInaMdS07afDTvBCuvaFDIz7PJbT2U52I52DHfCwPsCV25yqQ/vFp+UF
	0X88zxarsIKtNE1PQwicP2gjAyahA3T1Q/yZPuMuIVVHmcZJr7XOHCEWvdenM++N/jE3GZ
	LUCkNOBgiOkxJ7YY4VobvvKBddpS6PlklZEtCpjm27ZpTStvW/KvR0b1w5cAXUlTKv9a/6
	Cpjvr3hvHI6HYqNAUeH0iRBDQVZ3u1JYZqQzZX0r+qFnIf/NWXJPxty+7M8bKw==
Received: from localhost (<unknown> [2a01:e0a:12:d860:b3d:d71c:eca8:7e24])
	by zdiv.net (OpenSMTPD) with ESMTPSA id 3d41947e (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
	Thu, 16 Jan 2025 15:20:33 +0100 (CET)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Thu, 16 Jan 2025 15:20:33 +0100
Message-Id: <D73KB4PN5LPG.1CIQYZNKG3U5J@zdiv.net>
From: "Jules Maselbas" <jmaselbas@zdiv.net>
To: "Ahmad Fatoum" <a.fatoum@pengutronix.de>, <barebox@lists.infradead.org>
X-Mailer: aerc 0.19.0
References: <20250107143740.16903-1-jmaselbas@zdiv.net>
 <20250107143740.16903-3-jmaselbas@zdiv.net>
 <801d9231-2563-405e-bcbf-a0ae8d38857e@pengutronix.de>
In-Reply-To: <801d9231-2563-405e-bcbf-a0ae8d38857e@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250116_062044_333701_CA6B67C4 
X-CRM114-Status: GOOD (  21.44  )
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
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 2/6] clk: Add clock driver for sun50i-a64
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,
On Tue Jan 14, 2025 at 9:38 AM CET, Ahmad Fatoum wrote:
> Hi,
>
> On 07.01.25 15:37, Jules Maselbas wrote:
>> Adds a "one-size fit all" clock driver to be used for complex
>> "composite" clock, composed of: a gate, a mux and severals dividers.
>> This clk driver could be used to make SoC specific drivers easier
>> to port from linux sources, but this is not the case yet.
>
> Just curious: Here you say tha this driver can make porting kernel
> drivers easier, but at the end you say this one-size fits all is
> barebox-specific?

Yes it is barebox specific.
The linux drivers (clk/sunxi-ng) use SUNXI_CCU_* macros to define clks,
such macros could be reimplemented using the one-size fits all driver.
I think i'll try to do this for the H6 SoC.

>> The pll-cpux is set to 816MHz and pll-periph0-2x is set to 1.2GHz.
>>=20
>> Signed-off-by: Jules Maselbas <jmaselbas@zdiv.net>
>
> Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>
> As I read through the code, some nitpicks below, but nothing critical.
thanks

>> ---
>
>> +#define MHZ (1000UL * 1000UL)
>
> There is linux/units.h with HZ_PER_MHZ.
>
>> +static struct clk_div_table div_apb1[] =3D {
>> +	{ .val =3D 0, .div =3D 2 },
>> +	{ .val =3D 1, .div =3D 2 },
>> +	{ .val =3D 2, .div =3D 4 },
>> +	{ .val =3D 3, .div =3D 8 },
>> +	{ /* Sentinel */ },
>
> If comma is removed, it's less likely to add a member after it by mistake=
.
ack

>
>> +static void sun50i_a64_resets_init(void __iomem *regs)
>> +{
>> +	u32 rst;
>> +
>> +	rst =3D 0 |
>> +		/* RST_USB_PHY0 */ BIT(0) |
>> +		/* RST_USB_PHY1 */ BIT(1) |
>> +		/* RST_USB_HSIC */ BIT(2);
>
> Why not name this ${REG}_RST_USB_PHY0 and so on instead of the comments?
Not really worth the effort i think. This file is already too much differen=
t from
its Linux source. This is barebox specific.

>> +static inline void nop_delay(u32 cnt)
>> +{
>> +	while (cnt--)
>> +		barrier();
>
> While we use GCC by default, first clang support was recently added and
> clang is known to do optimizations that would reorder cnt over a memory
> clobber if cnt is held in a register. Better make cnt volatile here.
ok

>
>> +}
>> +
>> +/* a "one size fit all" clk for barebox */
>
> Cheers,
> Ahmad



