Delivery-date: Thu, 20 Jan 2022 10:16:16 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nATYG-007WDL-RX
	for lore@lore.pengutronix.de; Thu, 20 Jan 2022 10:16:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nATYF-0004xQ-EQ
	for lore@pengutronix.de; Thu, 20 Jan 2022 10:16:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ffI/74mY3lvSYjxb9XjflYRxkU3i9msRnPLwZOO/uS4=; b=EM5aF9SyZaUu/F
	sPYBJ+aRtvW7hwy1FpUCqYJajM2Wa5p1YDremc3YrUXLi3oAxAc42x0DBluDJIEqevfYfk5FFARFg
	bBGVjiC12AfhNha6uzV46bomreCe3mCGVEQLjGGfOCm216HPXC72sOm4+rWKAEptVA8UBUeDbRyqD
	5InWEbsMLSt4DsIwIQw5/l+nTomqKQJwdXZ+nZO2OkURNAOsYXUEM1RuNDHpAJGg8HiHbGY8bBKU4
	qtNSAy4NPI32Orcvs7PEKPX899rk3Ie7SZGyRskAG+kaJ7KmYR6VgBoT7KXvq8T19rXagtuyd0lUf
	ySUY9JyxnQoCrEfv1EVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nATWk-00A88c-Uz; Thu, 20 Jan 2022 09:14:43 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nATWf-00A878-Qe
 for barebox@lists.infradead.org; Thu, 20 Jan 2022 09:14:39 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mol@pengutronix.de>)
 id 1nATWc-0004eS-7s; Thu, 20 Jan 2022 10:14:34 +0100
Received: from mol by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mol@pengutronix.de>)
 id 1nATWb-0000HW-UL; Thu, 20 Jan 2022 10:14:33 +0100
Date: Thu, 20 Jan 2022 10:14:33 +0100
From: Michael Olbrich <m.olbrich@pengutronix.de>
To: Sascha Hauer <sha@pengutronix.de>
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>,
 barebox@lists.infradead.org
Message-ID: <20220120091433.GJ7102@pengutronix.de>
Mail-Followup-To: Sascha Hauer <sha@pengutronix.de>,
 Rouven Czerwinski <r.czerwinski@pengutronix.de>,
 barebox@lists.infradead.org
References: <20220120074733.176041-1-r.czerwinski@pengutronix.de>
 <20220120085649.GP23490@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220120085649.GP23490@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:11:53 up 40 days, 17:57, 77 users,  load average: 0.16, 0.23, 0.18
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220120_011437_898430_CC0A1D74 
X-CRM114-Status: GOOD (  25.15  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] kbuild: dtc: use env to resolve echo
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Jan 20, 2022 at 09:56:49AM +0100, Sascha Hauer wrote:
> On Thu, Jan 20, 2022 at 08:47:33AM +0100, Rouven Czerwinski wrote:
> > Posix does not mandate to have binaries within a certain path, but
> > rather that the utilities may be available. Use env to resolve and call
> > echo from PATH.
> > 
> > Fixes: 2ae7ac7ab2f1 ("kbuild: dtc: Allow adding device tree fragments via config")
> > 
> > Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
> > ---
> >  scripts/Makefile.lib | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
> > index 13b1789c01..94ca1b771b 100644
> > --- a/scripts/Makefile.lib
> > +++ b/scripts/Makefile.lib
> > @@ -340,7 +340,7 @@ dts-frags = $(subst $(quote),,$(CONFIG_EXTERNAL_DTS_FRAGMENTS))
> >  quiet_cmd_dtc = DTC     $@
> >  # For compatibility between make 4.2 and 4.3
> >  H := \#
> > -cmd_dtc = /bin/echo -e '$(H)define $(subst -,_,$(*F))_dts 1\n'$(foreach f,$< $(dts-frags),'$(H)include "$(f)"\n') | \
> 
> Why hardcode /bin/echo anyway and not use plain 'echo' instead. I assume
> because echo can be a shell builtin, but are there shells out there
> where the builtin is not enough?

The builtin echo implementations are not very compatible. Better use printf
instead. For example, echo from dash (the default /bin/sh in Debian) does
not support '-e'.

Michael

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

