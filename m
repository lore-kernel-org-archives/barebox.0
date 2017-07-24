Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ua0-x22d.google.com ([2607:f8b0:400c:c08::22d])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dZj2g-0002qA-TM
 for barebox@lists.infradead.org; Mon, 24 Jul 2017 19:29:24 +0000
Received: by mail-ua0-x22d.google.com with SMTP id f9so86807872uaf.4
 for <barebox@lists.infradead.org>; Mon, 24 Jul 2017 12:29:02 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20170724160158.GC18294@ravnborg.org>
References: <20170724145400.2279-1-andrew.smirnov@gmail.com>
 <20170724160158.GC18294@ravnborg.org>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 24 Jul 2017 12:29:00 -0700
Message-ID: <CAHQ1cqGbTRq_a=rM0Dq=yw8w+By7n=oFHxvRs4Damy7oX9vi0g@mail.gmail.com>
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
Subject: Re: [PATCH 0/9] i.MX7 SabreSD support
To: Sam Ravnborg <sam@ravnborg.org>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Mon, Jul 24, 2017 at 9:01 AM, Sam Ravnborg <sam@ravnborg.org> wrote:
> Hi Andrey.
>
>> Also, note, that for a reason I haven't been able to track down yet,
>> compiling Barebox + this patchset without support for FEC will cause
>> upstream kernel (at least 4.12-rc1) to hang during boot while trying
>> to access FEC's register file. I suspect clock initialization issue,
>> but, as I said, I did not find that out conclusively.
> Maybe you should include this explanation in the patch that
> enables this option?
>

I seemed like a kernel problem, so there's no code in the patchset
that reflects this "limitation", meaning FEC driver is not
automatically enabled if i.MX7 SabreSD is selected, so I don't know if
there's a better place to put this note.

>>
>> Anyway, as usual, any feedback is wellcome.
>
> I have browsed the patches, and provided a little feedback.
> Apart form this the series looks good to me.
>
> But then for most parts I am not intiminate with the
> code so do not assume too much based on this.
>

Regardless, it was still useful feedback.

Thanks!
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
