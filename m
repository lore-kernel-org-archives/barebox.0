Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ua0-x22a.google.com ([2607:f8b0:400c:c08::22a])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bc7bV-000441-4W
 for barebox@lists.infradead.org; Tue, 23 Aug 2016 09:02:43 +0000
Received: by mail-ua0-x22a.google.com with SMTP id n59so233675315uan.2
 for <barebox@lists.infradead.org>; Tue, 23 Aug 2016 02:02:20 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAGm1_kuH3Z=Tev7Ra129C9QFMCM9ryhhTy_KS5Sji2ykabYXiw@mail.gmail.com>
References: <CAGm1_ktWEo6Ow0nre5d0tetTdu3aRLO+mRKboiFtfLi2wjRxDA@mail.gmail.com>
 <CAGm1_kt102hu_ZYJLTYnnW2hUs9WS3T8e_Y8C=D1mKk3cf+M2A@mail.gmail.com>
 <20160822052808.GT20657@pengutronix.de>
 <CAGm1_ks9wTMiP2EBoO9BKGkckuTRqkinaazxWXTkNrJKSc7b=w@mail.gmail.com>
 <CAGm1_kuH3Z=Tev7Ra129C9QFMCM9ryhhTy_KS5Sji2ykabYXiw@mail.gmail.com>
From: Yegor Yefremov <yegorslists@googlemail.com>
Date: Tue, 23 Aug 2016 11:01:59 +0200
Message-ID: <CAGm1_ku3M=ghKmVDiEfjUYvVn729cvzqOB4CftPHHDeVSEwVbw@mail.gmail.com>
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
Subject: Re: barebox remote control
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox <barebox@lists.infradead.org>

On Mon, Aug 22, 2016 at 3:10 PM, Yegor Yefremov
<yegorslists@googlemail.com> wrote:
> Hi Sascha,
>
> On Mon, Aug 22, 2016 at 11:05 AM, Yegor Yefremov
> <yegorslists@googlemail.com> wrote:
>> On Mon, Aug 22, 2016 at 7:28 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
>>> Hi Yegor,
>>>
>>> On Fri, Aug 19, 2016 at 03:45:22PM +0200, Yegor Yefremov wrote:
>>>> Hi Sascha,
>>>>
>>>> On Thu, Aug 18, 2016 at 9:48 AM, Yegor Yefremov
>>>> <yegorslists@googlemail.com> wrote:
>>>> > Are you planning to create a standalone PyPI package for bbremote? It
>>>> > would be very handy.
>>>>
>>>> I'll try to create such a package on my GitHub account and then we
>>>> will see how to proceed. Porting to Python 3 is really funny :-) str
>>>> vs. bytearrays ....
>>>>
>>>> > Have you already contacted pyserial maintainers, so that they could
>>>> > provide a configurable option for RFC2217 related timeout
>>>> > (https://github.com/pyserial/pyserial)?
>>>>
>>>> I'll drop own pyserial and rely on upstream.
>>>
>>> Thanks. We haven't done anything in that direction yet.
>>
>> Take a look at this repo: https://github.com/yegorich/bbremote
>>
>> Following commands are already working in both Py2/3:
>>
>> bbremote ping
>> bbremote run "devinfo"
>> bbremote getenv "global.version"
>>
>> So far there was only one place, where I explicitly make distinction
>> between Py2 and 3. Everything else seems to work well with bytearray
>> (http://www.devdungeon.com/content/working-binary-data-python).
>>
>> TODO:
>>
>> 1. bbremote console works only in Py3, in Py2 it seems to freeze
>> 2. add proper dependencies for setup.py (enum, enum34 for Py2 and
>> crcmod and pyserial for all versions). What minial Py3 version should
>> be supported? Perhaps choose 3.4 as is available on current Debian 8
>> 3. licence: should we keep Barebox licence or move to MIT?
>> 4. more tests
>
> What is "bbremote listen" for?

I've started to import remote and use it from a Python file. It would
be good to add a "silent" option, so that only return value says
something about execution state.

What about renaming bbremote "binary" to bbrcli and renaming remote
package to bbremote? "remote" seems to be too common name.

Yegor

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
