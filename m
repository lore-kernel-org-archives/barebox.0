Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g6teg-000538-RA
 for barebox@lists.infradead.org; Mon, 01 Oct 2018 08:34:16 +0000
Date: Mon, 1 Oct 2018 10:34:00 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20181001083400.nwaosiref5bloxjw@pengutronix.de>
References: <20181001081716.26017-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181001081716.26017-1-s.hauer@pengutronix.de>
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>, G.Schenk@eckelmann.de

Hello Sascha,

On Mon, Oct 01, 2018 at 10:17:16AM +0200, Sascha Hauer wrote:
> File transfers with sizes of exact multiples of wMaxPacketSize up to
> EP_BUFFER_SIZE do not work. For a typical scenario that would be files
> of 512, 1024 ... 3584 bytes.
> =

> This happens because we unconditionally put EP_BUFFER_SIZE into the
> initial request length. For non wMaxPacketSize aligned legths this
> works well because the transfer is completed with a short packet.
> For wMaxPacketSize aligned lengths there is no short packet though,
> so the transfer never completes. Instead we have to put the file
> size into the initial request length.
> =

> Some controllers like the DWC3 do not work when the request length is
> not aligned to wMaxPacketSize, so we align up to wMaxPacketSize like
> done in U-Boot.
> =

> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

I tried transfering files of sizes between 1 and 4100 bytes and with
this patch this actually works fine.

Tested-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>

Thanks
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
