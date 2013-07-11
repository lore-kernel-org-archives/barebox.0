Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from f400.i.mail.ru ([185.5.136.71])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UxBT4-0000OD-LR
 for barebox@lists.infradead.org; Thu, 11 Jul 2013 07:39:11 +0000
From: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
Mime-Version: 1.0
Date: Thu, 11 Jul 2013 11:38:46 +0400
Message-ID: <1373528326.471370514@f400.i.mail.ru>
In-Reply-To: <20130711063147.GD14452@pengutronix.de>
References: <1373439641-18852-1-git-send-email-shc_work@mail.ru>
 <1373469195.50797428@f66.mail.ru>
 <20130711063147.GD14452@pengutronix.de>
Reply-To: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
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
Subject: =?UTF-8?B?UmU6IFtQQVRDSCAxLzNdIEFSTTogQWRkICJ2ZXJib3NlIiBwYXJhbWV0ZXIg?=
 =?UTF-8?B?Zm9yIHN0YXJ0X2xpbnV4IHByb2NlZHVyZQ==?=
To: =?UTF-8?B?U2FzY2hhIEhhdWVy?= <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

> On Wed, Jul 10, 2013 at 07:13:15PM +0400, Alexander Shiyan wrote:
> > > On Wed, Jul 10, 2013 at 02:52:36PM +0200, Michael Olbrich wrote:
> > > > On Wed, Jul 10, 2013 at 11:00:39AM +0400, Alexander Shiyan wrote:
> > > > > This patch will make a normal booting more silent.
> > > > 
> > > > Why? Booting the kernel is the most important task for barebox. Why
> > > > shouldn't we see a few lines about what is actually happening here by
> > > > default.
> > > > 
> > > > If you really want no output then introduce a 'quiet' option.
> > > 
> > > I think we really need different verbosity levels. standard would be
> > > 
> > > - print commandline
> > > - print which kernel image is started
> > > - print which devicetree (if any) is used
> > > 
> > > There's more I'd like to output optionally, but it's also interesting to
> > > output less in some cases.
> > 
> > How many people have so many opinions.
> > What we do with patch then?
> 
> For now I applied the following. This doesn't change anything in the
> verbosity but should solve your actual problem.
> 
> The verbosity stuff needs a bit more thinking. Michael wants to be more
> verbose by standard, because he is the one who has to guess what's going
> wrong at our customers. I want to be more quiet optionally because less
> console output means less boot time.
> 
> We could convert the meaning of the verbosity parameter could be one
> of KERN_* with the standard to KERN_INFO. Then we could implement
> everytging from quiet to chatty.

OK, thanks.
To be more detailed about problem, in my case devicetree is formed at
address 0xc0400000, and decompressed kernel placed at address 0xc0028000,
which erases devicetree.
(kernel .text : 0xc0028000 - 0xc0430cc4   (4132 kB))

---
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
