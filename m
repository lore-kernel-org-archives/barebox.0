Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from f66.mail.ru ([94.100.178.232])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uww5N-0007o6-5n
 for barebox@lists.infradead.org; Wed, 10 Jul 2013 15:13:42 +0000
From: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
Mime-Version: 1.0
Date: Wed, 10 Jul 2013 19:13:15 +0400
Message-ID: <1373469195.50797428@f66.mail.ru>
In-Reply-To: <20130710131618.GF516@pengutronix.de>
References: <1373439641-18852-1-git-send-email-shc_work@mail.ru>
 <20130710125236.GE29932@pengutronix.de>
 <20130710131618.GF516@pengutronix.de>
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

> On Wed, Jul 10, 2013 at 02:52:36PM +0200, Michael Olbrich wrote:
> > On Wed, Jul 10, 2013 at 11:00:39AM +0400, Alexander Shiyan wrote:
> > > This patch will make a normal booting more silent.
> > 
> > Why? Booting the kernel is the most important task for barebox. Why
> > shouldn't we see a few lines about what is actually happening here by
> > default.
> > 
> > If you really want no output then introduce a 'quiet' option.
> 
> I think we really need different verbosity levels. standard would be
> 
> - print commandline
> - print which kernel image is started
> - print which devicetree (if any) is used
> 
> There's more I'd like to output optionally, but it's also interesting to
> output less in some cases.

How many people have so many opinions.
What we do with patch then?

---
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
