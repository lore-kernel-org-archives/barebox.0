Delivery-date: Tue, 26 May 2026 08:43:04 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wRlVI-003uoI-0b
	for lore@lore.pengutronix.de;
	Tue, 26 May 2026 08:43:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wRlVH-0003Vp-Gy
	for lore@pengutronix.de; Tue, 26 May 2026 08:43:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QZeqfKmrfxj9AbXT/FQF1ZD6mgtJHnMjH5PT03GM1n8=; b=3DziTEO/Wp2wmMs52w4OtbITbS
	CsHys410fDuzgcDTjB9ClNHBoxIQA8guvoHbD05q00v9Ttrc0aICrYYnZuAUPnM/Gx4D/oPgdR9/3
	s95ye4IY2xDjtaEl4WuAfRu3JT1xmnPOvFVo4VoYwoGd3MHfwA+/lKn8eZc224/353ND62wsPH1id
	j4YEnPiNGW5hIbwEsUHjxUjLqMfvNjgykIcNAu8+xZju8RGmhSqA33m3YkfaOGWxphtpiFe2RXTJm
	VecfEJ5oJ5V1t+bnDasnIfb0TSOe4ElygVFZ8L6qlfmHPJ703Ug1xDAyGhtrQZGxSxDdB2af147CV
	l2lmRMCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRlU0-00000001BmV-2ZHR;
	Tue, 26 May 2026 06:41:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRlTx-00000001BlY-2h6U
	for barebox@lists.infradead.org;
	Tue, 26 May 2026 06:41:43 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wRlTw-0003Kt-4g; Tue, 26 May 2026 08:41:40 +0200
Message-ID: <8ca9c8ba-374c-4ded-80ef-1d3f151a72be@pengutronix.de>
Date: Tue, 26 May 2026 08:41:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, str@pengutronix.de
References: <E1wRlO9-0000000GFFg-0VaP@pty.whiteo.stw.pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <E1wRlO9-0000000GFFg-0VaP@pty.whiteo.stw.pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260525_234141_687461_7CDB1646 
X-CRM114-Status: GOOD (  14.98  )
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
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: i.MX: prevent use of imx_cpu_type in PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 5/26/26 08:35, Sascha Hauer wrote:
> On 2026-05-22 15:48, Ahmad Fatoum wrote:
>> Functions like cpu_is_mx6q internally call cpu_is_mx6() first,
>> which can be evaluated at compile-time if only i.MX6 boards are enabled.
>>
>> This allowed calling cpu_is_mx6q in PBL entry points as long as barebox was
>> compiled for only a single SoC.
>>
>> Since the multi-arch/multi-platform support was added however,
>> cpu_is_mx6 became a runtime check that's never true in PBL, leading all
>> cpu_is_mx* in 32-boards to silently fail at runtime.
>>
>> We have no in-tree boards that are affected by this, so until some
>> out-of-tree user is bothered enough to fix is, acknowledge that this no
>> longer works and turn the silent breakage into a loud compile-time error
>> whenever anything ends up referencing __imx_cpu_type.
> 
> imx_set_cpu_type() has users in PBL:
> 
> arch/arm/mach-imx/atf.c:280:    imx_set_cpu_type(IMX_CPU_IMX8MM);
> arch/arm/mach-imx/atf.c:343:    imx_set_cpu_type(IMX_CPU_IMX8MP);
> arch/arm/mach-imx/atf.c:406:    imx_set_cpu_type(IMX_CPU_IMX8MN);
> arch/arm/mach-imx/atf.c:463:    imx_set_cpu_type(IMX_CPU_IMX8MQ);
> arch/arm/mach-imx/atf.c:492:    imx_set_cpu_type(IMX_CPU_IMX93);
> 
> Also several consumers rely on it in PBL:
> 
> arch/arm/mach-imx/tzasc.c:358:  if (cpu_is_mx8mm() || cpu_is_mx8mn() || cpu_is_mx8mp())
> arch/arm/mach-imx/tzasc.c:365:  if (cpu_is_mx8mn() || cpu_is_mx8mp())
> arch/arm/mach-imx/atf.c:90:     if (cpu_is_mx8mn())
> arch/arm/mach-imx/atf.c:143:    if (cpu_is_mx8mn())
> arch/arm/mach-imx/atf.c:198:    if (!IS_ENABLED(CONFIG_ARCH_IMX_ATF_PASS_BL_PARAMS) || cpu_is_mx8mq()) {

Yes and the definition is still emitted for CONFIG_ARCH_IMX_ATF=y.
The change here onl affects 32-bit i.MX.

Cheers,
Ahmad

> 
> Sascha
> 
> --
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


