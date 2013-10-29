Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from f327.i.mail.ru ([217.69.140.223])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vb5Ep-00037S-5v
 for barebox@lists.infradead.org; Tue, 29 Oct 2013 09:05:24 +0000
From: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
Mime-Version: 1.0
Date: Tue, 29 Oct 2013 13:04:57 +0400
Message-ID: <1383037497.37165744@f327.i.mail.ru>
In-Reply-To: <20131029080819.GR30088@pengutronix.de>
References: <1382975421.40060558@f302.i.mail.ru>
 <20131029080819.GR30088@pengutronix.de>
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
Subject: =?UTF-8?B?UmU6IERUICYmIGkuTVggVVNC?=
To: =?UTF-8?B?U2FzY2hhIEhhdWVy?= <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

> On Mon, Oct 28, 2013 at 07:50:21PM +0400, Alexander Shiyan wrote:
> > Hello.
> > 
> > I am trying to migrate i.MX51 ConnectCore board for use DT.
> > Most stuff are done but I cannot understand how USB subsystem
> > works with devicetree.
> > 
> > First, why barebox uses own "barebox,dr_mode" and "barebox,phy_type"
> > properties instead of use kernel "dr_mode" and "phy_type"?
> 
> By the time I created this binding the binding for the kernel was not
> mainline, so I decided to use barebox,x to not end up with an
> incompatible binding. As the binding made it mainline now we can drop
> the "barebox," now.

Understood.

> > Second, how specify flags for USB ports, for example MXC_EHCI_INTERNAL_PHY?
> > In DT case we can not do it and as result desired port not functional...
> 
> Could it be that this flag should simply be dropped? According to the
> Block diagram (Freescale i.MX53 ref manual v2.1, page 4700) the otg port
> is hardwired to the internal utmi phy, so having this configurable makes
> no sense.

I checked it for i.MX51. Everything works.
Will it be the right solution for all i.MX CPUs?
If so, I will write a patch for both issues. Or you?
Thanks.

---
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
