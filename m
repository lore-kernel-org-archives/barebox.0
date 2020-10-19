Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kUQ4H-0007bs-C8
 for barebox@lists.infradead.org; Mon, 19 Oct 2020 07:58:58 +0000
Date: Mon, 19 Oct 2020 09:58:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20201019075856.GN13710@pengutronix.de>
References: <20201015090055.31130-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201015090055.31130-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH 1/3] sandbox: fix link error when UBSAN is selected
 without ASAN
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Oct 15, 2020 at 11:00:54AM +0200, Ahmad Fatoum wrote:
> dc7f1fce6747 ("sandbox: fix SANDBOX_UNWIND dependency to be KASAN
> only") already restricted ARCH_HAS_STACK_DUMP to be dependent
> only on AddressSanitizer being available.
> 
> This change got lost by an erroneous merge conflict resolution in
> 39bdcdfb814a ("Merge branch 'for-next/misc' into master"). Fix it up.
> 
> Fixes: 39bdcdfb814a ("Merge branch 'for-next/misc' into master")
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/sandbox/Kconfig | 7 +------
>  1 file changed, 1 insertion(+), 6 deletions(-)

Applied this one to master and the other two for next.

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
