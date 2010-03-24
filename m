Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay2-v.mail.gandi.net ([217.70.178.76])
	by bombadil.infradead.org with esmtp (Exim 4.69 #1 (Red Hat Linux))
	id 1NuSZ1-0004Uz-EA
	for barebox@lists.infradead.org; Wed, 24 Mar 2010 15:32:15 +0000
Date: Wed, 24 Mar 2010 16:30:37 +0100
From: Matthias Kaehlcke <matthias@kaehlcke.net>
Message-ID: <20100324153037.GC2328@darwin>
References: <20100323133217.GA26177@darwin>
	<20100323142643.GN2241@pengutronix.de>
	<20100323150915.GB26177@darwin> <4BA8DEBF.6060305@eukrea.com>
	<20100323162201.GE26177@darwin>
	<ba216b431003240754g2f372416q53dd6f1ef4b95469@mail.gmail.com>
	<20100324150818.GB2328@darwin>
	<ba216b431003240823l6b729cbfi6f4fa8e50173a933@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ba216b431003240823l6b729cbfi6f4fa8e50173a933@mail.gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Barebox working on freescale-mx25-3-stack?
To: Ivo Clarysse <ivo.clarysse@gmail.com>
Cc: barebox@lists.infradead.org

hi ivo,

El Wed, Mar 24, 2010 at 04:23:33PM +0100 Ivo Clarysse ha dit:

> On Wed, Mar 24, 2010 at 4:08 PM, Matthias Kaehlcke
> <matthias@kaehlcke.net> wrote:
> >
> > after applying your patch barebox effectivly came up :)
> >
> > thanks a lot!
> >
> > could you explain in few words why the patch is needed?
> =

> RAM initialization is implemented in two places: lowlevel_init.S and
> the "Device Configuration Data" (DCD) block.
> =

> When booting from an SD card, the i.MX25 reads out the DCD block and
> applies the settings found there.
> =

> The RAM initialization in lowlevel_init.S is skipped when booting from
> SD; by the time board_init_lowlevel gets executed,
> that routine is already running from RAM, and will skip initializing memo=
ry.
> =

> The DCD table in barebox git contains entries for mDDR memory.  This
> does not work with DDR2 memory.
> =

> Probably barebox needs a compile-time option to switch between 128 MiB
> mDDR memory installed on older MCIMX25PDK CPU engine boards and the 64
> MiB DDR2 memory found on newer boards.

thanks a lot for your explication!

i wasn't aware that differently equipped CPU engine boards exists,
good to know

best regards

-- =

Matthias Kaehlcke
Embedded Linux Developer
Barcelona

    Me lo contaron y lo olvid=E9, lo vi y lo entend=ED, lo hice y lo aprend=
=ED
                              (Confucio)
                                                                 .''`.
    using free software / Debian GNU/Linux | http://debian.org  : :'  :
                                                                `. `'`
gpg --keyserver pgp.mit.edu --recv-keys 47D8E5D4                  `-

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
