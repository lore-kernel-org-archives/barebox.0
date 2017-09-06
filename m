Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dpZHq-00005E-KE
 for barebox@lists.infradead.org; Wed, 06 Sep 2017 12:18:31 +0000
Date: Wed, 6 Sep 2017 14:18:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170906121804.qiwc764pjlg6jntl@pengutronix.de>
References: <20170816122709.23129-1-jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170816122709.23129-1-jbe@pengutronix.de>
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
Subject: Re: [PATCH 1/3] state: provide an error message when an error occurs
To: Juergen Borleis <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Aug 16, 2017 at 02:27:07PM +0200, Juergen Borleis wrote:
> A simple typo makes the state framework fail, but without an error
> message the developer is lost in the dark.
> 
> Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
> ---
>  common/state/state.c | 1 +
>  1 file changed, 1 insertion(+)

Applied, thanks

Sascha

> 
> diff --git a/common/state/state.c b/common/state/state.c
> index 121ba0c6d..fc822b21b 100644
> --- a/common/state/state.c
> +++ b/common/state/state.c
> @@ -240,6 +240,7 @@ static int state_convert_node_variable(struct state *state,
>  
>  	vtype = state_find_type_by_name(type_name);
>  	if (!vtype) {
> +		dev_dbg(&state->dev, "Error: invalid variable type '%s'\n", type_name);
>  		ret = -ENOENT;
>  		goto out_free;
>  	}
> -- 
> 2.11.0
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
