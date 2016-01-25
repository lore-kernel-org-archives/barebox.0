Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qg0-x235.google.com ([2607:f8b0:400d:c04::235])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aNchu-0001ae-NG
 for barebox@lists.infradead.org; Mon, 25 Jan 2016 08:41:07 +0000
Received: by mail-qg0-x235.google.com with SMTP id b35so103045332qge.0
 for <barebox@lists.infradead.org>; Mon, 25 Jan 2016 00:40:46 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20160125082015.GW13058@pengutronix.de>
References: <1453663456-5168-1-git-send-email-yegorslists@googlemail.com>
 <CAGm1_ksoy5BweOmR1FYaTG4=C4jZnxtvaBgukpbasJv6tDGSkA@mail.gmail.com>
 <20160125082015.GW13058@pengutronix.de>
From: Yegor Yefremov <yegorslists@googlemail.com>
Date: Mon, 25 Jan 2016 09:40:26 +0100
Message-ID: <CAGm1_kv7Suu7kEv=DgRW_vB6dL+Uew851AJCp72sFmdtJy6B4w@mail.gmail.com>
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
Subject: Re: [RFC] fs: move super_block and inode definitions to central fs.h
 header
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox <barebox@lists.infradead.org>

On Mon, Jan 25, 2016 at 9:20 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> On Sun, Jan 24, 2016 at 08:55:22PM +0100, Yegor Yefremov wrote:
>> On Sun, Jan 24, 2016 at 8:24 PM, Yegor Yefremov
>> <yegorslists@googlemail.com> wrote:
>> > Both super_block and inode are common to various file systems, so
>> > move them to the central place.
>> >
>> > Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>
>> > ---
>> >  fs/ubifs/ubifs.h | 134 +------------------------------------------------------
>> >  include/fs.h     | 134 +++++++++++++++++++++++++++++++++++++++++++++++++++++++
>> >  2 files changed, 135 insertions(+), 133 deletions(-)
>>
>> I'm trying to port SquashFS to Barebox. SquashFS uses at least both
>> super_block structure as also inode structure. Does it make sense to
>> introduce include/linux/fs.h?
>
> I think not. Using include/linux/ for header files is good for stuff
> directly taken from the kernel, but I think the fs related structures in
> barebox are quite different from the ones in the kernel.

So you're OK about moving super_block and inode to inculde/fs?

>> What to do with struct timespec? It is defined in uapi part. Should it
>> go to include/linux/barebox-wrapper.h?
>
> barebox-wrapper.h contains no-op wrappers for stuff from the kernel that
> we want to keep around just to be able to compile kernel code with less
> modifications. struct timespec doesn't really fall into that category, I
> rather suggest its original place: include/linux/time.h

OK. Then I'll move it there. Should I also add timeval and related
marcos as well?

Yegor

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
