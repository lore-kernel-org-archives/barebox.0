Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTihI-0002Nr-G8
 for barebox@lists.infradead.org; Thu, 23 May 2019 08:03:34 +0000
Date: Thu, 23 May 2019 10:03:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190523080330.eqjwa7hlonxauygm@pengutronix.de>
References: <20190522080517.28821-1-r.czerwinski@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190522080517.28821-1-r.czerwinski@pengutronix.de>
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
Subject: Re: [PATCH v3] ARM: Initial OP-TEE support
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, May 22, 2019 at 10:05:17AM +0200, Rouven Czerwinski wrote:
> From: Sascha Hauer <s.hauer@pengutronix.de>
> 
> This adds initial support for OP-TEE, see https://www.op-tee.org/
> 
> barebox starts in secure mode as usual. When booting a kernel
> the bootm code also loads the optee_os binary. Instead of jumping
> into the kernel barebox jumps into the optee_os binary and puts
> the kernel execution address into the lr register. OP-TEE then
> jumps into the kernel in nonsecure mode.
> 
> The optee_os binary is passed with the -t option to bootm or
> with global.bootm.tee.
> 
> Optionally OP-TEE can be compiled into barebox using the builtin firmware
> feature. Enable the Kconfig option and place or link your tee binary as
> optee.bin into the firmware directory.
> 
> The amount of SDRAM which is kept free for OP-TEE is configurable.
> 
> This patch was tested on a i.MX6 Nitrogen6x board.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
> ---

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
