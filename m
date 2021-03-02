Delivery-date: Wed, 03 Mar 2021 21:11:39 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lHXqN-00008R-0V
	for lore@lore.pengutronix.de; Wed, 03 Mar 2021 21:11:39 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lHXqK-0005LA-GG
	for lore@pengutronix.de; Wed, 03 Mar 2021 21:11:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vh7aFRVc6fk9EndgxBz3Pj1Hg//gNoOgtnMDlOrKWxQ=; b=gMqCFtdKZ6MJjwIJeB+s8UDjX
	+3LmIYdTRsPec/8uTZK5a4ct+vi8W2Mbzr0AZgNYMPuhPb9ymkqVzHj8QxUNb+JKzILxsJISiSVki
	vOcNB+nUlZDL5yCpmUL9fpDDINBmBtWn+lQWhWE/E5M4CNBn5npP9ET45eLU8jFg6nJD+gu/2n3GN
	PSn49CzD74zjnnXrDyPzsM6hmYtYlrdV5p59H4HA+DoEmeNLeLDabYnSLmmWBmnxriSMNvZzgZtTJ
	G559dH4gG7MwhB8sBrg394k7SMrsb0856kImPU2xzgzNnCYXfaJDuWU/xnq9n+32sbGP1zcaEnLYi
	nyWxNEwBQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lHXo1-006MVQ-Cu; Wed, 03 Mar 2021 20:09:13 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lHT4v-005IZJ-1K
 for barebox@desiato.infradead.org; Wed, 03 Mar 2021 15:06:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=qyaeUuIrQJYiElfrUMifJAQ9sjsw1mu80v5MNF1hBAE=; b=jMJxKYyxKJ+7eACYA5vy7ryaGd
 8CdT5dtEjYgDTyiilmv+Rhyhv4ZL2nhqsJDRPLrJ3GP+ycO09MzR6YVG9u53kQ04NnkzOQ1Ez/13v
 +GTWwOy6CaAWdEMWlQHBmoNfwAHUN8YQN0X6mVbaCHw6PpNlhzcH/R4nNXsMU+tlkSmUKCc3+wx5B
 q/iIqr+W38ApVl7c6J1TveXiLJF74zm3LzFeLfMbODOglGuQlFwZd3fdAURYkSyVsXYgCdGhCgbjM
 fdRtgykFw/768NOEKXdeJwqrttGk7SVQtN1vH/DivuPMAarfQ6aA7iOGclvGXAm7hIyfHmykMto2w
 LnfGjGEA==;
Received: from mib.mailinblack.com ([137.74.84.110])
 by casper.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lH3SQ-00H292-I3
 for barebox@lists.infradead.org; Tue, 02 Mar 2021 11:45:02 +0000
Received: from localhost (localhost [127.0.0.1])
 by mib.mailinblack.com (Postfix) with ESMTP id 0BFCC1A6F1D
 for <barebox@lists.infradead.org>; Tue,  2 Mar 2021 11:44:51 +0000 (UTC)
Received: from mib.mailinblack.com (localhost [127.0.0.1])
 by mib.mailinblack.com with SMTP (Mib Daemon ) id KLRY1UJO;
 Tue, 02 Mar 2021 11:44:50 +0000 (UTC)
Received: from zimbra2.kalray.eu (zimbra2.kalray.eu [92.103.151.219])
 by mib.mailinblack.com (Postfix) with ESMTPS id C9B391A6EF0;
 Tue,  2 Mar 2021 11:44:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id A0C3D27E0847;
 Tue,  2 Mar 2021 12:44:50 +0100 (CET)
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id zCemb3Vwrj-W; Tue,  2 Mar 2021 12:44:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 0248D27E0842;
 Tue,  2 Mar 2021 12:44:50 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 0248D27E0842
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1614685490;
 bh=qyaeUuIrQJYiElfrUMifJAQ9sjsw1mu80v5MNF1hBAE=;
 h=Date:From:To:Message-ID:MIME-Version;
 b=la745dfASHAze/ALPvYhpkPEZ0O6aR7o4D4NLmusbsjCJaWIaxiNitvtk6VtBlpfW
 GhdB/4EzYq8NhzDvQkhdCKgtFTSxSEMR/ysYHiC6xdQgyUXb6tZFxQWJv5Y+8gRuw7
 6CXAlxQvJURHiarHctsS2cYWvhsvru6pOjb8UjR8=
X-Virus-Scanned: amavisd-new at zimbra2.kalray.eu
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id 79P4Yum2gd0W; Tue,  2 Mar 2021 12:44:49 +0100 (CET)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206])
 by zimbra2.kalray.eu (Postfix) with ESMTPSA id D7CD927E066B;
 Tue,  2 Mar 2021 12:44:49 +0100 (CET)
Date: Tue, 2 Mar 2021 12:44:48 +0100
From: Jules Maselbas <jmaselbas@kalray.eu>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, Yann Sionneau <ysionneau@kalray.eu>
Message-ID: <20210302114448.GE9273@tellis.lin.mbt.kalray.eu>
References: <20210301155851.12463-1-jmaselbas@kalray.eu>
 <20210301155851.12463-2-jmaselbas@kalray.eu>
 <cd974769-fc79-ada3-a8e6-cd3cadfdbe89@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cd974769-fc79-ada3-a8e6-cd3cadfdbe89@pengutronix.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210302_114502_206731_16BE14E1 
X-CRM114-Status: GOOD (  15.20  )
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
X-Spam-Status: No, score=-3.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/5] kvx: Implement dcache invalidation primitive
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Mar 02, 2021 at 09:40:50AM +0100, Ahmad Fatoum wrote:
> Hello,
> 
> > +
> > +void kvx_dcache_invalidate_mem_area(uint64_t addr, int size)
> > +{
> > +	/* if hwloop iterations cost < _K1_DCACHE_REFILL_PERCENT cache refill,
> > +	 * use hwloop, otherwise invalid the whole cache
> > +	 */
> > +	if (size <
> > +	(K1_DCACHE_REFILL_PERCENT * (K1_DCACHE_REFILL * K1_DCACHE_SIZE))
> > +			/ (100 * (K1_DCACHE_REFILL + K1_DCACHE_HWLOOP))) {
> > +		/* number of lines that must be invalidated */
> > +		int invalid_lines = ((addr + size) -
> > +					(addr & (~(K1_DCACHE_LINE_SIZE - 1))));
> > +
> > +		invalid_lines = invalid_lines / K1_DCACHE_LINE_SIZE
> > +				+ (0 != (invalid_lines % K1_DCACHE_LINE_SIZE));
> > +		if (__builtin_constant_p(invalid_lines) && invalid_lines <= 2) {
> 
> Note that currently this will always be false, because of lack of link time
> optimization. You could split this away the check into the header and leave the
> juicy parts here if you want to have this optimization.
> 
Yes we can drop one branch, I am tempted to always invalidate the whole
cache and be done with it. I will send a new patch anyway.

> > +			/* when inlining (and doing constant folding),
> > +			 *  gcc is able to unroll small loops
> > +			 */
> > +			int i;
> > +
> > +			for (i = 0; i < invalid_lines; i++) {
> > +				__builtin_kvx_dinvall((void *)(addr
> > +						+ i * K1_DCACHE_LINE_SIZE));
> > +			}
> > +		} else if (invalid_lines > 0) {
> > +			__asm__ __volatile__ (
> > +				"loopdo %1, 0f\n;;\n"
> > +				"dinvall 0[%0]\n"
> > +				"addd %0 = %0, %2\n;;\n"
> > +				"0:\n"
> > +				: "+r"(addr)
> > +				: "r" (invalid_lines),
> > +				"i" (K1_DCACHE_LINE_SIZE)
> > +				: "ls", "le", "lc", "memory");
> > +		}
> > +	} else {
> > +		__builtin_kvx_dinval();
> > +	}
> > +}
> > 
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

