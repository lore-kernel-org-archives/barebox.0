Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x230.google.com ([2a00:1450:4010:c04::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XMxeY-0004cd-O8
 for barebox@lists.infradead.org; Thu, 28 Aug 2014 11:14:07 +0000
Received: by mail-lb0-f176.google.com with SMTP id s7so678454lbd.7
 for <barebox@lists.infradead.org>; Thu, 28 Aug 2014 04:13:42 -0700 (PDT)
Date: Thu, 28 Aug 2014 15:27:11 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20140828152711.d56341d04ffec8f217b1f073@gmail.com>
In-Reply-To: <1409223701-1124-1-git-send-email-m.grzeschik@pengutronix.de>
References: <1409223701-1124-1-git-send-email-m.grzeschik@pengutronix.de>
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
Subject: Re: [PATCH] ubi: add setting devnum to ubiattach
To: Michael Grzeschik <m.grzeschik@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, 28 Aug 2014 13:01:41 +0200
Michael Grzeschik <m.grzeschik@pengutronix.de> wrote:

> Sometimes we need to have a defined devicenumber for the ubi partitions.
> This patch adds the option to ubiattach.
> =

> Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
> ---
>  commands/ubi.c | 11 ++++++++---
>  1 file changed, 8 insertions(+), 3 deletions(-)
> =

> diff --git a/commands/ubi.c b/commands/ubi.c
> index d593e71..94da799 100644
> --- a/commands/ubi.c
> +++ b/commands/ubi.c
> @@ -65,9 +65,13 @@ static int do_ubiattach(int argc, char *argv[])
>  	struct mtd_info_user user;
>  	int fd, ret;
>  	int vid_hdr_offset =3D 0;
> +	int devnum =3D UBI_DEV_NUM_AUTO;
>  =

> -	while((opt =3D getopt(argc, argv, "O:")) > 0) {
> +	while((opt =3D getopt(argc, argv, "d:O:")) > 0) {
>  		switch(opt) {
> +		case 'd':
> +			devnum =3D simple_strtoul(optarg, NULL, 0);
> +			break;
>  		case 'O':
>  			vid_hdr_offset =3D simple_strtoul(optarg, NULL, 0);
>  			break;
> @@ -91,7 +95,7 @@ static int do_ubiattach(int argc, char *argv[])
>  		goto err;
>  	}
>  =

> -	ret =3D ubi_attach_mtd_dev(user.mtd, UBI_DEV_NUM_AUTO, vid_hdr_offset, =
20);
> +	ret =3D ubi_attach_mtd_dev(user.mtd, devnum, vid_hdr_offset, 20);
>  	if (ret < 0)
>  		printf("failed to attach: %s\n", strerror(-ret));
>  	else
> @@ -104,13 +108,14 @@ err:
>  =

>  BAREBOX_CMD_HELP_START(ubiattach)
>  BAREBOX_CMD_HELP_TEXT("Options:")
> +BAREBOX_CMD_HELP_OPT ("-d DEVNUM",  "device number")
>  BAREBOX_CMD_HELP_OPT ("-O OFFS",  "VID header offset")
>  BAREBOX_CMD_HELP_END
>  =

>  BAREBOX_CMD_START(ubiattach)
>  	.cmd		=3D do_ubiattach,
>  	BAREBOX_CMD_DESC("attach mtd device to UBI")
> -	BAREBOX_CMD_OPTS("[-O] MTDDEV")
> +	BAREBOX_CMD_OPTS("[-dO] MTDDEV")

Can we use a more accurate variant? Something like this one:

+	BAREBOX_CMD_OPTS("[-d DEVNUM] [-O OFFS] MTDDEV")

>  	BAREBOX_CMD_GROUP(CMD_GRP_PART)
>  	BAREBOX_CMD_HELP(cmd_ubiattach_help)
>  BAREBOX_CMD_END
> -- =

> 2.1.0.rc1


-- =

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
