Delivery-date: Mon, 10 Jul 2023 14:44:47 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qIqG1-005jyE-5M
	for lore@lore.pengutronix.de; Mon, 10 Jul 2023 14:44:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qIqFy-0005Hw-Qv
	for lore@pengutronix.de; Mon, 10 Jul 2023 14:44:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WbfXMGwtghUNVVFTY/Oxbca5HbDDLYp4fJBOREb48Bk=; b=yJ4/KMeswZC0A36NSHVPxUl6zh
	AeEKvvyG8HEAQdnD0HONhRUFg7kbFsTBN328a6GOp5r3lj9Q3WlhMbDt3mRu+p3iueWFf7ew3AI21
	9oKYhajCTLAlPxa+CSXPLD/oCaVB/yN4PlI57FZQXnFSLC4/1Xs800aV3dc7w8evb8PNlLfg6ZnNm
	O1kzQqDpacl7CKT38Q+y6lyRmFtPvh6wdRLH/fPWjC942TLzu8RZOJ7cvzaTlSEuEWk08bmyG/A4S
	LRYcPJy0dd9Bg9tsfD4gRGJ3RnxvhVx6jagFqKSwwu81776kYsSVSLNW45p2lfOZXobTxbYjvBGlQ
	66ZoNB4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qIqEf-00BdfG-1D;
	Mon, 10 Jul 2023 12:43:25 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qIqEc-00BddC-1F
	for barebox@lists.infradead.org;
	Mon, 10 Jul 2023 12:43:23 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qIqEY-0005DU-QW; Mon, 10 Jul 2023 14:43:18 +0200
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qIqEY-00053a-J9; Mon, 10 Jul 2023 14:43:18 +0200
Date: Mon, 10 Jul 2023 14:43:18 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230710124318.rfhfoxojpdijhj2g@pengutronix.de>
References: <20230710063653.660040-1-m.felsch@pengutronix.de>
 <20230710063653.660040-3-m.felsch@pengutronix.de>
 <1054cc32-fedd-1c5e-7e74-80cce77c6e72@pengutronix.de>
 <20230710104931.aykuig7y2ctykky5@pengutronix.de>
 <8839814f-de7c-a70b-8573-55dd2c38c766@pengutronix.de>
 <20230710110110.6r2y2v4kxvjgsaeu@pengutronix.de>
 <e96d425b-3f38-1cd7-fc3f-be4b12d09a75@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e96d425b-3f38-1cd7-fc3f-be4b12d09a75@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230710_054322_419927_5CE26957 
X-CRM114-Status: GOOD (  25.44  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 3/7] net: phy: sync phy_{write,read,modify}_mmd_indirect
 with linux
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 23-07-10, Ahmad Fatoum wrote:
> On 10.07.23 13:01, Marco Felsch wrote:
> > On 23-07-10, Ahmad Fatoum wrote:
> >> Hello Marco,
> >>
> >> On 10.07.23 12:49, Marco Felsch wrote:
> >>> On 23-07-10, Ahmad Fatoum wrote:
> >>>> On 10.07.23 08:36, Marco Felsch wrote:
> >>>>> Sync the barebox phy_{write,read,modify}_mmd_indirect API with the Linux
> >>>>> phy_{write,read,modify}_mmd API to make it easier and less error prone
> >>>>> to port phy drivers. This also fixes the r8169 driver since this driver
> >>>>> did not adapt the parameters while porting from Linux.
> >>>>>
> >>>>> The sync also aligns the function parameter `prtad` as well as the
> >>>>> function documentation.
> >>>>
> >>>> This breaks out of tree board code in a subtle and annoying manner.
> >>>
> >>> Do we really need to care about out all-of-tree drivers/boards? If so,
> >>> we need to ensure to not break any public function.
> >>
> >> Out-of-tree drivers not too much probably, but out-of-tree boards
> >> are unfortunately the norm. Breaking the build can be justified,
> >> but silent breaking by swapping arguments is not nice.
> > 
> > And how do you ensure that a public API is only used by drivers? Don't
> > get me wrong I got your point but if you update an out-of-tree board to
> > a newer barebox version it may happen that something break. Therefore
> > manufacturers should upstream there code to reduce the maintenance
> > effort to a minimum :) I know we don't live in an ideal world :/
> 
> Some breakage is ultimately unavoidable, but we can try to not needlessly
> introduce silent breakage. Here we have a nice way out: We import the
> Linux function with the Linux name and use that for upstream code. The old
> function is marked deprecated and removed later on. Do you see an issue
> with that?

The only problem I see is, that the Linux API does support C45 and C22
and we don't. As said, we can implement it and make the C45 support a
stub. From user perspective I would assume that the new API is working
for both classes (like Linux). Therefore I kept the _indirect suffix
since this makes it clear from API pov.

Regards,
  Marco


