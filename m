Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k5vHZ-00053H-B6
 for barebox@lists.infradead.org; Wed, 12 Aug 2020 18:15:26 +0000
References: <20200812085552.12688-1-o.rempel@pengutronix.de>
 <96efaeac-1ad4-b869-7ebf-c43a67d2358d@pengutronix.de>
 <20200812151351.rvhjjymyzaezz7kd@pengutronix.de>
 <b2c40e80-946d-ede0-97b2-b0a1d4dccace@pengutronix.de>
 <20200812161109.66jgmksevsru3w5c@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <8face7c6-f022-797d-af37-b2b66e6eb255@pengutronix.de>
Date: Wed, 12 Aug 2020 20:15:21 +0200
MIME-Version: 1.0
In-Reply-To: <20200812161109.66jgmksevsru3w5c@pengutronix.de>
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

Hi,

On 8/12/20 6:11 PM, Oleksij Rempel wrote:
>>> dt is used to make clear: it is root of dt and not some random root of
>>> what ever.
>>
>> It's redundant, there is already a .of suffix.
>> I like machine.of more though.

Makes me think. If we have a top level "dt-root" node,
won't this clash?


>> Do you have any examples of oftree resources for the root node?
> 
> Do you have any example of the root node used as device?

I am asking about an example of this particular usage in the root node
in device tree sources or bindings. You are asking about handling of the
device tree root node in the barebox device/driver model.

I don't see how that addresses my question.

>> I'd rather not litter core code with an if-clause that evaluates to
>> true only once,
> 
> How many ifs are added in this patch and how many ifs will by added by
> your suggestion? 

Mine adds none.

>> to support your (IMHO wrong)  use of a helper.
> 
> Interesting change of conversation. Please stay technical.

My technical opinion is that the helper is wrongly used.

>> of_device_make_bus_id is taken from Linux and does per comment:
>>
>> This routine will first try using the translated bus address to
>> derive a unique name. If it cannot, then it will prepend names from
>> parent nodes until a unique name can be derived.
>>
>> IMO, it should stay that way.
> 
> Ok, i'll send a patch to rename of_device_make_bus_id to of_device_make_id.
> In this case it will reflect new reality and keep the code readable.
> 
> If you have arguments in following topics:
> - it will significantly affect performance
> - it will affect size of executable
> - it will affect maintainability
> 
> Please use them

Shouldn't you be the one who argues in favor of his code?

It's ultimately Sascha's choice what to merge. To me this is
poor code, check my previous arguments.

Cheers,
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
