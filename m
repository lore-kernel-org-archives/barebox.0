Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i15PN-0007Qq-07
 for barebox@lists.infradead.org; Fri, 23 Aug 2019 08:58:58 +0000
Date: Fri, 23 Aug 2019 10:58:54 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190823085854.bfskgoqbwf5kbfhn@pengutronix.de>
References: <20190820221638.19492-1-cory.tusar@zii.aero>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190820221638.19492-1-cory.tusar@zii.aero>
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
Subject: Re: [PATCH] Documentation: zii-vf610-dev: Fix 'halt' in openocd
 configuration script
To: Cory Tusar <Cory.Tusar@zii.aero>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>, Chris Healy <Chris.Healy@zii.aero>

On Tue, Aug 20, 2019 at 10:17:36PM +0000, Cory Tusar wrote:
> When attempting to use the existing configuration file to bootstrap
> an SCU4 AIB board, openocd would consistently fail on the 'halt' command
> with a "Target not examined yet" error.  Dumping target information
> showed that vf610.cpu1 was the active target, rather that vf610.cpu0.
> 
> Adding a command prior to the halt to explicitly set the target core
> resulted in proper operation.
> 
> Tested with openocd-0.10.0+dev-00924-g16496488 on a Zodiac SCU4 AIB.
> 
> Signed-off-by: Cory Tusar <cory.tusar@zii.aero>
> ---
>  Documentation/boards/imx/zii-vf610-dev/openocd.cfg | 1 +
>  1 file changed, 1 insertion(+)

Applied, thanks

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
