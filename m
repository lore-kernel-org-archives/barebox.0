Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kawVt-0006EB-Qp
 for barebox@lists.infradead.org; Fri, 06 Nov 2020 07:50:26 +0000
References: <VI1PR0802MB2334314CB7FA7F0BD64F9C8885EE0@VI1PR0802MB2334.eurprd08.prod.outlook.com>
 <1a23e2f4-8b3a-f084-888e-4756d60d92fb@pengutronix.de>
 <VI1PR0802MB23341F701DE8044E149A232785ED0@VI1PR0802MB2334.eurprd08.prod.outlook.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <5e32bffb-8fc8-c242-a7fc-f3ce15a7cafa@pengutronix.de>
Date: Fri, 6 Nov 2020 08:50:23 +0100
MIME-Version: 1.0
In-Reply-To: <VI1PR0802MB23341F701DE8044E149A232785ED0@VI1PR0802MB2334.eurprd08.prod.outlook.com>
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
Subject: Re: AW: [PATCH] Documentation: state: add a little note about
 modifying a state variable in the frontend
To: Matthias Fend <Matthias.Fend@wolfvision.net>, "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hello Matthias,

On 11/6/20 8:14 AM, Matthias Fend wrote:
>> Von: Ahmad Fatoum <a.fatoum@pengutronix.de>
>>
>> That's wrong. You set the value of a state variable with
>> state.foo=bar. nv dev.state.state.foo=bar uses the _environment_ to
>> save a value to write to state.foo on each boot. This means:
> 
> Thanks for your explanation. Setting a state variable with
> 'state.foo=bar' was actually the way I originally expected.
> Meanwhile, I figured out why I was struggling using things like that.
> All my introduced state variables contained a hyphen in their name.
> And I was not able to set a state variable with 'state.foo-bar=baz' while
> 'nv dev.state.foo-bar=baz' immediately changed the value of
> 'state.foo-bar'. But, as I just learned, with some side effects.
> 
>>
>>   - If you modify the variable from within barebox, it won't be visible
>>     in Linux unless you boot barebox once again.
> 
> I could not verify this behavior. When I change a state variable with
> 'nv dev.state=foo' and then directly boot into Linux (without booting
> barebox again) the 'barebox-state' tool already displays the new value.

Ah, I didn't actually test what I say :D
But makes sense, nv.user sets global.user as well, so why should dev
parameter behave differently.
 
>>   - If you modify the variable from within Linux, nv.dev.state.state.foo
>>     would just overwrite the existing value on the next barebox boot.
> 
> That's true, and of course, not desired.

At least one guess correct ^^

>> Generally, you should only need to modify nv variables at runtime
>> for debugging. nv.dev is meant for stuff like nv.dev.eth0.ethaddr=XX:XX:XX:XX:XX:XX,
>> where you can just hard code a mac address to use, but for state I can't
>> think of any good use cases at the moment.
> 
> Right, state, and also it's frontend, does already what it should do and
> as expected.
> Only the hyphen-obstacle caused troubles. So, maybe there is a trick but the fast fix is to simply
> just avoid names that contain hyphens ;)

v2020.10.0 contains 932481a005cc ("commands: setenv: allow use with hush shell"). You can update/
cherry-pick and then use the setenv command instead out of your hush scripts.

Cheers
Ahmad

> 
> Thanks,
>   ~Matthias
> 
> 
>>
>>>   ``state -s`` stores the *state* to the backend device.
>>>
>>
>> --
>> Pengutronix e.K.                           |                             |
>> Steuerwalder Str. 21                       | https://eur04.safelinks.protection.outlook.com/?url=http%3A%2F%2Fwww.pengutronix.de%2F&amp;data=04%7C01%7CMatthias.Fend%40wolfvision.net%7C264e50c95bc64c72ac6c08d882229f76%7Ce94ec9da9183471e83b351baa8eb804f%7C0%7C0%7C637402432501383585%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&amp;sdata=dKzSGReGqacxdJcKZ6eldNiulqmv6%2B8qzQxhijoRbC4%3D&amp;reserved=0  |
>> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
>>

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
