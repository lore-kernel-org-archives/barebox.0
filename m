Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from f24.mail.ru ([217.69.129.90])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UFdTN-0001Aq-S9
 for barebox@lists.infradead.org; Wed, 13 Mar 2013 04:39:31 +0000
From: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
Mime-Version: 1.0
Date: Wed, 13 Mar 2013 08:39:25 +0400
Message-ID: <1363149565.796232847@f24.mail.ru>
In-Reply-To: <20130312210408.GV1906@pengutronix.de>
References: <1362924823.394544173@f371.mail.ru>
 <1363110626.497378554@f165.mail.ru> <20130312210408.GV1906@pengutronix.de>
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
Subject: =?UTF-8?B?UmVbMl06IE5ldyBkdC1vbmx5IGFybS9tYWNo?=
To: =?UTF-8?B?U2FzY2hhIEhhdWVy?= <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, =?UTF-8?B?TWF4aW1lIFJpcGFyZA==?= <maxime.ripard@free-electrons.com>

> On Tue, Mar 12, 2013 at 09:50:26PM +0400, Alexander Shiyan wrote:
> > > > I think about dtb-file in /env, but not sure... Thanks.
> > > 
> > > It can be done as well I guess, but that doesn't sound that familiar
> > > from what I've seen in the other barebox boards.
> > 
> > Kernel no contain any board for mach-sunxi.
> > This mean than all stuff is described via DT.
> > In the barebox we should have "mach" & "board", so I think we
> > should create empty (fake) board for architectures like this.
> > Any other opinions?
> 
> Where would you put the SDRAM setup then?

I do not know yet :) Development at planning stage. There are many
questions that I am trying to solve. It seems that in order to start, I make
a fixed load initially, and then I will try to use the options from DT.

> I think it shouldn't be a problem to change barebox to compile
> without a board directory if you really don't need one, but I assume
> some board specific code will be left.

---
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
