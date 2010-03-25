Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NuhgQ-00019g-5v
	for barebox@lists.infradead.org; Thu, 25 Mar 2010 07:40:54 +0000
Date: Thu, 25 Mar 2010 08:40:48 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100325074047.GA2241@pengutronix.de>
References: <1269436583-11896-1-git-send-email-w.sang@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1269436583-11896-1-git-send-email-w.sang@pengutronix.de>
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
Subject: Re: [PATCH V2] Documentation: fix typos & correct symlink
To: Wolfram Sang <w.sang@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Mar 24, 2010 at 02:16:23PM +0100, Wolfram Sang wrote:
> I found the wrong symlink and activated the spell-checker while I was here.

Applied.

Sascha

> 
> Signed-off-by: Wolfram Sang <w.sang@pengutronix.de>
> ---
> 
> Since V1, I dropped the "barebox's licence"-part.
> 
>  Documentation/barebox-main.dox |   14 +++++++-------
>  1 files changed, 7 insertions(+), 7 deletions(-)
> 
> diff --git a/Documentation/barebox-main.dox b/Documentation/barebox-main.dox
> index 743add8..01c45c1 100644
> --- a/Documentation/barebox-main.dox
> +++ b/Documentation/barebox-main.dox
> @@ -48,7 +48,7 @@ things right - without caring about losing support for old boards.
>  - simulation target
>    - @a barebox can be compiled to run under Linux. While this is rather useless
>      in real world this is a great debugging and development aid. New features
> -    can be easily developped and tested on long train journeys and started
> +    can be easily developed and tested on long train journeys and started
>      under gdb. There is a console driver for linux which emulates a serial
>      device and a tap based ethernet driver. Linux files can be mapped to
>      devices under @a barebox to emulate storage devices.
> @@ -59,7 +59,7 @@ things right - without caring about losing support for old boards.
>      'eth0.ip=192.168.0.7' or 'echo $eth0.ip'
>  
>  - initcalls
> -  - hooks in the startup process can be archieved with *_initcall() directives
> +  - hooks in the startup process can be achieved with *_initcall() directives
>      in each file.
>  
>  - getopt
> @@ -91,7 +91,7 @@ cross_compile pointing to your architecture and compiler. For @p ARCH=sandbox
>  we do not need a cross compiler so it is sufficient to specify the
>  architecture:
>  
> -@code # ln -s sandbox cross_arch @endcode
> +@code # ln -s arch/sandbox cross_arch @endcode
>  
>  In order to configure the various aspects of @a barebox, start the @a barebox
>  configuration system:
> @@ -102,7 +102,7 @@ This command starts a menu box and lets you select all the different
>  options available for your architecture. Once the configuration was
>  finished (you can simulate this by using the standard demo config file
>  with 'make sandbox_defconfig'), there is a .config file in the toplevel
> -directory of the sourcode.
> +directory of the sourcecode.
>  
>  Once @a barebox is configured, we can start the compilation
>  
> @@ -115,7 +115,7 @@ If everything goes well, the result is a file called @p barebox:
>      -rwxr-xr-x 1 rsc ptx 114073 Jun 26 22:34 barebox
>  @endcode
>  
> -@a barebox usually needs an environment for storing the configuation data.
> +@a barebox usually needs an environment for storing the configuration data.
>  You can generate an environment using the example environment contained
>  in board/sandbox/env:
>  
> @@ -146,7 +146,7 @@ loaded the example environment @a barebox will show you a menu asking for
>  your settings.
>  
>  If you have started @a barebox as root you will find a new tap device on your
> -host which you can configure using ifconfig. Once you configured @a barebox's
> +host which you can configure using ifconfig. Once you configured the
>  network settings accordingly you can do a ping or tftpboot.
>  
>  If you have mapped a cramfs image try mounting it with
> @@ -191,7 +191,7 @@ net /                     -> Networking stuff
>  
>  scripts /                 -> Kconfig system
>  
> -Documentation /           -> Parts of the documention, also doxygen
> +Documentation /           -> Parts of the documentation, also doxygen
>  @endverbatim
>  
>  @section license barebox's License
> -- 
> 1.7.0
> 
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
