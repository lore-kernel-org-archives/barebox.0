Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X1Uqt-0001SB-6J
 for barebox@lists.infradead.org; Mon, 30 Jun 2014 06:14:08 +0000
Date: Mon, 30 Jun 2014 08:13:44 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140630061344.GA14257@pengutronix.de>
References: <alpine.LFD.2.11.1406280621410.30555@localhost>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.LFD.2.11.1406280621410.30555@localhost>
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
Subject: Re: [PATCH] Documentation: Minor editing changes to filesystems
 content.
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On Sat, Jun 28, 2014 at 06:22:39AM -0400, Robert P. J. Day wrote:
> 
> Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

Applied, thanks

Sascha

> 
> ---
> 
> diff --git a/Documentation/filesystems/nfs.rst b/Documentation/filesystems/nfs.rst
> index b8ad4f3..f4eda5d 100644
> --- a/Documentation/filesystems/nfs.rst
> +++ b/Documentation/filesystems/nfs.rst
> @@ -5,7 +5,7 @@
>  NFS Support
>  ===========
> 
> -barebox has readonly support for NFSv3 un UDP mode.
> +barebox has readonly support for NFSv3 in UDP mode.
> 
>  Example::
> 
> diff --git a/Documentation/filesystems/ramfs.rst b/Documentation/filesystems/ramfs.rst
> index 70e7282..b7ece1a 100644
> --- a/Documentation/filesystems/ramfs.rst
> +++ b/Documentation/filesystems/ramfs.rst
> @@ -3,10 +3,10 @@
>  RAM filesystem
>  ==============
> 
> -ramfs is a simple malloc based filesystem. An instance of ramfs is
> -mounted during startup on /. The filesystem type passed to mount is
> -'ramfs'
> +ramfs is a simple malloc-based filesystem. An instance of ramfs is
> +mounted during startup on /. The filesystem type passed to ``mount``
> +is ``ramfs``.
> 
> -example::
> +Example::
> 
>    mount none ramfs /somedir
> diff --git a/Documentation/filesystems/tftp.rst b/Documentation/filesystems/tftp.rst
> index 273be5e..e0a1159 100644
> --- a/Documentation/filesystems/tftp.rst
> +++ b/Documentation/filesystems/tftp.rst
> @@ -8,8 +8,8 @@ TFTP support
>  barebox has read/write support for the Trivial File Transfer Protocol.
> 
>  TFTP is not designed as a filesystem. It does not have support for listing
> -directories. This means a :ref:`command_ls` to a TFTP mounted path will show an empty
> -directory. Nevertheless the files are there.
> +directories. This means a :ref:`command_ls` to a TFTP-mounted path will show an empty
> +directory. Nevertheless, the files are there.
> 
>  Example::
> 
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
