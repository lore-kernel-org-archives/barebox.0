Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TCQ0H-0000Ln-7M
 for barebox@lists.infradead.org; Fri, 14 Sep 2012 07:07:53 +0000
Date: Fri, 14 Sep 2012 09:07:51 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120914070751.GQ6180@pengutronix.de>
References: <20120913155532.GA9153@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120913155532.GA9153@game.jcrosoft.org>
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
Subject: Re: [PATCH 0/7 v2] dhcp: update to globalvar
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Thu, Sep 13, 2012 at 05:55:32PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> HI,
> 
> 	v2:
> 	fix missing hostname switch
> 	set default retry to 20
> 	fix comment
> 
> 	this pull is a split of the bootp work as I may have not time to
> 	finish it those days
> 
> please pull
> The following changes since commit 8b3bf5971afbdf1acc5becabb6f15ba4b2a5559d:
> 
>   tap: fix missing parent setting on eth_device (2012-09-12 17:26:26 +0200)
> 
> are available in the git repository at:
> 
>   git://git.jcrosoft.org/barebox.git tags/dhcp

Pulled, thanks

Sascha

> 
> for you to fetch changes up to dec0a10529c9504afecb8f97d56f0e110ef5b6a5:
> 
>   defaultenv-2: eth0 add default global.dhcp.vendor_id (2012-09-13 23:55:19 +0800)
> 
> ----------------------------------------------------------------
> dhcp: update to globalvar
> 
> So we can specify vendor_id, user_class, etc... in defaultenv-2
> 
> defaultenv: enable glovalvar support
> This will allow to do not have 2 set of var for defaultenv and the new
> defaultenv-2.
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> 
> ----------------------------------------------------------------
> Jean-Christophe PLAGNIOL-VILLARD (7):
>       globalvar: add inline when not enabled
>       defaultenv: enable glovalvar support
>       defaultenv: switch hostname to global.hostname
>       dhcp: switch to global var support
>       dhcp: add copy_only_if_valid support
>       dhcp: add retries limit support
>       defaultenv-2: eth0 add default global.dhcp.vendor_id
> 
>  arch/arm/boards/at91rm9200ek/env/config           |    2 +-
>  arch/arm/boards/at91sam9260ek/env/config          |    4 ++--
>  arch/arm/boards/at91sam9261ek/env/config          |    4 ++--
>  arch/arm/boards/at91sam9263ek/env/config          |    2 +-
>  arch/arm/boards/at91sam9m10g45ek/env/config       |    2 +-
>  arch/arm/boards/at91sam9x5ek/env/config           |    2 +-
>  arch/arm/boards/chumby_falconwing/env/config      |    2 +-
>  arch/arm/boards/eukrea_cpuimx25/env/config        |   14 ++++++------
>  arch/arm/boards/eukrea_cpuimx35/env/config        |   14 ++++++------
>  arch/arm/boards/eukrea_cpuimx51/env/config        |   14 ++++++------
>  arch/arm/boards/freescale-mx28-evk/env/config     |   12 +++++------
>  arch/arm/boards/freescale-mx35-3-stack/env/config |   14 ++++++------
>  arch/arm/boards/freescale-mx53-loco/env/config    |   16 +++++++-------
>  arch/arm/boards/freescale-mx53-smd/env/config     |   14 ++++++------
>  arch/arm/boards/friendlyarm-mini2440/env/config   |   14 ++++++------
>  arch/arm/boards/guf-cupid/env/config              |   14 ++++++------
>  arch/arm/boards/guf-neso/env/config               |   14 ++++++------
>  arch/arm/boards/karo-tx25/env/config              |   14 ++++++------
>  arch/arm/boards/karo-tx28/env/config              |   14 ++++++------
>  arch/arm/boards/panda/env/config                  |   12 +++++------
>  arch/arm/boards/pcm027/env/config                 |   14 ++++++------
>  arch/arm/boards/pcm037/env/config                 |   14 ++++++------
>  arch/arm/boards/pcm043/env/config                 |   14 ++++++------
>  arch/arm/boards/pcm049/env/config                 |   14 ++++++------
>  arch/arm/boards/phycard-a-l1/env/config           |   18 ++++++++--------
>  arch/arm/boards/phycard-a-xl2/env/config          |   14 ++++++------
>  arch/arm/boards/phycard-i.MX27/env/config         |   14 ++++++------
>  arch/arm/boards/qil-a9260/env/config              |    2 +-
>  arch/arm/boards/scb9328/env/config                |   14 ++++++------
>  arch/arm/boards/tny-a926x/env/config              |    6 +++---
>  arch/arm/boards/usb-a926x/env/config              |    6 +++---
>  common/Kconfig                                    |    1 +
>  defaultenv-2/base/network/eth0                    |    1 +
>  defaultenv/bin/boot                               |   12 +++++------
>  defaultenv/bin/init                               |    2 ++
>  defaultenv/config                                 |   18 ++++++++--------
>  include/globalvar.h                               |   20 +++++++++++++++++
>  net/dhcp.c                                        |  167 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++----------------------
>  38 files changed, 345 insertions(+), 204 deletions(-)
> 
> Best Regrards,
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
