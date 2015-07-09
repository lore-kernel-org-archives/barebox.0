Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZD743-00024H-RE
 for barebox@lists.infradead.org; Thu, 09 Jul 2015 08:20:16 +0000
Date: Thu, 9 Jul 2015 10:19:53 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150709081953.GM18700@pengutronix.de>
References: <1436362263-25076-1-git-send-email-jluebbe@debian.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1436362263-25076-1-git-send-email-jluebbe@debian.org>
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
Subject: Re: [PATCH 1/2] i2c: only register enabled child nodes
To: Jan Luebbe <jluebbe@debian.org>
Cc: barebox@lists.infradead.org

On Wed, Jul 08, 2015 at 03:31:02PM +0200, Jan Luebbe wrote:
> Signed-off-by: Jan Luebbe <jluebbe@debian.org>
> ---
>  drivers/i2c/i2c.c | 2 +-
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
