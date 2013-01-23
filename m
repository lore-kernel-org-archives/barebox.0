Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Ty60B-0003bG-5p
 for barebox@lists.infradead.org; Wed, 23 Jan 2013 19:28:51 +0000
Date: Wed, 23 Jan 2013 20:28:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130123192849.GX1906@pengutronix.de>
References: <20130122144540.GN26329@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130122144540.GN26329@game.jcrosoft.org>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 0/2] ohci: fixes
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Tue, Jan 22, 2013 at 03:45:40PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Hi,
> 
> 	the current divers is bugged on the mmu support so until it's fixed do
> 	not allow it wih mmu
> 
> 	make ohci driver depends on OHCI enabled
> 
> The following changes since commit 3de3b677ee3adc4e10235b623a8e0aa45be48893:
> 
>   Makefile: move cmd_check_file_size to Makefile.lib (2013-01-20 12:51:28 +0100)
> 
> are available in the git repository at:
> 
>   git://git.jcrosoft.org/barebox.git delivery/ohci_fixes

Applied, thanks

Sascha

> 
> for you to fetch changes up to 2e5068d9b3bd9457fde68665b42dc2251f12f925:
> 
>   ohci: only enable drivers if ohci is enabled (2013-01-18 17:24:45 +0800)
> 
> ----------------------------------------------------------------
> Jean-Christophe PLAGNIOL-VILLARD (2):
>       ohci: make it depends on !MMU
>       ohci: only enable drivers if ohci is enabled
> 
>  drivers/usb/host/Kconfig |    5 +++++
>  1 file changed, 5 insertions(+)
> 
> Best Regards,
> J.
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
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
