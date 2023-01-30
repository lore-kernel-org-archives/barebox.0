Delivery-date: Mon, 30 Jan 2023 19:21:08 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pMYmE-007siM-2h
	for lore@lore.pengutronix.de; Mon, 30 Jan 2023 19:21:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pMYmB-0000qn-6t
	for lore@pengutronix.de; Mon, 30 Jan 2023 19:21:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZKTAFJCoxlYdytEUStZNBNq+s8ohELU9mbqM2U3i90E=; b=oC9+zi0UTE6eLyDYkS4X4hFGGh
	Sp15nkYYp3vcavpcWSy8Dh7odQJhTWFwS3LGXDB1A1hqhV63mdEumtLZWVj3sz2vZ4KzzkpATsE8v
	27QwEz7mOO1yLMi0rTFQTwEs14HeAS8zT5j8MKEh539bTyaW272t2eunTFYwRlyQrDxeLZu+c1CNt
	zwgjuAVCoKpnDHtimfA8OULNJSH1NdUl0A9Moj5N/pp84gWF8tDiORbrz5bOquvzgdM/IJ0muesl9
	6+IF0f9aSzIY4M7koltA+ekOywnupMTujhKRiIfma5jMj9d4sPW/H+te1qgf2AWy3jqs0aY3cyRLj
	FbD45lQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMTE0-003UI5-Ua; Mon, 30 Jan 2023 12:25:29 +0000
Received: from out-224.mta0.migadu.com ([2001:41d0:1004:224b::e0])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMTDu-003UHE-Hl
	for barebox@lists.infradead.org; Mon, 30 Jan 2023 12:25:24 +0000
Date: Mon, 30 Jan 2023 23:24:55 +1100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1675081518;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=ZKTAFJCoxlYdytEUStZNBNq+s8ohELU9mbqM2U3i90E=;
	b=QQA4kG3XtOJhCbzoobHHF8csmOjA536x3fKEqtSCsxeIpIYer12D6PPH3+bNifC1O/cq8+
	8pARpiq9qfEx1vcfDc8DRoXfJ5n/KJebzN6Ek5aJ3tr/jCuip3knX0IPv2Aqcgr2+9E5Pf
	IhhcXoy7GeiNUwg1V+x1UFR9S9hfDwEIYVlGDipu5t87muVEETWf7VVy5W3W2gqQO/RjWs
	SalTIyqSz2Gw+JeeIl9Zr4uR9yhN0LJ+avHLx+tDWMs6m5NeXZToltbK+NV9DUBC5AgGx2
	QQhR2y8H8c9O9kRLU8k4jdVHgB01FlC9Vwr9bY4p+qIsKtPVrco0uhtEp2hS/A==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: John Watts <contact@jookia.org>
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Y9e3F2WtTDWOhbE0@novena-choice-citizen>
References: <20230126185643.104049-1-contact@jookia.org>
 <20230130102727.GQ13319@pengutronix.de>
 <Y9efLdQi++e/ZFOn@novena-choice-citizen>
 <20230130121752.GR13319@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230130121752.GR13319@pengutronix.de>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230130_042523_444307_11BB59FB 
X-CRM114-Status: GOOD (  15.81  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] I2C: i.MX: early: Use internal udelay
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jan 30, 2023 at 01:17:52PM +0100, Sascha Hauer wrote:
> On Mon, Jan 30, 2023 at 09:42:53PM +1100, John Watts wrote:
> > On Mon, Jan 30, 2023 at 11:27:27AM +0100, Sascha Hauer wrote:
> > > This takes around 5 times too long on a i.MX8MM and around 50 times too
> > > long on a i.MX6Q. This was measured under a regular barebox on the
> > > shell. In an early environment with MMU disabled it takes 730 times too
> > > long.
> > 
> > Yikes! I'm glad I broke this in to its own patch then. :)
> > 
> > I did copy this code from these boards:
> > 
> > arch/arm/boards/cm-fx6/lowlevel.c
> > arch/arm/boards/skov-imx6/lowlevel.c
> > arch/arm/boards/technexion-wandboard/lowlevel.c
> > arch/arm/mach-imx/xload-gpmi-nand.c
> > arch/arm/mach-imx/imx6-mmdc.c (uses 1000 loops)
> > 
> > Maybe it's time for an i.MX6-wide early udelay?
> 
> i.MX6 is not enough, the code could run on other i.MX SoCs as well.

Do you think a patch that implements udelay in PBL using the code below with
a fixed base and drops these implementations would be a good idea?

> I tested this with a call to this udelay function with a sufficiently
> great number of microseconds surrounded by a printf.

Ah okay.

> I briefly looked into this, but the commit history of both barebox or
> Linux do not give a real conclusion what we are waiting here for.
> 
> Sascha

I see.

John.


