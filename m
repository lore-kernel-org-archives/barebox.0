Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QmOwq-0001x5-LG
	for barebox@lists.infradead.org; Thu, 28 Jul 2011 11:40:18 +0000
Date: Thu, 28 Jul 2011 13:40:12 +0200
From: Robert Schwebel <r.schwebel@pengutronix.de>
Message-ID: <20110728114012.GT31771@pengutronix.de>
References: <1311850847-5140-1-git-send-email-s.hauer@pengutronix.de>
	<1311850847-5140-4-git-send-email-s.hauer@pengutronix.de>
	<4E31466C.7090607@eukrea.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4E31466C.7090607@eukrea.com>
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
Subject: Re: [PATCH 3/3] arm: add support for the i.MX53 loco board
To: Eric =?iso-8859-15?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

On Thu, Jul 28, 2011 at 01:22:20PM +0200, Eric B=E9nard wrote:
> On 28/07/2011 13:00, Sascha Hauer wrote:
> >  	prompt "i.MX53 Board Type"
> >
> >+config MACH_FREESCALE_MX53_LOCO
> >+	bool "Freescale i.MX53 LOCO"
> >+	select HAVE_MMU
> >+	select MACH_HAS_LOWLEVEL_INIT
> >+
> just a detail : the official name is "Quick Start Board" (IMX53QSB),
> Loco was the engineering name

Quick Start Board is boring, so let's stay with LOCO :-)

rsc =

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
