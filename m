Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1co3wT-0006ec-Mc
 for barebox@lists.infradead.org; Wed, 15 Mar 2017 08:05:59 +0000
Date: Wed, 15 Mar 2017 09:05:34 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170315080534.4wfb7thp3eiddax4@pengutronix.de>
References: <1489350420-10640-1-git-send-email-akurz@blala.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1489350420-10640-1-git-send-email-akurz@blala.de>
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
Subject: Re: [PATCH] ARM: zynq7000: make PS_CLK Kconfigurable
To: Alexander Kurz <akurz@blala.de>
Cc: barebox@lists.infradead.org

Hi ALexander,

On Sun, Mar 12, 2017 at 09:27:00PM +0100, Alexander Kurz wrote:
> The main clock source on Zynq-7000 based boards (PS_CLK) is not uniform
> for all boards, while typical boards are clocked with 33.3MHz, the
> Z-7010 based Digilent Zybo board is clocked with 50MHz.
> Since barebox is not yet OF aware for Zynq, make PS_CLK board dependent
> via Kconfig.

We shouldn't encode differences between boards in Kconfig.

One way around it would be to add platform_data to the clk device and
call zynq_init() (with an additional freq argument) from the board code rather
than directly from an initcall.
Creating a small zynq_set_ps_clk() which sets the clock and is to
be called by the board before the clock driver is initialized would be
simpler but also work.

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
