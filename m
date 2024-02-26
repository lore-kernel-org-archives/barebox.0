Delivery-date: Mon, 26 Feb 2024 13:18:47 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1reZwV-007sNy-2K
	for lore@lore.pengutronix.de;
	Mon, 26 Feb 2024 13:18:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1reZwV-0002GV-3U
	for lore@pengutronix.de; Mon, 26 Feb 2024 13:18:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/LXye2yAT7a3Hr7ENI9OLW0vix90coK1+zebiBXaBfw=; b=ueX+9lTwKjWzBeWpQlXxipdSU5
	47EudwOYajbPTAFBEdDuLZR6RoF5nBiEuY6dCR0pEre1FaaV3PZqe9nuEmyEmpeCqcrCIv0iONGkC
	PwTCu9lDwuRw6Qd71VHw3D2+qmiWtjA8cYiO0lFqEizIzfMZK15D1B6oUjforQTBcV2Qusbe0Buks
	fLXH370Xsihu3YtZ0OyD3aM4yUMAP9qba2ZT67KeRdgBR5oEdkgIWC/7AGUWe7ufawC1Z7N4TjPEK
	GUYpsm24fOuh9/39BXrqljsWKCL8hNPS9Dm0e+7G1ANJwjygCZtjmAsIs0EiIx4vRlUR2nr3s0fSU
	JTFS9u2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1reZvr-00000000X3y-0FVN;
	Mon, 26 Feb 2024 12:18:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1reZvn-00000000X1M-1tu4
	for barebox@lists.infradead.org;
	Mon, 26 Feb 2024 12:18:05 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1reZvj-00024v-W4; Mon, 26 Feb 2024 13:18:00 +0100
Message-ID: <21c5b3f9-e139-4f96-8eab-b8e68419b8e0@pengutronix.de>
Date: Mon, 26 Feb 2024 13:17:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Alessandro Rubini <rubini-list@gnudd.com>, barebox@lists.infradead.org
References: <20240220004316.fdc79907089c7358a1e67f62@gmail.com>
 <CAAvCNcCZhS8mkvdgcJ2L-eiur+OxgWEXRLnadO_HFyHfSi7WFA@mail.gmail.com>
 <a154ae13-86e1-4c2b-9c38-3774fde6a6c8@pengutronix.de>
 <20240205125900.c4b182f57b6efe0152beee24@gmail.com>
 <90de314f-b7a7-4b49-8c72-ec45aa3d38e2@pengutronix.de>
 <ZdSu671i2n4RQPoz@arcana.i.gnudd.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <ZdSu671i2n4RQPoz@arcana.i.gnudd.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240226_041803_542224_CFD69604 
X-CRM114-Status: GOOD (  22.86  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: NFSv4 boot support?
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello,

On 20.02.24 14:53, Alessandro Rubini wrote:
>>> This hasn't
>>> seen development activity in 5 years.
>>
>> Please see https://github.com/virtualsquare/picotcp
> 
> But the TCP/IPV4 standard didn't change, either.

I don't mind lack of new features, but I'd prefer that when we
adopt an external network stack, we adopt one that still sees
maintenance and bug fixes. The repository linked by Antony while
having more recent commits, also has a link to security considerations:

https://github.com/virtualsquare/picotcp/blob/master/docs/security.md

which lists 4 year old security issues that are acknowledged, but
unresolved.

>>> lwIP on the other hand still sees active development.
>>
>> I agree with you. It looks like lwIP is more popular than picotcp.
> 
> Sure. It's older and it has a loyal (or addicted) user base and
> commercial support. Or it just needs more commits because it'w worse and
> full of bugs.

Yes, it can go both ways. I am not arguing in favor of comparing
absolute commit count, but I think we might be better off using
a network stack that we don't have to completely maintain ourselves,
given that we already had a network stack that we maintained ourselves
that we are looking to substitute.

In the end, the one who does the work is probably who gets to choose
(and argue their choice).

> As far as I know, lwIP is horrible code, difficult to integrate and
> maintain
Thanks for your input. My only interaction with lwIP so far was some
weekend time spent on integrating it into the barebox build system,
but I haven't went further than that to actually wire it with the network API.

> while picotcp is designed in the right way (although I admit
> I only looked at the former, about picotcp I only talked with the main
> author without looking at the code).

I think best case, we would proceed as suggested by Antony: Rework
the interfaces in barebox, so both the existing network stack and lwIP
(or picotcp) can be integrated using the same APIs.

> I'd love to add mqtt to my microcontroller projects, where I have udp
> but no tcp yet, and I would never rely on lwIP. That's just a personal
> opinion, but I'd better not rely on the date of last commit to pick
> or not pick a library.

Did you try integrating picotcp instead? What issues did you run into?

Thanks,
Ahmad

> 
> Regards
> /alessandro
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



