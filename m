Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SSkEz-0007Ps-AM
 for barebox@lists.infradead.org; Fri, 11 May 2012 07:28:07 +0000
Date: Fri, 11 May 2012 09:26:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120511072614.GB27341@pengutronix.de>
References: <1336642330-23675-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1336642330-23675-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [RFC 0/5] MIPS: add XBurst processor family support
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, May 10, 2012 at 01:32:05PM +0400, Antony Pavlov wrote:
> This patch series introduce XBurst processor family support to barebox.
> 
> XBurst is an CPU family developed by Ingenic Semiconductor
> to address the requirements of mobile devices. XBurst processors
> are used in mobile gaming consoles (e.g. notable Dingoo A320),
> e-books, mp3-players and so on.
> 
> The patches have preliminary status. Please, review it!

Apart from the two comments the series looks good.

Sascha

> 
> [RFC 1/5] MIPS: add common header file for DEBUG_LL via NS16550
> [RFC 2/5] MIPS: add XBurst processor family support
> [RFC 3/5] MISP: XBurst: add JZ4755 CPU support
> [RFC 4/5] MIPS: XBurst: add Ritmix RZX-50 board support
> [RFC 5/5] MIPS: add defconfig for Ritmix RZX-50 board
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
