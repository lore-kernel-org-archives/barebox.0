Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WPRKl-0000wd-LD
 for barebox@lists.infradead.org; Mon, 17 Mar 2014 06:47:40 +0000
Date: Mon, 17 Mar 2014 07:47:17 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140317064717.GF17250@pengutronix.de>
References: <1394734204-8181-1-git-send-email-renaud.barbier@ge.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1394734204-8181-1-git-send-email-renaud.barbier@ge.com>
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
Subject: Re: [PATCH 0/6] ppc: add Freescale P1022DS board support
To: Renaud Barbier <renaud.barbier@ge.com>
Cc: barebox@lists.infradead.org

On Thu, Mar 13, 2014 at 06:09:57PM +0000, Renaud Barbier wrote:
> Addition of Freescale P1022DS platform and DDR3 support.
> 
> Patches based on import of existing U-Boot code with modifications
> limited to code cleanup, and making DDR2 and DDR3 support co-existent.
> 
> Renaud Barbier (6):
>   ppc: add SoC support for Freescale P1022
>   common: DDR3 SPD verification support
>   ppc: mpc8xxx: add DDR3 support
>   ppc: add Freescale P1022DS board support
>   ppc: mpc85xx:gianfar: add stashing support
>   ppc: P1022DS: update Kconfig and Makefile

Applied all, thanks

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
