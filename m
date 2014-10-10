Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XcTqd-0005Of-IZ
 for barebox@lists.infradead.org; Fri, 10 Oct 2014 06:38:44 +0000
Date: Fri, 10 Oct 2014 08:38:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20141010063821.GL4992@pengutronix.de>
References: <1412885337-1544-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1412885337-1544-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH 0/2] mips: qemu-malta: add little-endian mode support
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, Oct 10, 2014 at 12:08:55AM +0400, Antony Pavlov wrote:
> Antony Pavlov (2):
>   mips: qemu-malta: add little-endian mode support
>   Documentation: mips: add little-endian qemu-malta HOWTO

Hm, nice. Adding big endian support to Arm would not be that simple.

Applied, thanks

Sascha

> 
>  Documentation/boards/mips/qemu-malta.rst | 24 ++++++++++++++++++++++++
>  arch/mips/Kconfig                        |  1 +
>  arch/mips/include/asm/gt64120.h          |  7 +++++++
>  3 files changed, 32 insertions(+)
> 
> -- 
> 2.1.1
> 
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
