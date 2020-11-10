Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-eopbgr40057.outbound.protection.outlook.com ([40.107.4.57]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kcUKj-0006aX-9E
 for barebox@lists.infradead.org; Tue, 10 Nov 2020 14:09:18 +0000
From: Matthias Fend <Matthias.Fend@wolfvision.net>
Date: Tue, 10 Nov 2020 14:09:09 +0000
Message-ID: <VI1PR0802MB2334B4E7F68FB08CA08DD38885E90@VI1PR0802MB2334.eurprd08.prod.outlook.com>
References: <VI1PR0802MB2334314CB7FA7F0BD64F9C8885EE0@VI1PR0802MB2334.eurprd08.prod.outlook.com>
 <1a23e2f4-8b3a-f084-888e-4756d60d92fb@pengutronix.de>
 <VI1PR0802MB23341F701DE8044E149A232785ED0@VI1PR0802MB2334.eurprd08.prod.outlook.com>,
 <20201109091151.GG29830@pengutronix.de>
In-Reply-To: <20201109091151.GG29830@pengutronix.de>
Content-Language: de-DE
MIME-Version: 1.0
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
Subject: AW: [PATCH] Documentation: state: add a little note about modifying a
 state variable in the frontend
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>, Ahmad Fatoum <a.fatoum@pengutronix.de>

Hi Sascha,

> ________________________________________
> Von: Sascha Hauer <s.hauer@pengutronix.de>
> Gesendet: Montag, 9. November 2020 10:11
> An: Matthias Fend
> Cc: Ahmad Fatoum; barebox@lists.infradead.org
> Betreff: Re: [PATCH] Documentation: state: add a little note about modifying a state variable in the frontend
> 
> On Fri, Nov 06, 2020 at 07:14:09AM +0000, Matthias Fend wrote:
>> Hi Ahmad,
>>
>>> ________________________________________
>>> Von: Ahmad Fatoum <a.fatoum@pengutronix.de>
>>> Gesendet: Donnerstag, 5. November 2020 21:57
>>> An: Matthias Fend; barebox@lists.infradead.org
>>> Betreff: Re: [PATCH] Documentation: state: add a little note about modifying a state variable in the frontend
>>>
>>> Hello Matthias,
>>>
>>> On 11/5/20 9:16 PM, Matthias Fend wrote:
>>>> Signed-off-by: Matthias Fend <matthias.fend@wolfvision.net>
>>>> ---
>>>>    Documentation/user/state.rst | 1 +
>>>>    1 file changed, 1 insertion(+)
>>>>
>>>> diff --git a/Documentation/user/state.rst b/Documentation/user/state.rst
>>>> index 78ce24f..d9a8e76 100644
>>>> --- a/Documentation/user/state.rst
>>>> +++ b/Documentation/user/state.rst
>>>> @@ -689,4 +689,5 @@ be accessed like normal shell variables. The ``state`` command is used
>>>>    to save/restore a *state* variable set to the backend device.
>>>>
>>>>    After initializing the variable can be accessed with ``$state.foo``.
>>>> +To modify the value of a state variable use ``nv dev.state.foo=bar``.
>>>
>>> That's wrong. You set the value of a state variable with
>>> state.foo=bar. nv dev.state.state.foo=bar uses the _environment_ to
>>> save a value to write to state.foo on each boot. This means:
>>
>> Thanks for your explanation. Setting a state variable with
>> 'state.foo=bar' was actually the way I originally expected.
>> Meanwhile, I figured out why I was struggling using things like that.
>> All my introduced state variables contained a hyphen in their name.
>> And I was not able to set a state variable with 'state.foo-bar=baz' while
>> 'nv dev.state.foo-bar=baz' immediately changed the value of
>> 'state.foo-bar'. But, as I just learned, with some side effects.
>>
>>>
>>>    - If you modify the variable from within barebox, it won't be visible
>>>      in Linux unless you boot barebox once again.
>>
>> I could not verify this behavior. When I change a state variable with
>> 'nv dev.state=foo' and then directly boot into Linux (without booting
>> barebox again) the 'barebox-state' tool already displays the new value.
>>
>>>    - If you modify the variable from within Linux, nv.dev.state.state.foo
>>>      would just overwrite the existing value on the next barebox boot.
>>
>> That's true, and of course, not desired.
>>
>>>
>>> Generally, you should only need to modify nv variables at runtime
>>> for debugging. nv.dev is meant for stuff like nv.dev.eth0.ethaddr=XX:XX:XX:XX:XX:XX,
>>> where you can just hard code a mac address to use, but for state I can't
>>> think of any good use cases at the moment.
>>
>> Right, state, and also it's frontend, does already what it should do and
>> as expected.
>> Only the hyphen-obstacle caused troubles. So, maybe there is a trick but the fast fix is to simply
>> just avoid names that contain hyphens ;)
> 
> How about converting the hyphens to underscores for the variable names
> (I mean in code, not in your dts files)?

Things are clearer to me now. Since most shells do not allow variable names that contain such characters, one could also guess that the shell integration does not work for such state variables.

Changing the variable name automatically would work, but since this is just a workaround, I don't know if this is a good idea.
And this might also break some existing stuff.

Since the names of the state variables can be chosen freely, I still think it is better to just avoid "bad" characters. After adding new status variables, these will most likely be tested by playing around in the Barebox console. This is where you will find out at the latest that you did something wrong.

Maybe an improvement would be to leave a note in the chapter "Variable subnodes".

Thanks,
 ~Matthias

> 
> Sascha
> 
> --
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | https://eur04.safelinks.protection.outlook.com/?url=http%3A%2F%2Fwww.pengutronix.de%2F&amp;data=04%7C01%7Cmatthias.fend%40wolfvision.net%7C0f554bd59a134feed96d08d8848f7f74%7Ce94ec9da9183471e83b351baa8eb804f%7C0%7C0%7C637405099148599343%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&amp;sdata=w%2FNxxu9TUXOPR3m8FWqSNxJBrgUqvTj%2F6IW6OmFWNQc%3D&amp;reserved=0  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
