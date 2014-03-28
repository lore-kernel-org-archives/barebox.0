Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WTRVO-0003zF-0D
 for barebox@lists.infradead.org; Fri, 28 Mar 2014 07:47:11 +0000
Date: Fri, 28 Mar 2014 08:46:47 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140328074647.GA17250@pengutronix.de>
References: <1395865363-29307-1-git-send-email-eric@eukrea.com>
 <1395865363-29307-2-git-send-email-eric@eukrea.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1395865363-29307-2-git-send-email-eric@eukrea.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/3] MarSBoard: add new board
To: Eric =?iso-8859-15?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

Hi Eric,

On Wed, Mar 26, 2014 at 09:22:42PM +0100, Eric B=E9nard wrote:
> +}
> +postcore_initcall(marsboard_lwl_init);
> diff --git a/arch/arm/boards/embest-marsboard/env/config-board b/arch/arm=
/boards/embest-marsboard/env/config-board
> new file mode 100644
> index 0000000..e8e8378
> --- /dev/null
> +++ b/arch/arm/boards/embest-marsboard/env/config-board
> @@ -0,0 +1,6 @@
> +#!/bin/sh
> +
> +# board defaults, do not change in running system. Change /env/config
> +# instead
> +
> +global.linux.bootargs.base=3D"console=3Dttymxc0,115200"

For the board specific environment I'd like to do the following:

move the $BOARD/env directory to a board specific name, like
$BOARD/marsboard-env. In your board code (when you know that you're
running on the marsboard), do: defaultenv_append_directory(marsboard_env);

For the environment snippet above: You can simply drop it. barebox will
append a correct 'console=3D' parameter automatically for you.

> +wm 32 0x020c407c 0x0f0000c3
> +wm 32 0x020c4080 0x000003ff
> +/* enable AXI cache for VDOA/VPU/IPU */
> +wm 32 0x020e0010 0xf00000cf
> +/* set IPU AXI-id0 Qos=3D0xf(bypass AXI-id1 Qos=3D0x7 */
> +wm 32 0x020e0018 0x007f007f
> +wm 32 0x020e001c 0x007f007f

You can probably drop these. The -next branch has a patch in it which
should do it:

3739b84 ARM i.MX6q: Mark VPU and IPU AXI transfers as cacheable, increase I=
PU priority

Sascha


-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
