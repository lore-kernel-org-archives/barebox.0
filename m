Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WOD9G-0008Sc-KN
 for barebox@lists.infradead.org; Thu, 13 Mar 2014 21:26:45 +0000
Date: Thu, 13 Mar 2014 22:26:24 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140313212623.GV17250@pengutronix.de>
References: <53211233.5070806@kosagi.com>
 <20140313214307.54dbdad8@e6520eb>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140313214307.54dbdad8@e6520eb>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Porting barebox to Novena: misc questions
To: Eric =?iso-8859-15?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

On Thu, Mar 13, 2014 at 09:43:07PM +0100, Eric B=E9nard wrote:
> Hi,
> =

> Le Thu, 13 Mar 2014 10:04:35 +0800,
> Sean Cross <xobs@kosagi.com> a =E9crit :
> > I've finally managed to get U-Boot's SPL to configure DDR3 and load
> > barebox off of a FAT partition on an i.MX6DL.  I also have a barebox
> > build with most features turned on, and I'm running into a number of
> > problems.  barebox is able to load a zImage off of the FAT partition,
> > set up ATAGs, and jump to it.  So I have the basics done.  But there are
> > lots of little things that aren't working.
> > =

> > When I boot without an Ethernet cable plugged in, the "timeout" command
> > takes a very long time to complete.  It generally freezes at "Hit any
> > key to stop autoboot:  3" and tends to ignore input for around ten
> > seconds.  How can I prevent this from happening, short of compiling out
> > FEC support?
> > =

> that's very similar to what I reported here :
> http://lists.infradead.org/pipermail/barebox/2014-February/018005.html
> =

> I didn't yet had time to investigate more based on Sascha's answer but
> that's on my todo list.

Ok, got it. The following fixes this. Looking at the netconsole it seems
some love is needed. Right now it only seems to work when port and ip
are set in the right order.

Sascha

--------------8<----------------------------------

From e4616cba4ec41ebc0d9e0419fd094984209ddbd1 Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 13 Mar 2014 22:09:47 +0100
Subject: [PATCH] netconsole: bail out when no connection is opened

When no connection is opened we should not call into
the networking stack. Otherwise it can happen that we
delay further execution until the network stack detected
a link (or timed out bringing the link up).

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 net/netconsole.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/net/netconsole.c b/net/netconsole.c
index 2ab19de..86a68e1 100644
--- a/net/netconsole.c
+++ b/net/netconsole.c
@@ -81,6 +81,9 @@ static int nc_getc(struct console_device *cdev)
 					struct nc_priv, cdev);
 	unsigned char c;
 =

+	if (!priv->con)
+		return 0;
+
 	while (!kfifo_len(priv->fifo))
 		net_poll();
 =

@@ -94,6 +97,9 @@ static int nc_tstc(struct console_device *cdev)
 	struct nc_priv *priv =3D container_of(cdev,
 					struct nc_priv, cdev);
 =

+	if (!priv->con)
+		return 0;
+
 	if (priv->busy)
 		return kfifo_len(priv->fifo) ? 1 : 0;
 =

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
