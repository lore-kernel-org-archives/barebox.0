Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k5soo-0002DR-Bs
 for barebox@lists.infradead.org; Wed, 12 Aug 2020 15:37:35 +0000
References: <20200812085552.12688-1-o.rempel@pengutronix.de>
 <96efaeac-1ad4-b869-7ebf-c43a67d2358d@pengutronix.de>
 <20200812151351.rvhjjymyzaezz7kd@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <b2c40e80-946d-ede0-97b2-b0a1d4dccace@pengutronix.de>
Date: Wed, 12 Aug 2020 17:37:33 +0200
MIME-Version: 1.0
In-Reply-To: <20200812151351.rvhjjymyzaezz7kd@pengutronix.de>
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
Subject: Re: [PATCH fixup v1] of: base: register DT root as device
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org

Hello,

On 8/12/20 5:13 PM, Oleksij Rempel wrote:
>>> +		dev_set_name(dev, "dt-root.of");
>>
>> Couldn't we drop the dt-? just let it be root.of.
>> dashes make use of device parameters less convenient should we
>> want to use those in future IIRC.
> 
> dt is used to make clear: it is root of dt and not some random root of
> what ever.

It's redundant, there is already a .of suffix.
I like machine.of more though.

>> of_platform_device_create does:
>>
>> [-] check if device is available: not applicable to root node
>> [-] populate io resources: not applicable to root node
>> [-] use of_device_make_bus_id to get a name: not applicable to root node (prior to this patch)
>> [-] configure dma: not applicable to root node
>> [x] call platform_device_register
> 
> You make this assumption, just because this node has no parents?
> Does it means, a parent less child may have no resources to do some work?
> You should be ashamed of yourself! :D
> 
> But really, what prevents you to assign board specific resource to a
> root node. It is just node as many others.

It makes no sense for the root node to have resources.
What is a machine-wide interrupt? Or a machine-wide MMIO region?
What size would that region even have, when you have no parent
bus that defines address/size cells?

Do you have any examples of oftree resources for the root node?

I'd rather not litter core code with an if-clause that evaluates to
true only once, to support your (IMHO wrong) use of a helper.

of_device_make_bus_id is taken from Linux and does per comment:

This routine will first try using the translated bus address to
derive a unique name. If it cannot, then it will prepend names from
parent nodes until a unique name can be derived.

IMO, it should stay that way.

Cheers
Ahmad


> 
> Regards,
> Oleksij
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
