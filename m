Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1QKw4m-00048b-1x
	for barebox@lists.infradead.org; Fri, 13 May 2011 17:22:57 +0000
Date: Fri, 13 May 2011 19:22:52 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110513172252.GZ30963@pengutronix.de>
References: <04EB6ACBB90C8844892BE0B9828F13C8018734BA036D@SRVSBS.airtag.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <04EB6ACBB90C8844892BE0B9828F13C8018734BA036D@SRVSBS.airtag.local>
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
Subject: Re: crc32 command
To: =?iso-8859-15?Q?Beno=EEt?= Burnichon <Benoit.Burnichon@airtag.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi Benoit,

On Fri, May 13, 2011 at 05:54:00PM +0200, Beno=EEt Burnichon wrote:
> Hi all,
> =

> I want to verify the version downloaded by tftp before installing it.
> =

> I have the file on my workstation:
> =

> $ cksum /var/lib/tftpboot/uImage-pcm038 =

> 2156276197 2317276 /var/lib/tftpboot/uImage-pcm038
> =

> Under my barebox, I then try to verify the file:
> =

> barebox:/ crc32
> Usage: crc32 [OPTION] [AREA]
> Calculate a crc32 checksum of a memory area
> Options:
>   -f <file>   Use file instead of memory
>   -v <crc>    Verfify
> =

> barebox:/ crc32 -f uImage-pcm038 -v 2156276197 0+2317276
> CRC32 for uImage-pcm038 0x00000000 ... 0x00235bdb =3D=3D> 0xd484eccb !=3D=
 0x808629e5 ** ERROR **
> barebox:/ crc32 -f uImage-pcm038                        =

> CRC32 for uImage-pcm038 0x00000000 ... 0x00235bdb =3D=3D> 0xd484eccb
> =

> =

> I have barebox-2010.11.0
> =

> =

> How can I use crc32 to verify the files I transfer?

The algorithms differ, so cksum is not usable here. Got curious myself
and looked around in the net. the zip tool is usable for this:

zip test.zip barebox.bin; unzip -lv test.zip

Ok, this sucks, but there is also a standalone program (haven't tested
this). See here:

http://docwiki.gumstix.org/index.php/Calculating_32_bit_CRCs

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
