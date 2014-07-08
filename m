Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X4OEO-0008W3-7a
 for barebox@lists.infradead.org; Tue, 08 Jul 2014 05:46:21 +0000
Date: Tue, 8 Jul 2014 07:45:55 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140708054555.GS23235@pengutronix.de>
References: <alpine.LFD.2.11.1407070534300.28324@localhost>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.LFD.2.11.1407070534300.28324@localhost>
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
Subject: Re: [PATCH] crc32: Proper name of command is "crc32".
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On Mon, Jul 07, 2014 at 05:36:33AM -0400, Robert P. J. Day wrote:
> 
> Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

Applied, thanks

Sascha

> 
> ---
> 
>   as i understand it, this fix should take care of the command being
> named "crc32", is that right? it seems to generate the correct sphinx
> documentation.
> 
> diff --git a/Documentation/user/memory-areas.rst b/Documentation/user/memory-areas.rst
> index 6c5bab3..9654a99 100644
> --- a/Documentation/user/memory-areas.rst
> +++ b/Documentation/user/memory-areas.rst
> @@ -2,7 +2,7 @@ Memory areas
>  ============
> 
>  Several barebox commands like :ref:`command_md`, :ref:`command_erase`
> -or :ref:`command_crc` work on an area of memory. Areas have the following form::
> +or :ref:`command_crc32` work on an area of memory. Areas have the following form::
> 
>    <start>-<end>
> 
> diff --git a/commands/crc.c b/commands/crc.c
> index 3612162..0e30052 100644
> --- a/commands/crc.c
> +++ b/commands/crc.c
> @@ -107,7 +107,7 @@ static int do_crc(int argc, char *argv[])
>  	return err;
>  }
> 
> -BAREBOX_CMD_HELP_START(crc)
> +BAREBOX_CMD_HELP_START(crc32)
>  BAREBOX_CMD_HELP_TEXT("Calculate a CRC32 checksum of a memory area.")
>  BAREBOX_CMD_HELP_TEXT("")
>  BAREBOX_CMD_HELP_TEXT("Options:")
> 
> -- 
> 
> ========================================================================
> Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                         http://crashcourse.ca
> 
> Twitter:                                       http://twitter.com/rpjday
> LinkedIn:                               http://ca.linkedin.com/in/rpjday
> ========================================================================
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
