Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kVAlx-0001Ir-4w
 for barebox@lists.infradead.org; Wed, 21 Oct 2020 09:51:10 +0000
Date: Wed, 21 Oct 2020 11:51:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20201021095104.GU13710@pengutronix.de>
References: <20201020032937.10132-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201020032937.10132-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH master 1/5] Documentation: smhfs: fix some typos
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Oct 20, 2020 at 05:29:33AM +0200, Ahmad Fatoum wrote:
> There are a few typos in the document. Fix them.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  Documentation/filesystems/smhfs.rst | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/Documentation/filesystems/smhfs.rst b/Documentation/filesystems/smhfs.rst
> index 8f8a0ec6b74d..f70ca6015fcf 100644
> --- a/Documentation/filesystems/smhfs.rst
> +++ b/Documentation/filesystems/smhfs.rst
> @@ -8,12 +8,12 @@ File I/O over ARM semihosting support
>  Target Side Setup
>  -----------------
>  
> -barebox can communicate with debug programms attached via SWD/JTAG by
> +barebox can communicate with debug programs attached via SWD/JTAG by
>  means of ARM semihosting protocol.
>  
> -Not all of the I/O primitives neccessary to implement a full
> +Not all of the I/O primitives necessary to implement a full
>  filesystem are exposed in ARM semihosting API and because of that some
> -aspects of filesystem funcionality are missing. Implementation does
> +aspects of filesystem functionality are missing. Implementation does
>  not have support for listing directories. This means a
>  :ref:`command_ls` to a SMHFS-mounted path will show an empty
>  directory. Nevertheless, the files are there.
> @@ -29,7 +29,7 @@ Host Side Setup
>  ---------------
>  
>  FIXME: Currently OpenOCD does not work correctly if Barebox is built
> -with MMU enabled, so before using this featrue, please make sure that
> +with MMU enabled, so before using this feature, please make sure that
>  MMU is disabled in your particular configuration
>  
>  To make semihosting work host machine connected to the target via
> -- 
> 2.28.0
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
