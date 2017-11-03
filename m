Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eAX6I-0005vY-7G
 for barebox@lists.infradead.org; Fri, 03 Nov 2017 08:13:16 +0000
Date: Fri, 3 Nov 2017 09:12:50 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20171103081250.iwd7wtb4ywabaxjy@pengutronix.de>
References: <1509626565-3722-1-git-send-email-d.schultz@phytec.de>
 <1509626565-3722-4-git-send-email-d.schultz@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1509626565-3722-4-git-send-email-d.schultz@phytec.de>
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
Subject: Re: [PATCH v2 4/6] common: state: Add variable_type to state_variable
To: Daniel Schultz <d.schultz@phytec.de>
Cc: barebox@lists.infradead.org

On Thu, Nov 02, 2017 at 01:42:43PM +0100, Daniel Schultz wrote:
> Add a pointer in state_variable to the corresponding variable_type array
> element.
> 
> Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
> ---
> Changes:
> 	v2: New patch
> 
>  common/state/state.h           | 1 +
>  common/state/state_variables.c | 5 +++++
>  2 files changed, 6 insertions(+)
> 
> diff --git a/common/state/state.h b/common/state/state.h
> index 81aaec2..14b54aa 100644
> --- a/common/state/state.h
> +++ b/common/state/state.h
> @@ -132,6 +132,7 @@ struct variable_type {
>  struct state_variable {
>  	struct state *state;
>  	struct list_head list;
> +	struct variable_type *type;
>  	const char *name;
>  	unsigned int start;
>  	unsigned int size;
> diff --git a/common/state/state_variables.c b/common/state/state_variables.c
> index 56bcd95..e6571be 100644
> --- a/common/state/state_variables.c
> +++ b/common/state/state_variables.c
> @@ -116,6 +116,7 @@ static struct state_variable *state_uint8_create(struct state *state,
>  	}
>  
>  	su32->param = param;
> +	su32->var.type = state_find_type_by_name("uint8");

Please pass the struct variable_type * into the ->create callback. It is
known by the caller, so we can easily avoid iterating over the array of
types again.

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
