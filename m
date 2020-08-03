Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k2gGF-0004fC-KJ
 for barebox@lists.infradead.org; Mon, 03 Aug 2020 19:36:40 +0000
Date: Mon, 3 Aug 2020 21:36:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200803193637.GG31536@pengutronix.de>
References: <20200724111233.23725-1-l.stach@pengutronix.de>
 <20200724111233.23725-2-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200724111233.23725-2-l.stach@pengutronix.de>
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
Subject: Re: [PATCH 2/4] ARM: imx8m: make debug UART selection available on
 i.MX8MM
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Jul 24, 2020 at 01:12:31PM +0200, Lucas Stach wrote:
> i.MX8MM/MN has UARTs in the same place in the MMIO address space as
> the i.MX8MQ, so make the lowlevel debug a bit more generic across the
> i.MX8M family.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  arch/arm/mach-imx/include/mach/debug_ll.h |  6 +++---
>  common/Kconfig                            | 10 +++++-----
>  2 files changed, 8 insertions(+), 8 deletions(-)

Please rebase on current master. It seems the i.MX8MP support got in the
way.

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
