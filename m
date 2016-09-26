Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1boP4H-0005Bt-Nv
 for barebox@lists.infradead.org; Mon, 26 Sep 2016 06:07:10 +0000
Date: Mon, 26 Sep 2016 08:06:47 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160926060647.5dhgvzg6fgmrhwmr@pengutronix.de>
References: <1474564462-8419-1-git-send-email-r.schwebel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1474564462-8419-1-git-send-email-r.schwebel@pengutronix.de>
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
Subject: Re: [PATCH] Documentation: clarify that patches should target the
 master branch.
To: Robert Schwebel <r.schwebel@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Sep 22, 2016 at 07:14:22PM +0200, Robert Schwebel wrote:
> I asked Sascha if he still prefers patches against 'next', and it turned
> out that this is not true any more and patches should be sent against
> master.
> 
> Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
> ---
>  Documentation/user/barebox.rst | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/Documentation/user/barebox.rst b/Documentation/user/barebox.rst
> index 32cec3d..1203c10 100644
> --- a/Documentation/user/barebox.rst
> +++ b/Documentation/user/barebox.rst
> @@ -28,9 +28,11 @@ can be checked out as follows:
>    Checking connectivity... done.
>    Checking out files: 100% (5651/5651), done.
>  
> -After this, make sure to check out the appropriate branch. If you want to
> -develop for barebox, it's best to check out the ``next`` branch rather than
> -the ``master`` branch:
> +By default, the master branch is checked out. If you want to develop for
> +barebox, this is the right branch to send patches against.
> +
> +If you want to see which patches are already selected for the next release,
> +you can look at the ``next`` branch:
>  
>  .. code-block:: sh
>  
> -- 
> 2.8.1
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
