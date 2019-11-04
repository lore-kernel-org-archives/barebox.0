Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRYpK-0006XX-Qg
 for barebox@lists.infradead.org; Mon, 04 Nov 2019 09:39:12 +0000
Date: Mon, 4 Nov 2019 10:39:08 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20191104093908.feta7vjr65v7nqkn@pengutronix.de>
References: <20191030170338.29446-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191030170338.29446-1-m.felsch@pengutronix.de>
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
Subject: Re: [PATCH] parameter: strip leading and trailing whitespaces
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Oct 30, 2019 at 06:03:39PM +0100, Marco Felsch wrote:
> My initial bug was the following: I set the
> global.boot.default="boot1 boot2 " and executed the 'boot' command. If
> both targets are not bootable barebox starts to execute the boot scripts
> found under /env/boot. This is because of the command/boot.c
> implementation and the leading whitespace. Without the whitespace only
> the two desired boot targets are tried.
> 
> IMHO leading and trailing whitespaces are error-prone in many cases. If
> someone wants to concatenate strings he/she should add spaces on
> purpose. So I fixed the bug above globally by always stripping leading
> and trailing whitespaces.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  lib/parameter.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)

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
