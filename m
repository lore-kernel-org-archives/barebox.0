Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-vk0-x230.google.com ([2607:f8b0:400c:c05::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1abyfE-0006hP-Oj
 for barebox@lists.infradead.org; Fri, 04 Mar 2016 22:57:41 +0000
Received: by mail-vk0-x230.google.com with SMTP id e185so69074191vkb.1
 for <barebox@lists.infradead.org>; Fri, 04 Mar 2016 14:57:20 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <5582221457124464@web27h.yandex.ru>
References: <1457009332-27205-1-git-send-email-rndfax@yandex.ru>
 <20160304071152.GC21869@pengutronix.de>
 <4064341457088134@web21g.yandex.ru>
 <20160304145955.a02cc43b4d49ae2cc2897f97@gmail.com>
 <4943131457093089@web17h.yandex.ru>
 <CAHQ1cqFcgVVnQvO6ACpNJx3Czgvdm+-eKyVGMDEYCRsVuFoutA@mail.gmail.com>
 <5582221457124464@web27h.yandex.ru>
Date: Fri, 4 Mar 2016 14:57:19 -0800
Message-ID: <CAHQ1cqEqTAB1jjfcacfmNuAuA_M3A=5udjiX63ZfPHNMBohv1g@mail.gmail.com>
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

On Fri, Mar 4, 2016 at 12:47 PM, Aleksey Kuleshov <rndfax@yandex.ru> wrote:
> 04.03.2016, 20:58, "Andrey Smirnov" <andrew.smirnov@gmail.com>:
>> On Fri, Mar 4, 2016 at 4:04 AM, Aleksey Kuleshov <rndfax@yandex.ru> wrote:
>>>  [quote]
>>>  To improve tracking of who did what, especially with patches that can
>>>  percolate to their final resting place in the kernel through several
>>>  layers of maintainers, we've introduced a "sign-off" procedure on
>>>  patches that are being emailed around.
>>>  [/quote]
>>>
>>>  So Linux kernel had some problems due to their huge developers/maintainers list
>>>  and they solved them by using "sign-off" procedure.
>>>  Do Barebox have that burden of "patches that can
>>>  percolate to their final resting place in the kernel through several
>>>  layers of maintainers"?
>>>
>>>  Also in chapter 11 there are rules which are pure bureaucratic.
>>>  Bureaucracy is a thing of a large projects.
>>>  Is Barebox such as big as Linux that it must have these rules too?
>>
>> IANAL, but AFAIU those "rules which are pure bureaucratic" are a legal
>> framework that originated in Linux kernel and was borrowed by many
>> projects, Barebox among them.
>

I wasn't the person making any of those decisions nor am I a legal
professional, but I can venture a guess/speak out of my ass about
this.

> So why Barebox borrowed them?

Because it was an established legal practice followed by a successful
project with identical licensing whose code base has seen its day in
court

> Was it so necessary?

Yes.

> Was it well thought decision?

No idea, as I already mentioned I wasn't present during this decision.

> Does Barebox really need this?

Yes.

> Or it's just blindly following the rules made by Linux project?

It's irrelevant if BB follows this practice blindly, or with extensive
knowledge and understanding of all factors involved if the procedure
involved is believed to be legally sound

>
>> So to answer your question: it has
>> nothing to do with the size of the project, copyright and associated
>> laws in various shapes or forms applies to everyone.Can it be done in
>> a better, less verbose, more convenient form by smaller projects?
>> Maybe or maybe not, but I don't think the question can be answered
>> without performing proper legal analysis(done by law professionals, of
>> course) which is very costly, time consuming, etc.
>
> Well, that's what I call trying to solve problems which do not exist.

IMHO, you need to be a law professional to make such assessment.

> Do really small projects need to follow all such bureaucratic way rather than
> just growing up?

Yes, project with identical licensing, regardless of their size, need
to adhere to certain legal procedures in order to have a good case if
they are ever in court. There are two ways to establish what those
"certain legal procedures" are, the project either have to consult law
professionals or copy an already established procedures.

> For example, btw, FreeBSD, NetBSD, OpenBSD - these projects have no SOB.
> They have "author" field and that's enough for them.
> They are happily evolving every day.

All three projects that you mentioned are distributed under terms of
BSD license, there's very little(if any) license compliance
enforcement that can be done for those types of contracts (BSD
license), so this comparison is meaningless.

>
> What if git history magically disappears? Only authors written in files will be fixed,
> but all authors of patches will disappear as well. So this SOB field is only
> valid while "git log" gives you something to read.

I don't understand the point you are trying to make. If a legal
document magically disappears, well, it disappears. You would no
longer be able to use it for its intended purposes. That is still not
really an argument to not make it in the first place.

>
>>>  Solving inexisting problems doesn't make life easier but complicates it.
>>
>> That's very much a truism, so you won't find much opposition to that.
>> The devil, as usual, is in the details of how you define what
>> constitutes a non-existing problem. This may sound rude and I
>> apologize for not coming up with a way of better delivery, but I,
>> personally, think that even if we were to assume that the whole SOB
>> mechanism is most egregious and ridiculous legal cargo-cult,
>> necessity to type "git commit -s" as opposed "git commit -s" when
>> you are commiting changes is a non-existing problem.
>
> Actually, I don't think, that SOB is cargo-cult.

I didn't phrase myself really well. Let me correct my mistake:

I, personally, think that even if we were to assume that the whole SOB
mechanism, _as_applied_to_Barebox_,
is most egregious and ridiculous legal cargo-cult, necessity to type
"git commit -s" as opposed "git commit" when you are commiting changes
planned for upstream is a non-existing problem.

> Linux has it because developers
> decided that this is necessary and they can make steel arguments why they
> need this like "this is huge project, tons of patches, we do squashing,
> we must be sure that every patch was given under conditions of open source ..."
> But that's for Linux - companies, billions of dollars... What about Barebox?

Same license, same rules.

Aleksey, I am not really interested in continuing this discussion or
trying to convince you to add SOB to your patch, so if any of the
above explanations are insufficient for you, I am afraid we are going
to have to agree to disagree on this subject.

Andrey

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
