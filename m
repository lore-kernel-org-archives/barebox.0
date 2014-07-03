Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X2aU7-0005tc-2L
 for barebox@lists.infradead.org; Thu, 03 Jul 2014 06:27:07 +0000
Date: Thu, 3 Jul 2014 08:26:43 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140703062643.GJ14257@pengutronix.de>
References: <alpine.LFD.2.11.1407021543560.7005@localhost>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.LFD.2.11.1407021543560.7005@localhost>
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
Subject: Re: why would i get "Out of memory" error in a sandbox build?
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On Wed, Jul 02, 2014 at 03:50:36PM -0400, Robert P. J. Day wrote:
> 
> barebox@barebox sandbox:/
> 
>   i'm actually good with this, it's about what i expected since i set
> no environment or networking, etc.  but just for fun, i "cd"ed down
> into /mnt/tftp, knowing this shouldn't work, and here's what happened:
> 
> barebox@barebox sandbox:/ cd /mnt/tftp
> ifup: Cannot find device eth0
> ifup: No such file or directory
> running automount command 'ifup eth0 && mount -t tftp $eth0.serverip
> /mnt/tftp' failed
> barebox@barebox sandbox:/mnt/tftp cd /
> ERROR: out of memory
> 
> no stack data available
> [rpjday@localhost barebox_build]$
> 
>   in short, "cd"ing into /mnt/tftp failed as it should have, but just
> trying to "cd" back to the root caused the "out of memory" error. it
> seems entirely reproducible. should i have expected this?

This is an interesting bug you triggered. by changing the cwd to an
automount directory you found a way to trigger the automount function
from the automount function resulting in an endless loop. This loop
gets interrupted when we are out of memory.

I sent a fix to the list which fixes this.

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
