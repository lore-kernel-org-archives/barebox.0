Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VehLD-0005g7-8g
 for barebox@lists.infradead.org; Fri, 08 Nov 2013 08:22:56 +0000
Date: Fri, 8 Nov 2013 09:22:31 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131108082231.GS24559@pengutronix.de>
References: <1383747881-15698-1-git-send-email-jbe@pengutronix.de>
 <1383747881-15698-3-git-send-email-jbe@pengutronix.de>
 <20131107100456.GJ26639@ns203013.ovh.net>
 <20131107110909.GR24559@pengutronix.de>
 <20131107143749.GK26639@ns203013.ovh.net>
 <1383835020.4120.2.camel@weser.hi.pengutronix.de>
 <572C7A49-B2B8-4DD1-B9A7-2FCE0444356B@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <572C7A49-B2B8-4DD1-B9A7-2FCE0444356B@jcrosoft.com>
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
Subject: Re: [SPAM] [PATCH 2/3] FPGA: add a programming command
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org, Juergen Beisert <jbe@pengutronix.de>

On Thu, Nov 07, 2013 at 11:27:39PM +0800, Jean-Christophe PLAGNIOL-VILLARD =
wrote:
> =

> On Nov 7, 2013, at 10:37 PM, Lucas Stach <l.stach@pengutronix.de> wrote:
> =

> > Am Donnerstag, den 07.11.2013, 15:37 +0100 schrieb Jean-Christophe
> > PLAGNIOL-VILLARD:
> >> On 12:09 Thu 07 Nov     , Sascha Hauer wrote:
> >>> On Thu, Nov 07, 2013 at 11:04:56AM +0100, Jean-Christophe PLAGNIOL-VI=
LLARD wrote:
> >>>> Hi,
> >>>> =

> >>>> 	I really do not like it
> >>>> =

> >>>> 	we need to have an API to load firmware same a Linux
> >>> =

> >>> The firmware loading mechanism in Linux is driven by the driver
> >>> requesting a firmware. This is appropriate for WiFi drivers which can=
't
> >>> continue without a firmware. For FPGAs which can be loaded, unloaded,=
 or
> >>> even partially loaded, it's the user that should trigger firmware
> >>> loading, not the driver.
> >>> =

> >>> Also, in barebox a user should decide if and when a firmware is loade=
d.
> >>> We have cases where a single board requires different Firmwares
> >>> depending on bootstrapping. In this case You don't want to have fixed
> >>> firmware names.
> >>> =

> >>> So no, the Linux Firmware model is not suitable for barebox (it sucks
> >>> for Linux aswell in many cases).
> >> =

> >> and command is horrible as you need to known the protocol which you do=
 not
> >> care
> >> =

> >> you just need to known the fpga device and firmware you want to use
> >> =

> >> then the fpga driver will handle
> >> =

> > Did you take the time to read the patches?
> > =

> > From a user perspective you only specify which FPGA you want to program
> > and tell the command which firmware file to use. The protocol and other
> > lowlevel stuff is taken care of in the handler.
> =

> yes I did but the issue is that you need to use a command instead just si=
mply
> set a parameter to the fpga device
> =

> that why I hate the idea of command you use the device to set the firmwar=
e you want

I'm fine with a /dev/fpga.x interface to load firmware. However, I find
a command still useful. A command can list all available FPGAs, can
handle partitioned FPGAs and has better possibilities to react to
unusual situations. Right now J=FCrgens interface to the FPGA driver has
a open/write/close interface. Integrating a cdev into this should be
simple. Then time can decide whether a /dev/ interface or a command or
both is more useful.

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
