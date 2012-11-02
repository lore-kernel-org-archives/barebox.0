Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TUMUy-0000ob-PY
 for barebox@lists.infradead.org; Fri, 02 Nov 2012 19:01:46 +0000
Date: Fri, 2 Nov 2012 20:01:41 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121102190141.GN1641@pengutronix.de>
References: <20121102160659.GS29599@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121102160659.GS29599@game.jcrosoft.org>
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
Subject: Re: [PATCH 0/2] add spi command
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Fri, Nov 02, 2012 at 05:06:59PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> HI,
> 
> 	while debugging a spi issue I found we have a i2c commands but no spi
> 	command
> 
> 	So introduce one
> 
> The following changes since commit 56371f4e8446d04d2a5608dd5890fd87a50f888e:
> 
>   iomux-imx35: add missing comma in pad definition (2012-11-01 16:32:12 +0100)
> 
> are available in the git repository at:
> 
>   git://git.jcrosoft.org/barebox.git delivery/command_spi
> 
> for you to fetch changes up to 3d6660a40aa5a51215a1909fd2fb5702f0e6558b:
> 

I recently used the i2c_* commands and thought it would be a good idea
to introduce regmap for barebox. This way we could add a regmap command
which just maps arbitrary i2c/spi devices as a cdev. Also we could
replace several drivers in drivers/mfd/ with nearly one-liners.

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
