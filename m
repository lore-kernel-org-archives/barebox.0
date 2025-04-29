Delivery-date: Tue, 29 Apr 2025 23:53:28 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u9stM-000cbR-1m
	for lore@lore.pengutronix.de;
	Tue, 29 Apr 2025 23:53:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u9stL-0005oZ-VS
	for lore@pengutronix.de; Tue, 29 Apr 2025 23:53:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xpMDVKPldzWlJnoMXmz6mc1Y89jj2YDmVfPK/Z4zW8I=; b=j5C5/OS8dYCT5/a7uOTVnBbPd5
	gF8WLGdJY1/dExsK3BW5dk9M39Vwg2L7FV6CzzjsAjK3xTrrM+7WBmivACffcKTjyXG8M/FsBcmJv
	oCd4HgMBk+AD61/JoO24B9dIsHM78SwPy6waBMJWF+fP8VKXTYw79gnUpOVvHOT6J5+VI7X9dnac5
	/gwFXF4ZqTGlhcUb5Q4q7W8hulFDGealkTYwdSVRIqHn/WxtBtMrhHgNGPN/yvf2lDze0p8vdqAdw
	/nxIMC4DtzhXbmP+5TIYKOjFJh9N7bjU7ZL6w1slSUFhao1d4jfb1kdi8Ew6PLu5m1mwXV34BgtMe
	IAoSL7/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9ssm-0000000Auej-2pMD;
	Tue, 29 Apr 2025 21:52:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9sq1-0000000AuKN-0K8k
	for barebox@lists.infradead.org;
	Tue, 29 Apr 2025 21:50:02 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u9spz-0003RX-5Z; Tue, 29 Apr 2025 23:49:59 +0200
Message-ID: <23f0a828-78b6-4b97-9fb6-32098e932cd8@pengutronix.de>
Date: Tue, 29 Apr 2025 23:49:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Daniel Lezcano <daniel.lezcano@linaro.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, barebox@lists.infradead.org
References: <20250429132550.3768805-1-a.fatoum@pengutronix.de>
 <174593906891.3117328.8214270493101658656.b4-ty@pengutronix.de>
 <9a525e83-840b-4067-b529-2f63491971c0@linaro.org>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <9a525e83-840b-4067-b529-2f63491971c0@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250429_145001_130385_2474A77C 
X-CRM114-Status: GOOD (  15.12  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] clocksource: timer-ti-dm: replace magic constant with
 descriptive macros
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Daniel,

On 29.04.25 21:46, Daniel Lezcano wrote:
> On 29/04/2025 17:04, Sascha Hauer wrote:
>>
>> On Tue, 29 Apr 2025 15:25:49 +0200, Ahmad Fatoum wrote:
>>> This improves readability a bit, but introduces no functional change.
>>>
>>>
>>
>> Applied, thanks!
> 
> I'm a bit confused, can you explain why it is applied ? Is that an official tree ?

It's the official tree for the barebox bootloader.

These two patches as well as my original patch that you replied to were
sent to the barebox mailing list. Thanks for your input by the way.

Thanks to ARM architected timers, clocksource support in barebox doesn't
see much activity nowadays and my patches are the first submitted since lore.kernel.org
started indexing the barebox mailing list last year. Did your lei filter perhaps
match against my patch thinking they are kernel patches? :-)

Cheers,
Ahmad

> 
> 
>> [1/2] clocksource: timer-ti-dm: replace magic constant with descriptive macros
>>        https://git.pengutronix.de/cgit/barebox/commit/?id=008ef5feae46 (link may not be stable)
>> [2/2] clocksource: timer-ti-dm: adapt omap_dmtimer_init parameter type to usage
>>        https://git.pengutronix.de/cgit/barebox/commit/?id=c762dd5beeb2 (link may not be stable)
>>
>> Best regards,
> 
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


