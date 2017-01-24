Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.4.pengutronix.de ([92.198.50.35])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cVwZd-000153-Ic
 for barebox@lists.infradead.org; Tue, 24 Jan 2017 08:35:35 +0000
Date: Tue, 24 Jan 2017 09:35:07 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170124083507.65qbnoqp2uevqazo@pengutronix.de>
References: <20170123170218.25139-1-m.olbrich@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170123170218.25139-1-m.olbrich@pengutronix.de>
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
Subject: Re: [PATCH 0/5] EFI fixes
To: Michael Olbrich <m.olbrich@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Jan 23, 2017 at 06:02:13PM +0100, Michael Olbrich wrote:
> A few small fixes to improve the barebox experience on EFI. Not all are
> strictly EFI specific, but that's where I came across the problems.
> 
> Regards,
> Michael
> 
> Michael Olbrich (5):
>   readkey: keys are unsigned char
>   serial: efi: improve input handling
>   output: use '[0m' to reset colors
>   efi: include and execute exit calls
>   efi: don't unload drivers

Applied, thanks

Sascha

> 
>  arch/efi/Makefile                 | 4 ++--
>  arch/efi/efi/efi-image.c          | 9 ++++++++-
>  arch/efi/lib/elf_x86_64_efi.lds.S | 1 +
>  commands/2048.c                   | 2 +-
>  common/menu.c                     | 2 +-
>  drivers/serial/efi-stdio.c        | 3 ++-
>  include/readkey.h                 | 4 ++--
>  lib/readkey.c                     | 4 ++--
>  8 files changed, 19 insertions(+), 10 deletions(-)
> 
> -- 
> 2.11.0
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
