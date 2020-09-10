Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kGICR-0000j3-Ey
 for barebox@lists.infradead.org; Thu, 10 Sep 2020 08:45:00 +0000
References: <20200909193650.347646-1-trent.piepho@synapse.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <8debe2fb-d16a-856d-8d95-631964c56d94@pengutronix.de>
Date: Thu, 10 Sep 2020 10:44:55 +0200
MIME-Version: 1.0
In-Reply-To: <20200909193650.347646-1-trent.piepho@synapse.com>
Content-Language: en-US
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
Subject: Re: [PATCH 1/4] aiodev: Name channels with device instance name
To: Trent Piepho <trent.piepho@synapse.com>, barebox@lists.infradead.org

Hi,

On 9/9/20 9:36 PM, Trent Piepho wrote:
> When dynamically assigning device names, an aiodev's name will be
> "aiodev" and an index, not part of the name string itself, will be
> allocated dynamically.  These are combined to register a device with a
> name like "aiodev0" or "aiodev1".
> 
> The shell environment variables use the device name, so one might use
> "${aiodev0.in_value0_mV}" and "${aiodev1.in_value0_mV}".
> 
> However, the channel names that are used with aiochannel_get_by_name()
> just use the aiodev's name and channel name.  So channel 0 of the 1st
> aiodev would be "aiodev.in_value0_mV" and the 2nd aiodev would use the
> same name.
> 
> Change the channel naming to use the device instance name, e.g.
> "aiodev0", rather than the aiodev's base name.  This makes the names
> used aiochannel_get_by_name() match the environment variable names and
> also avoids duplicate names with more than one dynamically allocated
> aiodev.

sounds good, but that would silently break existing users, wouldn't i?
There are none in-tree, but I assume there are some in external patch
stacks, otherwise the function would've not been added.

These patch stacks would rebase cleanly and build successfully, but
still be runtime broken. Would it makes sense to rename
aiochannel_get_by_name() because the API changed?

> 
> Signed-off-by: Trent Piepho <trent.piepho@synapse.com>
> ---
>  drivers/aiodev/core.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/aiodev/core.c b/drivers/aiodev/core.c
> index b8428346a..7d9170d2d 100644
> --- a/drivers/aiodev/core.c
> +++ b/drivers/aiodev/core.c
> @@ -131,7 +131,7 @@ int aiodevice_register(struct aiodevice *aiodev)
>  				  aiochannel_param_get_value,
>  				  &aiochan->value, "%d", aiochan);
>  
> -		aiochan->name = xasprintf("%s.%s", aiodev->name, name);
> +		aiochan->name = xasprintf("%s.%s", dev_name(&aiodev->dev), name);
>  
>  		free(name);
>  	}
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
