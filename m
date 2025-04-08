Delivery-date: Tue, 08 Apr 2025 11:34:52 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u25M3-009vhB-37
	for lore@lore.pengutronix.de;
	Tue, 08 Apr 2025 11:34:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u25M3-0004OO-6E
	for lore@pengutronix.de; Tue, 08 Apr 2025 11:34:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:Subject
	:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2Y38OlkT8PsH+gd81d4CXEQueb6hOtPaXZbmDT1dTrI=; b=K0WD6mjDfKaKpt
	YBbpFYkRW1Y3Z3RF2tKenU28dGfG+Ykew/zvgwp9rWTzNB3F48OMUWNbEzlWRaDaZK1yFOJejrwGu
	WlP+7VAeHMjh4ZMQDXC9ePFww6/OSkWigZql3cquQ5d5Qy5cZG3OHtumW9YE2e1+OeQcb1d/WfWjM
	eWsAz1BOHSzWJ2NleMV7/EhujNZ+DBAyC9ATOcWrpmS5lV8foeP09nfWgimcs4Dv/ejJz8P2kfk14
	lqGuhaXMOJnVDp8Ni4F6PPV7ZvvFg/0nMXglbzYSM2k032JtH1mNfeyP74RXEe8oYyYPYOPv0EWkw
	DtW12XwTakaAJUxwO62Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u25LU-00000003Sho-45wQ;
	Tue, 08 Apr 2025 09:34:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u25Fu-00000003RSZ-3rm3
	for barebox@lists.infradead.org;
	Tue, 08 Apr 2025 09:28:32 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u25Fq-00027c-MI; Tue, 08 Apr 2025 11:28:26 +0200
Message-ID: <9d01a2d4-6ad7-4b80-b212-ea473e228f33@pengutronix.de>
Date: Tue, 8 Apr 2025 11:28:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: David Jander <david@protonic.nl>
References: <CANH4o6Njc3uHE=NbasRJrRr0W5B89R8MTM_BwGwab7t5fNWuaA@mail.gmail.com>
 <Z6yxUVTp0vGWqs7Q@pengutronix.de>
 <CANH4o6NRK2+ekNe_LrUaoAi8PVbi-MC3hWerv4g6F-WmXmyK5w@mail.gmail.com>
 <Z8GWfv4oIhB7CDSU@pengutronix.de>
 <3ba4d5f3-9679-4a32-a3e7-a8c958107df9@pengutronix.de>
 <CANH4o6PN3tJC+zLt_eLeKzJ6BVFnGo+vYFDF+9Hjp9x6oz626g@mail.gmail.com>
 <20250305123032.2b2c7768@erd003.prtnl>
 <7b73bca5-c1a2-4260-9c8a-510887ba4be8@pengutronix.de>
 <20250305145543.30c3c8fa@erd003.prtnl>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250305145543.30c3c8fa@erd003.prtnl>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250408_022830_974222_D9368C3C 
X-CRM114-Status: GOOD (  21.55  )
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
Cc: Barebox List <barebox@lists.infradead.org>, Cedric Blancher <cedric.blancher@gmail.com>, Dan Shelton <dan.f.shelton@gmail.com>, Martin Wege <martin.l.wege@gmail.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Mount NFSv4.2 filesystem in barebox?
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi David,

On 05.03.25 14:55, David Jander wrote:
> On Wed, 5 Mar 2025 13:51:51 +0100
> Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
>> As we gain more confidence in the implementation (or rather import mptcp and focus
>> on fuzzing that), this will change, but as things stand now, it's is not advisable
>> to do network boot of signed images.
> 
> Aha. Interesting. I suppose you mean network boot of signed images from
> something like NFS (a complex filesystem) as opposed to TFTP (which is more
> akin to a raw partition in terms of simplicity of the protocol)? Or is TFTP
> already outside of the security comfort zone of barebox?

There has been some external fuzzing of barebox network functionality, e.g.
https://www.ndss-symposium.org/wp-content/uploads/2025-330-paper.pdf

We need to do this in a more systematic fashion, which means go through
all parsers in the secure boot path and fuzz them in an automated manner
as new code is integrated.

TFTP should eventually be part of that, but focus for now is on defining
some "normal" secure boot path, fuzzing it and upstreaming the infrastructure,
where normal is defines as raw FIT partition in a GPT/MBR on an eMMC.

>>> What if the NFS server needs to be secured with with GSS and
>>> kerberos? Barebox possibly won't be able to access it unless it also supports
>>> that.  
>>
>> Yes. I think HTTP(S) support may be a better investment of time, even
>> if it means having to use two protocols still.
> 
> I agree that if secure-boot is involved, the net-boot solution for barebox
> should be the most simple protocol possible so that we always have some
> transport implementation that can be hardened with the lowest effort, whether
> that is TFTP or HTTP(S). It surely won't be NFSv4.2+kerberos or anything like
> that. Still, there are likely a lot of cases, where a physical access barrier
> is secure enough, and bare NFS can be used, so let's not immediately shoot
> down the idea of having an NFSv4 client in barebox ;-)

No shooting down, just explaining my view of things. :)

> A basic HTTP get-only client implementation is probably simple enough
> without the (S) part if the sole purpose is to download a signed fit image?
> 
> Of course, the server part for boot purposes should probably also be a small,
> trusted code-base and not something like a full-blown webserver, full of
> enormous attack surfaces due to the lack of TLS.

There has been multiple TCP/HTTP attempts in the past, it would be nice
to get something into shape enough that something can finally be integrated
upstream.

Cheers,
Ahmad



-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


