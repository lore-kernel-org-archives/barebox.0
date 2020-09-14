Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kHkXo-00030m-7c
 for barebox@lists.infradead.org; Mon, 14 Sep 2020 09:13:04 +0000
Date: Mon, 14 Sep 2020 11:13:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200914091302.GN4498@pengutronix.de>
References: <20200912071241.29924-1-r.czerwinski@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200912071241.29924-1-r.czerwinski@pengutronix.de>
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
Subject: Re: [PATCH 1/4] globalvar: add set_single function
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Rouven,

On Sat, Sep 12, 2020 at 09:12:37AM +0200, Rouven Czerwinski wrote:
> Instead of overwriting the whole hierarchy beneath a globalvar, the
> set_single function only sets the specific globalvar.
> 
> Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
> ---
>  common/globalvar.c  | 11 +++++++++++
>  include/globalvar.h |  1 +
>  2 files changed, 12 insertions(+)
> 
> diff --git a/common/globalvar.c b/common/globalvar.c
> index 98a028a68a..848a7d6832 100644
> --- a/common/globalvar.c
> +++ b/common/globalvar.c
> @@ -399,6 +399,17 @@ void globalvar_set_match(const char *match, const char *val)
>  	}
>  }
>  
> +void globalvar_set_single(const char *match, const char *val)
> +{
> +	struct param_d *param;
> +
> +	list_for_each_entry(param, &global_device.parameters, list) {
> +		if (!strncmp(match, param->name, strlen(match))
> +		    && strlen(match) == strlen(param->name))

What's the difference between this construct and plain strcmp()?

> +			dev_set_param(&global_device, param->name, val);

And then, why not call dev_set_param directly with "match" as argument?

I would rename "match" to "name" as it describes a single variable name.
Also "globalvar_set" is IMO enough as a function name.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
