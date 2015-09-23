Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZeiYy-0000MP-O4
 for barebox@lists.infradead.org; Wed, 23 Sep 2015 11:50:17 +0000
Date: Wed, 23 Sep 2015 13:49:54 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150923114954.GU7858@pengutronix.de>
References: <87h9moclrw.fsf@gmail.com> <20150921181338.GI7858@pengutronix.de>
 <CAOpc7mFYWzR0W1rRVFeJ3B0aO=Rs9B61NdntKG4QNUDHgB4GMA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOpc7mFYWzR0W1rRVFeJ3B0aO=Rs9B61NdntKG4QNUDHgB4GMA@mail.gmail.com>
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
Subject: Re: BUG, i.MX: broken LVDS display
To: Holger Schurig <holgerschurig@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Tue, Sep 22, 2015 at 04:02:15PM +0200, Holger Schurig wrote:
>    Hi Sascha,
> =

>    imx-ipuv3 2400000.ipu: IPUv3H probed
>    imx-ipuv3 2800000.ipu: IPUv3H probed
>    Console activated
>    ...
>    imx-ipuv3-crtc imx-ipuv3-crtc0: register vpl for /soc/ipu@02400000
>    imx-ipuv3-crtc imx-ipuv3-crtc0: probe failed: No such file or directory
>    imx-ipuv3-crtc imx-ipuv3-crtc1: register vpl for /soc/ipu@02400000
>    imx-ipuv3-crtc imx-ipuv3-crtc1: probe failed: No such file or directory
>    imx-ipuv3-crtc imx-ipuv3-crtc2: register vpl for /soc/ipu@02800000
>    imx-ipuv3-crtc imx-ipuv3-crtc2: probe failed: No such file or directory
>    imx-ipuv3-crtc imx-ipuv3-crtc3: register vpl for /soc/ipu@02800000
>    imx-ipuv3-crtc imx-ipuv3-crtc3: probe failed: No such file or directory
>    running /env/bin/init...
> =

>    So I wonder where exactly barebox get's the timings on the GUF Vincell=
 for
>    the Ampire display? =A0 Probably the GuF board only sets up the displa=
y for
>    Linux, but doesn't in itself activate the framebuffer?=A0 I grepped for
>    "Ampire" in Barebox git, and none of the files
>    (dts/Bindings/panel/ampire,am800480r3tmqwa1h.txt,

It seems the Vincell never worked in barebox. I just assumed it worked
because the barebox specific dts enables the ldb.
Please test the new version I just sent out. I tested this on the GuF
Santaro board, so this is a better place to compare the device tree
with.

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
