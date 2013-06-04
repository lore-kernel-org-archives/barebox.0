Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UjlHu-0003kN-Dy
 for barebox@lists.infradead.org; Tue, 04 Jun 2013 07:04:11 +0000
Date: Tue, 4 Jun 2013 09:03:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130604070348.GG32299@pengutronix.de>
References: <1370256807-26755-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1370256807-26755-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH v2 0/5] MIPS: rework ns16550 debug_ll
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Jun 03, 2013 at 02:53:22PM +0400, Antony Pavlov wrote:
> This patch series makes possible easely produce
> debug output via ns16550-like UART on very early pbl stage.
> 
> v2 patch series is based on the 'master' branch
> and it does not break bisectibility.

Thanks for redoing this. Applied.

Sascha

> 
> [PATCH v2 1/5] MIPS: rzx50: prepare for new debug_ll
> [PATCH v2 2/5] MIPS: malta: prepare for new debug_ll
> [PATCH v2 3/5] MIPS: unify ns16550 debug_ll support code
> [PATCH v2 4/5] MIPS: rzx50: pbl: use debug_ll
> [PATCH v2 5/5] MIPS: rzx50_defconfig: use UART1 for low-level debug
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
