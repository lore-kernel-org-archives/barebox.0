Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-io0-x235.google.com ([2607:f8b0:4001:c06::235])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZjW9b-0003Fk-7D
 for barebox@lists.infradead.org; Tue, 06 Oct 2015 17:35:55 +0000
Received: by ioii196 with SMTP id i196so229641830ioi.3
 for <barebox@lists.infradead.org>; Tue, 06 Oct 2015 10:35:33 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20151001062232.GH7858@pengutronix.de>
References: <1443247338-29171-1-git-send-email-andrew.smirnov@gmail.com>
 <1443247338-29171-2-git-send-email-andrew.smirnov@gmail.com>
 <20150929065847.GO7858@pengutronix.de>
 <CAHQ1cqFEsiq7Qumi54aJv2C_nh7xkR0jkrBnU5Z6jyhWp3zmKQ@mail.gmail.com>
 <20150930070016.GY7858@pengutronix.de>
 <CAHQ1cqG311Dxq9A1wOOzu0WGJ8YcWnFJZ67Nf_3R6HPTGN7S9A@mail.gmail.com>
 <20151001062232.GH7858@pengutronix.de>
Date: Tue, 6 Oct 2015 10:35:33 -0700
Message-ID: <CAHQ1cqFyEq4bKjX+6QxqXsj-dvqNLQiVHXp0U9WkU9-cYghCZA@mail.gmail.com>
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
Subject: Re: [PATCH 2/2] arm/cpu/start.c: Avoid copying device-tree when
 possible
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

>> Oh, I don't think I mentioned in my previous e-mail, but I do have a
>> working Barebox image for that case. The way I have it implemented
>> right now is a vanilla, single board, no-PBL, no-relocation, i.MX6Q
>> SabreSD Barebox image with a minimal configuration. The only things I
>> had to change was device tree file -- default required to much RAM to
>> instantiate, so I had to trim it down -- and this patch to avoid
>> copying FTD that is already built-in. Oh, and I also had to disable
>> MMU, because page table takes about 1MB or RAM(I haven't had a chance
>> to spend any time trying to modify MMU code to support coarser
>> 1MB-page page table).
>>
>> The image is intended to be used by EEs to do DRAM related
>> experiments, so I do need a shell and that was the reason I went with
>> full Barebox instead of trying to cram it in PBL.
>
> Ok, I see. I think your original patch is almost fine, only the test if
> you need to copy or not needs adjustment. You have to test if the fdt is
> membase < dtb < membase + memsize. If it is you have to copy it,
> otherwise it should be fine to use it in place. Would that work?

Sorry for dropping this conversation. Unfortunately no, I don't think
this would work since in my case 'membase' is set to start of IRAM and
'memsize' is IRAM's size and since I am placing the image in IRAM that
test would come positive and the code would try to copy. What if the
condition was set to !RELOCATABLE && !PBL_IMAGE, so that if we know if
there's no PBL and no relocation we do not copy the data? Would that
be acceptable?

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
