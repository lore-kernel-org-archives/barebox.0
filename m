Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z80nq-0007T6-N3
 for barebox@lists.infradead.org; Thu, 25 Jun 2015 06:38:28 +0000
Date: Thu, 25 Jun 2015 08:38:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150625063804.GC3795@pengutronix.de>
References: <1435087839-15939-1-git-send-email-dev@lynxeye.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1435087839-15939-1-git-send-email-dev@lynxeye.de>
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
Subject: Re: [PATCH 1/2] PCI: rework BAR size calculation
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org

On Tue, Jun 23, 2015 at 09:30:38PM +0200, Lucas Stach wrote:
> The probe code now does a much better job at detecting bad BARs.
> Also make sure to preserve any previous content of the BAR
> registers if we don't relocate them.
> 
> Signed-off-by: Lucas Stach <dev@lynxeye.de>
> ---
> I hope this fixes the problems seen with new versions of QEMU on
> MIPS malta.

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
