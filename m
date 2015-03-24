Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YaIMJ-0000aJ-NR
 for barebox@lists.infradead.org; Tue, 24 Mar 2015 06:30:41 +0000
Date: Tue, 24 Mar 2015 07:30:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150324063015.GR9742@pengutronix.de>
References: <1427123853-26983-1-git-send-email-t.gamez@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1427123853-26983-1-git-send-email-t.gamez@phytec.de>
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
Subject: Re: [PATCH] AM335x: MLO image issue
To: Teresa =?iso-8859-15?Q?G=E1mez?= <t.gamez@phytec.de>
Cc: barebox@lists.infradead.org

On Mon, Mar 23, 2015 at 04:17:32PM +0100, Teresa G=E1mez wrote:
> Hello,
> =

> we have encountered an issue in the AM335x MLO, which seems to depend on =
the =

> image size itself. The bootloader hangs up in the decompress_unlzo() func=
tion.
> The decompress_unlzo() function fails with "dest len longer than block si=
ze"
> and ends up in it's error function in an infinite loop.
> =

> As the error seems to depend in the image size, adding or removing random=
 code
> makes the image working again.
> =

> We have seen this issue so far only with a MLO size of 98823 bytes and
> barebox.z size: 61003 bytes. But could reproduce it using different toolc=
hains.
> =

> So we suspect this is an issue in the lzo code. =

> Syncing the lzo code with the kernel code, seems to help.
> For this we have attached a patch.
> But we are unsure if this is the solution to the bug we have.
> =

> Any ideas on this?

I have no idea how lzo works. I could apply the patch though, as it only
contains an update to the latest kernel code. Of course it would feel
better if we knew what we are doing.

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
