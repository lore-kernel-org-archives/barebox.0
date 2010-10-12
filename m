Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P5inv-000069-V6
	for barebox@lists.infradead.org; Tue, 12 Oct 2010 17:38:25 +0000
Date: Tue, 12 Oct 2010 19:38:19 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20101012173819.GG28242@pengutronix.de>
References: <20101011162832.14102.69708.stgit@zaytsev.su>
	<20101012060000.GH7412@game.jcrosoft.org>
	<AANLkTimi49xXMg1giyMOyz1uA491++cfRy5s_1=zsPVQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AANLkTimi49xXMg1giyMOyz1uA491++cfRy5s_1=zsPVQ@mail.gmail.com>
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
Subject: Re: [PATCH v3] Add basic support from ARM Versatile/PB
To: Alexey Zaytsev <alexey.zaytsev@gmail.com>
Cc: barebox@lists.infradead.org, Bahadir Balban <bbalban@b-labs.com>

On Tue, Oct 12, 2010 at 01:07:50PM +0400, Alexey Zaytsev wrote:
> On Tue, Oct 12, 2010 at 10:00, Jean-Christophe PLAGNIOL-VILLARD
> <plagnioj@jcrosoft.com> wrote:
> >> +if MACH_VERSATILEPB
> >> +
> >> +config ARCH_TEXT_BASE
> >> + =A0 =A0 hex
> >> + =A0 =A0 default 0
> > sure?
> =

> That's one thing I wanted to ask - where should I place the barebox?
> Currently, I'm placing it at 5M, with 4M malloc and the stack below.
> Do I get it right that the downloaded images are stored in the malloc
> area?

It depends. If you download images to the filesystem they end up in the
malloc area, so this should at least be big enough to store a kernel
image. You also can tftp directly to flash, so the malloc space does not
have to be as big as your rootfs.
Normally I put barebox at the end of RAM and use 4-16MB of malloc area.
Please make sure that there is ~4MB of free space at the beginning of
the SDRAM since this is used during start of Linux images.

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
