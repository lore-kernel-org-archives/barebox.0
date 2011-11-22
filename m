Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RSnqp-00068N-33
 for barebox@lists.infradead.org; Tue, 22 Nov 2011 10:45:19 +0000
Date: Tue, 22 Nov 2011 11:45:13 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111122104513.GI27267@pengutronix.de>
References: <1321882291-26290-1-git-send-email-h.feurstein@gmail.com>
 <20111122091926.GE27267@pengutronix.de>
 <CAFfN3gU23rF4f1-JOxTHeLzxMrKBupamNYRQvCAAFdjiGEOdew@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFfN3gU23rF4f1-JOxTHeLzxMrKBupamNYRQvCAAFdjiGEOdew@mail.gmail.com>
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
Subject: Re: [PATCH] eeprom/at25: add erase support
To: Hubert Feurstein <h.feurstein@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Nov 22, 2011 at 10:58:56AM +0100, Hubert Feurstein wrote:
> 2011/11/22 Sascha Hauer <s.hauer@pengutronix.de>:
> > On Mon, Nov 21, 2011 at 02:31:31PM +0100, Hubert Feurstein wrote:
> >> Signed-off-by: Hubert Feurstein <h.feurstein@gmail.com>
> >> ---
> >> =A0drivers/eeprom/at25.c | =A0 15 +++++++++++++++
> >> =A01 files changed, 15 insertions(+), 0 deletions(-)
> >
> > Do we need this? We normally only have erase functions for devices that
> > need it, namely flashes.
> >
> In my case I use the eeprom (or fram) to store the environment. So
> with this I can erase the env-partition simply by calling 'erase
> /dev/env0'.
> So it's more like a convenience function. Or is there a other
> possibility to easily erase a partition completely? The memset-command
> is not really suitable because I have to pass the size as an argument.

How about cp /dev/zero /dev/env0?

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
