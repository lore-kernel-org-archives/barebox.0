Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V70j8-0002yP-DC
 for barebox@lists.infradead.org; Wed, 07 Aug 2013 10:12:23 +0000
Date: Wed, 7 Aug 2013 12:11:59 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130807101159.GK26614@pengutronix.de>
References: <1375868734-32357-1-git-send-email-s.hauer@pengutronix.de>
 <1375869342.153074079@f120.i.mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1375869342.153074079@f120.i.mail.ru>
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
Subject: Re: [PATCH] Revert "ARM: Use armlinux_bootparams address for DTB"
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Wed, Aug 07, 2013 at 01:55:42PM +0400, Alexander Shiyan wrote:
> > This patch placed the flattened devicetree to armlinux_bootparams.
> > armlinux_bootparams normally is at SDRAM_START + 0x100. The kernels
> > initial page tables are normally at SDRAM_START + 0x4000, so the
> > flattened devicetree gets overwritten once it exceeds 0x3f00 bytes
> > which is quite common.
> > 
> > Revert this patch for now once a better solution can be found
> 
> In such a case, tree may be placed immediately after the kernel?
> It can also serve as an automatic option "ARM_APPENDED_DTB".

Did you actually stumbled over this problem? Normally the dtb is
allocated using malloc. The malloc region normally shouldn't overlap
with the kernels text region unless you are really tight of memory.
Was this on a clps711x?

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
