Delivery-date: Fri, 24 Jun 2022 10:18:08 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o4eVz-00D0bw-0E
	for lore@lore.pengutronix.de; Fri, 24 Jun 2022 10:18:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o4eVy-0001J1-W0
	for lore@pengutronix.de; Fri, 24 Jun 2022 10:18:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Jfy+eyL4XBzJj50nUNuZo51fq4orA8AlGisMHqF/hsA=; b=dws3MyPXwOG4craQixBpDgm+Hq
	Sj7XKEggh16V2aAGcPMt+D5FDkkcPFOZJy80vvXK+d0GQNZ1TOynHZHIx9RVNcH/e2Xk+ZAP6DHAq
	q/wASLifqTDTw3V85ug89dMdMDeQLs1ekbriiT18KnCG3MWpAU0mD1GLRt03cewIam++amZVgi99u
	shyFdo3M70bUqEhvL6i3w6YpsOb2AWGBfFf5K40UQNoEp/XzCnSc69gg9juYW2i+UMi0om7Hr7jla
	8B/hQb24M0AUu83tTuVvLGa0jtwe7NzEx2il8JFlSWcyoUL2/BVHFfNE9HXwxnSrf4bH9pXi/o0Cb
	9ncnfgNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4eUZ-00193s-S4; Fri, 24 Jun 2022 08:16:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4eUQ-001930-KZ
	for barebox@lists.infradead.org; Fri, 24 Jun 2022 08:16:32 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1o4eUO-0001CH-D5; Fri, 24 Jun 2022 10:16:28 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1o4eUO-0005qi-48; Fri, 24 Jun 2022 10:16:28 +0200
Date: Fri, 24 Jun 2022 10:16:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20220624081628.GD1615@pengutronix.de>
References: <20220207151457.945796-1-s.hauer@pengutronix.de>
 <20220623104521.r6hte2qfcusroran@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220623104521.r6hte2qfcusroran@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220624_011630_718344_6ED91DF6 
X-CRM114-Status: GOOD (  24.65  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] ubifs: Add zstd support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Jun 23, 2022 at 12:45:21PM +0200, Uwe Kleine-König wrote:
> Hello,
> 
> On Mon, Feb 07, 2022 at 04:14:57PM +0100, Sascha Hauer wrote:
> > zstd shows a good compression rate and is faster than lzo. This adds
> > UBIFS support for it.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> 
> This patch is part of 2022.03.0 with commit cd1610d8ab30 ("ubifs: Add
> zstd support")
> 
> Since then there is a warning in my imx builds (using imx_defconfig):
> 
>   CC      fs/ubifs/super.o
> fs/ubifs/super.c: In function ‘validate_inode’:
> fs/ubifs/super.c:89:28: warning: comparison is always false due to limited range of data type [-Wtype-limits]
>    89 |         if (ui->compr_type >= UBIFS_COMPR_TYPES_CNT) {
>       |                            ^~
> 
> That's because UBIFS_COMPR_TYPES_CNT is now 4 and ui->compr_type is an
> unsigned int compr_type:2.

Same here.

> 
> I wonder if the check should just be dropped now that all bits are used,
> but I don't feel confident enough to say that's the right thing to do.

The code is the same in the Kernel, but the Kernel has -Wtype-limits
disabled.

I'd say we can remove this check. You could increase your kernel patch
count by suggesting the same there.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


