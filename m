Delivery-date: Tue, 07 Jan 2025 15:36:41 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tVAhE-000LkU-2q
	for lore@lore.pengutronix.de;
	Tue, 07 Jan 2025 15:36:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tVAhA-0007JP-SD
	for lore@pengutronix.de; Tue, 07 Jan 2025 15:36:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NbmLFDaQkmE9kK2DlLMI/JougyExhUp0eLTvyrU3RwE=; b=Q9xg4BSYkqq9ILgYMaKYf0ov98
	GDgC96j2n0aFFH/eacW0yEzFPa7thmEr0uFUXIOevJV0nh6sGqhh0q+GIWgCjnJfuMM6GLEo1e7yp
	8v/5/R12Lf9gO1n4UV2ksT20y+l9sdphuFg0r0oQT1pTW7M40DQo/S+h/Fuje0WNmrwR1wEObFOt3
	rCKUHSp9yfWoPAtmdHn3Dya0qTgk8LwcSTaOY0KZYbjXODg1A2irtSUN81x5jZT8t4nZ+pzLSfRHH
	yC7EJFC9e7Mp6N68gGtSMDfNo/bNh63K0T51R4ps3rZMnniOjzmTbstjyk2a7gm/2lGlDSnsosWTi
	4S6Ilkxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVAgX-00000005Exf-43Jl;
	Tue, 07 Jan 2025 14:35:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVAfi-00000005Eqc-3JaX
	for barebox@lists.infradead.org;
	Tue, 07 Jan 2025 14:35:10 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tVAfg-00071N-Jf; Tue, 07 Jan 2025 15:35:04 +0100
Message-ID: <9c8d6171-c228-4e4a-97da-f1ce93e14aed@pengutronix.de>
Date: Tue, 7 Jan 2025 15:35:04 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
Cc: barebox@lists.infradead.org
References: <19923329-f254-435d-9557-5e1b6835b8ec@pengutronix.de>
 <Z09TKeFZaT6InuPX@hephaistos>
 <49df1ec9-aca8-49b0-95fe-d577c5b615db@pengutronix.de>
 <Z098Eor4bedpsol9@hephaistos>
 <f7b92750-f3ec-42d1-aacb-deaa6fb408d9@pengutronix.de>
 <Z1CDcFAPdlDBkGJ5@hephaistos>
 <0125561a-a868-43da-a7d3-4b85540cc78d@pengutronix.de>
 <Z1mnJB8Suz3SNWbI@hephaistos> <Z2VPgRnxah5lc09X@hephaistos>
 <76532287-74b7-42ca-860c-b2e6bda8484e@pengutronix.de>
 <Z30oWivcXTQmw9ZO@hephaistos>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <Z30oWivcXTQmw9ZO@hephaistos>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250107_063506_830907_C5DF576C 
X-CRM114-Status: GOOD (  17.47  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Reset on Beaglebone Black has become unreliable/broken
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Konstantin,

On 07.01.25 14:12, Konstantin Kletschke wrote:
> On Tue, Jan 07, 2025 at 12:17:03PM +0100, Ahmad Fatoum wrote:
> Should add a delay of 1.8ms. Is this feasible?

Sounds ok to me. Please send a patch to that effect with an explanatory
comment, summarizing what hardware was observed to have what issues.

>> If it's indeed just a millisecond, I am in favor of adding this to
>> barebox upstream with a comment explaining what this fixes, even
>> if we don't fully understand it yet.
> 
> Yes, I agree to the not fully yet understood part.
> What me holds back from lowering the speed is the following:
> 
> I went into production with the final result part above and reflashe all
> our BBB devices which failed warm start without the additional delay and
> all passed 100% flawlessly after the modficication. So it is tested upon
> roughly 30 devices which failed before.

I am surprised you are still shipping new products with a Beaglebone Black,
but anyhow, we need to be pragmatic and a ~2ms delay, even if not completely
understood is an acceptable price to pay for barebox reliably starting up
on newly produced BBBs.

Cheers,
Ahmad

> 
> Kind Regards
> Konstantin
> 
> 
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


