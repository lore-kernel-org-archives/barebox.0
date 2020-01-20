Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itd7S-0003nT-Ip
 for barebox@lists.infradead.org; Mon, 20 Jan 2020 19:53:56 +0000
Date: Mon, 20 Jan 2020 20:53:51 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200120195351.skm7ujz7yjr6mu32@pengutronix.de>
References: <2198510.7r5C0NBLhF@n95hx1g2>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2198510.7r5C0NBLhF@n95hx1g2>
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
Subject: Re: Configuring for secure boot
To: Christian Eggers <ceggers@arri.de>
Cc: barebox@lists.infradead.org

Hi Christian,

On Mon, Jan 20, 2020 at 05:38:36PM +0100, Christian Eggers wrote:
> Board: phytec-som-imx6
> 
> I need to configure barebox in a way, that a malicious attacker can not break
> into the system. It looks like I need to perform the following steps:
> 
> 1. Enforce signature verification of FIT image
> --> CONFIG_BOOTM_FORCE_SIGNED_IMAGES

Yes.

> 
> 2. Prevent manipulation of the saved environment in flash
> --> Do not load any environment settings from flash, only use compiled in
> default environment.
> --> Remove / permanently disable "barebox,environment" node in device-tree?
> --> Compile without CONFIG_OF_BAREBOX_DRIVERS?

Disable CONFIG_ENV_HANDLING, that alone is sufficient.

> 
> 3. Prevent access to the barebox shell
> --> CONFIG_CMD_LOGIN?
> --> CONFIG_SHELL_NONE?

I wouldn't trust CONFIG_CMD_LOGIN that much. If you do, at least make
sure to use a safe hash function for the password, i.e. not the default
md5.
Disabling the shell entirely with CONFIG_SHELL_NONE is the best you can
do. This also forces you to program your boot process in C which helps
you to get a well defined boot without diving into potentially unsafe
shell commands.

To state the obvious, you have to enable HAB support, sign your barebox
images and burn the necessary fuses to forbid loading unsigned images.

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
