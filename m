Delivery-date: Tue, 21 Mar 2023 20:04:22 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pehHQ-009Y9y-TY
	for lore@lore.pengutronix.de; Tue, 21 Mar 2023 20:04:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pehHQ-0004PO-Sd
	for lore@pengutronix.de; Tue, 21 Mar 2023 20:04:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cU8NqRiFK5rmmVKtXoac0JZUrX/xU5lsRdG1cDcoSjw=; b=zJpVmXOzpYHAn8XeT+wlKrQU9y
	l3VuCVTyeFNk3aoQ/JW+RltTJ0eedTAmsHTIvNoyfm/KTuURdAczyYsr4xUgndCfZ1Nqty4lfZqzd
	j8ueEysOzxDaHRh9Il59oVdTckZ9228i6hpNlIWGrQYDbj1eseYFpj1HvPVuV9nqlbHxzfRhFr9oV
	C4ihzT/FmNAoo26pqOxhvbbnj8Lmaj7Gh6TsYq2QfLWpET1CKRApKl4JNVPC820QWpFnfEldbV3Y0
	mFsxoB1rRnj+/U6BqZpHTq2fx3dcQ66zqZGeZ83Igf4qJ/hs0zVhKcFZ5S5ircq9hZTXZw951xdjM
	rZvwlEHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pehG1-00DPj8-1K;
	Tue, 21 Mar 2023 19:02:53 +0000
Received: from mailrelay1-1.pub.mailoutpod2-cph3.one.com ([2a02:2350:5:400::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pehFr-00DPhQ-2C
	for barebox@lists.infradead.org;
	Tue, 21 Mar 2023 19:02:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ravnborg.org; s=rsa2;
	h=in-reply-to:content-type:mime-version:references:message-id:subject:to:from:
	 date:from;
	bh=cU8NqRiFK5rmmVKtXoac0JZUrX/xU5lsRdG1cDcoSjw=;
	b=mF2ElwpDlwZAzg3hi+5W4CvsDs0LWNo5ifNJLj9onQuOqGnulEZVzGVu3NSclXXCzRXPTi8zFTbU5
	 Dwbd1DBck3p4bMP+9ChuAlsgWQy1UJmgGwecCpzUWF17LLM1jf1SxcG9IK0SRrKAzeff0kW7Nn2hK3
	 2RIhMUfYk314am75F30rAsYyCwQd44WBORbuKmGACfwh4qGYe6BnoXo09Ja3DVaohblLw/OsuZD5MU
	 z/PgaO0i1bpQrXHRXHw407CPibSs3MGDz3qH85F9mUg4tii85zpGQqpfi7I4jM38kKWwMAmkc9c7oQ
	 KNeoLEhMUmLzwWFVI6XFF4NUPalxfFQ==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
	d=ravnborg.org; s=ed2;
	h=in-reply-to:content-type:mime-version:references:message-id:subject:to:from:
	 date:from;
	bh=cU8NqRiFK5rmmVKtXoac0JZUrX/xU5lsRdG1cDcoSjw=;
	b=w+IvYiC61R6DLh47T6k+JFM4IYmDONqZ0xL1S0d1/i7qVRGwVrbdNjI/x5kDuG5vMGgPtPghzmJjl
	 PhucS1RDw==
X-HalOne-ID: ef9d4660-c81a-11ed-9560-11abd97b9443
Received: from ravnborg.org (2-105-2-98-cable.dk.customer.tdc.net [2.105.2.98])
	by mailrelay1 (Halon) with ESMTPSA
	id ef9d4660-c81a-11ed-9560-11abd97b9443;
	Tue, 21 Mar 2023 19:02:35 +0000 (UTC)
Date: Tue, 21 Mar 2023 20:02:34 +0100
From: Sam Ravnborg <sam@ravnborg.org>
To: Wolfram Sang <wsa@kernel.org>, Sascha Hauer <sha@pengutronix.de>,
	barebox@lists.infradead.org
Message-ID: <ZBn/ShAwKik7TdvZ@ravnborg.org>
References: <20230319154909.24047-1-wsa@kernel.org>
 <ZBdZxskg+JPzUY0t@ravnborg.org>
 <ZBd+Z+qn9rjuvp6S@sai.fritz.box>
 <20230321085848.GI7446@pengutronix.de>
 <ZBnnbU1SUkNm4ryz@sai.fritz.box>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZBnnbU1SUkNm4ryz@sai.fritz.box>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230321_120244_686688_7D161AED 
X-CRM114-Status: GOOD (  29.72  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/3] mtd: nand: atmel: legacy: fix boot on USB-A9G20
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Wolfram.

On Tue, Mar 21, 2023 at 06:20:45PM +0100, Wolfram Sang wrote:
> Hi Sascha!
> 
> > Nice to hear from you here ;)
> 
> Yeah, it has been only 10 years... :)
> 
> > I have no idea how the SDRAM setup is done on the USB-A9G20. There seems
> > to be SDRAM setup code for the USB-A9263, but not for the USB-A9G20. Is
> > there some AT91Bootstrap required?
> 
> Yes. There is a bootstrap required: https://github.com/linux4sam/at91bootstrap
> However, an old version is needed. I am still fighting the details.
> 
> I accidently erased it, so my journey for unbricking the device began.
> at91bootstrap, openocd, barebox - they all once supported A9G20, but
> nowadays all of them were broken. Well, I fixed openocd and barebox
> mostly so far, the bootstrap is still the missing piece.

You may be hit by the newer gcc optimize the delays in
the sdram init code in at91bootstrap.

This code:
	/* Step#4 The minimum pause of 200 us is provided to precede any single toggle */
        for (i = 0; i < 1000; i++) ;
Are optimized away with newer gcc's.
You can find it repeated several times in the init code.

I think this was the only part what broke at91bootstrap for me.
It was Ahmad, IIRC, that told me about it - so not my finding.

> 
> Super interesting about the A9263 setup code. I missed it so far. Does
> that mean that barebox can replace the at91bootstrap?
Yes. The patch series I pointed at generates a bare variant that I
successfully used to boot my board direct from ROMBOOT.
It is a direct replacement for at91bootstrap and loads barebox as the
next step bootloader.
I really like the way it is all integrated and how the two barebox
variants are built in one go.

	Sam

> 
> > Anyway, what's really missing is DT support. I scribbled a patch to get
> > you started in case you are motivated. Basically it's: Compile in the
> 
> Motivated? No way ;) Obliged? More so. But first, I want to unbrick my
> device. First make it work, then make it beautiful.
> 
> That being said, the two patches from this series are okay? I'd think
> they are still needed for other legacy systems even if I convert A9G20
> to DT in some ages.
> 
> Thanks for your help!
> 
>    Wolfram




