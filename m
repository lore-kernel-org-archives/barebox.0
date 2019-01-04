Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gfNSc-0002AI-46
 for barebox@lists.infradead.org; Fri, 04 Jan 2019 11:16:20 +0000
Date: Fri, 4 Jan 2019 12:16:14 +0100
From: Roland Hieber <rhi@pengutronix.de>
Message-ID: <20190104111614.hsxnwjwu6r3xzvgf@pengutronix.de>
References: <20181213070336.26837-1-andrew.smirnov@gmail.com>
 <20190103153120.efhgd2xtcct5xjq4@pengutronix.de>
 <CAHQ1cqF2CbQNGb=EvQSyf==kE=eSzLwR9ByBM52O8yAJZJKsbg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHQ1cqF2CbQNGb=EvQSyf==kE=eSzLwR9ByBM52O8yAJZJKsbg@mail.gmail.com>
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/4] net/e1000: Map custom error codes to more
 appropriate errno values
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

On Thu, Jan 03, 2019 at 05:47:09PM -0800, Andrey Smirnov wrote:
> That's definitely true. When writing this patch I looked for usages
> similar to what you describe in the actual code of the driver, but
> didn't see anything that should cause a problem. The driver has a
> pretty sizable set of error codes, but AFAICT none of them are really
> used as anything more than a negative number passed up the call chain.
> Grepping for "E1000_ERR_*" in drivers/net/e1000 doesn't seem to show
> any usages in any comparison statements. Finding all of the points in
> the driver where error codes cross over into generic codebase and
> doing errno re-mapping there seemed like a more invasive/complicated
> alternative, so I did go for it.
> 
> That's how my thinking went, anyway. I can re-do the patch if we
> decide that maintaining unique ID for each E1000_ERR_* code is
> desired.

Yeah, I also did a few quick greps through the code, and didn't find any
such usages. I also noticed that sometimes the e1000 driver returns
-EIO etc. directly instead of the E1000_ERR_* codes. I don't think your
patch needs a respin though, it was only a small nitpick from my side,
all of that can still be cleaned up in additional patches, if someone
wants to do it. ;-)

 - Roland

-- 
Roland Hieber                     | r.hieber@pengutronix.de     |
Pengutronix e.K.                  | https://www.pengutronix.de/ |
Peiner Str. 6-8, 31137 Hildesheim | Phone: +49-5121-206917-5086 |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
