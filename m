Delivery-date: Mon, 22 Mar 2021 07:00:04 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lODbg-00034W-Do
	for lore@lore.pengutronix.de; Mon, 22 Mar 2021 07:00:04 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lODbf-0000wn-Nl
	for lore@pengutronix.de; Mon, 22 Mar 2021 07:00:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VaZ2ix6qE5LyHbJcNIDO90vQZvJikbqv6FPaKeNIymw=; b=jAojmAZzRDzlA8S2HLMN7HHsj
	ZA6hCFe8G26uGqQ27DOuRQ0msd07v0AmcFpYt9rftPeahXlDEzRCcFMQDS+C8LIcMihEILLQVMAT/
	FZCppPR4arXzNuBNUxINnP4vEXcFdDciyUs7a1zZSUMLHOGp08tSBarpwP6wM/37Tnhwdrvz6llid
	zs1EJ3UIKM5KDt5V+qt4XuryBIDWQlP+tBeq7gZ0uGu8Hjk7At2BG4grjwspwD6e2UA5p3u3D2Wur
	KMleQkvGVsa4tQ31uO0CrodKxy9U8CJI6x0HVPyJ45HUBp/GC22NXyRpCDpf8snOoJLu4axDBzLJn
	QEjyKwYRw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lODao-00AxbR-3F; Mon, 22 Mar 2021 05:59:10 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lODag-00AxaM-Pt
 for barebox@lists.infradead.org; Mon, 22 Mar 2021 05:59:06 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lODag-0000rI-DO; Mon, 22 Mar 2021 06:59:02 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lODag-0007iI-4P; Mon, 22 Mar 2021 06:59:02 +0100
Date: Mon, 22 Mar 2021 06:59:02 +0100
From: "sha@pengutronix.de" <sha@pengutronix.de>
To: Stefan =?iso-8859-15?Q?Riedm=FCller?= <S.Riedmueller@phytec.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Message-ID: <20210322055902.GO23724@pengutronix.de>
References: <20210316123626.25872-1-s.riedmueller@phytec.de>
 <20210316123626.25872-2-s.riedmueller@phytec.de>
 <20210317094106.GZ23724@pengutronix.de>
 <8683628e4ef3f07ea2281e48478f71d81e00729a.camel@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8683628e4ef3f07ea2281e48478f71d81e00729a.camel@phytec.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 06:57:37 up 32 days,  9:21, 62 users,  load average: 0.08, 0.06, 0.03
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210322_055904_692167_0CF900C8 
X-CRM114-Status: GOOD (  27.70  )
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
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/2] mtd: nand_bbt: Skip bad blocks when searching for
 the BBT in NAND
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Mar 17, 2021 at 05:14:05PM +0000, Stefan Riedm=FCller wrote:
> Hi Sascha,
> =

> On Wed, 2021-03-17 at 10:41 +0100, Sascha Hauer wrote:
> > Hi Stefan,
> > =

> > On Tue, Mar 16, 2021 at 01:36:26PM +0100, Stefan Riedmueller wrote:
> > > The blocks containing the bad block table can become bad as well. So
> > > make sure to skip any blocks that are marked bad when searching for t=
he
> > > bad block table.
> > =

> > The file is a more or less direct copy from the kernel. Does the problem
> > exist in the kernel as well?
> =

> From my point of view I would say yes. I have just made a small test Issu=
e is
> shown in the kernel as well. It is a very raw case where two BBT blocks n=
eed
> to be worn out but on the other hand this fix should not have that much o=
f an
> impact.
> =

> I will send a similar patch to the kernel.

I'd like to delay this one until it is accepted in the kernel. I do not
fully understand the consequences of this patch, but hopefully on the
mtd list there is someone.

Sascha

-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

