Delivery-date: Tue, 24 May 2022 11:22:34 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ntQkM-007Ndd-Np
	for lore@lore.pengutronix.de; Tue, 24 May 2022 11:22:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ntQkL-0002qp-7c
	for lore@pengutronix.de; Tue, 24 May 2022 11:22:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R6eUvrM1lNwnNhmReGHpoyhV+u32GoAJlNtcXJ1REWw=; b=cKYlKaJ1YO8eAB
	TmvYGyQjlzfOW/Wy+JxOzlEUTU8xAa07nTh1r3Q0SNcqYvpmBC8p7/LAxDE27ie6tXQjK+TEBI4Nf
	LUIIgfrnaQGXgS+WZRMomGy95C5wZ0yNM5OD9sf9MpKNLDokF1z8bONYkl62QnpNkVy1n2djZfSYg
	b0pp/sPCQssftmyT2MUknhqR4xJgcniG/WkrCYf5b3c9+iFSr/XQYI9NzZy3GFAJ2ZoZBwCCKFONT
	wmYAWCVWTHeIT5wkJ0IzjtPxuqGhnBQupHxMrtyZnwvwg3CK/zJpRoz560X5s3+cDtvIPlRfCL7hw
	ds28DSokOpBu/Qkefb0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ntQj7-007Olr-B8; Tue, 24 May 2022 09:21:17 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ntQj3-007Ol1-6y
 for barebox@lists.infradead.org; Tue, 24 May 2022 09:21:14 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77]
 helo=[127.0.0.1]) by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1ntQj1-0002WD-Jf; Tue, 24 May 2022 11:21:11 +0200
Message-ID: <97925f64-37cc-9691-3621-3b3746325fe2@pengutronix.de>
Date: Tue, 24 May 2022 11:21:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: Frank Wunderlich <frank-w@public-files.de>
Cc: Sascha Hauer <sha@pengutronix.de>, barebox@lists.infradead.org
References: <1694C0B0-A962-420E-BA70-8061E8E9CA7F@public-files.de>
 <20220519115450.GV25578@pengutronix.de>
 <trinity-e8816284-959b-432a-bb6a-f33a6cd573df-1652964180567@3c-app-gmx-bs49>
 <e0e7cd6c-aa14-a09c-71d2-681842575398@pengutronix.de>
 <20220519131019.GZ25578@pengutronix.de>
 <trinity-58fee77a-48b6-48ff-99a5-8eaa6c480d0b-1653129114535@3c-app-gmx-bs49>
 <da75544b-8a44-9c0e-f3bc-1bf216523ed2@pengutronix.de>
 <trinity-f7ff0d03-ce5d-4ce6-811b-aa7adc2a9179-1653383588438@3c-app-gmx-bs50>
Content-Language: en-US
In-Reply-To: <trinity-f7ff0d03-ce5d-4ce6-811b-aa7adc2a9179-1653383588438@3c-app-gmx-bs50>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220524_022113_317964_408DD6DB 
X-CRM114-Status: GOOD (  16.92  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: Aw: Re: Re: Re: Driver load order
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Frank,

On 24.05.22 11:13, Frank Wunderlich wrote:
> as far as i looked into the linux driver and the binding-conversion [1] i think adding those fields is not enough
> as the supply needs to be set from the upper values (vccX-supply) of the rk808 pmic.
> 
> in core it seems that this recursion is not implemented yet (like the check for rdev->supply)
> 
> from binding i mean this part:
> 
> vcc1-supply:  The input supply for DCDC_REG1
> vcc2-supply:  The input supply for DCDC_REG2
> vcc3-supply:  The input supply for DCDC_REG3
> vcc4-supply:  The input supply for DCDC_REG4
> vcc6-supply:  The input supply for LDO_REG1 and LDO_REG2
> vcc7-supply:  The input supply for LDO_REG3 and LDO_REG7
> vcc8-supply:  The input supply for SWITCH_REG1
> vcc9-supply:  The input supply for LDO_REG4 and LDO_REG5
> vcc10-supply: The input supply for LDO_REG6
> vcc11-supply: The input supply for LDO_REG8

Please don't top-post. It makes it harder to follow the conversation.
Quoting from below:

>> Ah, I missed b8074eba2a6b ("regulator: RK808: Add proper input supplies
>> for rk808"). I recall now that I had ported an older version of the Linux
>> driver to make porting work easier.
>>
>> You should probably add a supply_name member into struct regulator_desc
>> and then propagate this to core, so core can request it.

I have no time currently to spend on Rockchip support, but I am happy to
review patches improving it.

Cheers,
Ahmad


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

