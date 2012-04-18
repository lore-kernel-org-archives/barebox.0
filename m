Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SKV49-0004mU-SN
 for barebox@lists.infradead.org; Wed, 18 Apr 2012 13:37:07 +0000
Date: Wed, 18 Apr 2012 15:36:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120418133641.GT3852@pengutronix.de>
References: <20120418120834.GD1980@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120418120834.GD1980@game.jcrosoft.org>
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
Subject: Re: [PATCH 0/3] fixes
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Wed, Apr 18, 2012 at 02:08:34PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> HI,
> 
> 	the following patch series is ramdom fixes of the next
> 
> The following changes since commit a2d2e8868fe3c963ebac634b695ae18bb4b411ca:
> 
>   config: switch machine to hostname (2012-04-18 12:03:58 +0200)
> 
> are available in the git repository at:
> 
>   git://git.jcrosoft.org/barebox.git fixes
> 
> for you to fetch changes up to 8c04018b528bb638e22b7f573617842482bbc05a:
> 
>   config: fix missing switch machine to hostname during merge (2012-04-18 19:51:05 +0800)

Applied, thanks.

Sascha

> 
> ----------------------------------------------------------------
> Jean-Christophe PLAGNIOL-VILLARD (3):
>       arm: bootm: zImage: add error message when can not request the memory
>       dhcp: fix typo introduce during rebase of hostname patch
>       config: fix missing switch machine to hostname during merge
> 
>  arch/arm/boards/eukrea_cpuimx35/env/config |   14 +++++++-------
>  arch/arm/lib/bootm.c                       |    2 ++
>  net/dhcp.c                                 |    2 +-
>  3 files changed, 10 insertions(+), 8 deletions(-)
> 
> Best Regards,
> J.
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
