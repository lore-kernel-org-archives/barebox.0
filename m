Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gKRIm-00010x-JZ
 for barebox@lists.infradead.org; Wed, 07 Nov 2018 17:07:38 +0000
Received: by mail-lf1-x144.google.com with SMTP id d7-v6so12037576lfi.2
 for <barebox@lists.infradead.org>; Wed, 07 Nov 2018 09:07:26 -0800 (PST)
Date: Wed, 7 Nov 2018 20:07:22 +0300
From: Peter Mamonov <pmamonov@gmail.com>
Message-ID: <20181107170721.yelfwfusdnovybr7@localhost.localdomain>
References: <20181106161407.20974-1-l.stach@pengutronix.de>
 <20181107134522.y7awdhz2uowjnqh7@localhost.localdomain>
 <1541606897.2508.55.camel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1541606897.2508.55.camel@pengutronix.de>
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
Subject: Re: [PATCH] commands: mem: truncate mem device size to fit the
 loff_t file size
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Nov 07, 2018 at 05:08:17PM +0100, Lucas Stach wrote:
> Am Mittwoch, den 07.11.2018, 16:45 +0300 schrieb Peter Mamonov:
> > Hi, Lucas,
> > =

> > On Tue, Nov 06, 2018 at 05:14:07PM +0100, Lucas Stach wrote:
> > > On 64bit arches the file covering the whole address space is larger t=
han
> > > what can be represented in the loff_t type (s64) used for the file si=
ze.
> > > Thus the size of this device is interpreted as negative in a lot of
> > > places. Fix this by truncating the size to fit the file size type.
> > =

> > While this is probably an appropriate solution for some architectures, =
it will=A0
> > cause problems on MIPS64. The root of evil is MIPS64 address space=A0
> > segmentation: https://docplayer.net/docs-images/25/4553906/images/21-0.=
png).=A0=A0
> > Most notably your patch prevents access to the xkphys segment, where mo=
st=A0
> > peripheral devices of a SoC are accessible.
> =

> Isn't this a problem for MIPS64 even before my patch? For example the
> "mw" command uses open_and_lseek on the dev/mem file with the address
> of the write being the seek offset. As this is a loff_t value, seeking
> to something with the highest order bit set won't do what you expect to
> happen, right?

You are right. I fixed this in a straightforward manner (see the patch =

below). Guess it's time to find a better solution :)

	Author: Peter Mamonov <pmamonov@gmail.com>
	Date:   Thu Jul 6 13:32:53 2017 +0300
	=

	    FIXME: fs: fix memory access for 64bit MIPS
	=

	diff --git a/fs/fs.c b/fs/fs.c
	index f61ee091b5..45190812c5 100644
	--- a/fs/fs.c
	+++ b/fs/fs.c
	@@ -941,8 +941,6 @@ loff_t lseek(int fildes, loff_t offset, int whence)
		case SEEK_SET:
			if (f->size !=3D FILE_SIZE_STREAM && offset > f->size)
				goto out;
	-               if (offset < 0)
	-                       goto out;
			pos =3D offset;
			break;
		case SEEK_CUR:
	@@ -960,10 +958,6 @@ loff_t lseek(int fildes, loff_t offset, int whence)
		}
	        =

		pos =3D fsdrv->lseek(&f->fsdev->dev, f, pos);
	-       if (pos < 0) {
	-               errno =3D -pos;
	-               return -1;
	-       }
	        =

		return pos;

Regards,
Peter

> =

> Regards,
> Lucas

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
