Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R3NTg-0004lV-SI
	for barebox@lists.infradead.org; Tue, 13 Sep 2011 07:32:21 +0000
Date: Tue, 13 Sep 2011 09:32:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110913073215.GV31404@pengutronix.de>
References: <1315823123-11600-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1315823123-11600-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] generate barebox.srec
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Sep 12, 2011 at 02:25:23PM +0400, Antony Pavlov wrote:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>

Applied to next.

Sascha

> ---
>  .gitignore |    1 +
>  Makefile   |    3 +++
>  2 files changed, 4 insertions(+), 0 deletions(-)
> 
> diff --git a/.gitignore b/.gitignore
> index 84d9f73..cc1f2e2 100644
> --- a/.gitignore
> +++ b/.gitignore
> @@ -31,6 +31,7 @@ cross_compile
>  barebox
>  barebox.S
>  barebox.bin
> +barebox.srec
>  barebox.netx
>  barebox.map
>  System.map
> diff --git a/Makefile b/Makefile
> index c100d24..5843db5 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -689,6 +689,9 @@ barebox: $(barebox-lds) $(barebox-head) $(barebox-common) $(kallsyms.o) FORCE
>  	$(call if_changed_rule,barebox__)
>  	$(Q)rm -f .old_version
>  
> +barebox.srec: barebox
> +	$(OBJCOPY) -O srec $< $@
> +
>  # The actual objects are generated when descending,
>  # make sure no implicit rule kicks in
>  $(sort $(barebox-head) $(barebox-common) ) $(barebox-lds): $(barebox-dirs) ;
> -- 
> 1.7.5.4
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
