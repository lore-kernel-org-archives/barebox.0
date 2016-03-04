Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-vk0-x22a.google.com ([2607:f8b0:400c:c05::22a])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1abtzy-0006ES-Fj
 for barebox@lists.infradead.org; Fri, 04 Mar 2016 17:58:47 +0000
Received: by mail-vk0-x22a.google.com with SMTP id e185so61549004vkb.1
 for <barebox@lists.infradead.org>; Fri, 04 Mar 2016 09:58:25 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <4943131457093089@web17h.yandex.ru>
References: <1457009332-27205-1-git-send-email-rndfax@yandex.ru>
 <20160304071152.GC21869@pengutronix.de>
 <4064341457088134@web21g.yandex.ru>
 <20160304145955.a02cc43b4d49ae2cc2897f97@gmail.com>
 <4943131457093089@web17h.yandex.ru>
Date: Fri, 4 Mar 2016 09:58:24 -0800
Message-ID: <CAHQ1cqFcgVVnQvO6ACpNJx3Czgvdm+-eKyVGMDEYCRsVuFoutA@mail.gmail.com>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH] ehci-hcd: remove useless timeout
To: Aleksey Kuleshov <rndfax@yandex.ru>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Fri, Mar 4, 2016 at 4:04 AM, Aleksey Kuleshov <rndfax@yandex.ru> wrote:
> [quote]
> To improve tracking of who did what, especially with patches that can
> percolate to their final resting place in the kernel through several
> layers of maintainers, we've introduced a "sign-off" procedure on
> patches that are being emailed around.
> [/quote]
>
> So Linux kernel had some problems due to their huge developers/maintainers list
> and they solved them by using "sign-off" procedure.
> Do Barebox have that burden of "patches that can
> percolate to their final resting place in the kernel through several
> layers of maintainers"?
>
> Also in chapter 11 there are rules which are pure bureaucratic.
> Bureaucracy is a thing of a large projects.
> Is Barebox such as big as Linux that it must have these rules too?
>

IANAL, but AFAIU those "rules which are pure bureaucratic" are a legal
framework that originated in Linux kernel and was borrowed by many
projects, Barebox among them. So to answer your question: it has
nothing to do with the size of the project, copyright and associated
laws in various shapes or forms applies to everyone. Can it be done in
a better, less verbose, more convenient form by smaller projects?
Maybe or maybe not, but I don't think the question can be answered
without performing proper legal analysis(done by law professionals, of
course) which is very costly, time consuming, etc.

> Solving inexisting problems doesn't make life easier but complicates it.
>

That's very much a truism, so you won't find much opposition to that.
The devil, as usual, is in the details of how you define what
constitutes a non-existing problem. This may sound rude and I
apologize for not coming up with a way of better delivery, but I,
personally, think that even if we were to assume that the whole SOB
mechanism is  most egregious and ridiculous legal cargo-cult,
necessity to type  "git commit -s" as  opposed "git commit -s" when
you are commiting changes is a non-existing problem.

Andrey

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
