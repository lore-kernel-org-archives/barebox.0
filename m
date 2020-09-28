Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kMvjx-00047J-S8
 for barebox@lists.infradead.org; Mon, 28 Sep 2020 16:11:02 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>) id 1kMvjw-000460-Nz
 for barebox@lists.infradead.org; Mon, 28 Sep 2020 18:11:00 +0200
References: <20200928155041.32649-1-m.felsch@pengutronix.de>
 <20200928155041.32649-8-m.felsch@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <5d920605-b570-058e-180c-ab314b8abcef@pengutronix.de>
Date: Mon, 28 Sep 2020 18:11:00 +0200
MIME-Version: 1.0
In-Reply-To: <20200928155041.32649-8-m.felsch@pengutronix.de>
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
Subject: Re: [PATCH 07/18] regulator: test of_regulator_register input before
 accessing it
To: barebox@lists.infradead.org



On 9/28/20 5:50 PM, Marco Felsch wrote:
> Add simple parameter check to avoid possible NULL pointer dereferences.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>

For patches 05,06,07:

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>


> ---
>  drivers/regulator/core.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/regulator/core.c b/drivers/regulator/core.c
> index a767e383fb..6ea21a4609 100644
> --- a/drivers/regulator/core.c
> +++ b/drivers/regulator/core.c
> @@ -163,6 +163,9 @@ int of_regulator_register(struct regulator_dev *rd, struct device_node *node)
>  	struct regulator_internal *ri;
>  	const char *name;
>  
> +	if (!rd || !node)
> +		return -EINVAL;
> +
>  	rd->boot_on = of_property_read_bool(node, "regulator-boot-on");
>  
>  	name = of_get_property(node, "regulator-name", NULL);
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
