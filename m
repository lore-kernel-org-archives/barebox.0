Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U5xeR-000236-9S
 for barebox@lists.infradead.org; Thu, 14 Feb 2013 12:10:55 +0000
Date: Thu, 14 Feb 2013 13:10:53 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130214121053.GQ1906@pengutronix.de>
References: <1360623899-10059-1-git-send-email-vicencb@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1360623899-10059-1-git-send-email-vicencb@gmail.com>
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
Subject: Re: [PATCH 0/2] Summary of last patches submitted
To: Vicente Bergas <vicencb@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Feb 12, 2013 at 12:04:57AM +0100, Vicente Bergas wrote:
> Here are the last two patches I've submitted.
> The first is a straightforward solution to a regression.
> The second was first intended to provide devicetree support for booting an
> omap4 based tablet. I've achieved booting it successfully, but after several
> tries at bringing the mmc controller working I've realised that the Linux
> kernel still has no support for devicetree on omap4 (it's almost there, but it
> lacks dma configuration).
> For more information see:
> http://omappedia.org/wiki/Device_Tree#Drivers_.2F_Features_migration_status
> So the second patch has been stripped and only provides generic support,
> nothing related to the tablet.
> 
> The patches also include the changes reflecting the received feedback, thanks!
> 
> Vicente Bergas (2):
>   ArchosG9: solve regression in second stage lowlevel init
>   DeviceTree: add support for initrd in the DT

Applied, thanks

Sascha

> 
>  arch/arm/boards/archosg9/lowlevel.c |  7 ++--
>  arch/arm/lib/armlinux.c             |  2 ++
>  common/oftree.c                     | 66 +++++++++++++++++++++++++++++++++++++
>  include/of.h                        |  8 +++++
>  4 files changed, 81 insertions(+), 2 deletions(-)
> 
> -- 
> 1.8.1.3
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
