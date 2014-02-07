Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WBheG-0000Ml-On
 for barebox@lists.infradead.org; Fri, 07 Feb 2014 09:23:01 +0000
Date: Fri, 7 Feb 2014 10:22:38 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20140207092238.GF17045@pengutronix.de>
References: <1391762936-2747-1-git-send-email-dev@lynxeye.de>
 <1391762936-2747-8-git-send-email-dev@lynxeye.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1391762936-2747-8-git-send-email-dev@lynxeye.de>
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
Subject: Re: [PATCH 07/14] comamnds: uimage: actually print error message
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org

Hi Lucas,

On Fri, Feb 07, 2014 at 09:48:49AM +0100, Lucas Stach wrote:
> Signed-off-by: Lucas Stach <dev@lynxeye.de>
> ---
>  commands/uimage.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> =

> diff --git a/commands/uimage.c b/commands/uimage.c
> index 345e496..4b0ed4d 100644
> --- a/commands/uimage.c
> +++ b/commands/uimage.c
> @@ -63,8 +63,8 @@ static int do_uimage(int argc, char *argv[])
>  		printf("verifying data crc... ");
>  		ret =3D uimage_verify(handle);
>  		if (ret) {
> -			goto err;
>  			printf("Bad Data CRC\n");
> +			goto err;
I'd drop the printf instead because in the bad crc case uimage_verify()
already printfs an error. But instead let it give tongue in the other
error cases (like lseek() or read() failing)

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
