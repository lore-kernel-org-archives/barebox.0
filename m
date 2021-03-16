Delivery-date: Tue, 16 Mar 2021 09:13:16 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lM4pI-0002P6-2x
	for lore@lore.pengutronix.de; Tue, 16 Mar 2021 09:13:16 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lM4pH-000291-C2
	for lore@pengutronix.de; Tue, 16 Mar 2021 09:13:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=IGkqgmjCqQWBLGwdteFkFKBfjIc+GGtT9RlINDiAzoM=; b=UwgKqUEUpqu/uhpxeRDcgrFvr
	NvyYd5QSYO6h8vfG4V4z2tr+daDqM9VW0UKMR00lfDxoAsvsyy5xdnvHs5KxRhgXgCMazEtjXHnA2
	2+Fqu9mLLY7d8eLSrQyJdhlbXCh13zyAkrnsMfcX4/v9njJukpk80TtVYqSaOJ4iijaoXxd8LINTG
	GO31eJADcnFzabGrFLyHFIUcmJXFx6no3irULP10rbd1sbkamyIapAuixmpAXyt+KjcgDqwBilSxA
	eh/hUy5wQYrTogxX2KvbD9oX/+d/wgDcQx/Cvzmpx0l/+NbDnxVYx5xGcdbCXZ23souwTnYm1ZAAE
	/vsOKJheQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lM4oP-0007Bs-Td; Tue, 16 Mar 2021 08:12:22 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lM4oM-0007BR-Io
 for barebox@desiato.infradead.org; Tue, 16 Mar 2021 08:12:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=da7c6u5TXoM2cQw5n4yF8LRHgENw5CCtOjPbjxLzRow=; b=d6FB4g9fD+Q6XI5hRqNmZn7iI8
 eOXhqY/F7Rxj1dM8cCkoejq8YD3kmgozNL11xFDm/PIr8q8SIpvyc4yRpr1cqJ6nQxBdaHZTY/j9d
 0sTZQ+vxkpKfJyDqBWxhHWbvM+gFclGNcfGy4E0cw+fKQimKFLeG4UkfrMl13cfIemHD+jOUc2prR
 1S0L4EGoTDcxY6EC+3FmiM4cd7XtmvdvAB9TABtAgEpwcVkiS0rziz3xbLd1/GzfrWVxt6ffMkcTb
 wCbwyY0av86DlW3EPJEVPWIhQKDv78b4cWuAocZmPwCGO1OvYOu23EQ9Xyd+wRcWhNWQCb1o7b2gP
 VSDTmmkg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lM4nS-001e93-51
 for barebox@lists.infradead.org; Tue, 16 Mar 2021 08:11:56 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lM4nO-0001nH-Uw; Tue, 16 Mar 2021 09:11:18 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lM4nO-0001dW-Ld; Tue, 16 Mar 2021 09:11:18 +0100
Date: Tue, 16 Mar 2021 09:11:18 +0100
From: "sha@pengutronix.de" <sha@pengutronix.de>
To: Denis Osterland-Heim <denis.osterland@diehl.com>
Cc: "r.czerwinski@pengutronix.de" <r.czerwinski@pengutronix.de>,
 "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Message-ID: <20210316081118.GU23724@pengutronix.de>
References: <20210311170403.22671-1-denis.osterland@diehl.com>
 <29418bb8fccd7967e6350e799067f4235a665fe2.camel@pengutronix.de>
 <fa380611cde3e4d68997128880ad1bb45918ef27.camel@diehl.com>
 <20210315080437.GF23724@pengutronix.de>
 <6005b0a0b4ac43ef1955de68612039e8e9451117.camel@diehl.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6005b0a0b4ac43ef1955de68612039e8e9451117.camel@diehl.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:07:51 up 26 days, 11:31, 72 users,  load average: 0.08, 0.13, 0.12
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210316_081126_996786_AAEC1C49 
X-CRM114-Status: GOOD (  19.43  )
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
X-Spam-Status: No, score=-3.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] nvmem: ocotp: add support to revoke keys
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Mar 16, 2021 at 08:03:01AM +0000, Denis Osterland-Heim wrote:
> Hi Sascha,
> 
> Am Montag, den 15.03.2021, 09:04 +0100 schrieb Sascha Hauer:
> > Hi Denis,
> >
> > On Fri, Mar 12, 2021 at 02:39:40PM +0000, Denis Osterland-Heim wrote:
> > > Hi,
> > >
> > > It would be no problem to do it in a script.
> > > I did it as a fist prove of concept.
> > > My opinion is, that this hard coded implementation give stronger
> > > guarantee that this code is really executed.
> >
> > You could also create a C function which you call from your board code.
> good Idea
> 
> >
> > >
> > > I would love to implement the HAB to check FIT signatures,
> > > but with MMU enabled it will not work AFAIK and code requiring MMU disabled is not welcome.
> >
> > Are you sure it doesn't work? What I know is that the jump table for the
> > HAB function is placed in the zero page which is set to faulting
> > normally when the MMU is enabled. If that's the only problem we could
> > solve that.
> I would like to give it a try.
> 
> enable CONFIG_ARCH_HAS_ZERO_PAGE
> 
> zero_page_access();
> pvt->some_function();
> zero_page_faulting();
> 
> right?

Yes, right.

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

