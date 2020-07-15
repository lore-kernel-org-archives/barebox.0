Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jvhub-0006Gd-8Y
 for barebox@lists.infradead.org; Wed, 15 Jul 2020 13:57:30 +0000
References: <20200715101042.29944-1-o.rempel@pengutronix.de>
 <20200715101042.29944-4-o.rempel@pengutronix.de>
 <8c21cf799ad857209c795b5db79efc476adf924f.camel@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <70e33722-d124-257a-f786-d7c64a11351c@pengutronix.de>
Date: Wed, 15 Jul 2020 15:57:26 +0200
MIME-Version: 1.0
In-Reply-To: <8c21cf799ad857209c795b5db79efc476adf924f.camel@pengutronix.de>
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
Subject: Re: [PATCH v2 3/3] devinfo: do not dump the device node for the root
 node
To: Lucas Stach <l.stach@pengutronix.de>, Oleksij Rempel <o.rempel@pengutronix.de>, barebox@lists.infradead.org
Cc: david@protonic.nl


On 7/15/20 2:35 PM, Lucas Stach wrote:
> Am Mittwoch, den 15.07.2020, 12:10 +0200 schrieb Oleksij Rempel:
>> In case the device is a root node, then do not dump it. Otherwise it will be a
>> mess.
> 
> This is waaay too unspecific for a commit message. What happens without
> this patch and how does this patch fix it?

While at it, you could move this patch here to the series start, so bisection can't
end on a patch with the messy devinfo output.

> 
> Regards,
> Lucas
> 
>> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
>> ---
>>  commands/devinfo.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/commands/devinfo.c b/commands/devinfo.c
>> index 81956b1cc0..018a7c4167 100644
>> --- a/commands/devinfo.c
>> +++ b/commands/devinfo.c
>> @@ -99,7 +99,7 @@ static int do_devinfo(int argc, char *argv[])
>>  			printf("\n");
>>  		}
>>  #ifdef CONFIG_OFDEVICE
>> -		if (dev->device_node) {
>> +		if (dev->device_node && dev->device_node != of_get_root_node()) {
>>  			printf("Device node: %s\n", dev->device_node->full_name);
>>  			of_print_nodes(dev->device_node, 0);
>>  		}
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
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
