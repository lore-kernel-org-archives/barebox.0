Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YAwTz-0004ix-39
 for barebox@lists.infradead.org; Tue, 13 Jan 2015 08:05:47 +0000
Date: Tue, 13 Jan 2015 09:05:25 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150113080525.GZ23940@pengutronix.de>
References: <1421132550-12063-1-git-send-email-yamada.m@jp.panasonic.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1421132550-12063-1-git-send-email-yamada.m@jp.panasonic.com>
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
Subject: Re: [PATCH] powerpc: include <linux/stringify.h> to avoid
 dupulicated defines
To: Masahiro Yamada <yamada.m@jp.panasonic.com>
Cc: barebox@lists.infradead.org

On Tue, Jan 13, 2015 at 04:02:30PM +0900, Masahiro Yamada wrote:
> Signed-off-by: Masahiro Yamada <yamada.m@jp.panasonic.com>
> ---
> 
>  arch/ppc/lib/crtsavres.S | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)

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
