Delivery-date: Mon, 03 May 2021 11:50:38 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ldVDp-0002kx-Ri
	for lore@lore.pengutronix.de; Mon, 03 May 2021 11:50:38 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ldVDp-00025J-1e
	for lore@pengutronix.de; Mon, 03 May 2021 11:50:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZCASnArrhbSOVg6B50vjtzwt+9OtNXREDma+xQ0RYVU=; b=Id7jpFeJ2ELW3FvOjollI7V+P
	rZinv5oh5Rx9xzdulJ7ljqvK4ondz1w/dypJ9WCooZjTs3GH6KrPJH+xUGuTr1iwRtLctqulxJ9Aa
	SwSf2TFkW63DxfNxfB3f/ng99Nen/XptYTHBDhY1H64afqk9dYojjglwBbn40gqxwp5sn+96bMAOE
	Jv1Yf8eFrHnVglPQRhzIiAMND1FiDRploonN0sMt4Qc0R+V4atepnBduK8U0n6C9VGkRuO4Cbj/di
	4VsQjyMkZ1UySUZj24j0pp3K8/dSo8RVwwQiFp8Lz5/cTqZkYvif7s3H2EzUAVneYaiDQQI64UeAr
	O3P2qTbjg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ldVBu-00Da0e-7P; Mon, 03 May 2021 09:48:38 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldVBj-00Da09-Vf
 for barebox@desiato.infradead.org; Mon, 03 May 2021 09:48:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:
 Subject:Sender:Reply-To:Cc:Content-ID:Content-Description;
 bh=AW7WtixLiUt6EYuoVVeH1iC6pz/yHnRV2jArL+ac7Pk=; b=FJ+3ZLcz1Gk2fYTQZfp3dscFZo
 n4C2rbZiH9GAicAZWRkWeDtHOXXPqSLl80oqlHw1CPWUOtVv9c4oqslWLFiCcVVv0qFufRNuK9dnj
 cOeIQKq0oZHJ/Agy1ZimEJK+1B09JXZMfX+36uGrUdtBh5lGrvecii4dcsmU+H83g/tkF/F4+0KZZ
 pNN/qJWgk4m7Bo60XP+GZf99ZHycDuiRoHPWB+3O8O002EB2xw8fR4OoukfrTji+s715DVmhptCq9
 CXQLL+4lra429XIpkpY43ApMN7IBEc51bGm05givCFbQl6LhuutUVegLbrjkqJAfLsyLlSfPHfMJT
 L9ffFJAg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldVBh-002xJ7-2b
 for barebox@lists.infradead.org; Mon, 03 May 2021 09:48:26 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1ldVBc-0001tF-WC; Mon, 03 May 2021 11:48:21 +0200
To: jameszxj <jameszxj@gmail.com>, barebox <barebox@lists.infradead.org>
References: <tencent_8401BCF91206152F6C87DEF586209CF25805@qq.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <23cb4075-b53a-6421-61bf-ac8c54dd8ccf@pengutronix.de>
Date: Mon, 3 May 2021 11:48:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <tencent_8401BCF91206152F6C87DEF586209CF25805@qq.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210503_024825_150113_37ED9168 
X-CRM114-Status: GOOD (  17.12  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Are there any operations may influence WFI instruction?
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

On 01.05.21 15:20, jameszxj wrote:
> Hi,
>   I run rtems6 on my imx6ull board, just initialize a GPT timer to flash a LED.

You can describe heartbeat LED in the barebox device tree just as you'd do in
Linux and barebox will take care to blink it during bootstrap. No need to involve
interrupts.

> I load rtems with barebox, after output some initialized messages, system enters shell and stalls, interrupt(GPT timer, arch7 timer for tick) do not happen again. Shell (connect to UART1,interrupt mode) still works, when I type something, the LED flashes. It seems that system only responses to UART1 interrupt, and triggers the other interrupts respones. I remove wfi instruction from idle task, system runs ok.
> And when I replace barebox with uboot, everything seems OK. I think maybe some initialized differences between barebox and uboot, but I haven't find any clues that  may influence WFI.

barebox on i.MX uses one of the available GPT timers as clocksource.

HTH,
Ahmad

> 
> 
> Any suggestion?
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

