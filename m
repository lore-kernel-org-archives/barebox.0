Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 11.mo4.mail-out.ovh.net ([46.105.34.195]
 helo=mo4.mail-out.ovh.net)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X42at-0002DI-HG
 for barebox@lists.infradead.org; Mon, 07 Jul 2014 06:40:08 +0000
Received: from mail194.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 0793FFF9BCC
 for <barebox@lists.infradead.org>; Mon,  7 Jul 2014 08:39:43 +0200 (CEST)
Mime-Version: 1.0 (Mac OS X Mail 7.3 \(1878.2\))
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
In-Reply-To: <alpine.LFD.2.11.1407041217080.16169@localhost>
Date: Mon, 7 Jul 2014 14:39:32 +0800
Message-Id: <4DA026CE-D019-4CBB-B46B-834064F91333@jcrosoft.com>
References: <alpine.LFD.2.11.1407041217080.16169@localhost>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] Clean up Kconfig and source for a couple device tree
 commands.
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>


On Jul 5, 2014, at 12:18 AM, Robert P. J. Day <rpjday@crashcourse.ca> wrote:

> =

> =

> Correct options listings for a couple device tree-related commands.
> =

> Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>
> =

> ---
> =

>  i *think* the following is valid.
> =

> diff --git a/commands/Kconfig b/commands/Kconfig
> index eed6fbd..3248de9 100644
> --- a/commands/Kconfig
> +++ b/commands/Kconfig
> @@ -1950,10 +1950,11 @@ config CMD_OFTREE
> 	help
> 	  oftree - handle device trees
> =

> -	  Usage: oftree [-lpfdn] [DTB]
> +	  Usage: oftree [-lspf] [DTB]
> =

> 	  Options:
> 		  -l		Load DTB to internal device tree
> +		  -s		save internal device tree to DTB
> 		  -p		probe devices from stored device tree
> 		  -f		free stored device tree
> =


do we really need the help here

it=92s a pain in the ass to keep it sync


> diff --git a/commands/of_dump.c b/commands/of_dump.c
> index e341942..cafde07 100644
> --- a/commands/of_dump.c
> +++ b/commands/of_dump.c
> @@ -101,7 +101,7 @@ BAREBOX_CMD_HELP_END
> BAREBOX_CMD_START(of_dump)
> 	.cmd		=3D do_of_dump,
> 	BAREBOX_CMD_DESC("dump devicetree nodes")
> -	BAREBOX_CMD_OPTS("[-f]")
> +	BAREBOX_CMD_OPTS("[-f] [NODE]")
> 	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
> 	BAREBOX_CMD_COMPLETE(devicetree_file_complete)
> 	BAREBOX_CMD_HELP(cmd_of_dump_help)
> diff --git a/commands/oftree.c b/commands/oftree.c
> index a3b0e04..983a0a5 100644
> --- a/commands/oftree.c
> +++ b/commands/oftree.c
> @@ -145,7 +145,7 @@ BAREBOX_CMD_HELP_END
> BAREBOX_CMD_START(oftree)
> 	.cmd		=3D do_oftree,
> 	BAREBOX_CMD_DESC("handle device trees")
> -	BAREBOX_CMD_OPTS("[-lpfs]")
> +	BAREBOX_CMD_OPTS("[-lspf]")
> 	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
> 	BAREBOX_CMD_HELP(cmd_oftree_help)
> BAREBOX_CMD_END
> =

> -- =

> =

> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                        http://crashcourse.ca
> =

> Twitter:                                       http://twitter.com/rpjday
> LinkedIn:                               http://ca.linkedin.com/in/rpjday
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
