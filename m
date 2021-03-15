Delivery-date: Mon, 15 Mar 2021 13:08:56 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lLm1o-0000p4-4F
	for lore@lore.pengutronix.de; Mon, 15 Mar 2021 13:08:56 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lLm1n-0005Z0-6o
	for lore@pengutronix.de; Mon, 15 Mar 2021 13:08:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RQyCgXii4+raVDkCoMvX6kM4BJJe35/0zpQ4alioAcQ=; b=E6a01TI71vh4F9qrXewP1K1R1
	iqMSSbQzphSscuaHM8f/UIqamn2lfjhzSe1AgqXPvR4uFxMwN9Bo9cj5iC561c2dslMHNY2O3tuLj
	QzhU60Vq4TwPlnNz9Xo2owGwH1FqmKIrc+F82I6j/ZVUL+UJdb9Xn9jaj/HpvWUqpOhQoxeWNWB4t
	/xIr2IXyKawk0bapImHeZxMP+p0nx8iTqtWE/K1/Cxw2LUD2BZGo6MsoW7fpmDZuPcawMfo+Led8X
	nvAaZtqxycNwX5KoZlHzDVU+A3UALXNNUh1J6HBje5D3dIXFEb7Rq7MxYVrWtUb1iYjqlKauNY5Py
	NxFLZCYUw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lLm0K-00Fm5y-HX; Mon, 15 Mar 2021 12:07:24 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lLlf3-00FhFW-T8
 for barebox@lists.infradead.org; Mon, 15 Mar 2021 11:45:35 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1lLlet-0002CI-PF; Mon, 15 Mar 2021 12:45:15 +0100
Received: from ore by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ore@pengutronix.de>)
 id 1lLlet-0007kA-Fj; Mon, 15 Mar 2021 12:45:15 +0100
Date: Mon, 15 Mar 2021 12:45:15 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20210315114515.hcqboeb53otdums7@pengutronix.de>
References: <20210314122804.4128-1-a.fatoum@pengutronix.de>
 <20210314122804.4128-15-a.fatoum@pengutronix.de>
 <20210315114353.c3bece8ebb5eae822e9349bd@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210315114353.c3bece8ebb5eae822e9349bd@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 12:44:45 up 103 days,  1:51, 42 users,  load average: 0.02, 0.03,
 0.00
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210315_114531_037485_79CAB870 
X-CRM114-Status: GOOD (  20.26  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: MIPS RELOCATABLE:  [PATCH 14/20] RISC-V: erizo: migrate to PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Mar 15, 2021 at 11:43:53AM +0300, Antony Pavlov wrote:
> On Sun, 14 Mar 2021 13:27:58 +0100
> Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
> 
> Hi!
> 
> > diff --git a/common/Kconfig b/common/Kconfig
> > index 36207274f07f..37204fb40a44 100644
> > --- a/common/Kconfig
> > +++ b/common/Kconfig
> > @@ -44,7 +44,7 @@ config BLOCK_WRITE
> >  
> >  config USE_COMPRESSED_DTB
> >  	bool
> > -	depends on ARM
> > +	depends on ARM || RISCV
> >  	select UNCOMPRESS
> >  	select LZO_DECOMPRESS
> >  
> > @@ -358,7 +358,7 @@ config KALLSYMS
> >  	  This is useful to print a nice backtrace when an exception occurs.
> >  
> >  config RELOCATABLE
> > -	depends on PPC || ARM
> > +	depends on PPC || ARM || RISCV
> >  	bool "generate relocatable barebox binary"
> >  	help
> >  	  A non relocatable barebox binary will run at it's compiled in
> 
> Hmmm. AFAIR MIPS barebox is relocatable. Why CONFIG_RELOCATABLE does not depend on MIPS?
> 
good point, I'll need to test it

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

