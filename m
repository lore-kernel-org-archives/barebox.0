Delivery-date: Fri, 26 Apr 2024 12:59:43 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s0JIt-0018MN-2G
	for lore@lore.pengutronix.de;
	Fri, 26 Apr 2024 12:59:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s0JIt-0003CV-4D
	for lore@pengutronix.de; Fri, 26 Apr 2024 12:59:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FvdvNLIP+mXlfSRh5RZz6dK+mO4LCgWZd5oZ+tA/+Z4=; b=pz+d8PZjITDF+HQerC7DEhCLkH
	nQXdOmLTTiqBzRwVWTa42uI31G4o4YqriZM5L3qk0gCoZMPZ9//M43K4J86FGu4d84nGDgLR38ofk
	fQPWy7XKH6OoHuIlbvQdSZ1xWg4KRMKVNS3uI9o1v67DjAo9UtgXOXI8zgE6wYh4/ckYeYMtdWrKs
	loK8NYvsXReDOGip2ZuHfM1GGuUbhxDqXc0Jn/0WYm/cxYSlkL83EvBiacAqDNRaB6GH5IVMfdi84
	juz3jByxgS5YvULtydls/l2tUilKOx3DMouLG06fxbMQMLg/2D9rUaYz4llUWqp1PKAlNL+jCkEOG
	bTrwjnlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s0JIU-0000000CG9p-0y3o;
	Fri, 26 Apr 2024 10:59:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s0JIQ-0000000CG98-16he
	for barebox@lists.infradead.org;
	Fri, 26 Apr 2024 10:59:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1s0JIP-0002of-1L; Fri, 26 Apr 2024 12:59:13 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1s0JIM-00EQfi-Lr; Fri, 26 Apr 2024 12:59:10 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1s0JIM-00ExOH-1u;
	Fri, 26 Apr 2024 12:59:10 +0200
Date: Fri, 26 Apr 2024 12:59:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Sam Ravnborg <sam@ravnborg.org>
Cc: Barebox List <barebox@lists.infradead.org>,
	Jan Weitzel <j.weitzel@phytec.de>,
	Vicente Bergas <vicencb@gmail.com>, Bo Shen <voice.shen@atmel.com>,
	Matthias Kaehlcke <matthias@kaehlcke.net>,
	Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <ZiuI_jJd9LNWMpuC@pengutronix.de>
References: <20240425115439.2269239-1-s.hauer@pengutronix.de>
 <20240425115439.2269239-11-s.hauer@pengutronix.de>
 <20240425165648.GA999552@ravnborg.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240425165648.GA999552@ravnborg.org>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240426_035914_324485_E75C4358 
X-CRM114-Status: GOOD (  20.63  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 10/15] ARM: remove non PBL Atmel boards
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Sam,

On Thu, Apr 25, 2024 at 06:56:48PM +0200, Sam Ravnborg wrote:
> Hi Sascha
> 
> On Thu, Apr 25, 2024 at 01:54:34PM +0200, Sascha Hauer wrote:
> > Some Atmel AT91 boards still do not have PBL support which becomes
> > mandatory soon. Remove these boards.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  arch/arm/boards/Makefile                      |   3 -
> >  arch/arm/boards/sama5d3xek/Makefile           |   6 -
> >  .../defaultenv-sama5d3xek/bin/init_board      |  15 -
> >  .../sama5d3xek/defaultenv-sama5d3xek/config   |  44 --
> >  arch/arm/boards/sama5d3xek/hw_version.c       | 236 ---------
> >  arch/arm/boards/sama5d3xek/hw_version.h       |  40 --
> >  arch/arm/boards/sama5d3xek/init.c             | 475 ------------------
> >  arch/arm/boards/sama5d3xek/lowlevel.c         |  23 -
> >  arch/arm/boards/sama5d4_xplained/Makefile     |   4 -
> I have patches that DT enable this board, and an attempt to
> add PBL support (which did not succeed).
> 
> I did not touch the patches since last summer, so some rebasing is
> required.
> I will try to find time to give it a spin within the next days and
> post the result.

Ok, thanks. I'll mark the board as broken then instead of removing it.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


