Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZwQ1h-0008SX-Vb
 for barebox@lists.infradead.org; Wed, 11 Nov 2015 07:41:06 +0000
Date: Wed, 11 Nov 2015 08:40:44 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151111074043.GM8526@pengutronix.de>
References: <1447140436-29099-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1447140436-29099-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH 0/4] MIPS: support return from exception; allow user to
 pass incorrect address to md command
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Nov 10, 2015 at 10:27:12AM +0300, Antony Pavlov wrote:
> This patchseries adds return from exception for MIPS, so the 'md' command
> incorrect memory accesses can be handled correctly instead of crashing the system,
> e.g.
> 
>     barebox:/ md -l 0xa0000003+4
>     a0000003: xxxxxxxx                                           ....
> 
> Without this patchseries we will get this
> 
>     barebox:/ md -l 0xa0000003+4
>     a0000003:
>     Ooops, address error on load or ifetch!
> 
>     ...
> 
>     ### ERROR ### Please RESET the board ###
> 
> The patchseries is tested on QEMU Malta and Black Swift boards.
> 
> Antony Pavlov (4):
>   MIPS: traps.c: separate registers print stuff to show_regs()
>   MIPS: avoid excessive exception
>   MIPS: import exception registers restoring macros from linux kernel
>   MIPS: allow user to pass incorrect address to md command

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
