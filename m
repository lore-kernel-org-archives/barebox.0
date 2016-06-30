Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bIcHH-0002BV-7P
 for barebox@lists.infradead.org; Thu, 30 Jun 2016 13:45:12 +0000
Date: Thu, 30 Jun 2016 15:44:46 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160630134446.GZ20657@pengutronix.de>
References: <57695CC0.20403@gmail.com> <20160622144104.GB4750@pengutronix.de>
 <CAOTEMUR1kyNt0y6FigsqKiBP0Sjzzq+q4vxba4e73p3oxH7_Fw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOTEMUR1kyNt0y6FigsqKiBP0Sjzzq+q4vxba4e73p3oxH7_Fw@mail.gmail.com>
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
Subject: Re: Support USB port SAMA5D3
To: Alex Vazquez <avazquez.dev@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Jun 30, 2016 at 10:37:13AM +0200, Alex Vazquez wrote:
>    Hi and Thanks Sascha.
>    I've taken a look at the code and seems it's =A0right configuration.
>    I tried to change the driver and I am using OHCI.
>    Now I detect the usb hub but if I insert a pen drive give me the next
>    error:
>    barebox@Atmel sama5d3_xplained:/ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0
>    =A0 =A0 =A0
>    # usb =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0
>    =A0 =A0 =A0=A0
>    USB: scanning bus for devices... =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0
>    =A0 =A0 =A0
>    =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0=A0
>    Bus 000 Device 001: ID 0000:0000 OHCI Root Hub =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0
>    =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0
>    ERROR: OHCI Unrecoverable Error, controller usb-ohci disabled =A0 =A0 =
=A0 =A0 =A0 =A0
>    =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0
>    =A0=A0
>    =A0 =A0 =A0Couldn't reset port 2 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0
>    =A0 =A0 =A0
>    1 USB Device(s) found=A0
>    Depending on which port I insert the pen drive detects the error port =
2 or
>    port 3.
>    I have also checked that the registers and peripheral clocks are set w=
ell.
>    any more suggestions that may be happening?
>    I think I'm close to finding the problem...

I have just found a sama5d3_xplained board here. The good thing is that
I can reproduce this issue without problems: It's the same here.
Unfortunately I have no idea what's going on.

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
