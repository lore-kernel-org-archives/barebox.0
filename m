Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QoaDr-0001G5-Uw
	for barebox@lists.infradead.org; Wed, 03 Aug 2011 12:06:52 +0000
Date: Wed, 3 Aug 2011 14:06:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110803120648.GR31404@pengutronix.de>
References: <1312360122-26499-1-git-send-email-antonynpavlov@gmail.com>
	<1312360122-26499-2-git-send-email-antonynpavlov@gmail.com>
	<20110803102244.GQ31404@pengutronix.de>
	<CAA4bVAGnCxcaF9+Toh13VEzKxET+nW3dvbk5La9zRsnMnot9CA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAA4bVAGnCxcaF9+Toh13VEzKxET+nW3dvbk5La9zRsnMnot9CA@mail.gmail.com>
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
Subject: Re: [PATCH very-draft] add ifconfig command
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Aug 03, 2011 at 04:01:08PM +0400, Antony Pavlov wrote:
> On 3 August 2011 14:22, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > On Wed, Aug 03, 2011 at 12:28:42PM +0400, Antony Pavlov wrote:
> >> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> >> ---
> >> =A0commands/Kconfig =A0 =A0| =A0 =A06 +++
> >> =A0commands/Makefile =A0 | =A0 =A01 +
> >> =A0commands/ifconfig.c | =A0 97 ++++++++++++++++++++++++++++++++++++++=
+++++++++++++
> >> =A03 files changed, 104 insertions(+), 0 deletions(-)
> >> =A0create mode 100644 commands/ifconfig.c
> >
> > Right now I don't see the reason to add a ifconfig command. Why not use
> > devinfo eth0?
> =

> I don't use dhcp.
> I use enhanced version of ifconfig to setup eth0 parameters
> (ipaddr, netmask etc).
> =

> Have we a command to make dev_set_param() on any device?

Not directly command, but you can set it on the command line. Device
parameters are just like normal shell variables:

barebox:/ eth0.ipaddr=3D192.168.2.18
barebox:/ echo $eth0.ipaddr
192.168.2.18
barebox:/ =


Sascha

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
