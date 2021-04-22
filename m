Delivery-date: Thu, 22 Apr 2021 17:16:30 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lZb4A-0004Bd-PR
	for lore@lore.pengutronix.de; Thu, 22 Apr 2021 17:16:30 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lZb49-0006CS-OY
	for lore@pengutronix.de; Thu, 22 Apr 2021 17:16:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=v+svrnDlEh5V15uIKUDD+6xF0Vr+LS7JujtqUY88EFQ=; b=llUWRHLuQ7AXgw+HMVJ4W2iwn
	QCmlrFFBK0JbnGeymiOgzvUAX910kQ8WC9fxvWawHtDDwxhSZ6xmXaumVJHQjCN8mUsF0VBz5awD2
	XIuPqZEvhIbn/Vu7WC83HGFjLOA4JLhbEX5wPjOWnj2kaHX4o9wz3RPzdCTSQMCpwqYotNLVqhOy2
	vT+53sDMDHQZ2PPjeLvYADt2DM0Ow2H3/OnhWxWbVZZr1Ezwg36p6A8RyY2TbCCJ/ohNqb4aoWpGN
	s5msFwJQUtLAHAYHf6F0irejrYhHqz4Ua7vqbCSmpUxPAvrV6iNXQGEKQoRBkUufsg+J+KYjVV/qd
	96pnozabw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lZb2n-00GwpW-Hg; Thu, 22 Apr 2021 15:15:06 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZb2k-00GwpQ-Hr
 for barebox@desiato.infradead.org; Thu, 22 Apr 2021 15:15:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=0ExF/SOcZCI2z0wdx4aXwo8FYmy7pTf0LJkT+2QN3KI=; b=y/OT1pk8F4qihlo3WpCqa03Xr6
 nNTBvPRve52TRhP4HWm3M2zhVlK3+MwvIalnSWVyEtN39nHKGSjeQmsg/dusku3ILVmnovllZso8y
 X/fq1TFGHV1addk3W2PIGhSUBqNBGLVVOJ+vus1psVaW/MD/MLGXiFs+H2vDjVkPNe+AUNorHcvq9
 VoSeyhhzatPHey9hrXVbhC+QEugSqoIahlcLGJulZTF7apIzfWxZiBjJZgc/VfF0yRrwToNCTjOVF
 wmqeslfDJC5d8IWAuRkZ46YLZ6BbCq9cPRTuIstJKZVO42UMpVfPI0iTTybUWskCRRr7AxNkbfcYH
 V0r+sWVg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZb2h-00DmjV-Km
 for barebox@lists.infradead.org; Thu, 22 Apr 2021 15:15:01 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <bst@pengutronix.de>)
 id 1lZb2d-0005mS-24; Thu, 22 Apr 2021 17:14:55 +0200
To: Lucas Stach <l.stach@pengutronix.de>, Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
References: <20210415131617.3582-2-s.hauer@pengutronix.de>
 <20210415140313.29161-1-s.hauer@pengutronix.de>
 <ce2af9cf5f8b10a9595a7d5beec2497df0fdb172.camel@pengutronix.de>
 <20210415151231.GI19819@pengutronix.de>
 <1e17f965a5a60aaba5b092785eb815dd7c4d83a0.camel@pengutronix.de>
From: Bastian Krause <bst@pengutronix.de>
Message-ID: <213a717d-a80d-e140-6a14-06ae7308292f@pengutronix.de>
Date: Thu, 22 Apr 2021 17:14:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.9.0
MIME-Version: 1.0
In-Reply-To: <1e17f965a5a60aaba5b092785eb815dd7c4d83a0.camel@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210422_081459_712464_E4FDD9BA 
X-CRM114-Status: GOOD (  22.52  )
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
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] ARM: i.MX: sabresd: Add support for i.MX6QP board
 variant
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 4/15/21 5:31 PM, Lucas Stach wrote:
> Am Donnerstag, dem 15.04.2021 um 17:12 +0200 schrieb Sascha Hauer:
>> On Thu, Apr 15, 2021 at 04:59:30PM +0200, Lucas Stach wrote:
>>> Am Donnerstag, dem 15.04.2021 um 16:03 +0200 schrieb Sascha Hauer:
>>>> The SabreSD comes with different SoC variants. This patch adds support
>>>> for the i.MX6QP based board. the DCD data has been taken from U-Boot
>>>> 2021.04
>>>>
>>>> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
>>>> ---
>>>>
>>> [...]
>>>> new file mode 100644
>>>> index 0000000000..52cc8aa73b
>>>> --- /dev/null
>>>> +++ b/arch/arm/dts/imx6qp-sabresd.dts
>>>> @@ -0,0 +1,42 @@
>>>> +/*
>>>> + * Copyright 2012 Freescale Semiconductor, Inc.
>>>> + * Copyright 2011 Linaro Ltd.
>>>> + *
>>>> + * The code contained herein is licensed under the GNU General Public
>>>> + * License. You may obtain a copy of the GNU General Public License
>>>> + * Version 2 or later at the following locations:
>>>> + *
>>>> + * http://www.opensource.org/licenses/gpl-license.html
>>>> + * http://www.gnu.org/copyleft/gpl.html
>>>> + */
>>>> +
>>>> +#include <arm/imx6qp-sabresd.dts>
>>>> +
>>>> +/ {
>>>> +	model = "Freescale i.MX6 Quad SABRE Smart Device Board";
>>>> +	compatible = "fsl,imx6q-sabresd", "fsl,imx6q";
>>>
>>> I'm not sure I like this overwriting of the compatible string. AFAICS
>>> we don't have any instances for "fsl,imx6qp" compatible checks in
>>> either Barebox or Linux kernel, so it shouldn't cause any immediate
>>> damage, but this still feels wrong.
>>
>> It's overwritten with the same strings as the included upstream dts has.
>> Anyway, as you say overwriting them here seems wrong. I removed it.
> 
> You had me confused for bit here, so I just checked and the compatible
> in the included upstream dts is different, as expected:
> 
> compatible = "fsl,imx6qp-sabresd", "fsl,imx6qp";
> 
> So now that you removed those lines, does you board file need fixing
> for the different compatibles?

My board works fine (bootspec-wise) with the dropped compatible.

Regards,
Bastian

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

