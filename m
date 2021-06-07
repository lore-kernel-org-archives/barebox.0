Delivery-date: Mon, 07 Jun 2021 13:25:39 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lqDNz-0006eE-Tw
	for lore@lore.pengutronix.de; Mon, 07 Jun 2021 13:25:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lqDNu-0008Ff-6t
	for lore@pengutronix.de; Mon, 07 Jun 2021 13:25:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KEysa/2rUl//QgY/gMOsVnKGyWYR7S8uKS+zIG/rtsM=; b=f3hM3H6JL1CZ86
	y44+F752S7j6Qx8rPYmjmAGRHwX3CxLqLyHKLONhq6OEq16AMnkke+0sz0QBmRpYqohNlI0oNIkdu
	VA2up4FEciPBj9fGmZ5QOJJr0c/rOdvj8OieU0r9RmGmlrfcUXiluPROYoXNSHXHY7/b5lqOZl/fl
	XDpWhETp4G/1U0t4iQxGog9ozEKh4G+zzUYqo/frXOROGcCebbf9sCzBSZsqvSs42RJO+TsaBtilv
	MajcMWDZci2NuGh9hOvRIrXTryUEqSi1XxQBKRZEixnAAcQaxzNNGrXAj6TeZ1UJdEyezYAc1yQeL
	+tAtvgStOXcikJpXiX8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lqDMD-003Jn0-RA; Mon, 07 Jun 2021 11:23:50 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lqDLH-003JNe-Hs
 for barebox@lists.infradead.org; Mon, 07 Jun 2021 11:22:55 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lqDLB-0007nh-UU; Mon, 07 Jun 2021 13:22:45 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lqDLB-000119-JU; Mon, 07 Jun 2021 13:22:45 +0200
Date: Mon, 7 Jun 2021 13:22:45 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Trent Piepho <trent.piepho@igorinstitute.com>
Cc: Barebox List <barebox@lists.infradead.org>,
 Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <20210607112245.GV31738@pengutronix.de>
References: <20210602095507.24609-1-s.hauer@pengutronix.de>
 <20210602095507.24609-12-s.hauer@pengutronix.de>
 <CAMHeXxNPhA29-Yv9_bDGVJRW-Q7Dcm4juY9EqCrHv0cK0N8fpg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMHeXxNPhA29-Yv9_bDGVJRW-Q7Dcm4juY9EqCrHv0cK0N8fpg@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 13:22:24 up 109 days, 14:46, 121 users,  load average: 0.08, 0.12,
 0.22
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210607_042251_628725_0E481DB4 
X-CRM114-Status: GOOD (  21.65  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 11/24] Add rational_best_approximation()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Jun 02, 2021 at 11:25:29AM -0700, Trent Piepho wrote:
> On Wed, Jun 2, 2021 at 3:05 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
> >
> > Import rational_best_approximation() from Linux. This is used by an
> > upcoming update of the clk_fractional_divider code.
> 
> > +               if ((n2 > max_numerator) || (d2 > max_denominator)) {
> > +                       unsigned long t = min((max_numerator - n0) / n1,
> > +                                             (max_denominator - d0) / d1);
> > +
> 
> There is a divide by zero bug in this version if the input is greater
> than the largest value allowed or less than the smallest non-zero
> value allowed.  I sent a patch to lkml for this a week ago,
> https://lore.kernel.org/patchwork/patch/1436255/

I applies that on top of the series.

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

