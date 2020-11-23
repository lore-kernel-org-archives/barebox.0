Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1khEng-00084h-8V
 for barebox@lists.infradead.org; Mon, 23 Nov 2020 16:34:49 +0000
Date: Mon, 23 Nov 2020 17:34:44 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20201123163444.GG24489@pengutronix.de>
References: <20201113141607.1957779-1-robin@protonic.nl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201113141607.1957779-1-robin@protonic.nl>
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
Subject: Re: [PATCH] hab: habv4: Don't reset index when checking for more
 events
To: Robin van der Gracht <robin@protonic.nl>
Cc: barebox@lists.infradead.org, Rouven Czerwinski <r.czerwinski@pengutronix.de>

Hi Robin,

On Fri, Nov 13, 2020 at 03:16:07PM +0100, Robin van der Gracht wrote:
> If index is reset and the event record pointer is NULL the size of the
> indexed event will be written to 'len'.
> 
> Currently this results in always printing the buffer overflow error if
> there is a HAB event. The index shouldn't be reset to get the size of the
> 'next' unhandled event. This can occur if there are more events of a single
> type than the event buffer (data) can hold.
> 
> Telling the user to recompile with an incomplete additional size
> suggestion seems useless so I changed it to something more generic.
> 
> Signed-off-by: Robin van der Gracht <robin@protonic.nl>
> ---
>  drivers/hab/habv4.c | 11 ++++++-----
>  1 file changed, 6 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/hab/habv4.c b/drivers/hab/habv4.c
> index e94f82754..3df1d8d3d 100644
> --- a/drivers/hab/habv4.c
> +++ b/drivers/hab/habv4.c
> @@ -504,7 +504,7 @@ static int habv4_get_status(const struct habv4_rvt *rvt)
>  {
>  	uint8_t data[256];
>  	uint32_t len;
> -	uint32_t index = 0;
> +	uint32_t cnt, index = 0;
>  	enum hab_status status;
>  	enum hab_config config = 0x0;
>  	enum hab_state state = 0x0;
> @@ -540,6 +540,7 @@ static int habv4_get_status(const struct habv4_rvt *rvt)
>  		len = sizeof(data);
>  		index++;
>  	}
> +	cnt = index;
>  
>  	len = sizeof(data);
>  	index = 0;
> @@ -551,12 +552,12 @@ static int habv4_get_status(const struct habv4_rvt *rvt)
>  		len = sizeof(data);
>  		index++;
>  	}
> +	cnt += index;
>  
> -	/* Check reason for stopping */
> +	/* Check if there are more events */
>  	len = sizeof(data);
> -	index = 0;
> -	if (rvt->report_event(HAB_STATUS_ANY, index, NULL, &len) == HAB_STATUS_SUCCESS)
> -		pr_err("ERROR: Recompile with larger event data buffer (at least %d bytes)\n\n", len);

You are right, this is wrong. This call will always return
HAB_STATUS_SUCCESS and return the length of the message in len.
So yes, this message is always printed which doesn't make sense.

I think that this whole stuff could be imrpoved. First of all semantics
of the report_event function is meant in a way that first a NULL pointer
is used for the buffer so that the function reports the number of bytes
needed for this event. In the second pass it can be called with a buffer
of exactly this length.
Second I don't think it's good to separate the events parsing into
HAB_STATUS_ERROR and HAB_STATUS_WARNING. If we call report_event with
HAB_STATUS_ANY instead we'll get the events in the order they occured
which probably better helps to make sense of the events.

I've prepared a patch for this, but I currently can't test it, so it
would be great if you could give it a shot. I'll send it out in a
moment.

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
