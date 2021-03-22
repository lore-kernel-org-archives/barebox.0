Delivery-date: Mon, 22 Mar 2021 06:13:27 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lOCsZ-0002yf-FC
	for lore@lore.pengutronix.de; Mon, 22 Mar 2021 06:13:27 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lOCsY-0005Fc-JW
	for lore@pengutronix.de; Mon, 22 Mar 2021 06:13:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zrjIeSADnleJqQLqg4LrLtej3eaKVXue8A60pZF+3Y8=; b=bcR0tMyLF4mi0G12bxz8sWcnS
	T2To1/CSeAi7lTxT2phh8NrDxrcrIXTWZg2PjaYHR3RJFJ9byaCvn8C+qGKeQuKY3DBhcyBf8x71T
	Et/NdSySAG04WlmNxtcCMVDs8lFIMuoNW3MxujmUWaYBJnKIh0o+WDLc0EPxFvFb5+bJUP9dIxfkY
	vZgoxfNoAZdiIS+AgChzvLPQdDrglhy4FZqy4mwSgi5RaFTMmNoqkMXBNI3hSkv2Qsra0g+wjV3W9
	aQGV7iM1DzxVQjf9KDEzjxeoFZvbtW108DMEiNGKNb17PiqG7DYlYbc0fwyiBkDYFplGn6aTsqzuI
	GIQap3Cxg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lOCre-00AvBh-PD; Mon, 22 Mar 2021 05:12:31 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lOCrR-00AvAj-Vr
 for barebox@lists.infradead.org; Mon, 22 Mar 2021 05:12:24 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lOCrR-0004q2-Bn; Mon, 22 Mar 2021 06:12:17 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lOCrQ-0006HS-RX; Mon, 22 Mar 2021 06:12:16 +0100
Date: Mon, 22 Mar 2021 06:12:16 +0100
From: Sascha Hauer <sha@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Ahmad Fatoum <ahmad@a3f.at>, barebox@lists.infradead.org
Message-ID: <20210322051216.GL23724@pengutronix.de>
References: <20210223072427.166689-1-ahmad@a3f.at>
 <20210224084945.GI5549@pengutronix.de>
 <f639c838-e999-7a9b-ed03-7fd46c9e6fad@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f639c838-e999-7a9b-ed03-7fd46c9e6fad@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 06:11:57 up 32 days,  8:35, 49 users,  load average: 0.13, 0.14, 0.10
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210322_051222_430938_68079479 
X-CRM114-Status: GOOD (  25.00  )
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
X-Spam-Status: No, score=-2.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] kbuild: add '-fno-stack-check' to barebox build
 options
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Mar 16, 2021 at 08:10:45PM +0100, Ahmad Fatoum wrote:
> Hello Sascha,
> 
> On 24.02.21 09:49, Sascha Hauer wrote:
> > On Tue, Feb 23, 2021 at 08:24:26AM +0100, Ahmad Fatoum wrote:
> >> This ports over Linux commit 3ce120b16cc5 ("kbuild: add
> >> '-fno-stack-check' to kernel build options"):
> >>
> >>   Author:     Linus Torvalds <torvalds@linux-foundation.org>
> >>
> >>     kbuild: add '-fno-stack-check' to kernel build options
> >>
> >>     It appears that hardened gentoo enables "-fstack-check" by default for
> >>     gcc.
> >>
> >>     That doesn't work _at_all_ for the kernel, because the kernel stack
> >>     doesn't act like a user stack at all: it's much smaller, and it doesn't
> >>     auto-expand on use.  So the extra "probe one page below the stack" code
> >>     generated by -fstack-check just breaks the kernel in horrible ways,
> >>     causing infinite double faults etc.
> >>
> >>     [ I have to say, that the particular code gcc generates looks very
> >>       stupid even for user space where it works, but that's a separate
> >>       issue.  ]
> >>
> >>     Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>
> >>
> >> I am porting it, because it may become more acute with the incoming
> >> support for multiple stacks (via initjmp).
> >>
> >> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> >> ---
> > 
> > Applied, thanks
> 
> Can't find both patches in next.

They should be there now.

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

