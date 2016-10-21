Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bxUd7-0003C3-Dx
 for barebox@lists.infradead.org; Fri, 21 Oct 2016 07:52:42 +0000
From: Juergen Borleis <jbe@pengutronix.de>
Date: Fri, 21 Oct 2016 09:53:45 +0200
References: <CABvwO2ARpHSzYE6Y3JrfFAQ2jEzw3EXfP36goL6kPogcBbNLKQ@mail.gmail.com>
 <201610210939.59537.jbe@pengutronix.de>
 <CABvwO2C0MZGk2CC-v=67-Og7n4SZqSpdCfiZBz0QZTTfeckp1w@mail.gmail.com>
In-Reply-To: <CABvwO2C0MZGk2CC-v=67-Og7n4SZqSpdCfiZBz0QZTTfeckp1w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201610210953.45417.jbe@pengutronix.de>
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
Subject: Re: Loading kernel issues
To: barebox@lists.infradead.org
Cc: Javier Fileiv <javier.fileiv@gmail.com>

Hi Javier,

On Friday 21 October 2016 09:41:15 Javier Fileiv wrote:
> I was looking to buy an ARM9 Jtag because it's what I
> though... I would need a JTAG.
>
> Regarding shorting the data lines... do you know exactly what would I
> need to do?

Reading the datasheet of the used NAND device, find its datalines, find the=
m on =

the Mini2440, configure the board to boot from NOR, short two of the eight =

datalines and power the board.

> Regarding JTAG, which ones are the steps?

Sorry, no idea. Never used it on Mini2440.

Cheers,
Juergen

-- =

Pengutronix e.K. =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0| Juergen Borleis =A0 =A0 =A0 =A0 =A0 =A0 |
Industrial Linux Solutions =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0| http://=
www.pengutronix.de/ =A0|

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
