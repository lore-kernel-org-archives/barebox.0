Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x244.google.com ([2a00:1450:4010:c07::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f0ic6-0003jB-A9
 for barebox@lists.infradead.org; Tue, 27 Mar 2018 07:01:47 +0000
Received: by mail-lf0-x244.google.com with SMTP id t132-v6so31741319lfe.2
 for <barebox@lists.infradead.org>; Tue, 27 Mar 2018 00:01:36 -0700 (PDT)
Date: Tue, 27 Mar 2018 10:17:16 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20180327101716.697486501ccea51c7b98644a@gmail.com>
In-Reply-To: <20180318222236.28296-1-gael.portay@savoirfairelinux.com>
References: <20180318222236.28296-1-gael.portay@savoirfairelinux.com>
Mime-Version: 1.0
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
Subject: Re: [PATCH] fs: check pointer returned by get_fsdevice_by_path
 before dereferencing
To: =?ISO-8859-1?Q?Ga=EBl?= PORTAY <gael.portay@savoirfairelinux.com>
Cc: barebox@lists.infradead.org

On Sun, 18 Mar 2018 18:22:36 -0400
Ga=EBl PORTAY <gael.portay@savoirfairelinux.com> wrote:

> In __canonicalize_path() we dereference the pointer returned by
> get_fsdevice_by_path() without checking if the pointer is NULL or not.
> When the pointer is NULL it leads to an Ooops.
> =

> 	Ooops, address error on load or ifetch!
> =

> 	$ 0   : 00000000 00000001 a0000026 a0811c10
> 	$ 4   : a0402e60 a0402e48 a0811c00 a0402e58
> 	$ 8   : 00000001 00000000 0000005a 00000023
> 	$12   : 00000000 00000002 00601021 00000000
> 	$16   : a0402e60 a0402e50 a0402e39 a0810000
> 	$20   : a0402e38 a0811420 a0811424 00000000
> 	$24   : 00000000 a080de10
> 	$28   : 87f87d40 a03ffa68 a0810000 a080ce30
> 	Hi    : 00000002
> 	Lo    : 00000000
> 	epc   : a080ce34

Salut Ga=EBl!

It looks like you use MIPS board.
Your epc =3D=3D 0xa080ce34 is inside KSEG1 region (uncached memory).
May be there is no cache support in current barebox for your CPU.
Which CPU core you use?

Tr=E8s cordialement,
=A0 Antony Pavlov

> 	ra    : a080ce30
> 	Status: 00000006
> 	Cause : 40008010
> 	Config: 80040483
> =

> 	### ERROR ### Please RESET the board ###
> =

> Fixes: d79a81736 fs: Don't bother filesystems without link support with a=
dditional stat() calls
> =

> Signed-off-by: Ga=EBl PORTAY <gael.portay@savoirfairelinux.com>
> ---
>  fs/fs.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> =

> diff --git a/fs/fs.c b/fs/fs.c
> index 88f0b1478..5135112c8 100644
> --- a/fs/fs.c
> +++ b/fs/fs.c
> @@ -191,7 +191,7 @@ static char *__canonicalize_path(const char *_pathnam=
e, int level)
>  		 * with an additional stat() call.
>  		 */
>  		fsdev =3D get_fsdevice_by_path(outpath);
> -		if (!fsdev->driver->readlink)
> +		if (!fsdev || !fsdev->driver->readlink)
>  			continue;
>  =

>  		ret =3D __lstat(outpath, &s);
> -- =

> 2.16.1
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
