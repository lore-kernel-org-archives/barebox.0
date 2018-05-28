Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-io0-x244.google.com ([2607:f8b0:4001:c06::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fN6Zt-0001F4-Hm
 for barebox@lists.infradead.org; Mon, 28 May 2018 01:04:03 +0000
Received: by mail-io0-x244.google.com with SMTP id e20-v6so12371007iof.4
 for <barebox@lists.infradead.org>; Sun, 27 May 2018 18:03:50 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20180527072834.GA13583@ravnborg.org>
References: <20180526204451.16530-1-andrew.smirnov@gmail.com>
 <20180526204451.16530-2-andrew.smirnov@gmail.com>
 <20180527072834.GA13583@ravnborg.org>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 27 May 2018 18:03:48 -0700
Message-ID: <CAHQ1cqG14_hwqQoush0q7rHY2be=h6_6w0EPitRNfSxe7SZ8=g@mail.gmail.com>
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
Subject: Re: [PATCH v2 01/48] ARM: i.MX: xload: Fix compiler warning
To: Sam Ravnborg <sam@ravnborg.org>
Cc: Barebox List <barebox@lists.infradead.org>

On Sun, May 27, 2018 at 12:28 AM, Sam Ravnborg <sam@ravnborg.org> wrote:
> Hi Andrey
>
> On Sat, May 26, 2018 at 01:44:04PM -0700, Andrey Smirnov wrote:
>> From: Sascha Hauer <s.hauer@pengutronix.de>
>>
>> the ESDHC controller is a 32bit device, so can do DMA only on the
>> lower 32bit. Fix the compiler warning about casting a pointer to integer
>> of different size on aarch64 by casting to unsigned long first. Error
>> out if the destination does not fit into 32bit though.
>>
>> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
>> ---
> Nitpicking...
>
> In the kernel the "Signed-off-by:" lines shall document the path of the patch
> towards the kernel. So every time a patch passes a person, this person is supposed
> to add a "Signed-off" to explicit say that:

Hmm, that's not really how I interpret "11) Sign your work - the
Developer's Certificate of Origin". Not saying that my interpretation
is right, but I added Signed-off-by's with "To improve tracking of who
did what" goal in mind.

> "
>     The contribution was provided directly to me by some other
>     person who certified (a), (b) or (c) and I have not modified
>     it.
> "

Yeah, that's item (c), which I can't really certify since there was no
direct communication involved and I just got the patches that Sascha
previously posted on the mailing list ([v1] in the cover letter).
Items (a) and (b) don't really seem applicable to me, since they all
involve me being responsible for writing some portion of the patch.

Anyway, it is trivial for me to add those, and I am more than happy to
do it, but since I am lazy, I'll wait for Sascha's say-so for that.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
