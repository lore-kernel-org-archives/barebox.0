Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip9Sd-0006QC-Io
 for barebox@lists.infradead.org; Wed, 08 Jan 2020 11:25:16 +0000
Date: Wed, 8 Jan 2020 12:25:13 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200108112513.tjlzcg7psbycsz3t@pengutronix.de>
References: <20200106202945.4565-1-dev@lynxeye.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200106202945.4565-1-dev@lynxeye.de>
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
Subject: Re: [PATCH 1/2] ARM: zynq: add Zynq specific lowlevel CPU init
 function
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org

On Mon, Jan 06, 2020 at 09:29:44PM +0100, Lucas Stach wrote:
> This adds a Zynq specific CPU lowlevel init function, which applies
> the required workarounds for the Cortex A9 r3p0 core.
> 
> Signed-off-by: Lucas Stach <dev@lynxeye.de>
> ---
>  arch/arm/mach-zynq/Makefile            |  1 +
>  arch/arm/mach-zynq/cpu_init.c          | 15 +++++++++++++++
>  arch/arm/mach-zynq/include/mach/init.h |  8 ++++++++
>  3 files changed, 24 insertions(+)
>  create mode 100644 arch/arm/mach-zynq/cpu_init.c
>  create mode 100644 arch/arm/mach-zynq/include/mach/init.h

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
