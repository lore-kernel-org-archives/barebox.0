Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qg0-x22b.google.com ([2607:f8b0:400d:c04::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aGN1E-0003OP-11
 for barebox@lists.infradead.org; Tue, 05 Jan 2016 08:31:05 +0000
Received: by mail-qg0-x22b.google.com with SMTP id o11so273310103qge.2
 for <barebox@lists.infradead.org>; Tue, 05 Jan 2016 00:30:43 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20160105082048.GQ13058@pengutronix.de>
References: <1450484040.26955.228.camel@rtred1test09.kymeta.local>
 <20160104083257.GA13058@pengutronix.de>
 <1451934452.26955.281.camel@rtred1test09.kymeta.local>
 <20160105075831.GO13058@pengutronix.de>
 <CAGm1_kvkpiO4thVWarCYcqQWAWD5zj1BQ3B4+pKHGJf3dHESkQ@mail.gmail.com>
 <20160105082048.GQ13058@pengutronix.de>
From: Yegor Yefremov <yegorslists@googlemail.com>
Date: Tue, 5 Jan 2016 09:30:22 +0100
Message-ID: <CAGm1_ktkkQA7v3tQZx54zrxHipz6QqdnD6L2+HjN-7YZwP1toQ@mail.gmail.com>
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
Subject: Re: [PATCH 1/2] of: Add for_each_compatible_node_from iterator
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox <barebox@lists.infradead.org>, Trent Piepho <tpiepho@kymetacorp.com>

On Tue, Jan 5, 2016 at 9:20 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> On Tue, Jan 05, 2016 at 09:05:35AM +0100, Yegor Yefremov wrote:
>> On Tue, Jan 5, 2016 at 8:58 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
>> > On Mon, Jan 04, 2016 at 07:07:27PM +0000, Trent Piepho wrote:
>> >> On Mon, 2016-01-04 at 09:32 +0100, Sascha Hauer wrote:
>> >> > On Sat, Dec 19, 2015 at 12:13:59AM +0000, Trent Piepho wrote:
>> >> > > The existing iterator for_each_compatible_node() searches for each
>> >> > > compatible node starting from the root of the loaded device tree.
>> >> > > This means it only works on the barebox device tree and not the tree
>> >> > > to be passed to the Linux kernel, which is what an of_fixup would
>> >> > > probably want to use.
>> >> > >
>> >> > > This adds for_each_compatible_node_from(), which takes an additional
>> >> > > parameter of a root to search from.  This could be the device tree to
>> >> > > be used for the kernel.  It could also be used to search just a
>> >> > > subtree.
>> >> > >
>> >> > > Signed-off-by: Trent Piepho <tpiepho@kymetacorp.com>
>> >> >
>> >> > Applied, thanks
>> >> >
>> >> > > ---
>> >> > >
>> >> > > It's possible the fixups in cm_cogent_fixup() and hb_fixup() should
>> >> > > be using this.  It's not clear to me if they want to modify the barebox
>> >> > > device tree or the Linux device tree or both.
>> >> >
>> >> > It's always the Linux device tree that is fixed up in the OF fixups.
>> >>
>> >> Sent patch to fix them.
>> >>
>> >> Couldn't one also use the of fixup system to modify the barebox DT?  In
>> >> order to support multiple board variants, I added DT nodes that specify
>> >> what nodes should be enabled and/or disabled for different board
>> >> versions.  An OF fixup applies this to the Linux DT.  I haven't had to
>> >> modify the barebox DT for different boards but anticipate that happening
>> >> for the next board and I was planning to use the same system.
>> >
>> > I think you don't need the fixup system to accomplish that. Just hook up
>> > to an initcall early enough and modify the barebox device tree. It
>> > shouldn't be necessary to register a callback first and then wait for
>> > its execution.
>>
>> What initcall can be used to change the device tree, that is already
>> loaded into memory and before Linux is started?
>
> You want to change the device tree that is passed to Linux, right? In
> this case you can use of_register_fixup(). We were talking about
> changing the device tree that barebox uses for itself. For this
> everything after core_initcall will work. It should be early enough
> though so that the device that is ought to be changed has not probed, so
> I suggest doing it as early as possible, that would be
> postcore_initcall.

OK. Thanks.

Yegor

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
