Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vj1Bm-0004Ua-8p
 for barebox@lists.infradead.org; Wed, 20 Nov 2013 06:23:02 +0000
Date: Wed, 20 Nov 2013 07:22:40 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131120062240.GF24559@pengutronix.de>
References: <1384823293-11830-1-git-send-email-alex.aring@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1384823293-11830-1-git-send-email-alex.aring@gmail.com>
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
Subject: Re: [PATCH 1/2] scripts: fix kernel-install-target config
To: Alexander Aring <alex.aring@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Nov 19, 2013 at 02:08:12AM +0100, Alexander Aring wrote:
> Signed-off-by: Alexander Aring <alex.aring@gmail.com>
> ---
> This confused me a little bit... commit id
> 61cf2b51bccbf18c3df505a77db759454e8574ca looks different than the commit
> on barebox mailinglist [1]. What's happend there? :-)

No idea, looks like copy-paste error. Stopped thinking about it and
applied ;)

Sascha

> 
> [1] http://lists.infradead.org/pipermail/barebox/2013-September/016457.html
> 
>  scripts/Makefile | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/scripts/Makefile b/scripts/Makefile
> index ce3fd53..2f78c4b 100644
> --- a/scripts/Makefile
> +++ b/scripts/Makefile
> @@ -25,7 +25,7 @@ subdir-$(CONFIG_X86)		+= setupmbr
>  subdir-$(CONFIG_DTC)		+= dtc
>  
>  targetprogs-$(CONFIG_BAREBOXENV_TARGET) += bareboxenv-target
> -targetprogs-$(CONFIG_KERNEL_INSTALL_TARGET) += bareboxenv-target
> +targetprogs-$(CONFIG_KERNEL_INSTALL_TARGET) += kernel-install-target
>  
>  # Let clean descend into subdirs
>  subdir-	+= basic kconfig setupmbr
> -- 
> 1.8.4.2
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
