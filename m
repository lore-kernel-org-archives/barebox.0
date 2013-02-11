Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U4pXb-0004Sc-Jl
 for barebox@lists.infradead.org; Mon, 11 Feb 2013 09:19:12 +0000
Date: Mon, 11 Feb 2013 10:19:05 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130211091905.GQ1906@pengutronix.de>
References: <20130208200200.IIAE15122.toroondcbmts07-srv.bellnexxia.net@toip55-bus.srvr.bell.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130208200200.IIAE15122.toroondcbmts07-srv.bellnexxia.net@toip55-bus.srvr.bell.ca>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/1] commands/ubi.c: Add support for VID header offset in
 ubiattach
To: Xavier Douville <barebox@douville.org>
Cc: barebox@lists.infradead.org

Hi Xavier,

On Fri, Feb 08, 2013 at 03:01:53PM -0500, Xavier Douville wrote:
> Hi
> 
> On my board I needed to pass a custom VID header offset to ubiattach.
> This patch adds the required option to the barebox command.

I don't know exactly, but I suspect something is wrong on your board
then. Normally the VID header offset should be detected correctly
automatically. Does the kernel also need a special VID header offset?
Have you flashed an UBI image or did you generate the UBI on the target
directly?

> 
> I also fixed a bug in the error handling of the return value of
> ubi_attach_mtd_dev().
> This function doesn't always return 0 on success, it returns the UBI number.
> So without this patch, an error message is printed when attaching
> many UBI devices.
> 
> thanks for your work
> 
> Xavier Douville
> 
> 
>  commands/ubi.c |   25 +++++++++++++++++--------
>  1 file changed, 17 insertions(+), 8 deletions(-)
> 
> diff --git a/commands/ubi.c b/commands/ubi.c
> index 1653eaa..a10ea1c 100644
> --- a/commands/ubi.c
> +++ b/commands/ubi.c
> @@ -60,9 +60,14 @@ static int do_ubiattach(int argc, char *argv[])
>  {
>      struct mtd_info_user user;
>      int fd, ret;
> +    int vid_hdr_offset = 0;
> 
> -    if (argc != 2)
> -        return COMMAND_ERROR_USAGE;
> +    if (argc != 2) {
> +        if (argc == 3)
> +            vid_hdr_offset = simple_strtol(argv[2], NULL, 0);
> +        else
> +            return COMMAND_ERROR_USAGE;
> +    }

Please use getopt() for additional arguments.

> 
>      fd = open(argv[1], O_RDWR);
>      if (fd < 0) {
> @@ -71,19 +76,23 @@ static int do_ubiattach(int argc, char *argv[])
>      }
> 
>      ret = ioctl(fd, MEMGETINFO, &user);
> -    if (!ret)
> -        ret = ubi_attach_mtd_dev(user.mtd, UBI_DEV_NUM_AUTO, 0);
> +    if (!ret) {
> +        ret = ubi_attach_mtd_dev(user.mtd, UBI_DEV_NUM_AUTO,
> vid_hdr_offset);

You mailer wraps lines. I won't be able to apply this patch.

Sascha


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
