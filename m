Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1RIQZF-0005en-1W
	for barebox@lists.infradead.org; Mon, 24 Oct 2011 19:52:18 +0000
Date: Mon, 24 Oct 2011 21:52:13 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111024195213.GP23421@pengutronix.de>
References: <CAA4bVAHzXtzvbt0n6uYx3hP79iQMSrZaMK920t8LfBFkyNLE8A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAA4bVAHzXtzvbt0n6uYx3hP79iQMSrZaMK920t8LfBFkyNLE8A@mail.gmail.com>
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
Subject: Re: lib/md5.o build problem
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox <barebox@lists.infradead.org>

On Mon, Oct 24, 2011 at 07:33:59PM +0400, Antony Pavlov wrote:
> Hi!
> =

> I can't build barebox with md5sum command.

Grumpf. Something went seriously wrong while merging Jean-Christophes
digest patch series. Sorry for this, it's my bad. I remerged this series
again and pushed it to a temporary branch here:

git://git.pengutronix.de/git/barebox.git digest-next

Jean-Christophe, can you have a look at it and see if it looks like
you originally intended?

Sascha

> =

> Here is the log:
> =

> $ date
> Mon Oct 24 19:29:51 MSD 2011
> $ git clone --branch next git://git.pengutronix.de/git/barebox.git
> barebox.git.next
> $ cd barebox.git.next
> $ make ARCH=3Darm versatilepb_defconfig
> $ sed "s/# CONFIG_CMD_MD5SUM.*/CONFIG_CMD_MD5SUM=3Dy/" -i .config
> $ make ARCH=3Darm oldconfig
> $ make -j 2 ARCH=3Darm CROSS_COMPILE=3Darm-realview-linux-gnueabi-
> ...
>   CC      lib/show_progress.o
>   CC      lib/decompress_unlzo.o
> make[1]: *** No rule to make target `lib/md5.o', needed by
> `lib/built-in.o'.  Stop.
> make[1]: *** Waiting for unfinished jobs....
>   CC      lib/process_escape_sequence.o
> make: *** [lib] Error 2
> make: *** Waiting for unfinished jobs....
>   LD      fs/built-in.o
> =

> -- =

> Best regards,
> =A0 Antony Pavlov
> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> =


-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
