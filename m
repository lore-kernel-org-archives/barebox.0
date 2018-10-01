Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g6tiC-0006Wi-EM
 for barebox@lists.infradead.org; Mon, 01 Oct 2018 08:37:54 +0000
Date: Mon, 1 Oct 2018 10:37:40 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20181001083740.cggmrzwt6jtacyf4@pengutronix.de>
References: <20181001081716.26017-1-s.hauer@pengutronix.de>
 <1c08cd25d72b7f5843b313071a6f040244f0df40.camel@eckelmann.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1c08cd25d72b7f5843b313071a6f040244f0df40.camel@eckelmann.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] usb: gadget: fastboot: fix downoading files of
 wMaxPacketSize bytes
To: "Schenk, Gavin" <G.Schenk@eckelmann.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Mon, Oct 01, 2018 at 08:29:18AM +0000, Schenk, Gavin wrote:
> Hi,
> =

> > File transfers with sizes of exact multiples of wMaxPacketSize up to
> > EP_BUFFER_SIZE do not work. For a typical scenario that would be files
> > of 512, 1024 ... 3584 bytes.
> > =

> > This happens because we unconditionally put EP_BUFFER_SIZE into the
> > initial request length. For non wMaxPacketSize aligned legths this
> s/legths/length

I'd keep the s at the end though.

Oh, and while we're typo squatting: $Subject ~=3D s/downoading/downloading

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
