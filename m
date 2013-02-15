Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from f230.mail.ru ([217.69.128.160])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U6Gto-0004Ep-4f
 for barebox@lists.infradead.org; Fri, 15 Feb 2013 08:44:05 +0000
From: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
Mime-Version: 1.0
Date: Fri, 15 Feb 2013 12:43:58 +0400
Message-ID: <1360917838.197025216@f230.mail.ru>
In-Reply-To: <20130215084108.GD25672@pengutronix.de>
References: <1360835962-14789-1-git-send-email-shc_work@mail.ru>
 <20130215084108.GD25672@pengutronix.de>
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
Subject: =?UTF-8?B?UmVbMl06IFtQQVRDSF0gQWRkIG1pc3NpbmcgU1pfeHggZGVmaW5lcw==?=
To: =?UTF-8?B?U2FzY2hhIEhhdWVy?= <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

> > Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> > ---
> >  include/sizes.h |   12 ++++++++++++
> >  1 files changed, 12 insertions(+), 0 deletions(-)
> > 
> > diff --git a/include/sizes.h b/include/sizes.h
> > index c47f906..321d40c 100644
> > --- a/include/sizes.h
> > +++ b/include/sizes.h
> > @@ -17,7 +17,19 @@
> >  #define __sizes_h			1
> >  
> >  /* handy sizes */
> > +#define SZ_1				0x00000001
> > +#define SZ_2				0x00000002
> > +#define SZ_4				0x00000004
> > +#define SZ_8				0x00000008
> > +#define SZ_16				0x00000010
> > +#define SZ_32				0x00008020
> 
> There is a tiny bug in the line above, can you find it? ;)
> 
> Fixed this. Reported-by: Steffen Trumtrar, who seems to have good eyes.

Ah, sorry. Thanks!

---
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
