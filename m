Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJxK6-0006RF-RR
 for barebox@lists.infradead.org; Mon, 14 Oct 2019 10:11:32 +0000
Date: Mon, 14 Oct 2019 12:11:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20191014101128.blr63u4oowudetci@pengutronix.de>
References: <20191007102859.9521-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191007102859.9521-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH] ARM: use system.h's get_cr() for cpuinfo
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Oct 07, 2019 at 12:28:59PM +0200, Ahmad Fatoum wrote:
> Instead of open-coding the get_cr(), use the already available helper
> in <asm/system.h> same as we do for 64-bit ARMv8.
> The only difference is that the "memory" clobber is replaced by "cc".
> This is ok as we don't expect get_cr() to affect memory and because
> we do it elsewhere in barebox without a "memory" clobber already.
> 
> While at it, move it out the #if/#else clause as the helper changes
> behavior depending on the same CONFIG option anyway.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/arm/cpu/cpuinfo.c | 9 +--------
>  1 file changed, 1 insertion(+), 8 deletions(-)

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
