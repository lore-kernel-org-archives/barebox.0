Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQpdP-0005iX-Bb
 for barebox@lists.infradead.org; Wed, 15 May 2019 08:51:36 +0000
References: <20190219141647.2537-1-a.fatoum@pengutronix.de>
 <20190219141647.2537-3-a.fatoum@pengutronix.de>
 <20190220101412.5032124aaf26a799c903ec9f@gmail.com>
 <7475eecb-5e8e-a827-f04e-b3d8d749edaf@pengutronix.de>
 <20190304102656.33754174e40b8cfa63f2d28a@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <2bd98823-d0bc-c811-2b6e-a8ebc5d65307@pengutronix.de>
Date: Wed, 15 May 2019 10:51:31 +0200
MIME-Version: 1.0
In-Reply-To: <20190304102656.33754174e40b8cfa63f2d28a@gmail.com>
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
Subject: Re: [PATCH v2 2/2] scripts/checkpatch.pl: rebase on top of upstream
 v5.0-rc6
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

Hello Antony,

On 3/4/19 8:26 AM, Antony Pavlov wrote:
> On Tue, 26 Feb 2019 10:55:40 +0100
> Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
> 
>> Hello Antony,
>>
>> On 20/2/19 08:14, Antony Pavlov wrote:
>>> On Tue, 19 Feb 2019 15:16:47 +0100
>>> Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
>>>
>>>> diff --git a/scripts/checkpatch.pl b/scripts/checkpatch.pl
>>>> index 4e17347a8481..48b39fbf962a 100755
>>>> --- a/scripts/checkpatch.pl
>>>> +++ b/scripts/checkpatch.pl
>>> ...
>>>
>>>> @@ -1555,13 +2997,9 @@ sub process {
>>>>  
>>>>  			my @compats = $rawline =~ /\"([a-zA-Z0-9\-\,\.\+_]+)\"/g;
>>>>  
>>>> -			# linux device tree files
>>>> -			my $dt_path = $root . "/dts/Bindings/";
>>>> +			my $dt_path = $root . "/Documentation/devicetree/bindings/";
>>>
>>> At the moment it looks like barebox uses both paths ("/dts/Bindings/" and "/Documentation/devicetree/bindings/")
>>> to store dt-related documentation.
>>
>> Missed this one. I can reinstate it in a v2. I think I should've caught all barebox specifics now.
>>
>>>
>>> The patch is very long and very hard to review.
>>
>> Any suggestion on a better way to do it? It's a straight copy from upstream with
>> some barebox specific changes applied on top, so I assume ensuring the barebox
>> changes are accounted for are all the review we need.
> 
> I propose to port checkpatch-related patches from linux one by one.
> Of course you can join some patches into one please remember this
> quote from https://www.kernel.org/doc/html/v4.17/process/submitting-patches.html#split-changes
> 
>    The point to remember is that each patch should make an easily understood
>    change that can be verified by reviewers. Each patch should be justifiable
>    on its own merits.

Honestly, I don't see the utility in duplicating review effort for changes
that already were accepted into the kernel. I think, so far, I got all barebox-specifics,
so updating checkpatch.pl in future should be:
 - copy over upstream checkpatch.pl
 - cherry-pick last checkpatch.pl bareboxification patch

Sure, barebx checkpatch.pl may be more easily broken by this approach,
but it's not part of the build and issues can be fixed as they pop up.

I will send out a v2 shortly that does this.


> 
>>
>> I could for v2 include a scripts/checkpatch.patch which patches the corresponding
>> upstream checkpatch.pl into the barebox checkpatch.pl. That way reviewing would work
>> like this:
>>
>> - review checkpatch.patch
>> - $ patch -R < checkpatch.patch
>> - $ diff $LINUX/scripts/checkpatch.pl $BAREBOX/scripts/checkpatch.pl
>>
>> What do you think?
> 
> I suppose that we want to get new checkpatch features/bugfixes from linux kernel
> but not minimize barebox checkpatch vs linux kernel checkpatch diff size.
> 


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
