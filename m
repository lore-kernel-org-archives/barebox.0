Delivery-date: Thu, 04 Mar 2021 09:43:29 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lHjZx-0000xE-QY
	for lore@lore.pengutronix.de; Thu, 04 Mar 2021 09:43:29 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lHjZw-0005fX-NS
	for lore@pengutronix.de; Thu, 04 Mar 2021 09:43:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9pwyHG5SCFBe7girfR325+NKeT15DereKgd9tJWZaGI=; b=BQ3RJYiw0Mm3XbOUtFBnQw6bp
	VLBl/DPID8Wy/mZv044cxkYEs5Zi+Emstz3tvE1QH89k6AauzZi2TEtBiLEVY/K0NlvahjpQVutnw
	0McszNZmn6od015ePc5hyNuAz2NjYYGFwauvhauhKxqWCZxCN/XS89lxaIY5P/xtZUzvDAKhuTMq4
	jpSNro7wnQi+I+JNnM2dm5xTzQ786iHKwoxjEXJOxtuHfyr/sUb+nRj1bYHoFo8XDkRChWgsPgkVK
	BPZ9BC7XRBDkD6PMzfKngj1IECgq+j8sMtQSwes0zD2uBvBeE1gagRWmkcmhkYWLH/jOhqeaazxvq
	vjYglg4XQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lHjYK-0089eZ-AQ; Thu, 04 Mar 2021 08:41:48 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lHjUx-0089Qt-D3
 for barebox@desiato.infradead.org; Thu, 04 Mar 2021 08:38:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=sh44YuiZFvOpvonvKBoVpw9Yt4SbrdKwbhghidfmwhc=; b=USpvX3mzIU5mEjZyvPqAdr8rI2
 f03B9XixECcY3ivgnBWr7f0brujPursUaYym+GJ+H8vX5WDom2Mv3DjOW/V6j9aQ/MUIZehTSnOXV
 W1IJurQ7Rc0uNzd0YzH94i5+HhmYgr9HVPRzYLc3sekW0MfW0VLz5TD2P+cLaIsFrHN7J0eUkYd6j
 pzHz2VTlpcScDog4iNOa9uWbHlNvYZvP6r7WNboCDiKCp7hCR4j1JjyBukamdwWzqZuDk188VoLoa
 vP7H0HImylBEqLRidV5Mh9u4Tm3UtbWtFmyOzazhae1YIidLa+oX9mGwYaniF1/DTCf5Fy2cRAqar
 gpyGIYFQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lHjUu-006Gsw-7X
 for barebox@lists.infradead.org; Thu, 04 Mar 2021 08:38:17 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lHjUq-0005EC-MU; Thu, 04 Mar 2021 09:38:12 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lHjUp-0004Jt-S7; Thu, 04 Mar 2021 09:38:11 +0100
Date: Thu, 4 Mar 2021 09:38:11 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Peter Mamonov <pmamonov@gmail.com>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org,
 Jules Maselbas <jmaselbas@kalray.eu>, Stafford Horne <shorne@gmail.com>
Message-ID: <20210304083811.GO5549@pengutronix.de>
References: <20210301110106.3764-1-a.fatoum@pengutronix.de>
 <20210301110106.3764-11-a.fatoum@pengutronix.de>
 <20210302221920.GC1407@chr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210302221920.GC1407@chr>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:35:20 up 14 days, 11:59, 73 users,  load average: 0.27, 0.15, 0.14
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210304_083817_205412_CC13FE10 
X-CRM114-Status: GOOD (  20.95  )
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
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 10/11] mips: Implement setjmp/longjmp/initjmp
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Peter,

On Wed, Mar 03, 2021 at 01:19:26AM +0300, Peter Mamonov wrote:
> Hi, Sascha and Ahmad,
> 
> On Mon, Mar 01, 2021 at 12:01:05PM +0100, Ahmad Fatoum wrote:
> > From: Sascha Hauer <s.hauer@pengutronix.de>
> > 
> > The header has been taken from glibc, the implementation itself is based
> > on the newlib implementation.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> > ---
> >  arch/mips/Kconfig              |  1 +
> >  arch/mips/include/asm/setjmp.h | 32 ++++++++++++++++++++++
> >  arch/mips/lib/Makefile         |  1 +
> >  arch/mips/lib/setjmp.S         | 50 ++++++++++++++++++++++++++++++++++
> >  4 files changed, 84 insertions(+)
> >  create mode 100644 arch/mips/include/asm/setjmp.h
> >  create mode 100644 arch/mips/lib/setjmp.S
> > 
> > ...
> >
> > diff --git a/arch/mips/lib/setjmp.S b/arch/mips/lib/setjmp.S
> > new file mode 100644
> > index 000000000000..b09a7c55293c
> > --- /dev/null
> > +++ b/arch/mips/lib/setjmp.S
> > @@ -0,0 +1,50 @@
> > +/* SPDX-License-Identifier: GPL-2.0-only */
> > +
> > +#include <asm/regdef.h>
> > +#include <asm/asm.h>
> > +#include <linux/linkage.h>
> > +
> > +/* int setjmp (jmp_buf);  */
> > +LEAF(setjmp)
> > +	sw	ra, (0 * 4)(a0)
> > +	sw	sp, (1 * 4)(a0)
> > +	sw	s0, (2 * 4)(a0)
> > +	sw	s1, (3 * 4)(a0)
> > +	sw	s2, (4 * 4)(a0)
> > +	sw	s3, (5 * 4)(a0)
> > +	sw	s4, (6 * 4)(a0)
> > +	sw	s5, (7 * 4)(a0)
> > +	sw	s6, (8 * 4)(a0)
> > +	sw	s7, (9 * 4)(a0)
> > +	sw	fp, (10 * 4)(a0)
> > +	move	v0, zero
> > +	j	ra
> > +END(setjmp)
> > +
> > +/* volatile void longjmp (jmp_buf, int);  */
> > +LEAF(longjmp)
> > +	lw	ra, (0 * 4)(a0)
> > +	lw	sp, (1 * 4)(a0)
> > +	lw	s0, (2 * 4)(a0)
> > +	lw	s1, (3 * 4)(a0)
> > +	lw	s2, (4 * 4)(a0)
> > +	lw	s3, (5 * 4)(a0)
> > +	lw	s4, (6 * 4)(a0)
> > +	lw	s5, (7 * 4)(a0)
> > +	lw	s6, (8 * 4)(a0)
> > +	lw	s7, (9 * 4)(a0)
> > +	lw	fp, (10 * 4)(a0)
> > +	bne	a1, zero, 1f
> > +	li	a1, 1
> > +1:
> > +	move	v0, a1
> > +	j	ra
> > +END(longjmp)
> > +
> > +/* int initjmp(jmp_buf jmp, void __noreturn (*func)(void), void *stack_top); */
> > +LEAF(initjmp)
> > +	sw	a1, (0 * 4)(a0)
> > +	sw	a2, (1 * 4)(a0)
> > +	move	v0, zero
> > +	j	ra
> > +END(initjmp)
> 
> I would suggest using `REG_S/REG_L r, (n * SZREG)(a0)` here for the sake of 
> MIPS64 targets. See arch/mips/include/asm/asm.h:272.

I agree with you, but barebox doesn't support MIPS64 currently and I
wasn't confident enough to add such things when I can't test them.
Maybe we can add a

#if SZREG != 4
#error setjmp/longjmp currently only supports 32bit targets
#endif

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

