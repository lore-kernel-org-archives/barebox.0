Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-out.m-online.net ([212.18.0.9])
	by casper.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1P3UVC-0000Mm-GQ
	for barebox@lists.infradead.org; Wed, 06 Oct 2010 13:57:51 +0000
From: Wolfgang Denk <wd@denx.de>
MIME-Version: 1.0
In-reply-to: <20101006072749.GR28242@pengutronix.de>
References: <20101005135213.24F871539A0@gemini.denx.de>
	<20101006072749.GR28242@pengutronix.de>
Date: Wed, 06 Oct 2010 15:56:44 +0200
Message-Id: <20101006135644.8D7051539A0@gemini.denx.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Code "borrowed" without attribution to original authors
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Dear Sascha,

In message <20101006072749.GR28242@pengutronix.de> you wrote:
>
> > We all have been working long enough in free and open source software
> > projects that I can assume you are well aware of the basic principles
> > of open source software licensing and the requirement to attribute
> > code to its original authors.
>
> Does that mean U-Boot has credits to all the original mtd authors when
> updating U-Boots mtd support to a newer kernel? /me is digging in the
> archives; no, it has not. Does that mean with

We try hard to properly attribute code to the original sources. I do
not claim that everything in U-Boot is perfect, and if you look long
enough (and especially far enough back into our 10+ years of
history), you probably can find exceptions. We are trying to improve,
and we take all hints on such topics serious.

In each and everycase, whenever someone asked us (either on the
U-Boot mailing list or directly) about Copyright issues or similar
topics, we always addressed these questions directly and as good as
possible.  Please feel free to search the archives.


In the specific case of MTD updates you mention here the commit
messages (extracted with "git log drivers/mtd") contain for example:

commit 6cd752f9:
...
    The check condition is similat to what is in linux/next.

commit 18b5a4b4:
...
    This makes it similar to what is in the kernel NAND driver.

commit aad4a28b:
...
    This was originally part of Thomas Gleixner's patch for
    adding support for 4KiB pages.
    This is not part of the U-Boot NAND driver so updating the
    driver with this to sync up with the kernel NAND driver.

commit 4f41e7ea:
...
    This patch updates the "chip_shift" calculation in the
    NAND driver. This is being done to sync up the NAND driver with
    the kernel NAND driver.

commit aaa8eec5:
...
    This patch adds support for NANDs greater than 2 GB.
    Patch is based on the MTD NAND driver in the kernel.

commit 154b5484:
...
    Update chipselect handling in davinci_nand.c so that it can
    handle 2 GByte chips the same way Linux does:  as one device,

commit 8d2effea:
...
    This patch brings the U-Boot MTD infrastructure in sync with the current
    Linux MTD version (2.6.30-rc3). Biggest change is the 64bit device size
    support and a resync of the mtdpart.c file which has seen multiple fixes
    meanwhile.

commit c45912d8:
...
    NAND: sync with 2.6.27

    This brings the core NAND code up to date with the Linux kernel.

commit cfa460ad:
...
    Update MTD to that of Linux 2.6.22.1

    A lot changed in the Linux MTD code, since it was last ported from
    Linux to U-Boot. This patch takes U-Boot NAND support to the level
    of Linux 2.6.22.1 and will enable support for very large NAND devices

etc.

As you can see, we try to document where such code is coming from.


> 9b7076229ec6a958bd835ab70745f7676297ce82 Ilya Yanok is the original
> author of jffs2 summary support? No, it's the same in the Linux kernel.

No, he is not. Yes, you are right, proper attibution is missing in
this commit, too.  Such cases can happen, even with sevral people
reviewing the submitted patches.

But as you can see from the many examples above we at least _try_ to
be careful about code atributions and copyrights.


> Does that mean you are the original author of include/linux/list.h in
> 700a0c648df72f2c8e0589c0d0470b5ffd7cab7b? Obviously not.

Ah, you have to go back to an example from 5 years ago? At the time
of that patch, the whole git project was just a mere 4 months old,
and git version control had been used for the Linux kernel for just a
very few weeks. There was no tradition to have Signed-off-by: lines
yet, etc.  Many things were far from perfect, then.

But even then, the first line of the commit message reads:

	Add common (with Linux) MTD partition scheme and ...

The wording "common (with Linux)" may not be really good either, but
at least it's a pretty clear hint. And the file in question is
located in include/linux/ , which also carries a certain meaning.

We have learned our lessons since then.

And if someone points out errors in our processes, we are answerable
for our mistakes and try to improve.


> Please lets go not down that road, it leads to nowhere.
>
> We obviously copy code from other projects like U-Boot and the kernel
> and we do our best to keep the copyrights intact, but we can only do
> this on a per file base, not on a per commit base. That said,

Please explain why it should be impossible in a commit message to say
that the hundreds of lines of code you add were not written by the
signees, but taken from somewhare else?  In the examples I listed one
could even give the corresponding git commit ID from the U-Boot repo,
for example:

0ceafe1  Replace direct header access with the API routines
...
	Copied from U-Boot commit b97a2a0

Do you think such a short hint cannot be done?

For your reference:

	commit b97a2a0a21f279d66de8a9bdbfe21920968bcb1c
	Author: Marian Balakowicz <m8@semihalf.com>
	Date:   Tue Jan 8 18:14:09 2008 +0100

	    [new uImage] Define a API for image handling operations

	    - Add inline helper macros for basic header processing
	    - Move common non inline code common/image.c
===>	    - Replace direct header access with the API routines
	    - Rename IH_CPU_* to IH_ARCH_*

	    Signed-off-by: Marian Balakowicz <m8@semihalf.com>


> common/image.c has a copyright to semihalf in U-Boot which is missing in
> barebox, we can add this. Note that Jean-Christophe added a copyright to
> *you* and not to *him* to this file, which means that he did not even
> try to put this his own work.

The copyright in the files is one thing. Attribution of large blocks
of code you import is another thing. My request is to attribute such code.

From the commits as they are now, most uninformed readers would
assume that the code was written by Jean-Christophe, which is not
correct.

As I wrote before in my message to JC, I consider this an accident,
i. e. rather ignorance than intention.  However, I would be seriously
disappointed if such things should happen again.


Thanks.

Wolfgang Denk

-- 
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
All he had was nothing, but that was something, and now it  had  been
taken away.                             - Terry Pratchett, _Sourcery_

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
