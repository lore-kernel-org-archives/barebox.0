Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmugp-0003YU-UI
 for barebox@lists.infradead.org; Mon, 15 Jul 2019 06:42:27 +0000
Date: Mon, 15 Jul 2019 08:42:13 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190715064213.n7e3stajq7wcqpoh@pengutronix.de>
References: <20190710201112.9086-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190710201112.9086-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH 1/7] gpio: allow for arch-specific ARCH_NR_GPIOS > 256
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Jul 10, 2019 at 10:11:06PM +0200, Ahmad Fatoum wrote:
> Some architectures have non-contiguous GPIO ranges where some GPIOs can
> have identifiers exceeding the hardcoded ARCH_NR_GPIOs of 256.
> 
> One such example is the STM32MP, whose gpioz controller has identifiers
> that go up to ('Z' - 'A' + 1) * 0x10 - 1 = 415.
> Instead of increasing the array size for all architectures or doing
> some sort of packing, allow architecture to define their own overriding
> CONFIG_ARCH_NR_GPIO like the kernel does.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  include/gpio.h | 4 ++++
>  1 file changed, 4 insertions(+)

Applied 1-4, thanks

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
