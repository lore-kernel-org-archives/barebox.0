Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c42GT-00013Y-4v
 for barebox@lists.infradead.org; Tue, 08 Nov 2016 09:00:21 +0000
Date: Tue, 8 Nov 2016 09:59:57 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Message-ID: <20161108085957.qqvl2ojnllll6hjn@pengutronix.de>
References: <29eaf37e-819f-dfdd-0403-350682193845@mev.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <29eaf37e-819f-dfdd-0403-350682193845@mev.co.uk>
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
Subject: Re: Designware MAC reset timeout after Linux reboot
To: Ian Abbott <abbotti@mev.co.uk>
Cc: barebox@lists.infradead.org

Hi!

On Mon, Nov 07, 2016 at 05:56:51PM +0000, Ian Abbott wrote:
> Hi everyone,
> 
> I'm using barebox 2016.10.0 with some custom BSP patches for my Cyclone V
> socfpga based board.  I've noticed that after issuing a reboot in Linux,
> followed by an 'ifup eth0' command in barebox, I get a "eth0: MAC reset
> timeout" error, which causes dwc_ether_init() to bail out early. My Linux
> kernel is Linux 4.1.17, plus LTSI-4.1.17 patches, plus Altera patches from
> linux-socfpga kernel branch socfpga-4.1.22-ltsi, in that order (git rebase
> is a wonderful thing!).
> 

FYI: I just tested on a Socrates board with Linux 4.9-rc3 and barebox 2016.08.0
and can not reproduce your problem. Does that always happen or just sometimes?

Regards,
Steffen

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
