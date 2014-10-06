Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Xb1E5-0004bF-Jh
 for barebox@lists.infradead.org; Mon, 06 Oct 2014 05:52:54 +0000
Date: Mon, 6 Oct 2014 07:52:31 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20141006055231.GM4992@pengutronix.de>
References: <542E4AAD.7070703@calao-systems.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <542E4AAD.7070703@calao-systems.com>
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
Subject: Re: at91 usbserial issue
To: =?iso-8859-15?Q?Gr=E9gory?= Hermant <gregory.hermant@calao-systems.com>
Cc: barebox@lists.infradead.org

Hi Greg,

On Fri, Oct 03, 2014 at 09:05:17AM +0200, Gr=E9gory Hermant wrote:
> Hi all,
> The usbserial seems to be broken for board equipped with an Atmel sam9260=
/9g20 Soc.
> I ran the lastest version of barebox (v2014.10.0) on a USB_A9G20_LPW.
> Below the trace
> udc0: registering UDC driver [g_serial]
> g_serial usbgadget: acm/23ba9538: can't bind, err -19
> g_serial udc0: failed to start g_serial: -19
> usbserial: No such device
> I didn't yet investigate this issue but i was wondering if someone notice=
d the problem.

There have been quite some changes in the USB gadget stuff. I know
USB serial currently works with i.MX and MUSB. Does v2014.08.0 still
work? That was before the changes. If yes, I think bisecting it is
the fastest way to find the culprit.

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
