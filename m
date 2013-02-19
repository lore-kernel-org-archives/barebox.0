Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from f254.mail.ru ([217.69.128.179])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U7hj2-0003F9-69
 for barebox@lists.infradead.org; Tue, 19 Feb 2013 07:34:53 +0000
From: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
Mime-Version: 1.0
Date: Tue, 19 Feb 2013 11:34:49 +0400
Message-ID: <1361259289.8580632@f254.mail.ru>
In-Reply-To: <20130219072648.GU1906@pengutronix.de>
References: <1360954167-18993-1-git-send-email-shc_work@mail.ru>
 <1361257763.676618458@f254.mail.ru> <20130219072648.GU1906@pengutronix.de>
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
Subject: =?UTF-8?B?UmVbMl06IFtSRkNdIEFkZCBHZW5lcmljIEdQSU8gZHJpdmVy?=
To: =?UTF-8?B?U2FzY2hhIEhhdWVy?= <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

...
> > > > > > This patch adds generic memory-mapped GPIO controller support.
> > > > > > Code taken from Linux Kernel and adopted for barebox.
> > > > > 
> > > > > I'm fine with this if you add a user for it. I wonder though if it's
> > > > > worth it to have this driver for barebox. If I have a driver in the
> > > > > kernel that already uses it, then this makes it simple to copy it, but
> > > > > should I have to write a new gpio driver, I'm unsure if it's simpler
> > > > > to write a new gpio driver or to register with the generic gpio
> > > > > driver.
> > > > 
> > > > Here's an example that I'm checking:
> > > 
> > > Ok, this indeed looks nice and short. You convinced me ;)
> > > 
> > > As said, I'm fine with the generic gpio driver if you add the below as
> > > first user.
> > 
> > I still beg to consider patch for generic GPIO separately.
> > Then I will send you two completely different versions of the implementation
> > GPIO for CLPS711X for consideration.
> 
> I don't know if I'm misunderstanding you. Of course the generic GPIO
> driver and the CLPS711x driver should be two separate patches, but
> both should come in the same series. I just want to wait applying the
> generic driver until we have a user (and thus compile coverage).

No, no, no. I say that I have two different implementations of gpio-clps711x,
both is based on generic-gpio but I cannot choose between these :)

---
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
