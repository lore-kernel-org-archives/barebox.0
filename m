Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx009.vodafonemail.xion.oxcs.net ([153.92.174.39])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gp9t4-0003Ll-T9
 for barebox@lists.infradead.org; Thu, 31 Jan 2019 10:48:05 +0000
References: <19d6d395-5263-26f0-b940-abbe60a0fc1b@nexgo.de>
 <CAHQ1cqG3YLtHG8TsNnEk2Wk4h1KEA1YBzzkXUXPTM6Ffe0mFQw@mail.gmail.com>
From: Kai Volkmar <kai.volkmar@nexgo.de>
Message-ID: <ae549ae2-65a0-f63b-2d52-8c190c90bbb6@nexgo.de>
Date: Thu, 31 Jan 2019 11:47:54 +0100
MIME-Version: 1.0
In-Reply-To: <CAHQ1cqG3YLtHG8TsNnEk2Wk4h1KEA1YBzzkXUXPTM6Ffe0mFQw@mail.gmail.com>
Content-Language: de-DE
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: bootm of 2019.01.0 doesn't load/start images
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On 31.01.19 00:35, Andrey Smirnov wrote:
> On Wed, Jan 30, 2019 at 11:26 AM Kai Volkmar <kai.volkmar@nexgo.de> wrote:
>> Hi everyone,
>>
>> I tried to renew the barebox of an EDB9302 by 2019.01.0.
>> I used to load the new image by bootm command of the old version which
>> worked fine in at least 2018.01.0:
>>
>>     Loading ARM barebox image 'barebox.bin'
>>     commandline: <NULL>
>>     a=FFch_number: 538
>>
>> 2019.01.0's bootm recognizes the file type but fails afterwards with
>>
>>     Loading ARM barebox image 'barebox.bin'
>>     handler failed with: Function not implemented
>>
>> .
>>
>> I'm not able to boot zImages by 2019.01.0's bootm as well which worked
>> with 2018.01.0 so I assume bootm is broken anywere between 2018.01.0 and
>> 2019.01.0.
>>
>> Anyway, it is possible to boot zImages by bootz.
>>
>> Could you please point me in the right direction - I'm quite new at this
>> field, maybe I'm mistaking?
>>
>> I can try other releases as well if this would be of any help.
>>
> Since you know both "good" and "bad" revisions already, doing git
> bisect would probably simplest, fastest and most straightforward way
> to figure out which commit broke things on your board. Once offending
> commit is know it should be much easier to figure out if this is a
> genuine bug or something else.
>
> Hope this helps.
>
> Thanks,
> Andrey Smirnov
>
Hi Andrey,

thanks for your quick answer. I'm not familiar with git bisect yet, but
I just identified the last working and the first defective release.

18.07.2 works (as well as 18.07.0 did), 18.08.0 doesn't.

So I assume the relevant change being near

https://git.pengutronix.de/cgit/barebox/commit/?h=3Dv2018.08.0&id=3D0e8bd85=
d9b2f981ad24847badda70c73397d8385

I'll try to get an imagination of what's going on but it seems a quit
difficult task for a beginner :-).

Best regards,
Kai




_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
