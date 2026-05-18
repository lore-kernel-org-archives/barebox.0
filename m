Delivery-date: Mon, 18 May 2026 10:54:16 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wOtjr-0014bf-38
	for lore@lore.pengutronix.de;
	Mon, 18 May 2026 10:54:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wOtjr-0008Qn-94
	for lore@pengutronix.de; Mon, 18 May 2026 10:54:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=U5E2pjnGFt9KQgLstGP4cNsmvxVl2NsaqpKtPKux7ag=; b=L1k1Hd1N5B5FadaK9+E6YsUssY
	uw/bd/vQCLgam/PgXYCb0EWovdkKN93YJxRqsHUM1cRwgRl+bRO1orXLzG1rV0JKnD2Py96Vftv57
	e3P3vWLEbPYV3Y9P2J0zi0gsump/SKn08fydsoZuqhHM8HktYERUbB/EC8uzHvu/Zz6qwC1olbzp/
	+Nfb0mN5czjeriPRbYoINE4OoVAtdqYlJGOe2mLPoD5N/GqDidLMPDpZ0UUZkuNkO5+J181Hvxc+B
	d7nj0hEd08bcuo1BFMXAxLak7vlMb93EI0K2KByYVxlXJThrn6YQnR/2SzYwLf7QZPKNLxRWpldCj
	u9oDHFUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOtj8-0000000Etu8-3yQq;
	Mon, 18 May 2026 08:53:30 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOtj8-0000000EttV-0DlI
	for barebox@bombadil.infradead.org;
	Mon, 18 May 2026 08:53:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=U5E2pjnGFt9KQgLstGP4cNsmvxVl2NsaqpKtPKux7ag=; b=qJYP2Ck9x/xi+ilOHvtBPwtqo7
	95pnEPzGVxvxp5XnWJxokxY83p1AiMkAp3e3iTml1xKU1X00MG3oFOfENaVWUEZ6N14c5kbEPI1WU
	AXrxo/MYoVf40WeqO97Q1azx4ubUM2KGR0fgI+zT8Nrs3kmCBt1da6nkpUNl8Uer5/Nlgvlw5pbL1
	Wx8Ng9m/Use7flJLe6bnOng9/Y44sDtnKvs3pORbkFV1IpWM2DVOL77m44CAAF2ZEbzT1MaHNJl9j
	uoULOUqvSGMuTetXKJ0zVtDB6tTAU0i0r+SCJNSTpb8/0/5Ti9xaU9WY2UTWiKl6r7WHcLDZoL9Kw
	t9rLHMEw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOtj4-0000000AT9h-2mYt
	for barebox@lists.infradead.org;
	Mon, 18 May 2026 08:53:29 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wOtj4-0008FF-Hp; Mon, 18 May 2026 10:53:26 +0200
Message-ID: <32dbf417-df9b-4084-914a-37216e2ea64f@pengutronix.de>
Date: Mon, 18 May 2026 10:53:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Mark Diener <markdiener10@gmail.com>, barebox@lists.infradead.org
References: <CAC3g_BFiUrH19_yab4Bn+jNAH9akcupYAvvbzbZh++SiDap4Ng@mail.gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <CAC3g_BFiUrH19_yab4Bn+jNAH9akcupYAvvbzbZh++SiDap4Ng@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_095327_137218_5BBAFF37 
X-CRM114-Status: GOOD (  18.00  )
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
Subject: Re: ENV
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Mark,

On 5/14/26 11:53 PM, Mark Diener wrote:
> Is there better resources to detail how to properly understand the
> details behind /env/  (its creation and components)?

What are you missing in the official documentation?

> I cannot get the barebox.efi to actually execute the /env/bin/init script.

Scripts in /env/bin are added to PATH, so you can execute them by just
their name (instead of their full path), but they are not automatically
executed.

If you want a script to be executed automatically at init time, add it
into /env/init/.

> bareboxenv seems like a utility that would be involved.

If you want to modify the script from Linux, yes. bareboxenv is also
used by barebox itself during the build process and can be used to bake
a built-in environment into barebox.

That's the preferred way of shipping the default environment.

What do you want to do in your init script?

> Also, when I bootm my bzImage, it hangs up and seems to lose track of
> mounting the storage so it just stops processing.

Hanging as in seeing a

  Kernel panic - not syncing: Attempted to kill init

?

If so, you must have barebox add a root= option to inform the kernel
where it can find its rootfs.

You can try it out manually using:

global linux.bootargs.myroot="root=<insert your root device or PARTUUID,
..etc. here>"

> My barebox.efi is launching, but tripping on properly have the
> /env/bin/init directory established

/env/bin/init is an optional init script you can provide. I just Cc'd
you on changes to the docs that make this clearer.

Putting your init scripts in /env/init/ is what you are likely after.

Cheers,
Ahmad

> 
> Any comments appreciated,
> 
> Marco
> 
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



