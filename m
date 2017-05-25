Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x244.google.com ([2607:f8b0:400e:c00::244])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dDwHi-0003eL-Gx
 for barebox@lists.infradead.org; Thu, 25 May 2017 17:10:52 +0000
Received: by mail-pf0-x244.google.com with SMTP id f27so40466958pfe.0
 for <barebox@lists.infradead.org>; Thu, 25 May 2017 10:10:29 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <38ca9996-beb8-19a2-99ee-2a4fa7a82232@cogentembedded.com>
References: <20170522152420.14443-1-andrew.smirnov@gmail.com>
 <20170522152420.14443-2-andrew.smirnov@gmail.com>
 <b2e10c3a-cf7d-e3ff-4707-447d56f2e45f@cogentembedded.com>
 <CAHQ1cqFDcR49fvD9JrtSgR5tEMZPnFdPsxSJvwF8c1crqGd7jA@mail.gmail.com>
 <db78852f-c295-d85b-1c38-3c31f2442d5f@cogentembedded.com>
 <1495649778.5146.219.camel@kymetacorp.com>
 <CAHQ1cqEoXNdQA=1kCtxpC3dmJhYGiBY5PBxAOFCwBbZyJ5nj+w@mail.gmail.com>
 <38ca9996-beb8-19a2-99ee-2a4fa7a82232@cogentembedded.com>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 25 May 2017 10:10:28 -0700
Message-ID: <CAHQ1cqEhH1wRcHgG_vE8BuCQFWhZdAL23hxXN16t9BvA7UM0Ww@mail.gmail.com>
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
Subject: Re: [PATCH 2/4] gpiolib: Add code to support "active low" GPIOs
To: Nikita Yushchenko <nikita.yoush@cogentembedded.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>, "cphealy@gmail.com" <cphealy@gmail.com>, Trent Piepho <tpiepho@kymetacorp.com>

On Wed, May 24, 2017 at 11:36 PM, Nikita Yushchenko
<nikita.yoush@cogentembedded.com> wrote:
>> IMHO, whether any of likes it or not, OF_GPIO_ACTIVE_LOW is an
>> existing feature and the only technical question is if it should be
>> supported by Barebox on per-driver basis or if there should be a
>> central API for it.
>>
>> Sascha, are you still OK with me proceeding with making and using an
>> API, or should I just scrap that and handle this as a part of my
>> "usb-no-xcev"?
>
> Is support for case when this usb-no-xcev's gpio is active high needed?
>
> If yes, then your questions above are valid.
>
> If no, then there is third option, completely ignore this aspect of
> device tree and just assume that gpio is active low.

That is a trivial/easily testable feature to implement, and I am not
interested in pursuing "third option" you propose.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
