Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from f238.mail.ru ([217.69.128.165])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ULvkZ-0007Uy-HI
 for barebox@lists.infradead.org; Sat, 30 Mar 2013 13:23:16 +0000
From: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
Mime-Version: 1.0
Date: Sat, 30 Mar 2013 17:23:09 +0400
Message-ID: <1364649788.298722850@f238.mail.ru>
In-Reply-To: <m3ppyhf2ps.fsf@intrepid.localdomain>
References: <m3r4ixgmok.fsf@intrepid.localdomain>
 <1364644874.356017584@f97.mail.ru> <m3ppyhf2ps.fsf@intrepid.localdomain>
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
Subject: =?UTF-8?B?UmVbMl06IFtQQVRDSF0gSW1wbGVtZW50IEFMVEVSTkFURSBtZW1vcnkgbGF5?=
 =?UTF-8?B?b3V0Lg==?=
To: =?UTF-8?B?S3J6eXN6dG9mIEhhbGFzYQ==?= <khc@pm.waw.pl>
Cc: barebox@lists.infradead.org

> Alexander Shiyan <shc_work@mail.ru> writes:
> 
> >> +config MEMORY_LAYOUT_ALTERNATE
> >> +	bool "use alternate memory layout"
> >> +	help
> >> +	  select this option to use barebox's alternate memory layout:
> >> +
> >> +	  TEXT_BASE
> >> +	  -----
> >> +	  malloc heap
> >> +	  -----
> >> +	  stack
> >> +
> >
> > This should be described better.
> 
> Well... I did it after the default layout. What do you propose?

I cannot say more.
Since this option globally for all barebox targets, it is necessary to
describe all aspects of its application.

---
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
