Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eMb6Z-0000ii-SD
 for barebox@lists.infradead.ORG; Wed, 06 Dec 2017 14:55:25 +0000
Date: Wed, 6 Dec 2017 15:55:02 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20171206145502.pvfsvntfnp4urvq5@pengutronix.de>
References: <20171204153726.11479-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20171204153726.11479-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 0/4] A bit more consistent interface for "miitool"
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Dec 04, 2017 at 07:37:22AM -0800, Andrey Smirnov wrote:
> Hi everyone,
> 
> This patchset is intended to make miitools's -s option a bit more
> consistnet with the rest of Barebox commands. It is inspired mostly by
> users's feedback and personal frustration with inability to use
> autocomplete in that command.
> 
> It's nice to have, IMHO, but if we decide not to have this change
> that's fine too.

Applied, thanks

Sascha

> 
> Thanks,
> Andrey Smirnov
> 
> Andrey Smirnov (4):
>   commands: miitool: Constify 'phydevname' in mdiobus_show()
>   fs: Introduce devpath_to_name()
>   i.MX: imu-bbu-internal: Make use of devpath_to_name()
>   commands/miitool: Allow specifying PHY by their full path
> 
>  arch/arm/mach-imx/imx-bbu-internal.c | 3 +--
>  commands/miitool.c                   | 9 ++++++---
>  include/fs.h                         | 9 +++++++++
>  3 files changed, 16 insertions(+), 5 deletions(-)
> 
> -- 
> 2.14.3
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
