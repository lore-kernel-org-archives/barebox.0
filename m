Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jvPvf-0006Kx-4J
 for barebox@lists.infradead.org; Tue, 14 Jul 2020 18:45:23 +0000
References: <20200711090203.498881-1-ahmad@a3f.at>
 <20200714183713.GW15485@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <47d0f439-8451-4b8e-83b6-acbd16d680e4@pengutronix.de>
Date: Tue, 14 Jul 2020 20:45:19 +0200
MIME-Version: 1.0
In-Reply-To: <20200714183713.GW15485@pengutronix.de>
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
Subject: Re: [PATCH 1/2] ARM: at91: dts: sama5d27-som1: adapt to upstream
 partition layout
To: Sascha Hauer <s.hauer@pengutronix.de>, Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org



On 7/14/20 8:37 PM, Sascha Hauer wrote:
> On Sat, Jul 11, 2020 at 11:02:02AM +0200, Ahmad Fatoum wrote:
>> Linux v5.8-rc1 adds partitions to the flash@0 node, which now overlap
>> with the partitions we define and resulting in errors:
>>
>>   ERROR: m25p0.barebox: New partition m25p0.barebox conflicts
>> 	with m25p0.at91bootstrap
>>   ERROR: m25p0.barebox-environment: New partition
>>   	m25p0.barebox-environment conflicts with m25p0.bootloader
>>
>> We don't want to reuse those partitions as their name may and probably
>> will change (they have leading zeroes in the unit address).
>> We could use the &{/path/to/partition} syntax, but that might be broken
>> soon as well, as the nodes aren't inside a partitions node with a
>> "fixed-partitions" compatible.
>> The busses also don't align with the yaml schema and might be renamed.
>>
>> Nuke the full flash@0 node and supply ours and avoid these problems.
>> The offsets of the partitions have been adjusted to coincide with the
>> upstream offsets for second stage bootloader and environment.
>>
>> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
>> ---
>> Hello Sascha,
>>
>> The brekage doesn't seem to end..
>> if possible please reorder before v5.8-rc1 dts/ sync.
>> ---
> 
> I haven't reordered it, please see if you are happy with the result
> anyway. It looks like I would have to put the whole at91 stack before
> the dts updates, I rather don't do that.

Ah, I missed that they don't apply cleanly.
Well, I think it's ok. Only environment will be broken between these
two comments.

> 
> Regards,
>  Sascha
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
