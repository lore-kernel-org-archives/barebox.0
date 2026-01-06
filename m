Delivery-date: Tue, 06 Jan 2026 11:13:26 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd446-001r8o-32
	for lore@lore.pengutronix.de;
	Tue, 06 Jan 2026 11:13:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd446-0007JQ-Ef
	for lore@pengutronix.de; Tue, 06 Jan 2026 11:13:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EwvE/gChckTwrsKVbZKP71RwsmR2WhSC6bNaUDmp664=; b=vH/KbVPJjuFlvKuLGLIp7fl4Tp
	vVF1LfmiJdeA//RNb8NqOxdutDnun7hGJ590o7xSowhRAt0QVP7IK5lWxhIJsM91PcoYNh+q78Rqo
	EdkAHiQMKoxNc/Md+8iNcr3dIrFkJyUmTztQuEU1OrKGXcNXCRBsZIk4CnOadeX7Wy1R08bvYomYQ
	GoPlMTq4SWTASwiw/1oIWwZ8Is5GVyOp8TBLyPruPXwkyC9Z7dESW4PeHHokvG2i+6TjdUX3VzHfL
	NbdCUdVWrEwHtY2+E4ZBatG5UVR1TMfZiuBGob1Tva2WxGn1Ss/ZBE6kWP6d9p8SzYdfiC+7xogkD
	vLvx662A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd43Z-0000000ClYm-4BDI;
	Tue, 06 Jan 2026 10:12:53 +0000
Received: from mail.inside-m2m.de ([188.68.57.244])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd43W-0000000ClXw-3DVW
	for barebox@lists.infradead.org;
	Tue, 06 Jan 2026 10:12:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=inside-m2m.de;
	s=default; t=1767694362;
	bh=0RDiA9MKwopLz7IGZJK3k/+2jk63MTvDtvPv2mxac0Q=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=I9/Ib4L1oeY6oYpBQwjKofyNj0ZSHaFdhaYTgyl5fiGQnG2578rX5fmtuFMaKBlEx
	 EoPaxrT6BuofftHY7PtTMGGZpqwKBWus21bjy6DtJMuf0wXOQQXAxvbVTwY/8K+dwM
	 Iq4WwrEZ9SQMptf3FCUkzdCwPym5TduU4ZZYQCbULupy8PT30qRDWsb7Ymv8sosnGm
	 eE97sDqjVyqXW35gJvqeeE32swibW+ug5xw1VWffbudYISXKZGOj7KYo8HoqvPJj1b
	 DuSWBF960LQynNK6VSbEf6jo1j00x5dnJ4QDFjwIcWyLquNPr8xk5Y2U48dzOJyPgW
	 3PTF5fCKG98Rw==
Received: from hephaistos (business-90-187-159-109.pool2.vodafone-ip.de [90.187.159.109])
	(Authenticated sender: konstantin.kletschke@inside-m2m.de)
	by mail.inside-m2m.de (Postfix) with ESMTPSA id 229EF40236;
	Tue, 06 Jan 2026 11:12:42 +0100 (CET)
Date: Tue, 6 Jan 2026 11:12:40 +0100
From: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <aVzgGHbZipXS7kWr@hephaistos>
References: <aVzVyOKQ-mc4LLBd@hephaistos>
 <20260106095253.souvmkzvzufrkecv@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260106095253.souvmkzvzufrkecv@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260106_021250_944455_081C3E1A 
X-CRM114-Status: GOOD (  11.07  )
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
X-Spam-Status: No, score=-104.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,USER_IN_WELCOMELIST,
	USER_IN_WHITELIST autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: Yocto migration meta-barebox -> walnascar
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Jan 06, 2026 at 10:52:53AM +0100, Marco Felsch wrote:

> Which barebox version do you use?

It should be 2025.02.0.
I switched to walnascar and this should be the part used:
https://git.yoctoproject.org/poky/tree/meta/recipes-bsp/barebox?h=walnascar

> Ahmad added the support for a single barebox binary:
>  - https://lore.barebox.org/barebox/20250422052635.3423961-1-a.fatoum@pengutronix.de/
> 
> IIRC the purpose of the patchset was exactly to fulfill an easier Yocto
> integration since the beaglebone is one of the oe-core real test hw.

That's is very interesting.
What I did not get, yet:
So we can keep our partition scheme, the CPUs bootloader is searching
hardcoded for partition table -> first vfat -> MLO.
Then barebox-am33xx-beaglebone.img is put there as MLO?

> Since the single image approach targets only the SD/MMC boot, the
> standalone MLO image should be still possible.

 Can this be switched on/off somewere in the yocto framework so the old
 MLO/barebox.bin pair is genereated?

Regards
Konstantin


