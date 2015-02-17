Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YNcl6-00057g-IB
 for barebox@lists.infradead.org; Tue, 17 Feb 2015 07:39:53 +0000
Date: Tue, 17 Feb 2015 08:39:27 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150217073927.GN12209@pengutronix.de>
References: <1424091755-23273-1-git-send-email-h.feurstein@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1424091755-23273-1-git-send-email-h.feurstein@gmail.com>
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
Subject: Re: [PATCH] commands/digest: add verify support
To: h.feurstein@gmail.com
Cc: barebox@lists.infradead.org

Hi Hubert,

On Mon, Feb 16, 2015 at 02:02:35PM +0100, h.feurstein@gmail.com wrote:
> From: Hubert Feurstein <h.feurstein@gmail.com>
> =

> Signed-off-by: Hubert Feurstein <h.feurstein@gmail.com>
> [EB]: reworked based on Sascha's comments and tested with md5sum
> Signed-off-by: Eric B=E9nard <eric@eukrea.com>
> ---
> -	if (argc < 2)
> -		return COMMAND_ERROR_USAGE;
> +	while ((opt =3D getopt(argc, argv, "v:V:")) > 0) {
> +		switch (opt) {
> +		case 'v':
> +			verify++;
> +			free(verify_hash);
> +			hash =3D xstrdup(optarg);
> +			len =3D strlen(hash);
> +			break;
> +		case 'V':
> +			verify++;
> +			free(verify_hash);
> +			hash =3D read_file(optarg, &bufsz);
> +			len =3D bufsz;
> +			break;
> +		default:
> +			ret =3D COMMAND_ERROR_USAGE;
> +			goto out;
> +		}
> +
> +		if (verify =3D=3D 1 && (d->length * 2) <=3D len && hash !=3D NULL) {
> +			min_argc +=3D 2;
> +			verify_hash =3D parse_hash(d->length, hash);
> +			if (!verify_hash)
> +				return -ENOMEM;
> +			free(hash);
> +		} else
> +			return COMMAND_ERROR_USAGE;

This code in the option parsing loop looks odd. Could you just parse
options in the loop, store the hash(file) in a variable and do the
processing outside the loop?

> +	}
> +
> +	if (argc < min_argc) {
> +		ret =3D COMMAND_ERROR_USAGE;
> +		goto out;
> +	}
> +
> +	argv +=3D min_argc - 2;
>  =

>  	hash =3D calloc(d->length, sizeof(unsigned char));

xzalloc should be safe here.

>  	if (!hash) {
>  		perror("calloc");
> -		return COMMAND_ERROR_USAGE;
> +		ret =3D -ENOMEM;
> +		goto out;
>  	}
>  =

>  	argv++;
> @@ -60,17 +133,32 @@ static int do_digest(char *algorithm, int argc, char=
 *argv[])
>  		if (digest_file_window(d, filename, hash, start, size) < 0) {
>  			ret =3D 1;
>  		} else {
> -			for (i =3D 0; i < d->length; i++)
> +			for (i =3D 0; i < d->length; i++) {
>  				printf("%02x", hash[i]);
> +				if (verify > 0 && hash[i] !=3D verify_hash[i])
> +					verify =3D -1;
> +			}
>  =

> -			printf("  %s\t0x%08llx ... 0x%08llx\n",
> +			printf("  %s\t0x%08llx ... 0x%08llx",
>  				filename, start, start + size);
> +
> +			if (verify < 0) {
> +				printf(" ** ERROR ** ");

Printing the real hash and the expected hash would be nice here.

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
