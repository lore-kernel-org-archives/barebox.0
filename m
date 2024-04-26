Delivery-date: Fri, 26 Apr 2024 13:50:16 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s0K5n-001CVL-20
	for lore@lore.pengutronix.de;
	Fri, 26 Apr 2024 13:50:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s0K5n-0003hJ-1Y
	for lore@pengutronix.de; Fri, 26 Apr 2024 13:50:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=x07PJR8R1AAgYDQHo8G0DdsEpT3V00Iaj2jcg2E9A6I=; b=guXfwsyZy+z3/Fu7b6xE2lR1oI
	cM/4X7F3JeJvzC+BZSuztJjwQrUARI2cqXoQN8f90X33hGnzP9jJSbkmY6JCuHQxgcn6nkhV7NqCz
	njB3pC8iqhdHbw8gN0wBb+fPwqKlR3IsBSgSaPu/gS8t4uGMhJ1YyKNSKuAP/mQ/V2bQiP98ae29F
	REVsHFLcPShqbQRcm1VmwsCL7p9V7Jgk/pmlWRmZIC/QaJ7HbmXD08wp2dgowI0sDsFcD0dq4ppj5
	LIXYIZUB6NdZB8LHLpyfejNYNz0GzrtLJHnhWkqBeDAJq+9wpPBLQOxkBZ2Bhvy+mRU0mGAKyXc66
	j+Y3O6JQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s0K5A-0000000CO4w-3M7C;
	Fri, 26 Apr 2024 11:49:36 +0000
Received: from mailrelay6-1.pub.mailoutpod3-cph3.one.com ([2a02:2350:5:425::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s0K52-0000000CO2I-40GF
	for barebox@lists.infradead.org;
	Fri, 26 Apr 2024 11:49:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ravnborg.org; s=rsa1;
	h=in-reply-to:content-type:mime-version:references:message-id:subject:cc:to:
	 from:date:from;
	bh=x07PJR8R1AAgYDQHo8G0DdsEpT3V00Iaj2jcg2E9A6I=;
	b=BeEVLtTCY/pKLcZhaUQYLE83twb/1T339ZR6532SIudHSO4rR9lwXN9DR7lcA4MEQe84fPycnXIfO
	 LFdPn5U8gxxkXop2hICiN+jwtehEPl25B4lSW/by36Mq1gIfEcsAVC8eWKxsU5VGRUCPN7iYpYoOO+
	 8Nc9zRry4BNzBcuhT4HuCDjG/Jg8gXD8VUuqxPxITQNWtyMuUrDvSa//KAB7szB6SgbDU9Ew+T0/QS
	 BdPiIHM9FPND8a2ZjJUOmFQpqzj0hmq8QpMLBdM/CJUSASQbBkvivZIFScmNB0cedMFPxOMjf1ax3o
	 Di355q8UxUnXD0HFUOMs9Zkfy9ep1Wg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
	d=ravnborg.org; s=ed1;
	h=in-reply-to:content-type:mime-version:references:message-id:subject:cc:to:
	 from:date:from;
	bh=x07PJR8R1AAgYDQHo8G0DdsEpT3V00Iaj2jcg2E9A6I=;
	b=plNT5DjNlGA9HqrJtuMKGjgKpdJDIVoDTzumiie5/FzldpTW4Q/GmSaPWBGuouC3YsupeHUyGwCmD
	 zb1fG/1BA==
X-HalOne-ID: 048534df-03c3-11ef-bfda-83bcbd00a978
Received: from ravnborg.org (2-105-2-98-cable.dk.customer.tdc.net [2.105.2.98])
	by mailrelay6.pub.mailoutpod3-cph3.one.com (Halon) with ESMTPSA
	id 048534df-03c3-11ef-bfda-83bcbd00a978;
	Fri, 26 Apr 2024 11:49:22 +0000 (UTC)
Date: Fri, 26 Apr 2024 13:49:20 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>,
	Jan Weitzel <j.weitzel@phytec.de>,
	Vicente Bergas <vicencb@gmail.com>, Bo Shen <voice.shen@atmel.com>,
	Matthias Kaehlcke <matthias@kaehlcke.net>,
	Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20240426114920.GA1036113@ravnborg.org>
References: <20240425115439.2269239-1-s.hauer@pengutronix.de>
 <20240425115439.2269239-11-s.hauer@pengutronix.de>
 <20240425165648.GA999552@ravnborg.org>
 <ZiuI_jJd9LNWMpuC@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZiuI_jJd9LNWMpuC@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240426_044929_978351_61EEC137 
X-CRM114-Status: GOOD (  18.83  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 10/15] ARM: remove non PBL Atmel boards
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Fri, Apr 26, 2024 at 12:59:10PM +0200, Sascha Hauer wrote:
> Hi Sam,
> 
> On Thu, Apr 25, 2024 at 06:56:48PM +0200, Sam Ravnborg wrote:
> > Hi Sascha
> > 
> > On Thu, Apr 25, 2024 at 01:54:34PM +0200, Sascha Hauer wrote:
> > > Some Atmel AT91 boards still do not have PBL support which becomes
> > > mandatory soon. Remove these boards.
> > > 
> > > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > > ---
> > >  arch/arm/boards/Makefile                      |   3 -
> > >  arch/arm/boards/sama5d3xek/Makefile           |   6 -
> > >  .../defaultenv-sama5d3xek/bin/init_board      |  15 -
> > >  .../sama5d3xek/defaultenv-sama5d3xek/config   |  44 --
> > >  arch/arm/boards/sama5d3xek/hw_version.c       | 236 ---------
> > >  arch/arm/boards/sama5d3xek/hw_version.h       |  40 --
> > >  arch/arm/boards/sama5d3xek/init.c             | 475 ------------------
> > >  arch/arm/boards/sama5d3xek/lowlevel.c         |  23 -
> > >  arch/arm/boards/sama5d4_xplained/Makefile     |   4 -
> > I have patches that DT enable this board, and an attempt to
> > add PBL support (which did not succeed).
> > 
> > I did not touch the patches since last summer, so some rebasing is
> > required.
> > I will try to find time to give it a spin within the next days and
> > post the result.
> 
> Ok, thanks. I'll mark the board as broken then instead of removing it.
Good plan then you do not need to wait for me.
The rest of the patches looked like nice cleanup all over.

	Sam


