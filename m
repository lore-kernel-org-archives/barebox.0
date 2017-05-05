Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx1.emlix.com ([46.4.235.150])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d6df3-0005Wr-Q9
 for barebox@lists.infradead.org; Fri, 05 May 2017 13:52:48 +0000
References: <af0065c8-141d-dce0-11bf-1aca9c46d73c@emlix.com>
 <20170503121324.qguy2tsch7gepob7@pengutronix.de>
From: Andreas Wilhelm <andreas.wilhelm@emlix.com>
Message-ID: <9d5f2e1b-c065-8969-14fb-3cf309b580d9@emlix.com>
Date: Fri, 5 May 2017 15:52:22 +0200
MIME-Version: 1.0
In-Reply-To: <20170503121324.qguy2tsch7gepob7@pengutronix.de>
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
Subject: Re: barebox-state setup
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 05/03/2017 02:13 PM, Sascha Hauer wrote:
> On Tue, May 02, 2017 at 03:24:10PM +0200, Andreas Wilhelm wrote:
>> Hello,
>>
>> I am using barebox state to exchange data between barebox and linux. From barebox I can access and change the state without any problems. If I try to access the state using the barebox-state util included with dt-utils (v2017.03.0), I get the following error:
>>
>>> # barebox-state -g myvar
>>> of_get_devicepath: no 'label' property found in /soc/aips-bus@02000000/spba-bus@02000000/ecspi@02008000/m25p80@0
>>> Cannot find backend path in /state
>> This problem does not occur when using version 2016.08.0 of dt-utils. However, in this version I experienced an other problem. Even with backend-storage-type set to "circular" barebox attempted to storte data in "direct" mode:
>>
>>> WARNING, no stridesize given although we use a direct file
>>> write. Starting in degraded mode
>>> Failed to initialize desired amount of direct buckets, only 1 of 3
>>> succeeded
>> Furthermore changing the state from within barebox worked just fine, while changing it using dt-utils from within a booted linux didn't.
>>
>> The barebox state is stored in NOR-flash and configured in barebox as followed:
>>
>>> state: state {
>>>     magic = <0x27031977>;
>>>     compatible = "barebox,state";
>>>     backend-type = "raw";
>>>     backend = &flash, "partname:barebox-state";
> Please use "backend = &barebox_state;" with a partition like this:
>
> barebox_state: partition@0 {
> 	reg = <0x0 0x40000>;
> };
>
>> Within the linux kernel I use the following configuration
> Note that barebox will rewrite the state node in the device tree passed
> to Linux to make sure that both are consistent. You do not need to add a
> state node to the Linux device tree manually. Unfortunately the
> rewriting of the device node does not work correctly if you use the
> "partname:" binding above in barebox.
>
> Sascha
>
Thanks for your fast reply.

Removing the state definition from the linux device tree and changing the backend definition stopped barebox and dt-utils from complaining about a bad state backend. However, now I am facing a strange error.

I am able to read and change the barebox state from within barebox and changes are reflected when reading from within barebox and linux. When changing the state using dt-utils, the change is persistent between reboots, but cannot be seen from within barebox.

Example:

// State myvar initialized with A by default

state.myvar=B; state -s
=> Barebox: echo $state.myvar // myvar=B
=> Linux: barebox-state -g myvar // myvar=B

barebox-state -s myvar=C
=> Barebox: echo $state.myvar // myvar=B
=> Linux: barebox-state -g myvar // myvar=C

This looks to me like dt-utils reading and writing only one of the state copies, while the barebox internal code maintains all copies.

Ideas, opinions ?

Best regards
Andreas

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
