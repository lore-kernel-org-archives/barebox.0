Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1ej2V6-0007Aw-5t
 for barebox@lists.infradead.org; Tue, 06 Feb 2018 12:37:30 +0000
Date: Tue, 6 Feb 2018 13:37:11 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180206123711.5vdl6vcgq6nqsoia@pengutronix.de>
References: <20180129163004.10512-1-l.stach@pengutronix.de>
 <20180129163004.10512-5-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180129163004.10512-5-l.stach@pengutronix.de>
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
Subject: Re: [PATCH 04/10] ARM: add file for HYP mode related setup
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Jan 29, 2018 at 05:29:58PM +0100, Lucas Stach wrote:
> This adds routines to add hyp mode vectors and switch back to HYP
> mode from SVC. This is needed in both the PBL and Barebox proper.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>

This patch breaks the various PXA defconfigs:

arch/arm/cpu/hyp.S: Assembler messages:
arch/arm/cpu/hyp.S:5: Error: architectural extension `sec' is not allowed for the current base architecture
arch/arm/cpu/hyp.S:6: Error: architectural extension `virt' is not allowed for the current base architecture
arch/arm/cpu/hyp.S:86: Error: selected processor does not support ARM mode `isb'
arch/arm/cpu/hyp.S:87: Error: selected processor does not support ARM mode `hvc #0'
make[1]: *** [arch/arm/cpu/hyp.o] Error 1

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
