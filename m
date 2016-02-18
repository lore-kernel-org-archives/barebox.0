Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aWNE0-0007gJ-4A
 for barebox@lists.infradead.org; Thu, 18 Feb 2016 11:58:24 +0000
Date: Thu, 18 Feb 2016 12:58:02 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160218115801.GI3939@pengutronix.de>
References: <1455733786-22229-1-git-send-email-laforge@gnumonks.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1455733786-22229-1-git-send-email-laforge@gnumonks.org>
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
Subject: Re: [PATCH] Print error message if of_state_fixup() fails
To: Harald Welte <laforge@gnumonks.org>
Cc: barebox@lists.infradead.org

On Wed, Feb 17, 2016 at 07:29:46PM +0100, Harald Welte wrote:
> If of_state_fixup() fails for some reason, boot/bootm will fail, too
> 
> However, it is completely unclear where the error has happened, and to
> the user it rather seems like the kernel device tree loaded from some
> file was broken/corrupt, not that in fact some fixup routine was
> failing.
> 
> Adding a meaningful error message can help debugging significantly.
> 
> Signed-off-by: Harald Welte <laforge@gnumonks.org>
> ---
>  common/state.c | 1 +
>  1 file changed, 1 insertion(+)

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
