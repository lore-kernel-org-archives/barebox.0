Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Yx9He-0006Li-5y
 for barebox@lists.infradead.org; Tue, 26 May 2015 07:28:18 +0000
Date: Tue, 26 May 2015 09:27:55 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150526072755.GC6325@pengutronix.de>
References: <1432550924-20953-1-git-send-email-mkl@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1432550924-20953-1-git-send-email-mkl@pengutronix.de>
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
Subject: Re: [PATCH] crypto: digest: mark signature argument as const
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, May 25, 2015 at 12:48:44PM +0200, Marc Kleine-Budde wrote:
> Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
> ---
>  crypto/digest.c  | 10 +++++-----
>  include/digest.h | 10 +++++-----
>  2 files changed, 10 insertions(+), 10 deletions(-)

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
