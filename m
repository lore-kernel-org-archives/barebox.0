Delivery-date: Thu, 16 Jan 2025 15:33:38 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tYQwE-000d84-0e
	for lore@lore.pengutronix.de;
	Thu, 16 Jan 2025 15:33:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tYQwE-0006U8-Bz
	for lore@pengutronix.de; Thu, 16 Jan 2025 15:33:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:
	From:Subject:Message-Id:Date:Content-Type:Content-Transfer-Encoding:
	Mime-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mTvG0c1LXGKvrE0SqPIGPyJh8VWbPMOHuM5v7D73p8w=; b=243Wcj28DidW/oriizBEXiiTXJ
	LfwM3ub5sexdAyS+OZjTl5CS+nPeEe7nRu2gqi4RK3Y8DqEPbhdVeEzNb7kGR22HiXuniJ7HBOps2
	plJa68j5sr/whoD42X+zsknjDdaS/DLR8AlS3FybS4TDskkjZjr/o75Hry26in2OsVd0BcrcBpzmG
	OrtNpzJjO4HwVX2n68Bu3IljUTb39RKkvXE40hmBc0FJSgvjRoJuBhtWRqVZpWRYiRPavK7SFjjQH
	BCm3o9j3YTjM/PNbF2Lwtihs+hZZIrY1ZPHbYipPdnZfbGvTV45nivc9VmCYQto63e8aPs0KaEbla
	6FnM8tMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tYQvj-0000000FBFn-2Ck1;
	Thu, 16 Jan 2025 14:33:07 +0000
Received: from zdiv.net ([2001:4b98:dc0:43:f816:3eff:fee4:1d8c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tYQr4-0000000FAK0-0eQZ
	for barebox@lists.infradead.org;
	Thu, 16 Jan 2025 14:28:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zdiv.net; s=24;
	t=1737037696;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=mTvG0c1LXGKvrE0SqPIGPyJh8VWbPMOHuM5v7D73p8w=;
	b=pBzc6WRqqrXAhs81lVW4DfvJruGW3C94UNnsw6Bzv1hdSm61zEJfZ19m/Pv99ibAOjAFms
	+ahQrdMwwFNnLLE2FRjvBO2IMMVTbl97o3oIVjFovKGxTqvdS0QKUcQxdqdKbQQ7ZSZ/AY
	3BWj7bBIJD/8iJpE7xyG71srCN1u818j3RzMjzjgXLX2x0PqjUlN/T7sp6o51p3miVZbHP
	GiUklAH9gMDuGixmagcwLARvNaVJ59CXhuaKzSV8K4MtxYZ/9y70/jxpVkODusmewfaIdG
	FxVhSvNghc1jrzd9HhThIuwxhR9ClQndMT0P4iGq9St5SOCI+GDlK15NLaQzvA==
Received: from localhost (<unknown> [2a01:e0a:12:d860:b3d:d71c:eca8:7e24])
	by zdiv.net (OpenSMTPD) with ESMTPSA id 1b31da70 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
	Thu, 16 Jan 2025 15:28:16 +0100 (CET)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Thu, 16 Jan 2025 15:28:16 +0100
Message-Id: <D73KH1ETF4PN.2QO1M9J9XVZN6@zdiv.net>
From: "Jules Maselbas" <jmaselbas@zdiv.net>
To: "Ahmad Fatoum" <a.fatoum@pengutronix.de>, <barebox@lists.infradead.org>
X-Mailer: aerc 0.19.0
References: <20250107143740.16903-1-jmaselbas@zdiv.net>
 <20250107143740.16903-4-jmaselbas@zdiv.net>
 <8290a410-2d0b-4d0e-a5a6-fefcfac2c6c7@pengutronix.de>
In-Reply-To: <8290a410-2d0b-4d0e-a5a6-fefcfac2c6c7@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250116_062818_466848_E884FF89 
X-CRM114-Status: UNSURE (   7.61  )
X-CRM114-Notice: Please train this message.
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
Subject: Re: [PATCH v2 3/6] pinctrl: Add sun50i-a64 pinctrl driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue Jan 14, 2025 at 9:39 AM CET, Ahmad Fatoum wrote:
> On 07.01.25 15:37, Jules Maselbas wrote:
>> sunxi pinctrl driver, adapted from Linux, is split in two parts:
>>  - pinctrl-sunxi.c that implements gpio, pinctrl and pinmux functions
>>  - pinctrl-sun50i-a64.c that declare sun50i pins and their functions.
>>    This file only require minor adaptations and be easily copied from Li=
nux.
>>=20
>> The pin functions are needed for uart, SD/MMC, and likely for other
>> controllers too.
>>=20
>> Signed-off-by: Jules Maselbas <jmaselbas@zdiv.net>]
>
> Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>
>> ---
>> v1->v2:
>>  - removed `!IS_ENABLED(CONFIG_PINCTRL)` (Ahmad)
>
> Sascha suggested that of his own volition ;)
oopsy
>
>> +	func_name =3D sunxi_pinctrl_parse_function_prop(np);
>> +	if (!func_name) {
>> +		dev_err(dev, "%s: missing 'function' property\n", np->full_name);
>
> Nitpick: %pOF
Ack

>> +		return -EINVAL;
>> +	}
>
> Cheers,
> Ahmad



