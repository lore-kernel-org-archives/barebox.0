Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from f351.i.mail.ru ([217.69.140.247])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V7RaY-0007tI-9b
 for barebox@lists.infradead.org; Thu, 08 Aug 2013 14:53:19 +0000
From: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
Mime-Version: 1.0
Date: Thu, 08 Aug 2013 18:52:47 +0400
Message-ID: <1375973567.984569011@f351.i.mail.ru>
References: <CACbe1rvwSV-XvG3nhZ5eWcO_OpBpBn7QgCLMkW+-=5uATjm0+g@mail.gmail.com>
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
Subject: =?UTF-8?B?UmU6IGJhcmVib3gtMjAxMy4wNy8wOC4wIHdvcmtzIGZyb20gUkFNIGJ1dCBm?=
 =?UTF-8?B?YWlscyBmcm9tIE5BTkQgKE1pbmkyNDQwKQ==?=
To: =?UTF-8?B?UGF3ZWwgU3VjaGFuZWNraQ==?= <pawel.suchanecki@gmail.com>
Cc: barebox@lists.infradead.org

> 2013/8/8 Pawel Suchanecki <pawel.suchanecki@gmail.com>:
> > Dear list & developers,
> >
> > My barebox works (I get barebox prompt and can boot from there) when loaded
> > to ram by (super)vivi but does not when I flash it to NAND.
> >
> > Barebox does not output anything to the console. It also fails using
> > "friendlyarm_mini2440_defconfig". It behaves the same in 2013.07.0 and
> > 2013.08.0.
> >
> > Please direct me: where can I look for the misconfiguration? What did I do
> > wrong?
> >
> > Thanks,
> > Pawel.
> 
> Hi again,
> 
> I found the thread in which Cristiano already reported such behaviour, namely:
> http://article.gmane.org/gmane.comp.boot-loaders.barebox/10142
> 
> Seems I am in same situation. Barebox.2013.05.1 starts from NAND.

The easy way to resolve this issue is "git bisect".
Can you try to do it?

---
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
