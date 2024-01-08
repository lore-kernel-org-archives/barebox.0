Delivery-date: Mon, 08 Jan 2024 12:20:12 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rMnfw-008k5R-0k
	for lore@lore.pengutronix.de;
	Mon, 08 Jan 2024 12:20:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rMnfv-0006QJ-JD
	for lore@pengutronix.de; Mon, 08 Jan 2024 12:20:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PjU+TwMlpaTd5mUhGHHtAe1tOsZNEm1dGP2XI282mtI=; b=FEpl23yeYfURT0PcQwLqzuKSIL
	OtP0ILtYKnqEHfdxsK8E7p8383DLP/ZdBw0eSd4FnRSCyjPdytVRjWNZegySKwH3+YLWc/RS8eDns
	GkfVMo1FlnbbrEB/5PQlTmGie6v6WkTnJAtQhmucesxJJPHIl6wq7L/ShcAKojyk0e1kCJy0zpHeY
	ohVF9a7IvUapCUM1iniA1LTesKfTQhinScaW9KAlJ07B/VXLTsDddsbA3zFDKMiq2EMRMZM4/FQSf
	2thBDB3xbNFiX3IrYpRdo9UNctKputBOSCMQlrYsPVXKp/GHJUQJuu7mkeqFQSUIR6S6J3Z0suLCA
	SZX1G9cQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rMnec-004kpD-1Q;
	Mon, 08 Jan 2024 11:18:50 +0000
Received: from smtp28.bhosted.nl ([94.124.121.40])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rMneY-004kmF-2s
	for barebox@lists.infradead.org;
	Mon, 08 Jan 2024 11:18:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=protonic.nl; s=202111;
	h=content-transfer-encoding:content-type:mime-version:references:in-reply-to:
	 message-id:subject:cc:to:from:date:from;
	bh=PjU+TwMlpaTd5mUhGHHtAe1tOsZNEm1dGP2XI282mtI=;
	b=kljOpncLnoEN7pcIVBp9w5GIUNDJGr7xia4j2S9SPrnTDZrA6LOZ3kMn7p8CjcsAUVFCqaXmWU7YX
	 zNFGIkP/z+6TmhOJfbrkrNnfWi7DtJ4goQr5493czCVMxBmOaUX7AlhmyrfYvAeSPQWUpDO3qo2SB3
	 bgVRmRtsAOUOWjhPLB8i7zGwSYDi1iHBfW/78omZIzY+2NwT0Vm8KzdpZWUCD3+RVbK1gSHvkMgFbA
	 0ofrP4IeUqHzaTnyD31id+kQ5XZW39XcbUZw1/FVg105aMIlbbSAK11vsnWLV/JZFmUwG7HfD+X3nq
	 2os+qD8k2fQTQj/HZqGm2rubRrC4UwQ==
X-MSG-ID: 76d05887-ae17-11ee-ba50-0050568164d1
Date: Mon, 8 Jan 2024 12:17:09 +0100
From: Robin van der Gracht <robin@protonic.nl>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20240108121709.0f40c768@ERD993>
In-Reply-To: <48a6551d-b6a9-45de-bcca-71599b39a1ba@pengutronix.de>
References: <20240102170100.1596372-1-a.fatoum@pengutronix.de>
	<20240102170100.1596372-3-a.fatoum@pengutronix.de>
	<20240108112958.3b582cbb@ERD993>
	<48a6551d-b6a9-45de-bcca-71599b39a1ba@pengutronix.de>
Organization: Protonic Holland
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240108_031847_064884_90B0949C 
X-CRM114-Status: GOOD (  26.36  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH master 2/7] nvmem: bsec: correct regmap's max_register
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Ahmad,

On Mon, 8 Jan 2024 11:44:00 +0100
Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:

> Hello Robin,
> 
> On 08.01.24 11:29, Robin van der Gracht wrote:
> > Hi Ahmad,
> > 
> > Comments are below.
> > 
> > On Tue,  2 Jan 2024 18:00:55 +0100
> > Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
> >   
> >> The max_register must be a multiple of the register stride, which is not
> >> the case for (384 / 4) - 1 == 95. Instead, we should be setting 380, so
> >> fix the calculation to do this.
> >>
> >> Fixes: 094ce0ee7cdf ("nvmem: bsec: correct regmap's max_register")
> >> Reported-by: Robin van der Gracht <robin@protonic.nl>
> >> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> >> ---
> >>  drivers/nvmem/bsec.c | 2 +-
> >>  1 file changed, 1 insertion(+), 1 deletion(-)
> >>
> >> diff --git a/drivers/nvmem/bsec.c b/drivers/nvmem/bsec.c
> >> index 889f14428d59..22e30c6c2e82 100644
> >> --- a/drivers/nvmem/bsec.c
> >> +++ b/drivers/nvmem/bsec.c
> >> @@ -218,7 +218,7 @@ static int stm32_bsec_probe(struct device *dev)
> >>  	priv->map_config.reg_bits = 32;
> >>  	priv->map_config.val_bits = 32;
> >>  	priv->map_config.reg_stride = 4;
> >> -	priv->map_config.max_register = (data->size / 4) - 1;
> >> +	priv->map_config.max_register = data->size - priv->map_config.reg_stride;
> >>  
> >>  	priv->lower = data->lower;
> >>    
> > 
> > This patch gives a bsec device size of 1520 bytes. Which means I'm now
> > allowed to read/write beyond register 95 without an error.
> > 
> > barebox@board:/ ls -l /dev/stm32-bsec
> > crw-------           1520 /dev/stm32-bsec
> > 
> > The device size is now in bytes, but the read/write offsets given to
> > the md and mw commands is still in bytes/stride.
> > 
> > I.e. to read register 95:
> > md -l -s /dev/stm32-bsec 380+4 
> > 0000017c: xxxxxxxx
> > 
> > I can now also read register 100:
> > md -l -s /dev/stm32-bsec 400+4 
> > 00000190: 00000000                                           ....
> > 
> > This doesn't seem right.
> > 
> > max_register should probably stay 95. See doc[1]
> > 
> > 1:https://git.pengutronix.de/cgit/barebox/tree/include/linux/regmap.h?h=v2023.12.0#n33  
> 
> Did you apply the whole series? With the whole series applied I have:

Argh. No. I missed it was part of a series. I was only cc'd to this
one. 

> 
> barebox@Linux Automation MC-1 board:/ ls -l /dev/stm32-bsec 
> crw-------            384 /dev/stm32-bsec

Thats more like it. I'll apply the full series and recheck.

Robin


