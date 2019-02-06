Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1grHi5-0005Zk-E7
 for barebox@lists.infradead.org; Wed, 06 Feb 2019 07:33:31 +0000
Date: Wed, 6 Feb 2019 08:33:24 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190206073324.3r3zuogav6bqnkzr@pengutronix.de>
References: <20190204144641.19600-1-s.hauer@pengutronix.de>
 <CAHQ1cqG1i_AcMBymMLMekokRd6HozomtZYDVznruixs0Z1XVxA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHQ1cqG1i_AcMBymMLMekokRd6HozomtZYDVznruixs0Z1XVxA@mail.gmail.com>
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
Subject: Re: [PATCH 0/5] 32-bit lseek and /dev/mem fixes/improvements
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

On Tue, Feb 05, 2019 at 01:44:31PM -0800, Andrey Smirnov wrote:
> On Mon, Feb 4, 2019 at 6:46 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
> >
> > This series ontop of Andreys series (minus the patches that I have
> > reverted) makes /dev/mem work for the whole 64bit address space without
> > hopefully special casing too much. "fs: set errno in ftruncate()" and
> > "fs: devfs: forbid truncation when cdev has no truncate operation" are
> > not directly related, I stumbled upon these while working on the
> > patches.
> >
> > See the full series in -next. Comments welcome, if somethings wrong with
> > it we can still change.
> >
> 
> Not sure why, but the following patches:
> 
> "fs: Report actual data processed by mem_copy()"
> "fs: Share code between mem_write()/mem_read()"

I applied these two now (although squashed into a single commit)...

> 
> appear to be missing and, as a result:
> 
> "fs: Avoid division in mem_copy()"

...and rewrote this commit message.

> 
> doesn't actually have mem_copy() function in it. Did the two patches
> above just slipped through the cracks or was there a particular reason
> you dropped them?

I thought they wouldn't apply anymore, but I was mistaken. Indeed they
do apply.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
