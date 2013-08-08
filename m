Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from f187.i.mail.ru ([94.100.185.138])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V7T1g-0002gE-3x
 for barebox@lists.infradead.org; Thu, 08 Aug 2013 16:25:25 +0000
From: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
Mime-Version: 1.0
Date: Thu, 08 Aug 2013 20:24:57 +0400
Message-ID: <1375979097.394055279@f187.i.mail.ru>
In-Reply-To: <2914196.CyBYm9GnKj@probook>
References: <CACbe1rvwSV-XvG3nhZ5eWcO_OpBpBn7QgCLMkW+-=5uATjm0+g@mail.gmail.com>
 <1375973567.984569011@f351.i.mail.ru> <2914196.CyBYm9GnKj@probook>
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
To: =?UTF-8?B?Q3Jpc3RpYW5vIFJvZHJpZ3Vlcw==?= <microcris@sapo.pt>
Cc: barebox@lists.infradead.org

> On Thursday 08 August 2013 18:52:47 Alexander Shiyan wrote:
> > > 2013/8/8 Pawel Suchanecki <pawel.suchanecki@gmail.com>:
> > > > Dear list & developers,
> > > > 
> > > > My barebox works (I get barebox prompt and can boot from there) when
> > > > loaded
> Hi there :)
> 
> It is the first commit after the barebox version 2013.05.1 that is breaking 
> the mini2440 NAND boot.
> 
> cris@ProBook:~/mini2440/Boot/barebox_git$ git bisect bad
> 5f82a0cd0138ae5208cc8758c638ce6a928ed2e3 is the first bad commit
> commit 5f82a0cd0138ae5208cc8758c638ce6a928ed2e3
> Author: Alexander Shiyan <shc_work@mail.ru>
> Date:   Tue Apr 9 19:05:31 2013 +0400
> 
>     ARM: cpuimx51: Use custom padctrl for fec
>     
>     The fec padctrl is different from what we have in the kernel iomux
>     file. To be able to keep the iomux file in sync with the kernel, use
>     a custom padctrl for the cpuimx51 board.
>     
>     Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
>     Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Seems something incorrect since patch is touched i.MX arch only.

---
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
