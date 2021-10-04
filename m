Delivery-date: Mon, 04 Oct 2021 12:12:14 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mXKxC-0003t7-3Y
	for lore@lore.pengutronix.de; Mon, 04 Oct 2021 12:12:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mXKxB-0000ou-1b
	for lore@pengutronix.de; Mon, 04 Oct 2021 12:12:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=aQe7GkAT6GIryrC2SzCeqvZ2w7hvIXstaD8PR+XJGuU=; b=BByn806SxhijopqAXDNnZwMkka
	TqEZB4JsQKaUvcOaudZqYm42XljICyqXKaLQgNoddrGho5Am8N1mnK16nsB3VsokWNfTk30H0GKN3
	y50LR8bN/d+sH6Cpp1W93SBPu1SiAIcrlayQss5Ee8EGZzPpt9O0maSNMpJ+LEuVSmuZGnV+KULhL
	tTAjWl+9SlmeeUfVUy5UXpUSSBWpNg9ifh/nW6omQf5EjYipYgaQ3ELH8WnfVquD3wZ2FYkYfYXVJ
	fxk/VrpvQZ3zaPjTdYHgDQUFlOZwhFaNhus9A6St49gpow0odCjs16bTrR/7Z2n71x+cFPJKVTXFP
	2egpzcYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mXKvl-005w6f-Go; Mon, 04 Oct 2021 10:10:45 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mXKvS-005w1Q-FO
 for barebox@lists.infradead.org; Mon, 04 Oct 2021 10:10:28 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mXKvR-0000Qe-2A; Mon, 04 Oct 2021 12:10:25 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mXKvQ-0006Ql-PF; Mon, 04 Oct 2021 12:10:24 +0200
Date: Mon, 4 Oct 2021 12:10:24 +0200
To: Jules Maselbas <jmaselbas@kalray.eu>
Cc: barebox@lists.infradead.org
Message-ID: <20211004101024.GQ28453@pengutronix.de>
References: <20210907130131.26755-1-jmaselbas@kalray.eu>
 <20210907130131.26755-2-jmaselbas@kalray.eu>
 <20210908084114.GA8023@tellis.lin.mbt.kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210908084114.GA8023@tellis.lin.mbt.kalray.eu>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 12:10:10 up 228 days, 13:34, 133 users,  load average: 0.39, 0.28,
 0.28
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211004_031026_558926_659E60D7 
X-CRM114-Status: GOOD (  24.24  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] Documentation: Typo fix in command example
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Sep 08, 2021 at 10:41:14AM +0200, Jules Maselbas wrote:
> On Tue, Sep 07, 2021 at 03:01:31PM +0200, Jules Maselbas wrote:
> > The ``make`` command is missing a closing angle bracket ``>``.
> > 
> > Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
> > ---
> >  Documentation/user/multi-image.rst | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/Documentation/user/multi-image.rst b/Documentation/user/multi-image.rst
> > index 0a7bf91a55..374b79f91b 100644
> > --- a/Documentation/user/multi-image.rst
> > +++ b/Documentation/user/multi-image.rst
> > @@ -51,4 +51,4 @@ generated a different entry point is selected using the ``-e`` option to ld.
> >  The linker will throw away all unused entry points and only keep the functions
> >  used by a particular entry point.
> >  
> > -The Multi Image PBL files can be disassembled with ``make <entry-function-name.pbl.S``
> > +The Multi Image PBL files can be disassembled with ``make <entry-function-name>.pbl.S``
> I think that should be: ``make images/<entry-function-name>.pbl.s`` as
> mentioned in images/Makefile

Indeed. Applied, thanks

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

