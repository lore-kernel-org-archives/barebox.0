Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([88.190.12.23])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1THZbd-0007jb-0E
 for barebox@lists.infradead.org; Fri, 28 Sep 2012 12:23:45 +0000
Message-ID: <506596C4.6080903@free-electrons.com>
Date: Fri, 28 Sep 2012 14:23:32 +0200
From: Maxime Ripard <maxime.ripard@free-electrons.com>
MIME-Version: 1.0
References: <5065935A.8040302@free-electrons.com>
In-Reply-To: <5065935A.8040302@free-electrons.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Writing to the OCOTP on mx28 boards
To: barebox@lists.infradead.org
Cc: Brian Lilly <brian@crystalfontz.com>

Le 28/09/2012 14:08, Maxime Ripard a =E9crit :
> Hi everyone,
> =

> I'm trying to write down some data to the /dev/ocotp file, which is
> basically a one time programming chip containing four bytes.
> =

> Using the command mw -b -d /dev/ocotp 0-3 0x01020304 writes down only
> "4" to the first byte of the OCOTP, which is not quite what I was
> expecting. What's the correct syntax for the mw command?

Ok, just found out, it should be
mw -l -d /dev/ocotp 0-3 0x01020304

Thanks to Franck Jullien :)

-- =

Maxime Ripard, Free Electrons
Kernel, drivers, real-time and embedded Linux
development, consulting, training and support.
http://free-electrons.com

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
