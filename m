Delivery-date: Wed, 05 Mar 2025 14:56:27 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tppEa-00ACj4-1K
	for lore@lore.pengutronix.de;
	Wed, 05 Mar 2025 14:56:27 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tppEZ-0007TQ-0h
	for lore@pengutronix.de; Wed, 05 Mar 2025 14:56:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s2bvLaaKJU63ciV6V1nmt9mjKPgQ2CWOAelQpbPbieE=; b=NFzrwRR2IJXvQh
	Rso5vcp75e/pkRtGUgZgeZ7iVAQHkzK+2U2EmLUKI2jVpbEDRsT/4+Kw7NNhYAyOsPBe14qYWxhB9
	CeCnAzCntTl7o2tUSbB4Sx4k9uFVq4CP6Z5lWE7QLIgTQgWjTvC1jfUn37jReWdVOQmRyvTlaqJOH
	Y5Br5TEGiaXwSY5MqueLgD78MsmVhm7oiBME/QKHQqdKai/e4PDqDMD1tJLPxHrAIVFEmxkF//EJo
	1Jlhvy/ABklbSMLdVfIKWMQtrlqwlZdiQBP/4vIBueYBtuRdFvWXER+1SvU/fTHPYgXZi4oAJH5SG
	QzwpNX4HMDw9zptXN6rw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tppE4-00000008GC6-0Zy9;
	Wed, 05 Mar 2025 13:55:56 +0000
Received: from smtp28.bhosted.nl ([2a02:9e0:8000::40])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tppDv-00000008GAv-18Qk
	for barebox@lists.infradead.org;
	Wed, 05 Mar 2025 13:55:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=protonic.nl; s=202111;
	h=content-transfer-encoding:content-type:mime-version:references:in-reply-to:
	 message-id:subject:cc:to:from:date:from;
	bh=s2bvLaaKJU63ciV6V1nmt9mjKPgQ2CWOAelQpbPbieE=;
	b=uIO0KJpHwBSay9zPdEPSspjYwUXhzUEFmWcdffKKQa1eqjxvnQnWl0N98T4lGVY85MZichJGICOII
	 tN8mcPq+rqQoSYHz+YznpS2Y/Rkq62Vy28stZiHY+s/1yK+R8iCgl6cwJyYZjAhiQ6K9H+lZrJ8T9/
	 75bnQE43ssO2r3KIw+Dz+INPBYGW00cBB8hXPOVmOkYN5an3KDnwKwOmllpRFzORrqEt2Z8W0Dw01a
	 5dCEt/D/ZCcr1TXr9smEj2ET8hIihrSWLKRpufv640A/wEeJkwSNioUoM4SwCDLyeSoGpcGM2TrSpk
	 J8j9FfXiXMsqdOhyVZDfs/6e18/clbg==
X-MSG-ID: 8808adf8-f9c9-11ef-b5ca-0050568164d1
Date: Wed, 5 Mar 2025 14:55:43 +0100
From: David Jander <david@protonic.nl>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <20250305145543.30c3c8fa@erd003.prtnl>
In-Reply-To: <7b73bca5-c1a2-4260-9c8a-510887ba4be8@pengutronix.de>
References: <CANH4o6Njc3uHE=NbasRJrRr0W5B89R8MTM_BwGwab7t5fNWuaA@mail.gmail.com>
	<Z6yxUVTp0vGWqs7Q@pengutronix.de>
	<CANH4o6NRK2+ekNe_LrUaoAi8PVbi-MC3hWerv4g6F-WmXmyK5w@mail.gmail.com>
	<Z8GWfv4oIhB7CDSU@pengutronix.de>
	<3ba4d5f3-9679-4a32-a3e7-a8c958107df9@pengutronix.de>
	<CANH4o6PN3tJC+zLt_eLeKzJ6BVFnGo+vYFDF+9Hjp9x6oz626g@mail.gmail.com>
	<20250305123032.2b2c7768@erd003.prtnl>
	<7b73bca5-c1a2-4260-9c8a-510887ba4be8@pengutronix.de>
Organization: Protonic Holland
X-Mailer: Claws Mail 4.3.0 (GTK 3.24.48; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250305_055547_456289_93268914 
X-CRM114-Status: GOOD (  44.11  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Mount NFSv4.2 filesystem in barebox?
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


Hi Ahmad,

On Wed, 5 Mar 2025 13:51:51 +0100
Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:

> Hi David,
> 
> On 05.03.25 12:30, David Jander wrote:
> > On Tue, 4 Mar 2025 22:50:00 +0100
> > Martin Wege <martin.l.wege@gmail.com> wrote:  
> >> So yes, you would have customers for NFSv4.1 support in barebox.  
> > 
> > Just wanted to chime in to amplify this a bit, since we are also using NFSv4.2
> > netboot (though only TFTP in barebox for now):
> > 
> > Your arguments are solid, and make a lot of sense. If you are going to replace
> > more and more microcontroller based nodes with Linux capable SoCs, because it
> > makes a lot of economical sense (hardware costs are very similar nowadays, and
> > software development is 10x easier and cheaper on Linux than on a uC), you
> > will end up inevitably with a lot of Linux nodes inside of a machine or
> > industrial plant, where you previously had uC's. So, do you want to continue
> > using 1970's tech (RS485/modbus) or 1980's tech (CAN) to communicate between all
> > those nodes, or will you use Linux's native language (TCP/IP) which also
> > immediately means another 10x reduction in software development costs of the
> > networking part? If you choose the latter, you will also get significant HW
> > cost savings basically for free if you also net-boot (via NFS and/or TFTP).
> > 
> > In other words, why are we not already doing this?
> > 
> > At least we are. We are starting to use Single Pair Ethernet almost everywhere
> > where there were other field-busses involved traditionally. So we noticed that
> > we end up with a lot of boards running Linux connected together via anything
> > from 10Base-T1L to 1000Base-T1. Replace the eMMC chip on all but one of them
> > with a cheap 2MiB SPI-NOR flash to load barebox and netboot from one single
> > board running an NFSv4.2 (and TFTP) server serving the kernel and rootfs for
> > all the others from a single eMMC, that can be updated with a single RAUC
> > bundle guaranteeing consistent software and trivially easy updates on all
> > nodes at once. Not to mention the benefit of trivial repairs because all
> > boards are basically dumb and don't need to be flashed with software that
> > matches the machine they are being replaced in, etc...  
> 
> Which I think is very cool. :-)

Thanks :-)

> > To be fair though, it isn't strictly needed for barebox to have NFS support
> > for our use-case, since it suffices to load the kernel (and possibly an
> > initramfs) via TFTP and mount the nfsroot from the kernel, but IMHO it is
> > certainly valuable to have basic NFSv4.2 support in barebox. It would
> > facilitate the use of just 1 protocol instead of 2.  
> 
> Ack.
> 
> > I also agree that NFSv3
> > support in that regard offers little value since you really don't want to base
> > everything on this obsolete version with all of its limitations.
> > 
> > But also a bit of caution to be mindful of: Cybersecurity. Of course barebox
> > can be made to only boot signed fit images, but are there other potential
> > attack vectors?  
> 
> We have been fuzzing the security critical boot path and issues were found
> and fixed. Our network stack and NFS implementation are not currently part
> of that. The documentation now spells that out and explicitly advises
> against using any unsigned file system at all (whether networked or not)
> to contain a signed FIT image:
> 
> https://www.barebox.org/doc/latest/user/security.html#avoiding-use-of-file-systems
> 
> As we gain more confidence in the implementation (or rather import mptcp and focus
> on fuzzing that), this will change, but as things stand now, it's is not advisable
> to do network boot of signed images.

Aha. Interesting. I suppose you mean network boot of signed images from
something like NFS (a complex filesystem) as opposed to TFTP (which is more
akin to a raw partition in terms of simplicity of the protocol)? Or is TFTP
already outside of the security comfort zone of barebox?

> > What if the NFS server needs to be secured with with GSS and
> > kerberos? Barebox possibly won't be able to access it unless it also supports
> > that.  
> 
> Yes. I think HTTP(S) support may be a better investment of time, even
> if it means having to use two protocols still.

I agree that if secure-boot is involved, the net-boot solution for barebox
should be the most simple protocol possible so that we always have some
transport implementation that can be hardened with the lowest effort, whether
that is TFTP or HTTP(S). It surely won't be NFSv4.2+kerberos or anything like
that. Still, there are likely a lot of cases, where a physical access barrier
is secure enough, and bare NFS can be used, so let's not immediately shoot
down the idea of having an NFSv4 client in barebox ;-)

A basic HTTP get-only client implementation is probably simple enough
without the (S) part if the sole purpose is to download a signed fit image?

Of course, the server part for boot purposes should probably also be a small,
trusted code-base and not something like a full-blown webserver, full of
enormous attack surfaces due to the lack of TLS.

> > P.S.: I am currently not subscribed to the barebox mailing list, so I don't
> > know if this email will get forwarded by the list server.  
> 
> The ML accepts mails from non-subscribers. Infradead is currently slow on
> delivering mail, though, but I hope it will soon show up on both
> lore.barebox.org/barebox and lore.kernel.org/barebox.

It already arrived :-)
Thanks.

Best regards,

-- 
David Jander


