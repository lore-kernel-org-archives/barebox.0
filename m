Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zx8Hr-000495-69
 for barebox@lists.infradead.org; Fri, 13 Nov 2015 06:56:44 +0000
Date: Fri, 13 Nov 2015 07:56:21 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151113065621.GW8526@pengutronix.de>
References: <1447235435-27140-1-git-send-email-serge.koshechkin@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1447235435-27140-1-git-send-email-serge.koshechkin@gmail.com>
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
Subject: Re: [PATCH] docproc: drop unused utility
To: Sergey Koshechkin <serge.koshechkin@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Nov 11, 2015 at 12:50:35PM +0300, Sergey Koshechkin wrote:
> Signed-off-by: Sergey Koshechkin <serge.koshechkin@gmail.com>
> ---
>  scripts/basic/.gitignore |   1 -
>  scripts/basic/Makefile   |   3 +-
>  scripts/basic/docproc.c  | 402 -----------------------------------------------
>  3 files changed, 1 insertion(+), 405 deletions(-)
>  delete mode 100644 scripts/basic/docproc.c

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
