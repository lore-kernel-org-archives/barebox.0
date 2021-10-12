Delivery-date: Tue, 12 Oct 2021 09:32:13 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1maCGj-0001wJ-3D
	for lore@lore.pengutronix.de; Tue, 12 Oct 2021 09:32:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1maC1z-0002vN-0a
	for lore@pengutronix.de; Tue, 12 Oct 2021 09:16:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nfszB01/K8gKBGzoNlx6VIAM0BrgW6ORRMsADNiZA/Y=; b=UdggsXG1VoE9sO
	bcxb3mLXBhess4ZtdraMRhOWyXG1hfFeXqKRGTGulQDaRIYrWiylZ8GoTfy6UEq1pdNC2R4RObIi+
	8gsOPh9LVISCuvI+X6Vshq0cmlBIsKSqw1Gor/elhqYOFqEjqvt9fwIu71u54ulXeb/h13PRw5Xhj
	tetrXgyLgxcrDSR00Rdy740FF0xFOkMm9wEP1J7txCa7YA8NM0UzREpYzYRAnRzZDn8gOVlVv+PAI
	BM4lVQz5ParFjr+GMmAS667/841WL+Uth15OBHyGFLq1ixRRr1QnU2Tm2AtMCoSpPPwVUMOuXJiXo
	NROqmcclRpnu/um7wbWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1maC0j-00BkQG-Pe; Tue, 12 Oct 2021 07:15:41 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1maC0e-00BkOw-5H
 for barebox@lists.infradead.org; Tue, 12 Oct 2021 07:15:37 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1maC0c-0002dg-VS; Tue, 12 Oct 2021 09:15:34 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1maC0c-0007wf-Le; Tue, 12 Oct 2021 09:15:34 +0200
Date: Tue, 12 Oct 2021 09:15:34 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Trent Piepho <trent.piepho@igorinstitute.com>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20211012071534.GG28453@pengutronix.de>
References: <20211011080346.37197-1-s.hauer@pengutronix.de>
 <20211011080346.37197-8-s.hauer@pengutronix.de>
 <CAMHeXxP1MycJ4zarcdc74BH9Wi9eiT+JFgbeYB12751FriKpLw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMHeXxP1MycJ4zarcdc74BH9Wi9eiT+JFgbeYB12751FriKpLw@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:14:25 up 236 days, 10:38, 125 users,  load average: 0.06, 0.18,
 0.25
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211012_001536_223268_F5CA7A29 
X-CRM114-Status: GOOD (  20.31  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 7/9] ARM: rk3568: Detect USB boot
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Oct 11, 2021 at 10:53:07AM -0700, Trent Piepho wrote:
> On Mon, Oct 11, 2021 at 1:04 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > @@ -151,6 +151,11 @@ static struct rk_bootsource bootdev_map[] = {
> >         { .src = BOOTSOURCE_SPI_NOR, .instance = 0 },
> >         { .src = BOOTSOURCE_SPI_NAND, .instance = 0 },
> >         { .src = BOOTSOURCE_MMC, .instance = 1 },
> > +       { .src = BOOTSOURCE_UNKNOWN, .instance = 0 },
> > +       { .src = BOOTSOURCE_UNKNOWN, .instance = 0 },
> > +       { .src = BOOTSOURCE_UNKNOWN, .instance = 0 },
> > +       { .src = BOOTSOURCE_UNKNOWN, .instance = 0 },
> > +       { .src = BOOTSOURCE_USB, .instance = 0 },
> >  };
> 
> Instead of blank entries, one could do designated array initialization
> (since BOOTSOURCE_UNKNOWN is 0):
> 
> static struct rk_bootsource bootdev_map[] = {
>        [0x01] = { .src = BOOTSOURCE_NAND, .instance = 0 },
>        [0x02] = { .src = BOOTSOURCE_MMC, .instance = 0 },
>        [0x03] = { .src = BOOTSOURCE_SPI_NOR, .instance = 0 },
>        [0x04] = { .src = BOOTSOURCE_SPI_NAND, .instance = 0 },
>        [0x05] = { .src = BOOTSOURCE_MMC, .instance = 1 },
>        [0x0a] =  { .src = BOOTSOURCE_USB, .instance = 0 },
> };
> 
> I also like the way the register value shows up in the table.

Apart from the implicit assumption that BOOTSOURCE_UNKNOWN is 0 your
approach is all better. Changed it like that.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

