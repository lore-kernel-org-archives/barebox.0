Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gL0uL-0002AI-Sq
 for barebox@lists.infradead.org; Fri, 09 Nov 2018 07:08:47 +0000
Date: Fri, 9 Nov 2018 08:08:33 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181109070833.kvvqqiqdz367pmas@pengutronix.de>
References: <20181108103207.12189-1-m.niestroj@grinn-global.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181108103207.12189-1-m.niestroj@grinn-global.com>
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
Subject: Re: [PATCH v3] ARM: i.MX: Add liteboard support
To: Marcin Niestroj <m.niestroj@grinn-global.com>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, barebox@lists.infradead.org

On Thu, Nov 08, 2018 at 11:32:07AM +0100, Marcin Niestroj wrote:
> liteboard is a development board which uses liteSOM as its
> base. liteSOM can't exist on its own, but is used as part
> of other boards - it only contains processor and memory.
> 
> Hardware specification:
>  * liteSOM:
>    - i.MX6UL
>    - 256M or 512M DDR3 RAM
>    - eMMC (uSDHC2)
>  * Ethernet PHY
>  * USB host (usb_otg1)
>  * MicroSD slot (uSDHC1)
> 
> Signed-off-by: Marcin Niestroj <m.niestroj@grinn-global.com>
> ---
> Hi,
> 
> It's a third attemt to add support for liteboard. You can find
> PATCH v1 in [1] and PATCH v2 in [2].

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
