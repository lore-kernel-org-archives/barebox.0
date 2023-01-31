Delivery-date: Tue, 31 Jan 2023 07:35:52 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pMkFE-008Wyc-9i
	for lore@lore.pengutronix.de; Tue, 31 Jan 2023 07:35:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pMkFB-0002wI-Qz
	for lore@pengutronix.de; Tue, 31 Jan 2023 07:35:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=upAVVEIORjvZyiTNXIED+R8cYDev5yk4isRWJ/upZ4o=; b=kqXX5Tt9pwvNTII+GLLFBMHYIK
	Flzq0mO0lTq2NUnn2wAqVLwgLoQjKVNTwhVSdFSrAOiGyjqh8ejbUggUfbY9ju0jWMXOeNELtguil
	SWVlcZGYNh6U207k7sxwe+kJyCrwECNDCoQt1ye8gtKWzzsnz44Xn0eQLwg1PjXRrQ6rpIWnSQCUB
	2mbP142BAmG2B3tP0W8kjcULt3utWd22u4urxGaAS0NpbabI6lyDYBPBHJPpVCjK2VUl8EHl6AXA6
	OxbG/S+d1ZmKW5/bOdkY6ryNCY8KPkq2ghTKnmjQcjG1aaJaa7g8QeDfel/O2NSbaFWnOZMmh/RJp
	b50cqDVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMkDn-006TE7-CH; Tue, 31 Jan 2023 06:34:23 +0000
Received: from out-223.mta1.migadu.com ([95.215.58.223])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMkDi-006TCr-B4
	for barebox@lists.infradead.org; Tue, 31 Jan 2023 06:34:20 +0000
Date: Tue, 31 Jan 2023 17:33:41 +1100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1675146851;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=upAVVEIORjvZyiTNXIED+R8cYDev5yk4isRWJ/upZ4o=;
	b=rrQUvAR0kgDeWW+jsXxCdmuZ5HF3qqThoiCbXkTsLvcYY45miF77wfQ2vNEfsXiZ/TPNCF
	A56AawUIJdngCB4TkVdVJBdaLFUImCQyByj9Z5PVVlVm7gKaqZQVuVo6gSszbYXG7ylwGH
	J4kn/WJaAnsfnh0epwN1BUHg7TGkF10Gag0qXeYBqNmnimPTYekqOcUtvu/EGEY0/JHC9p
	OZU0YCZdTC5giIJ25kqnbeIrY56v1s5ea6XwM+egJoP4BxbiwuymJteNHqAPUUhqF+n2wW
	4LKEc1zMIWHAk4KLu2PBlVcnmSTWhZf2bw1pbZ2tg14f1t2Iewm+9UomrkRHVA==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: John Watts <contact@jookia.org>
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Y9i2RdNosw238ca1@novena-choice-citizen>
References: <20230126185643.104049-1-contact@jookia.org>
 <20230130102727.GQ13319@pengutronix.de>
 <Y9efLdQi++e/ZFOn@novena-choice-citizen>
 <20230130121752.GR13319@pengutronix.de>
 <Y9e3F2WtTDWOhbE0@novena-choice-citizen>
 <20230130123142.GS13319@pengutronix.de>
 <Y9e+dKTG59Y0Kxhl@novena-choice-citizen>
 <20230130163658.GT13319@pengutronix.de>
 <Y9gPlWk6pCA6WnQ5@novena-choice-citizen>
 <20230131061440.GU13319@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230131061440.GU13319@pengutronix.de>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230130_223419_147483_44AE830E 
X-CRM114-Status: GOOD (  16.58  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] I2C: i.MX: early: Use internal udelay
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Jan 31, 2023 at 07:14:40AM +0100, Sascha Hauer wrote:
> On Tue, Jan 31, 2023 at 05:42:29AM +1100, John Watts wrote:
> > On Mon, Jan 30, 2023 at 05:36:58PM +0100, Sascha Hauer wrote:
> > > You can't disable MMU during runtime, but you can compile without MMU
> > > support, just disable CONFIG_MMU. However, the early I2C code already
> > > runs with MMU disabled, can't you just put in some test code there?
> > 
> > This is going to sound really silly but I'm not sure how to time the code
> > without a clock. I guess grabserial?
> 
> You could udelay(10000000) and measure the time with a stopwatch.
> That should be accurate enough for this purpose already, in the end
> the time will differ anyway between SoCs.
> 
> If you want to measure more exactly we have this little perl script
> which prints a timestamp for each line printed.

Right I shall try this- though I do wonder if this is a lost cause if the bus
clock changes in future i.MX chips.

Unless this is specific to the I2C clock. But I was under the assumption the
registers aren't dependent on the clock.

> Sascha

John.


