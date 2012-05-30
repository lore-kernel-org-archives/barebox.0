Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SZcac-0005q9-Am
 for barebox@lists.infradead.org; Wed, 30 May 2012 06:41:03 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:6f8:1178:4:5054:ff:fe8d:eefb] helo=localhost)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1SZcaZ-0005V7-W9
 for barebox@lists.infradead.org; Wed, 30 May 2012 08:41:00 +0200
From: Juergen Beisert <jbe@pengutronix.de>
Date: Wed, 30 May 2012 08:39:39 +0200
References: <CAONxwYMkcS4Vt04tKHkWijVxYBnt097wyMXr-LK-m5Hyj_Sk_w@mail.gmail.com>
 <CAONxwYO8Y9uYCr7VeGq9YbybRAGOZFZEQiKOTRfzm-=fH-0ihg@mail.gmail.com>
 <20120530054738.GF30400@pengutronix.de>
In-Reply-To: <20120530054738.GF30400@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201205300839.39086.jbe@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Booting mx25 based device from SD and NOR
To: barebox@lists.infradead.org

Sascha Hauer wrote:
> On Tue, May 29, 2012 at 12:14:52PM +0200, Roberto Nibali wrote:
> > ADDENDUM:
> > diff --git a/arch/arm/boards/fq-sid1-mx25-noah/Makefile
> > b/arch/arm/boards/fq-sid1-mx25-noah/Makefile
> > new file mode 100644
> > index 0000000..1e9cd54
> > --- /dev/null
> > +++ b/arch/arm/boards/fq-sid1-mx25-noah/Makefile
> > @@ -0,0 +1,26 @@
> > +#
> > +# (C) Copyright 2007 Juergen Beisert <jbe@pengutronix.de>
>
> You should replace this with your own copyright. I think J=FCrgen can live
> with not having a copyright on trivial files ;)

Sure :)

jbe

-- =

Pengutronix e.K.                              | Juergen Beisert            =
 |
Linux Solutions for Science and Industry      | http://www.pengutronix.de/ =
 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
