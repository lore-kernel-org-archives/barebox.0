Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiC85-0003Uf-Ay
 for barebox@lists.infradead.org; Tue, 02 Jul 2019 06:19:02 +0000
Date: Tue, 2 Jul 2019 08:18:59 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190702061859.erfxd7zzvwwu2bba@pengutronix.de>
References: <20190630111646.14992-1-gwenj@trabucayre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190630111646.14992-1-gwenj@trabucayre.com>
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
Subject: Re: [PATCH 1/3] ARM: socfpga: terasic-de0-nano-soc: update handoff
 files to 18.1
To: Gwenhael Goavec-Merou <gwenj@trabucayre.com>
Cc: barebox@lists.infradead.org, Gwenhael Goavec-Merou <gwenhael.goavec-merou@trabucayre.com>

On Sun, Jun 30, 2019 at 01:16:44PM +0200, Gwenhael Goavec-Merou wrote:
> From: Gwenhael Goavec-Merou <gwenhael.goavec-merou@trabucayre.com>
> 
> xload on de0nanosoc stop to boot after:
> SDRAM setup...
> SDRAM calibration...
> 
> This patch fix SDRAM configuration and updates handoff to quartus2 18.1
> 
> Signed-off-by: Gwenhael Goavec-Merou <gwenhael.goavec-merou@trabucayre.com>
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
