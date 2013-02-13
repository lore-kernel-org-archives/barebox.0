Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from f421.i.mail.ru ([185.5.136.92])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U5gih-0000qS-B5
 for barebox@lists.infradead.org; Wed, 13 Feb 2013 18:06:12 +0000
From: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
Mime-Version: 1.0
Date: Wed, 13 Feb 2013 22:06:03 +0400
Message-ID: <1360778763.624407113@f421.i.mail.ru>
In-Reply-To: <20130213174051.GH1906@pengutronix.de>
References: <1360755704-24105-1-git-send-email-shc_work@mail.ru>
 <1360776009.524936687@f310.mail.ru> <20130213174051.GH1906@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: =?UTF-8?B?UmVbMl06IFtQQVRDSCB2MiAzLzldIEFSTTogY2xwczcxMXg6IEFkZHMgY29u?=
 =?UTF-8?B?ZmlnIG9wdGlvbiBmb3IgQ1BVIFBMTCBtdWx0aXBsaWVy?=
To: =?UTF-8?B?U2FzY2hhIEhhdWVy?= <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

...
> > > I don't quite understand why you want to have this configurable. I mean
> > > this is a single board only, why not simply run it with the maximum
> > > allowed frequency? Or does this board come with multiple SoCs for which
> > > different maximum values exist?
> > 
> > Yes. There are 2 versions of the chip. One with a maximum operating
> > frequency of 74 MHz, second with 90 MHz. The only difference is on the CPU label.
> > Which version is used, it is impossible to know in runtime.
> > You can simply reject this patch [3/9], all other should not depend on this one.
> > Later I'll try to make another different version.
> 
> Ok, thanks for explaining. It's really discouraged to put such things in
> Kconfig, but in this case it seems acceptable: There's no way to detect
> it during runtime *and* it varies across the same board type. So I
> applied this series.
> 
> One option out of this might be that you could always startup with 74MHz
> and add a command to switch to 90MHz. You could put this into the
> environment on boards that you know work with 90MHz. Aynway, I don't
> want to force you to do this on an Architecture you're probably
> currently the only user of.

OK. Thanks.

---
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
