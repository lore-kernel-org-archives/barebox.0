Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iblQT-00075y-Rl
 for barebox@lists.infradead.org; Mon, 02 Dec 2019 13:07:43 +0000
Date: Mon, 2 Dec 2019 14:07:36 +0100
From: Roland Hieber <rhi@pengutronix.de>
Message-ID: <20191202130736.xgs53nadr5uvokea@pengutronix.de>
References: <20191202102449.23535-1-jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191202102449.23535-1-jbe@pengutronix.de>
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
Subject: Re: [PATCH 1/2] HABv4: remove useless error message
To: Juergen Borleis <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Dec 02, 2019 at 11:24:48AM +0100, Juergen Borleis wrote:
> This change removes the stupid error message at the end of the generated

I think there was some reason behind that code, so it is probably not
stupid, and you've run into an edge case that never happened before (at
least I've never seen this on any of my boards when using HABv4).

The code goes back until the first incarnaction of HABv4 in commit
29abc10d44c2 - Marc, do you still know more details why it was done this
way?

 - Roland

> list of HAB events. It seems it was added for debugging/development
> purposes, because it always reports an error like
> 
>   "HABv4: ERROR: Recompile with larger event data buffer (at least 20 bytes)"
> 
> which is completely nonsense, since the we already provide a buffer with
> 256 bytes...
> 
> Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
> ---
>  drivers/hab/habv4.c | 6 ------
>  1 file changed, 6 deletions(-)
> 
> diff --git a/drivers/hab/habv4.c b/drivers/hab/habv4.c
> index e3c1de1a4d..f1f45648f5 100644
> --- a/drivers/hab/habv4.c
> +++ b/drivers/hab/habv4.c
> @@ -555,12 +555,6 @@ static int habv4_get_status(const struct habv4_rvt *rvt)
>  		index++;
>  	}
>  
> -	/* Check reason for stopping */
> -	len = sizeof(data);
> -	index = 0;
> -	if (rvt->report_event(HAB_STATUS_ANY, index, NULL, &len) == HAB_STATUS_SUCCESS)
> -		pr_err("ERROR: Recompile with larger event data buffer (at least %d bytes)\n\n", len);
> -
>  	return -EPERM;
>  }
>  
> -- 
> 2.20.1
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Roland Hieber, Pengutronix e.K.          | r.hieber@pengutronix.de     |
Steuerwalder Str. 21                     | https://www.pengutronix.de/ |
31137 Hildesheim, Germany                | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686         | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
