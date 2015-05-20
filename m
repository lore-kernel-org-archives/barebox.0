Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YuxE6-0002Vh-KO
 for barebox@lists.infradead.org; Wed, 20 May 2015 06:11:35 +0000
Date: Wed, 20 May 2015 08:11:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150520061112.GI6325@pengutronix.de>
References: <1432057031-19366-1-git-send-email-mkl@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1432057031-19366-1-git-send-email-mkl@pengutronix.de>
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
Subject: Re: [PATCH] habv4: habv4_get_status(): fix warning with no-op static
 inline function
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, May 19, 2015 at 07:37:11PM +0200, Marc Kleine-Budde wrote:
> This patch fixes the following warning:
> 
>   CC      arch/arm/boards/foo/board.o
>   In file included from arch/arm/boards/foo/board.c:22:0:
>   include/habv4.h:24:19: warning: function declaration isn't a prototype [-Wstrict-prototypes]
>    static inline int habv4_get_status()
>                       ^
> 
> Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
> ---
>  include/habv4.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

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
