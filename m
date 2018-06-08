Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fRARC-0003pK-OF
 for barebox@lists.infradead.org; Fri, 08 Jun 2018 05:59:52 +0000
Date: Fri, 8 Jun 2018 07:59:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180608055938.hjvkur5zuyhswyyt@pengutronix.de>
References: <20180606075912.2470-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180606075912.2470-1-o.rempel@pengutronix.de>
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
Subject: Re: [PATCH v4 0/3] MIPS: provide basic ELF support
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Jun 06, 2018 at 09:59:09AM +0200, Oleksij Rempel wrote:
> changes v4:
> - rebase against latest bootm changes
> 
> changes v3:
> - select ELF by MIPS
> 
> changes v2:
> - add dryrun support
> - some style fixes
> - enable ELF parser only on supported platform (currently only MIPS)
> 
> Antony Pavlov (1):
>   filetype: add ELF type
> 
> Oleksij Rempel (2):
>   add basic ELF parser
>   MIPS: bootm: add ELF handler

Applied, thanks

Sascha

> 
>  arch/mips/lib/bootm.c |  59 +++++++++++++++++
>  common/Kconfig        |   5 ++
>  common/Makefile       |   1 +
>  common/elf.c          | 145 ++++++++++++++++++++++++++++++++++++++++++
>  common/filetype.c     |   5 ++
>  include/elf.h         |  10 +++
>  include/filetype.h    |   1 +
>  7 files changed, 226 insertions(+)
>  create mode 100644 common/elf.c
> 
> -- 
> 2.17.1
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
