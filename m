Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eAXCo-0001GJ-54
 for barebox@lists.infradead.org; Fri, 03 Nov 2017 08:20:00 +0000
Date: Fri, 3 Nov 2017 09:19:36 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20171103081936.egja7mwd4arkvj2m@pengutronix.de>
References: <1509626565-3722-1-git-send-email-d.schultz@phytec.de>
 <1509626565-3722-5-git-send-email-d.schultz@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1509626565-3722-5-git-send-email-d.schultz@phytec.de>
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
Subject: Re: [PATCH v2 5/6] common: state: Add function to read state MAC
To: Daniel Schultz <d.schultz@phytec.de>
Cc: barebox@lists.infradead.org

On Thu, Nov 02, 2017 at 01:42:44PM +0100, Daniel Schultz wrote:
> This API function allows to receive a copy of a MAC address from
> variables in a state.
> 
> Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
> ---
> Changes:
> 	v2: New patch
> 
>  common/state/state.c | 23 +++++++++++++++++++++++
>  include/state.h      |  2 ++
>  2 files changed, 25 insertions(+)
> 
> diff --git a/common/state/state.c b/common/state/state.c
> index 266d211..063e03e 100644
> --- a/common/state/state.c
> +++ b/common/state/state.c
> @@ -693,6 +693,29 @@ int state_get_name(const struct state *state, char const **name)
>  	return 0;
>  }
>  
> +int state_read_mac(struct state *state, const char *name, u8 *buf)
> +{
> +	struct state_variable *svar;
> +	struct state_mac *mac;
> +	int i;
> +
> +	if (!state || !name || !buf)
> +		return -EINVAL;
> +
> +	svar = state_find_var(state, name);
> +	if (IS_ERR(svar))
> +		return PTR_ERR(svar);
> +
> +	if (!strcmp(svar->type->type_name, "mac")) {

Could you add a patch before this one that adds a

enum state_variable_type {
	STATE_VARIABLE_TYPE_UINT8,
	...
};

Then add the type to struct variable_type and test for the type
rather than for the string name? I think in the longer run this will be
nicer when we get additional tests for the variable_type.

> +		mac = to_state_mac(svar);
> +		for (i = 0; i < 6; i++)
> +			buf[i] = mac->value[i];

memcpy?

> +		return 6;

So '6' is the return value for successfully calling this function. This
is the length of the MAC Address, but does this add any value? Better
use a negative error code and '0' for success.

Sascha

> +	}
> +
> +	return 0;
> +}
> +

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
