Delivery-date: Wed, 13 Nov 2024 14:31:42 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tBDTC-001ReP-36
	for lore@lore.pengutronix.de;
	Wed, 13 Nov 2024 14:31:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tBDTC-0007B3-Ar
	for lore@pengutronix.de; Wed, 13 Nov 2024 14:31:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/4zbh1C4oxGGA3cKASsMds8Eg2HjdwgNyQRBV6F3wBg=; b=WAfeN1udIaGE3hnrRrxbITrQZA
	biukQNFik/ZPVxNgjLtYnDKQtno9mR2nslGt8iB+jcG64CsqNRK+p9EK/A2vBeOqJE3bqDuiIbQef
	/6UGfyZCEKHX1kHDd/py7Z0PJdLLahZKZgSxxBri9erd+/FkfpnKIBMzIaS372h/+D8geiZFKYmko
	CE9Cul51HNz6P/IUzFqbxBTClxqvCBp3IXyhSgautYtCpJIq6HFENrsdQoQNzjKbjL0bKNSpwanck
	XITeolMzooP2FutmmvQqJzWlGwdQi/rzf6rp2icLH1JGAWIcbtM6JmuVr/a4oyLBvoCjGDDGNRaIi
	IciKpaBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tBDSx-00000006v9x-1yzb;
	Wed, 13 Nov 2024 13:31:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tBCJK-00000006je6-2vUb
	for barebox@lists.infradead.org;
	Wed, 13 Nov 2024 12:17:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1tBCJJ-0004NT-1M; Wed, 13 Nov 2024 13:17:25 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tBCJI-000Zau-2F;
	Wed, 13 Nov 2024 13:17:24 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tBCJI-009h27-1x;
	Wed, 13 Nov 2024 13:17:24 +0100
Date: Wed, 13 Nov 2024 13:17:24 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>,
	barebox@lists.infradead.org
Message-ID: <ZzSY1El982Q03Pz5@pengutronix.de>
References: <20241112191058.397165-1-abdelrahmanyossef12@gmail.com>
 <383d6b94-1152-4257-b18c-9f31857944ca@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <383d6b94-1152-4257-b18c-9f31857944ca@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241113_041726_777726_6732B7D0 
X-CRM114-Status: GOOD (  31.06  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] of: fdt: fix possible overflow during parsing of fdt
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Nov 12, 2024 at 08:56:58PM +0100, Ahmad Fatoum wrote:
> Hello Abdelrahman,
> 
> Thanks for your patch.
> 
> On 12.11.24 20:10, Abdelrahman Youssef wrote:
> > While fuzzing, the name marked by FDT_BEGIN_NODE sometimes extends beyond
> > the struct block area, Causing a heap-overflow.
> > 
> > Since `maxlen` is an unsigned integer representing the length of name,
> > It can be negative, So it overflows to large numbers, Causing strnlen()
> > to overflow.
> > 
> > So we can just change the type of maxlen to signed and check if it's negative.
> > 
> > Signed-off-by: Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>
> > ---
> 
> Changelog would've been nice. This also should have been v3 not v2.
> 
> >  drivers/of/fdt.c | 7 ++++++-
> >  1 file changed, 6 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
> > index 2c3ea31394..d8d8a4922c 100644
> > --- a/drivers/of/fdt.c
> > +++ b/drivers/of/fdt.c
> > @@ -176,7 +176,7 @@ static struct device_node *__of_unflatten_dtb(const void *infdt, int size,
> >  	void *dt_strings;
> >  	struct fdt_header f;
> >  	int ret;
> > -	unsigned int maxlen;
> > +	int maxlen;
> >  	const struct fdt_header *fdt = infdt;
> >  
> >  	ret = fdt_parse_header(infdt, size, &f);
> > @@ -210,6 +210,11 @@ static struct device_node *__of_unflatten_dtb(const void *infdt, int size,
> >  			maxlen = (unsigned long)fdt + f.off_dt_struct +
> >  				f.size_dt_struct - (unsigned long)name;
> >  
> > +			if (maxlen < 0) {
> > +				ret = -ESPIPE;
> > +				goto err;
> > +			}
> > +
> >  			len = strnlen(name, maxlen + 1);
> 
> Hmm is this + 1 correct? I am wondering if we should be dropping
> the + 1 here and make it maxlen <= 0 above.

I think maxlen <= 0 is correct indepent of what follows next, because
maxlen is the length of a string and a valid string has a minimal length
of one byte ('\0').

Next we shouldn't look at bytes exceeding maxlen, so indeed
strnlen(name, maxlen) should be correct. When changing this we have
to adjust the following if (len > maxlen) check to >=.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


