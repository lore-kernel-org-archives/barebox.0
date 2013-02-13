Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U5XYH-0007YT-0E
 for barebox@lists.infradead.org; Wed, 13 Feb 2013 08:18:50 +0000
Date: Wed, 13 Feb 2013 09:18:45 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130213081845.GA1906@pengutronix.de>
References: <1360703460-20379-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1360703460-20379-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/1] highbank: use the provided dtb by the firmware to
 probe barebox device and mem size
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org, Rob Herring <rob.herring@calxeda.com>

On Tue, Feb 12, 2013 at 10:11:00PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> the dtb is at 0x1000
> 
> if no dtb present use C code device
> 
> kepp in C the timer/gpio/uart
> 
> Cc: Rob Herring <rob.herring@calxeda.com>
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  arch/arm/boards/highbank/env/bin/init_board |    7 +++++
>  arch/arm/boards/highbank/init.c             |   44 ++++++++++++++++++++++++---
>  2 files changed, 47 insertions(+), 4 deletions(-)
>  create mode 100644 arch/arm/boards/highbank/env/bin/init_board
> 
> diff --git a/arch/arm/boards/highbank/env/bin/init_board b/arch/arm/boards/highbank/env/bin/init_board

We already have:

| commit f59f5e86256f82daf4af3bf1922805592b780613
| Author: Sascha Hauer <s.hauer@pengutronix.de>
| Date:   Sat Oct 6 19:51:47 2012 +0200
| 
|     of: find and register memory during probe
|     
|     This automatically registers the memory nodes in the devicetree.
|     
|     Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

I suspect there is something missing since this commit checks for the
'device_type' property, but does not actually test if it matches
'memory'. So there might be some work necessary, but this code already
handles 64bit cells correctly, at least it tries to ;)

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
