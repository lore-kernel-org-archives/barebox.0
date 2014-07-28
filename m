Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XBeEU-000274-4r
 for barebox@lists.infradead.org; Mon, 28 Jul 2014 06:16:26 +0000
Date: Mon, 28 Jul 2014 08:16:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140728061604.GX23235@pengutronix.de>
References: <1406454448-10645-1-git-send-email-antonynpavlov@gmail.com>
 <1406454448-10645-10-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1406454448-10645-10-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH 9/9] Documentation: add QEMU Canon A1100 barebox mini-howto
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Sun, Jul 27, 2014 at 01:47:28PM +0400, Antony Pavlov wrote:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  Documentation/boards/digic.rst | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
> 
> diff --git a/Documentation/boards/digic.rst b/Documentation/boards/digic.rst
> new file mode 100644
> index 0000000..e2c49b6
> --- /dev/null
> +++ b/Documentation/boards/digic.rst
> @@ -0,0 +1,16 @@
> +Canon DIGIC
> +===========
> +
> +Canon PowerShot A1100 IS
> +------------------------
> +
> +Running barebox on QEMU
> +^^^^^^^^^^^^^^^^^^^^^^^
> +
> +QEMU supports Canon A1100 camera emulation since version 2.0.
> +
> +Usage::
> +
> +  $ qemu-system-arm -M canon-a1100 \
> +      -nographic -monitor null -serial stdio \
> +      -bios barebox.canon-a1100.bin

Is it possible to run it on a real camera? How?

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
