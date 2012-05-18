Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yw0-f49.google.com ([209.85.213.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SVKlv-0004Im-2b
 for barebox@lists.infradead.org; Fri, 18 May 2012 10:51:00 +0000
Received: by yhjj52 with SMTP id j52so3086568yhj.36
 for <barebox@lists.infradead.org>; Fri, 18 May 2012 03:50:57 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20120518084921.GP30400@pengutronix.de>
References: <CAA4bVAF6=LXsv7Q97Mi6uSx_0oY+h=pyTOrRip=+dyAykGWKpw@mail.gmail.com>
 <CAA4bVAE=UFvDOv0MS97wZjqBLJKxjxRvt3n+7eQME1gfk++RbA@mail.gmail.com>
 <20120517181915.GJ30400@pengutronix.de>
 <CAA4bVAGhuekyOa5cjJHcWJUYm6K4SPn=c3BXTauFP3CvFaMX7A@mail.gmail.com>
 <20120518084921.GP30400@pengutronix.de>
Date: Fri, 18 May 2012 14:50:56 +0400
Message-ID: <CAA4bVAF4PuDU+U-v=KPr58YFgRAZDXLSpiGVsSkmgvGP3ZOKOg@mail.gmail.com>
From: Antony Pavlov <antonynpavlov@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: build timestamps don't work
To: barebox <barebox@lists.infradead.org>

On 18 May 2012 12:49, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> On Fri, May 18, 2012 at 12:28:52AM +0400, Antony Pavlov wrote:
>> On 17 May 2012 22:19, Sascha Hauer <s.hauer@pengutronix.de> wrote:
>> > On Thu, May 17, 2012 at 09:52:36PM +0400, Antony Pavlov wrote:
>> >> ping
>> >>
>> >> On 16 May 2012 08:27, Antony Pavlov <antonynpavlov@gmail.com> wrote:
>> >> > Hi!
>> >> >
>> >> > =A0I have found that on my Debian testing build system generation of
>> >> > timestamps don't work correctly.
>> >
>> > I just tried and it works with ARM builds. Tried again with MIPS, and
>> > yes, indeed it does not work. Maybe worth looking at the architecture
>> > specific Makefile.
>> >
>>
>> I tried another debian linux. I tried ARM & MIPS: the both don't work.
>>
>> I checked linux-3.1 build for mips: it work. At least =A0there is one di=
fferrence:
>> in linux if i make 'rm .version && make', then scripts/mkcompile_h
>> started _two_ times, but only _one_ time in barebox.
>
> Just to make sure, you have the following in your tree, right?
>
> commit 55c81081e577922a8d7d0a1d633efb7feb3560d4
> Author: Sascha Hauer <s.hauer@pengutronix.de>
> Date: =A0 Sun Apr 15 12:05:21 2012 +0200
>
> =A0 =A0Makefile: fix build timestamps
>
> =A0 =A0This patch adds the scripts/mkcompile_h from the Kernel. This gives
> =A0 =A0us additional information about the build like who built this bina=
ry
> =A0 =A0and with which compiler. Currently the only information used is the
> =A0 =A0build timestamp and the generation number.
> =A0 =A0This also fixes the build timestamp in the banner which is now
> correct
> =A0 =A0even with consecutive builds without making clean in between.
>
> =A0 =A0Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Yes, I have this commit in my tree. I used the 'next' branch.

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
