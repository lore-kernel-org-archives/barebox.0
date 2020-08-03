Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k2gbe-0002p3-5S
 for barebox@lists.infradead.org; Mon, 03 Aug 2020 19:58:46 +0000
Date: Mon, 3 Aug 2020 21:58:43 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200803195843.GH31536@pengutronix.de>
References: <20200803050700.28388-1-yegorslists@googlemail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200803050700.28388-1-yegorslists@googlemail.com>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] add untar command
To: yegorslists@googlemail.com
Cc: barebox@lists.infradead.org

Hi Yegor,

On Mon, Aug 03, 2020 at 07:07:00AM +0200, yegorslists@googlemail.com wrote:
> From: Yegor Yefremov <yegorslists@googlemail.com>
> 
> Use busybox implementation as a reference.

Would you add the busybox version to the commit message for reference
and to make future updates easier?

> +/* Concatenate path and filename to new allocated buffer.
> + * Add '/' only as needed (no duplicate // are produced).
> + * If path is NULL, it is assumed to be "/".
> + * filename should not be NULL.
> + */
> +static char* concat_path_file(const char *path, const char *filename)
> +{
> +      char *lc;
> +
> +      if (!path)
> +          path = "";
> +      lc = last_char_is(path, '/');
> +      while (*filename == '/')
> +          filename++;
> +      return xasprintf("%s%s%s", path, (lc==NULL ? "/" : ""), filename);
> +}

We already have this function in lib/libbb.c, better use it than adding
it again. You add more functions that seem to be generic busybox
functions, please check if they are better added to lib/libbb.c in case
we need them for other code.

> +static int do_untar(int argc, char *argv[])
> +{
> +	archive_handle_t *handle;
> +	int ret;
> +
> +	if (argc < 2)
> +		return COMMAND_ERROR_USAGE;
> +
> +	handle = init_handle();

This allocates memory which you never free, neither in the successful
case nor in the error path.

> +	handle->src_fd = open(argv[1], O_RDONLY);
> +	if (handle->src_fd < 0) {
> +		perror("open");
> +		return 1;
> +	}
> +
> +	if (argc == 3) {
> +		chdir(argv[2]);

Doesn't this change the current directory also in the calling shell?
Also this call can fail when the path doesn't exist or is not a
directory. You should check this.

> +	}
> +
> +	while(!get_header(handle))
> +		ret = 0;
> +
> +	if (ret)
> +		printf("failed to decompress\n");

'ret' is either used uninitialized or initialized to zero.

> +
> +	close(handle->src_fd);
> +	return ret;
> +}
> +
> +BAREBOX_CMD_START(untar)
> +	.cmd            = do_untar,
> +	BAREBOX_CMD_DESC("unpack a tar file")
> +	BAREBOX_CMD_OPTS("INFILE [DIRECTORY]")

I don't like positional arguments very much. It's fine for the infile,
but IMO the directory should be given with an option instead.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
