Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kI5M8-0000je-AD
 for barebox@lists.infradead.org; Tue, 15 Sep 2020 07:26:25 +0000
Date: Tue, 15 Sep 2020 09:26:22 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200915072622.GC4498@pengutronix.de>
References: <20200914133748.5988-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200914133748.5988-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH 1/5] lib: string: retire deprecated strtok() in favor of
 reentrant strsep()
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Sep 14, 2020 at 03:37:44PM +0200, Ahmad Fatoum wrote:
> With the recent changes to ARCH=sandbox, there are no remaining
> in-tree users for strtok() anymore. Out-of-tree users are better
> served by using the reentrant strsep(), which has existed in-tree
> for as long.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> Should be applied after <20200914100553.24808-1-a.fatoum@pengutronix.de>
> ---
>  include/linux/string.h |  2 --
>  lib/string.c           | 35 +++--------------------------------
>  2 files changed, 3 insertions(+), 34 deletions(-)

Applied, thanks

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
