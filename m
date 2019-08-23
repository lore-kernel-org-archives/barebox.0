Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i13hS-0004ad-MA
 for barebox@lists.infradead.org; Fri, 23 Aug 2019 07:09:34 +0000
Date: Fri, 23 Aug 2019 09:09:27 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190823070927.llr4yv5epjchdldz@pengutronix.de>
References: <20190821132859.GA21288@lenoch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190821132859.GA21288@lenoch>
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
Subject: Re: [PATCH] startup: Register autoboot variables earlier
To: Ladislav Michl <ladis@linux-mips.org>
Cc: Barebox List <barebox@lists.infradead.org>

On Wed, Aug 21, 2019 at 03:28:59PM +0200, Ladislav Michl wrote:
> Autoboot is controlled by autoboot_timeout and autoboot_abort_key
> variables which might be altered by init scripts, so we need to
> register them before those scripts are run. Otherwise they are
> set back to defaultenv values upon registration.
> 
> Fixes: 35266d7e583f ("startup: Factor out the autoboot counter...")
> Signed-off-by: Ladislav Michl <ladis@linux-mips.org>
> ---
>  common/startup.c | 18 +++++++++++-------
>  1 file changed, 11 insertions(+), 7 deletions(-)

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
