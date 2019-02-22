Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gx5aG-00052e-25
 for barebox@lists.infradead.org; Fri, 22 Feb 2019 07:49:25 +0000
Date: Fri, 22 Feb 2019 08:49:22 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190222074922.smfgbcwqmd6uddgi@pengutronix.de>
References: <20190221092848.4488-1-tomaz.solc@tablix.org>
 <20190221092848.4488-4-tomaz.solc@tablix.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190221092848.4488-4-tomaz.solc@tablix.org>
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
Subject: Re: [PATCH 3/3] commands: add of_bootargs command.
To: Tomaz Solc <tomaz.solc@tablix.org>
Cc: barebox@lists.infradead.org

On Thu, Feb 21, 2019 at 10:28:48AM +0100, Tomaz Solc wrote:
> When booting a Raspberry Pi, it is useful to extract bootargs from the
> device tree that was created by the VideoCore firmware. These bootargs
> contain for example settings for the framebuffer that the kernel needs
> to properly set the video output.
> 
> This commit adds an of_bootargs command that extracts a bootargs
> property from a device tree and saves it to a global variable.
> 
> For example, a bootloader environment can use this command to extract
> the bootargs to linux.bootargs.vc, which then gets included into the
> final bootargs for the kernel using CONFIG_FLEXIBLE_BOOTARGS.

Do we need an extra command for this? Can't you just unflatten the
VideoCore provided device tree in the board code you have added in 2/3
and set global.linux.bootargs.vc from there? It seems to be just the
right thing without further user intervention.

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
