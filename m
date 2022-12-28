Delivery-date: Wed, 28 Dec 2022 11:48:55 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pATzT-00BVE7-Vx
	for lore@lore.pengutronix.de; Wed, 28 Dec 2022 11:48:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pATzS-0008RA-4k
	for lore@pengutronix.de; Wed, 28 Dec 2022 11:48:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Kq6TsgVHwrT6cv6lJLx99JJS1J6E87LLqsDUvqD3NkY=; b=XO38j0XfjLZ2B2yiBD5GHe0tvF
	QD7dmo+5cOWYtA6T3+bATHscXiGfnUzwwpXNtdgpn7lM1hGeMtyxoxnKBxolngcqd6ryYYq2QBruN
	6gQ5yf5CZ7nQ6Zu+3+rSLYgcPJIBo3BVoZW8tk75CecbEdp+SrVYf1Q/E0rchw+HwlrqcmvB7iRwh
	BAHARXnu6OwC75kCGOOqY9jqInYpEh65AThUc/Oh9weGlIO0dYJZtm1wLsPSZCLxzoJznYO+XdggB
	z8ganAQtdz9tKQL1V+1zBFAZjYYlSUWEa2x/xwYs+rbh5lDT7uqtS3t924sO11qqc5pH5BTvg24uv
	PPilgopw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pATxT-004BaH-VP; Wed, 28 Dec 2022 10:46:52 +0000
Received: from mailrelay3-1.pub.mailoutpod2-cph3.one.com ([2a02:2350:5:402::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pATxJ-004BS1-HX
	for barebox@lists.infradead.org; Wed, 28 Dec 2022 10:46:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ravnborg.org; s=rsa2;
	h=in-reply-to:content-type:mime-version:references:message-id:subject:cc:to:
	 from:date:from;
	bh=Kq6TsgVHwrT6cv6lJLx99JJS1J6E87LLqsDUvqD3NkY=;
	b=DTNg6zB1Bc0Aift6Ul3Pw44b4CCPvzLsh0LjYkMeNrw5VFB9G7Vopt4dG/6lY2hzzKgx/0QLrIh5S
	 n3Zk2+gAhhN1qXsPJK8R6POtVg06zqZPqEruTckKDJWw7GaeCus1MUiZMF4aUJlsf5TgxRAhcL64h6
	 H/d2R8iarP5iuQPCHUGpEsuGPlHLkPXNYuLz8m7LXeZ/YAXflWc8mG/d1Cl73yqSUGwTAxExJapOpp
	 gbAkl8owaDl2S/hN1olfzYTRUv72nwnriCC1SfvY7G9mnSL8XUgHCM2Nscw8MnaNbkeAE07Ao0MEV4
	 vXQNR8qsPh2ED8tar4e0f+dxYiuyMJw==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
	d=ravnborg.org; s=ed2;
	h=in-reply-to:content-type:mime-version:references:message-id:subject:cc:to:
	 from:date:from;
	bh=Kq6TsgVHwrT6cv6lJLx99JJS1J6E87LLqsDUvqD3NkY=;
	b=vCsL7kRSaAGvFz+X8hkhwQ/piFTL/d2yVFxduGlKOvZbjD3nyxSdMyZOHmUsho1ZilEd15yAJuAn8
	 9UbUEAJAg==
X-HalOne-ID: e270e4e0-869c-11ed-9754-ede074c87fad
Received: from ravnborg.org (2-105-2-98-cable.dk.customer.tdc.net [2.105.2.98])
	by mailrelay3 (Halon) with ESMTPSA
	id e270e4e0-869c-11ed-9754-ede074c87fad;
	Wed, 28 Dec 2022 10:46:31 +0000 (UTC)
Date: Wed, 28 Dec 2022 11:46:30 +0100
From: Sam Ravnborg <sam@ravnborg.org>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Y6wehj862Z+p/3f/@ravnborg.org>
References: <20221214105831.844421-1-a.fatoum@pengutronix.de>
 <Y6rIcs6xsavNUtot@ravnborg.org>
 <4b535e4b-688c-4837-4953-4de558c8cd1d@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4b535e4b-688c-4837-4953-4de558c8cd1d@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221228_024643_723346_D14C7E67 
X-CRM114-Status: GOOD (  32.49  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 00/11] ARM: at91: sama5d4: add basic Wifx L1 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Ahmad.

> I have also resynced the Atmel NAND driver with
> Linux to get support for the new EBI binding, but I'll send that out
> as a separate patch once this is in. (If you need it for your hacking,
> I can push it somewhere before that though).
No need for the new EBI binding atm, so no reason to rush it.

> 
> > The DT file in patch 11 looks like a file that would be a good linux
> > kernel candidate - but I guess this is for someone else to do.
> 
> It's on the bucket list, but first barebox, DistroKit and then eventually
> upstreaming the kernel DT.
Hopefully there is a fist stage bootloader somewhere in the todo list.
I really like how this works with PBL and multi image - it is very elegant
in barebox and then at91bootstrap is no longer required.

> > I look forward to the day where the remaining three sama5d boards are all
> > multi-board and DT-enabled. This patch-set brings us a step closer.
> 
> I don't have the boards, that are not yet DT-enabled, but I guess due
> diligence is done if we verify that the DT-enabled drivers work on some
> other SAMA5 board, which already has DT support. Now, with the NAND
> driver I ported for this, there remain three drivers that I have so
> far not tested:
> 
> LCD, PWM and USB (Both Host/Gadget).
> 
> If you tell me, that all these already work just fine for some SAMA5 with
> DT (or that they didn't work at all for SAMA5 without DT), I can send the
> patch series switching the remaining boards to multi-image.

I have a sama5d4 eXplained board - but the display no longer works.
I will try to take a look at DT enabling the board if I find time.
We can revisit what to do then, if you do not beat me to it before.

> 
> > Do you know if there is a way to read bootsource from an at91sam92XX
> > CPU / ROMBOOT code?
> 
> I just observed that the info is in r4 on all SAMA5 SoCs. Maybe that's
> the case for the older SoCs too?
Looking at at91bootstrap I do not have high hopes.
Only the sama5 chips have this code enabled.
(Looked at v3.9.3 - which is the latest with at91sam9x support).

	Sam


