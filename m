Delivery-date: Wed, 03 Mar 2021 23:07:28 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lHZeS-0000Eo-37
	for lore@lore.pengutronix.de; Wed, 03 Mar 2021 23:07:28 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lHZeQ-0001Uj-AU
	for lore@pengutronix.de; Wed, 03 Mar 2021 23:07:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DqP3ec+gymU3YDpCd/uIMxYcCOANsDt7I+oCZF2IFwY=; b=UqkefPbnQsn/eh9Yh18PiHpC3
	d0kBWdUD/U611MGJ2VAldUjxpBzzythhQN0rin+cUZ03DNRj1JwhajgpWbnS7Mhci3l8od0VqK2un
	PSKoL9H9m9w4DQT6DTh5jgV4PU9OpRFtq8mOP66+Aqx3aMajQGiHENEjamdr+n6R3xEjczcbB11cp
	eGYRg8NfaERGP7SKpwdybj9OlfZxLYqEErrmE0uaX7FjkD90Nq0g2VPv3CpBmQ51iB/SsiApm0KCf
	6tCQ/dS9jGkPiHGDvJzDvkvVy1R04mMvqwYHufA+Hd8k2Qmm+Fjs8RWg2I6Hp2OL17dIhqWeRqbym
	VUpcioAQA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lHZcC-006hKY-Qg; Wed, 03 Mar 2021 22:05:09 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lHTAa-005Kba-O4
 for barebox@desiato.infradead.org; Wed, 03 Mar 2021 15:12:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=qyK68NLeBcBqOxafisLtYgYwuKM7VhIIsadG0+ClA/Y=; b=mnfqwn5N0gjDN3djUKnzsQi3oo
 qDWJkABbLT3gsJp6HXq6UjoQFDSuZq5Oom16xUWnvpGDN05vuM9wEj16egnO6IODoCj1PffGlnA0O
 I9IVZ16kp0D9vqOAH6Jo3kstZg/QltnQ1K00XTrExHUUYxDIqu/yC2oGcFzloWUEgqX0fX7zQdo5V
 nU8HGDNor3ag0Zez6V6IjieEfQ8Q64EF2KkOgr/LZ1l6Bk86tFwmLwz24QvcvVzKaLNLXi+i94h07
 G4//3Z8fvDcJw6Ed9+HDXc0n8n6aU1uBEnTHaEAWIS5X//P/pQQR2x1DfQw7ODWmrq8i9s4PNaE7I
 CqcQW8tw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lHTAV-00366e-JB
 for barebox@lists.infradead.org; Wed, 03 Mar 2021 15:12:10 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lHTAU-0007rj-UD; Wed, 03 Mar 2021 16:12:06 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lHTAU-0002JE-6c; Wed, 03 Mar 2021 16:12:06 +0100
Date: Wed, 3 Mar 2021 16:12:06 +0100
From: Sascha Hauer <sha@pengutronix.de>
To: Stafford Horne <shorne@gmail.com>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org,
 Jules Maselbas <jmaselbas@kalray.eu>
Message-ID: <20210303151206.GM5549@pengutronix.de>
References: <20210301110106.3764-1-a.fatoum@pengutronix.de>
 <20210303121547.GE365039@lianli.shorne-pla.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210303121547.GE365039@lianli.shorne-pla.net>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 16:10:56 up 13 days, 18:34, 77 users,  load average: 0.38, 0.41, 0.30
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210303_151210_512691_59DFF6A8 
X-CRM114-Status: GOOD (  19.80  )
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
Subject: Re: [PATCH v2 00/11] common: introduce bthreads, co-operative
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Mar 03, 2021 at 09:15:47PM +0900, Stafford Horne wrote:
> On Mon, Mar 01, 2021 at 12:00:55PM +0100, Ahmad Fatoum wrote:
> > Hello,
> > 
> > This is v2 of barebox coroutine support:
> >     https://lists.infradead.org/pipermail/barebox/2021-February/035032.html
> > 
> > As discussed with Sascha, if this is to be added, this should be added for
> > all architectures and not be optional. If we have this as integral part,
> > it means we can substitute coroutines for:
> >     - pollers: just wrap the code in a loop
> >     - async pollers: just call a delay function in the loop
> >     - workqueues: assert_command_context yields until in command context
> > 
> > In addition, we will have much less work porting over threaded code from
> > Linux. See the referenced series for an example of a USB mass storage
> > gadget.
> > 
> > To prepare for replacing them, the functionality is renamed to
> > bthreads (as in barebox threads) and is made separate from pollers.
> > 
> > How to add new architecture support:
> > 
> >   - Apply this series or check out https://github.com/a3f/barebox/tree/bthread
> 
> Now that I got a dev environment booting off master I have switched to your
> bthread branch.  I found there is already a commit to remove openrisc in next.
> 
> I will revert this in my branch.

In the meantime I reverted removing of openrisc. Thank you for looking
at it.

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

