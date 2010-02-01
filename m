Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NbyFd-0007UI-8W
	for barebox@lists.infradead.org; Mon, 01 Feb 2010 15:31:46 +0000
Date: Mon, 1 Feb 2010 16:31:38 +0100
From: Sascha Hauer <sha@pengutronix.de>
Message-ID: <20100201153138.GV19551@pengutronix.de>
References: <1265020263-21417-1-git-send-email-mkl@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1265020263-21417-1-git-send-email-mkl@pengutronix.de>
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
Subject: Re: [PATCH 0/2] smc91111 mac address and cfi flash fixes
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Feb 01, 2010 at 11:31:01AM +0100, Marc Kleine-Budde wrote:
> Hello,
> 
> although these two patches are not related,
> I'm sending them as a series :)
> 
> Our Admin discovered that the MAC address read from the smc91111
> eeprom is bytewrapped. (Thanks to Jochen).
> 
> The second patch addresses an aligment problem found in the cfi_flash driver.
> The patch reduces the access width to fix the problem. Thanks to Uwe for
> finding a nice way to figure out the minimum alignment.
> 
> However the cfi_flash_new driver has the same problem.
> Which should be fixed, too.
> 
> Please review and consider to apply.
> cheers, Marc.

Ok, applied to master, though after the release.

Sascha


> 
> For you convenience you can pull....:
> 
> The following changes since commit c68c06cb0e5f9913473ab9cfbf7c48af79582c99:
>   Sascha Hauer (1):
>         barebox-2009.12.0
> 
> are available in the git repository at:
> 
>   git://git.pengutronix.de/git/mkl/barebox.git for-sha
> 
> Marc Kleine-Budde (2):
>       smc91111: fix odering of mac address read from EEPROM
>       cfi_flash: fix alignment problem
> 
>  drivers/net/smc91111.c  |   23 +++++++++--------------
>  drivers/nor/cfi_flash.c |   10 +++++++---
>  2 files changed, 16 insertions(+), 17 deletions(-)
> 
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
