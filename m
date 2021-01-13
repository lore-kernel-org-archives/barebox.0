Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kzc5o-00031Y-Kj
 for barebox@lists.infradead.org; Wed, 13 Jan 2021 09:05:29 +0000
Date: Wed, 13 Jan 2021 10:05:26 +0100
Message-ID: <20210113090526.GH19063@pengutronix.de>
References: <20210111143555.13002-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210111143555.13002-1-a.fatoum@pengutronix.de>
From: Sascha Hauer <sha@pengutronix.de>
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
Subject: Re: [PATCH] Documentation: boards: sandbox: describe --image flags
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Jan 11, 2021 at 03:35:55PM +0100, Ahmad Fatoum wrote:
> barebox partition table parsing can be tested in sandbox using the
> recently added ,blkdev flag. Extend the documentation to cover this.
> 
> Cc: Juergen Borleis <jbe@pengutronix.de>
> Reported-by: Lucas Stach <lst@pengutronix.de>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  Documentation/boards/sandbox.rst | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/Documentation/boards/sandbox.rst b/Documentation/boards/sandbox.rst
> index 8b24b6a64584..e9e5183653e6 100644
> --- a/Documentation/boards/sandbox.rst
> +++ b/Documentation/boards/sandbox.rst
> @@ -34,6 +34,20 @@ Available sandbox invocation options include:
>      Map a <file> to barebox. This option can be given multiple times. The <file>s
>      will show up as ``/dev/fd0`` ... ``/dev/fdX`` in the barebox simulator.
>  
> +    How the file is mapped in barebox can be controlled by a number of flags:
> +
> +    * ``,ro``: The host file is mapped read-only
> +
> +    * ``,blkdev``: The host file is to be mapped as block device. This is the
> +      default when passing block devices from the host. The file's size must
> +      be a multiple of the barebox sector size of 512 bytes.
> +
> +    * ``,cdev``: The host file is mapped as character device. This is the default,
> +      unless the the host file is a block device.
> +
> +    Multiple options can be appended if they don't clash. Literal commas within the
> +    file path can be escaped with a backslash. Example: ``-i './0\,0.hdimg,blkdev,ro'``.
> +
>    ``-e <file>``
>  
>      Map <file> to barebox. With this option <file>s are mapped as
> -- 
> 2.30.0
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
