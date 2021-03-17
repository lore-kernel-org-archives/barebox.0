Delivery-date: Wed, 17 Mar 2021 18:14:22 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lMZkS-0004sh-PN
	for lore@lore.pengutronix.de; Wed, 17 Mar 2021 18:14:22 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lMZkS-0000Og-1g
	for lore@pengutronix.de; Wed, 17 Mar 2021 18:14:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=awR8RfiwuN6o1AMXbzj5vK+zyCwAJ5yJna/npvLx4sY=; b=qxHlAJqBMOO4bNmWOidGXI28Y
	BwdxRsOBaPEOG/zclUSp6aSy9Sq2fwqyfA+MKELDPXaE+aiO2iioR3HWwk3y2ZB8FrdYy4ScGMgY5
	IapSepplwgCCXmmAbQihfKssRHx4H7j9orxYJpM9mT1/OQdxyWWRXh8ULs4HrU/2rALtnRXIyqCPY
	5eYjklG/82jWkkyQVfp1f4XjxQyQiWKxPe3v+ZGno127cBGWT/UQbooQIl6QFkoG33Z94c9xSAVRg
	a1K4yGm569u2zfGVMnEFtbTpFT7dttHLeVj6irySi8cnBREg/MLcFsdYrL1/9XI3r1aUQJhZmFNhF
	MIxHpCD6A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lMZjB-003c2N-T0; Wed, 17 Mar 2021 17:13:01 +0000
Received: from mickerik.phytec.de ([195.145.39.210])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lMZj6-003c1t-Fc
 for barebox@lists.infradead.org; Wed, 17 Mar 2021 17:12:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a1; c=relaxed/simple;
 q=dns/txt; i=@phytec.de; t=1616001174; x=1618593174;
 h=From:Sender:Reply-To:Subject:Date:Message-ID:To:CC:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GWSM5QcXCCspm1e+TkCYLCTBtHX510tw8jC5g4HqmyE=;
 b=Jl3uHWV5pSiG3n0wxm2bX2flbuIC1+wkw+OdBFY6qgqHW9rxZP8bbUfvagq/X/4v
 zxVIkc7CPaBOFPxxlHD7EpGvNzLNjJGFuhnzowO+wRk0omE+T6fgUoynqHyEkrFp
 pf5/gmL/OUccOukfq3t/M/AuAf40+6VcXWraIXJ3DbY=;
X-AuditID: c39127d2-0d3b770000001c86-4d-60523896ddff
Received: from Diagnostix.phytec.de (Diagnostix.phytec.de [172.16.0.119])
 (using TLS with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (Client did not present a certificate)
 by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id CD.D0.07302.69832506;
 Wed, 17 Mar 2021 18:12:54 +0100 (CET)
Received: from Berlix.phytec.de (172.16.0.117) by Diagnostix.phytec.de
 (172.16.0.119) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2176.2; Wed, 17 Mar
 2021 18:14:05 +0100
Received: from Berlix.phytec.de ([fe80::f594:d241:d581:a5be]) by
 berlix.phytec.de ([fe80::f594:d241:d581:a5be%3]) with mapi id 15.01.2176.009; 
 Wed, 17 Mar 2021 18:14:05 +0100
From: =?utf-8?B?U3RlZmFuIFJpZWRtw7xsbGVy?= <S.Riedmueller@phytec.de>
To: "sha@pengutronix.de" <sha@pengutronix.de>
CC: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Thread-Topic: [PATCH 2/2] mtd: nand_bbt: Skip bad blocks when searching for
 the BBT in NAND
Thread-Index: AQHXGmEr8clFgKKLt0+xtTjsIb7GVaqH3cmAgAB+OYA=
Date: Wed, 17 Mar 2021 17:14:05 +0000
Message-ID: <8683628e4ef3f07ea2281e48478f71d81e00729a.camel@phytec.de>
References: <20210316123626.25872-1-s.riedmueller@phytec.de>
 <20210316123626.25872-2-s.riedmueller@phytec.de>
 <20210317094106.GZ23724@pengutronix.de>
In-Reply-To: <20210317094106.GZ23724@pengutronix.de>
Accept-Language: en-US, de-DE
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.0.116]
Content-ID: <BB1B4B31F073BF4FB459AEA1BEF6F33C@phytec.de>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFupmkeLIzCtJLcpLzFFi42JZI8BQrjvNIijB4PIHFYsTi/uZLR5tnsXq
 wOSxeUm9R/9fgwCmKC6blNSczLLUIn27BK6MQ5eyCw6JV3S2v2JpYPwi1sXIySEhYCLxY/YR
 ti5GLg4hgXVMEotnHYZynjJK/L/yihHC2cQo8WHWCzaQFjYBF4nPbd/AbBEBXYkdR98DFXFw
 MAvYS6zokAUxhQViJI4cr4OoiJU4c+Y+K4RtJXH4xT8wm0VAVaL/bTMjiM0r4CYx58QNVohV
 sxklpl7sBBvPCXTdjcP3WEBsRgFZic6Gd0wgNrOAuMSmZ99ZIT4QkFiy5zwzhC0q8fLxP6i4
 gkRbTycTxGmaEut36UO0Wkg0fLzGCmErSkzpfsgOcYOgxMmZT1gmMIrPQrJhFkL3LCTds5B0
 z0LSvYCRdRWjUG5mcnZqUWa2XkFGZUlqsl5K6iZGYIQdnqh+aQdj3xyPQ4xMHIyHGCU4mJVE
 eE3zAhKEeFMSK6tSi/Lji0pzUosPMUpzsCiJ827gLQkTEkhPLEnNTk0tSC2CyTJxcEo1MFrX
 fZv9YJffm4NFe/66zXihdcsyRW+GwfyalnlZa+Y358iekityd78gNNM2xvvw9DmbhLOE+/a/
 2K/IfPeo6IPlpzdk7YxS/7fr1HoDh+lTPosznnv35NGE7p5w+S9cnTts77xYdpq9bVXTnU8O
 ZS2MlvcSNdJsLY+UOG5f8CXp8otX70yu+z9SYinOSDTUYi4qTgQA4PNWJp4CAAA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210317_171257_026554_1FC52178 
X-CRM114-Status: GOOD (  25.31  )
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
X-Spam-Status: No, score=-103.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,USER_IN_WELCOMELIST,
	USER_IN_WHITELIST autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 2/2] mtd: nand_bbt: Skip bad blocks when searching for the
 BBT in NAND
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Sascha,

On Wed, 2021-03-17 at 10:41 +0100, Sascha Hauer wrote:
> Hi Stefan,
> 
> On Tue, Mar 16, 2021 at 01:36:26PM +0100, Stefan Riedmueller wrote:
> > The blocks containing the bad block table can become bad as well. So
> > make sure to skip any blocks that are marked bad when searching for the
> > bad block table.
> 
> The file is a more or less direct copy from the kernel. Does the problem
> exist in the kernel as well?

>From my point of view I would say yes. I have just made a small test Issue is
shown in the kernel as well. It is a very raw case where two BBT blocks need
to be worn out but on the other hand this fix should not have that much of an
impact.

I will send a similar patch to the kernel.

Stefan

> 
> Sascha
> 
> > Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
> > ---
> >  drivers/mtd/nand/nand_bbt.c | 4 ++++
> >  1 file changed, 4 insertions(+)
> > 
> > diff --git a/drivers/mtd/nand/nand_bbt.c b/drivers/mtd/nand/nand_bbt.c
> > index a86b5b2da38e..0b48373e6a0b 100644
> > --- a/drivers/mtd/nand/nand_bbt.c
> > +++ b/drivers/mtd/nand/nand_bbt.c
> > @@ -528,6 +528,7 @@ static int search_bbt(struct nand_chip *this, uint8_t
> > *buf,
> >  {
> >  	u64 targetsize = nanddev_target_size(&this->base);
> >  	struct mtd_info *mtd = nand_to_mtd(this);
> > +	struct nand_bbt_descr *bd = this->badblock_pattern;
> >  	int i, chips;
> >  	int startblock, block, dir;
> >  	int scanlen = mtd->writesize + mtd->oobsize;
> > @@ -563,6 +564,9 @@ static int search_bbt(struct nand_chip *this, uint8_t
> > *buf,
> >  			int actblock = startblock + dir * block;
> >  			loff_t offs = (loff_t)actblock << this-
> > >bbt_erase_shift;
> >  
> > +			/* Check if block is marked bad */
> > +			if (scan_block_fast(this, bd, offs, buf))
> > +				continue;
> >  			/* Read first page */
> >  			scan_read(this, buf, offs, mtd->writesize, td);
> >  			if (!check_pattern(buf, scanlen, mtd->writesize, td))
> > {
> > -- 
> > 2.25.1
> > 
> > 
> > _______________________________________________
> > barebox mailing list
> > barebox@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/barebox
> > 
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

