Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-db8eur05on2081.outbound.protection.outlook.com
 ([40.107.20.81] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kavwq-0002qw-NK
 for barebox@lists.infradead.org; Fri, 06 Nov 2020 07:14:14 +0000
From: Matthias Fend <Matthias.Fend@wolfvision.net>
Date: Fri, 6 Nov 2020 07:14:09 +0000
Message-ID: <VI1PR0802MB23341F701DE8044E149A232785ED0@VI1PR0802MB2334.eurprd08.prod.outlook.com>
References: <VI1PR0802MB2334314CB7FA7F0BD64F9C8885EE0@VI1PR0802MB2334.eurprd08.prod.outlook.com>,
 <1a23e2f4-8b3a-f084-888e-4756d60d92fb@pengutronix.de>
In-Reply-To: <1a23e2f4-8b3a-f084-888e-4756d60d92fb@pengutronix.de>
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
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi Ahmad,

> ________________________________________
> Von: Ahmad Fatoum <a.fatoum@pengutronix.de>
> Gesendet: Donnerstag, 5. November 2020 21:57
> An: Matthias Fend; barebox@lists.infradead.org
> Betreff: Re: [PATCH] Documentation: state: add a little note about modifying a state variable in the frontend
>
> Hello Matthias,
>
> On 11/5/20 9:16 PM, Matthias Fend wrote:
>> Signed-off-by: Matthias Fend <matthias.fend@wolfvision.net>
>> ---
>>   Documentation/user/state.rst | 1 +
>>   1 file changed, 1 insertion(+)
>>
>> diff --git a/Documentation/user/state.rst b/Documentation/user/state.rst
>> index 78ce24f..d9a8e76 100644
>> --- a/Documentation/user/state.rst
>> +++ b/Documentation/user/state.rst
>> @@ -689,4 +689,5 @@ be accessed like normal shell variables. The ``state`` command is used
>>   to save/restore a *state* variable set to the backend device.
>>
>>   After initializing the variable can be accessed with ``$state.foo``.
>> +To modify the value of a state variable use ``nv dev.state.foo=bar``.
>
> That's wrong. You set the value of a state variable with
> state.foo=bar. nv dev.state.state.foo=bar uses the _environment_ to
> save a value to write to state.foo on each boot. This means:

Thanks for your explanation. Setting a state variable with
'state.foo=bar' was actually the way I originally expected.
Meanwhile, I figured out why I was struggling using things like that.
All my introduced state variables contained a hyphen in their name.
And I was not able to set a state variable with 'state.foo-bar=baz' while
'nv dev.state.foo-bar=baz' immediately changed the value of
'state.foo-bar'. But, as I just learned, with some side effects.

>
>   - If you modify the variable from within barebox, it won't be visible
>     in Linux unless you boot barebox once again.

I could not verify this behavior. When I change a state variable with
'nv dev.state=foo' and then directly boot into Linux (without booting
barebox again) the 'barebox-state' tool already displays the new value.

>   - If you modify the variable from within Linux, nv.dev.state.state.foo
>     would just overwrite the existing value on the next barebox boot.

That's true, and of course, not desired.

>
> Generally, you should only need to modify nv variables at runtime
> for debugging. nv.dev is meant for stuff like nv.dev.eth0.ethaddr=XX:XX:XX:XX:XX:XX,
> where you can just hard code a mac address to use, but for state I can't
> think of any good use cases at the moment.

Right, state, and also it's frontend, does already what it should do and
as expected.
Only the hyphen-obstacle caused troubles. So, maybe there is a trick but the fast fix is to simply
just avoid names that contain hyphens ;)

Thanks,
  ~Matthias


>
>>   ``state -s`` stores the *state* to the backend device.
>>
>
> --
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | https://eur04.safelinks.protection.outlook.com/?url=http%3A%2F%2Fwww.pengutronix.de%2F&amp;data=04%7C01%7CMatthias.Fend%40wolfvision.net%7C264e50c95bc64c72ac6c08d882229f76%7Ce94ec9da9183471e83b351baa8eb804f%7C0%7C0%7C637402432501383585%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&amp;sdata=dKzSGReGqacxdJcKZ6eldNiulqmv6%2B8qzQxhijoRbC4%3D&amp;reserved=0  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
>
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
