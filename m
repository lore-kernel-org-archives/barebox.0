Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yh0-x22a.google.com ([2607:f8b0:4002:c01::22a])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X9W4r-0003V0-Lq
 for barebox@lists.infradead.org; Tue, 22 Jul 2014 09:09:42 +0000
Received: by mail-yh0-f42.google.com with SMTP id a41so4927134yho.1
 for <barebox@lists.infradead.org>; Tue, 22 Jul 2014 02:09:19 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAOpc7mEBJB=xNTbawAx3PyvquErCsQKHg39-mQzHHjU+YczcSA@mail.gmail.com>
References: <1406015842-20754-4-git-send-email-holgerschurig@gmail.de>
 <1406017939.4667.14.camel@weser.hi.pengutronix.de>
 <CAOpc7mGUTXhr6FaYvC54HgyvyT=UD=h8CrrwynKzVuSSiFE1pw@mail.gmail.com>
 <1406019042.4667.23.camel@weser.hi.pengutronix.de>
 <CAOpc7mEBJB=xNTbawAx3PyvquErCsQKHg39-mQzHHjU+YczcSA@mail.gmail.com>
Date: Tue, 22 Jul 2014 11:09:19 +0200
Message-ID: <CAOpc7mF2QKiSmi2LYpumpBOPyfwg5mkKkHTi2PK2Z4Ehv46GzA@mail.gmail.com>
From: Holger Schurig <holgerschurig@gmail.com>
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
Subject: Re: [PATCH 3/3] sandbox: work around missing of_add_memory_bank()
To: Holger Schurig <holgerschurig@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Okay, another post, with less heat.

I asked you specifically if a proposed solution would be ok. You
didn't answer at all. That proposed solution would still not "work"
(it won't add a memory bank, because AFAIK in sandbox there are no
memory banks at all, it just uses the hosts memory). It might compile,
however and it might be a bit of unneeded code in the "make
ARCH=sandbox sandbox_defconfig && make all" case.

The tone of your mail made me think that I actually cannot convince
you, that you don't want this. Your reference to signal-to-noise made
me think this. I got the impression that you're dismissing the concept
of static checking and of code-massaging to make that easier.

I don't need to contribute to barebox. My barebox is running for my
board, I can stop now. I don't need to barebox to promote myself, e.g.
as a freelancer. Yet I also don't want to contribute crap to barebox.
So if my attempts are not going any further, and specific question if
XYZ would be ok and instead I get junk about signal-to-noise back,
then I simply aren't inclined to promote things further. Feel yourself
now utterly unconvinced :-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
