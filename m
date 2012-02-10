Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RvpW7-00030n-KL
 for barebox@lists.infradead.org; Fri, 10 Feb 2012 12:23:56 +0000
Date: Fri, 10 Feb 2012 13:23:43 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120210122343.GI3852@pengutronix.de>
References: <1328811868-1000-1-git-send-email-premi@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1328811868-1000-1-git-send-email-premi@ti.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [RFC] omap3evm: Set preliminary environment
To: Sanjeev Premi <premi@ti.com>
Cc: barebox@lists.infradead.org

On Thu, Feb 09, 2012 at 11:54:28PM +0530, Sanjeev Premi wrote:
> This is still work-in-progress, but wanted to
> share them early for any feedback.
> 
> Signed-off-by: Sanjeev Premi <premi@ti.com>
> ---
>  I have made offline edits on these scripts before making
>  this patch. There is a possibility of run-time failure.
> 
>  You will also observe many TODOs. Hope to get them sorted
>  tomorrow - for a patch worthy of applying on the tree.

You are rewriting what we already have in form of the generic
environment. You shouldn't do this, we've been there before.
Before there was the generic environment every board had its
own set of environment scripts. This resulted in tons of
board specific scripts in slightly different states.

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
