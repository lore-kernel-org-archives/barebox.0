Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-it0-x243.google.com ([2607:f8b0:4001:c0b::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fIShV-00041l-Pm
 for barebox@lists.infradead.org; Tue, 15 May 2018 05:40:43 +0000
Received: by mail-it0-x243.google.com with SMTP id 70-v6so17187037ity.2
 for <barebox@lists.infradead.org>; Mon, 14 May 2018 22:40:29 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20180514074808.gs6vnuy5ba5qmcmk@pengutronix.de>
References: <20180508212125.5923-1-andrew.smirnov@gmail.com>
 <20180508212125.5923-2-andrew.smirnov@gmail.com>
 <20180514074808.gs6vnuy5ba5qmcmk@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 14 May 2018 22:40:28 -0700
Message-ID: <CAHQ1cqEjT2sXyNgKSgxrncheyb846vgJBS0cVbS2wU7ND+zz3g@mail.gmail.com>
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
Subject: Re: [PATCH 1/2] common: oftree: Pass bootsource and bootsource
 instance to kernel
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Mon, May 14, 2018 at 12:48 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> Hi Andrey,
>
> On Tue, May 08, 2018 at 02:21:24PM -0700, Andrey Smirnov wrote:
>> Pass barebox-detected bootsource and bootsource instance to Linux to
>> make it availible to Linux userspace. We use put the version under
>> /chosen/bootsource and it can be read under Linux in
>>
>> /sys/firmware/devicetree/base/chosen/bootsource
>
> I like the idea of having the bootsource available in Linux and more
> than once thought about implementing it. However, I don't think it's
> good to put the rather adhoc strings from barebox into the devicetree.
>
> I'd rather have a phandle pointing to the actual device providing the
> bootsource. Something like converting bootsource/bootsource_instance
> into an alias name, lookup that alias in the device tree and create a
> phandle pointing to the node the alias points to aswell. This may be
> more complicated, but this way we do not have to think up any mapping.
>

OK, that does sound like a better idea. I'll give it a try and submit
results in v2.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
