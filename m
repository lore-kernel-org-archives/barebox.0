Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yh0-x233.google.com ([2607:f8b0:4002:c01::233])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X9VcC-0005j4-UF
 for barebox@lists.infradead.org; Tue, 22 Jul 2014 08:40:06 +0000
Received: by mail-yh0-f51.google.com with SMTP id f73so4876483yha.10
 for <barebox@lists.infradead.org>; Tue, 22 Jul 2014 01:39:43 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1406017939.4667.14.camel@weser.hi.pengutronix.de>
References: <1406015842-20754-4-git-send-email-holgerschurig@gmail.de>
 <1406017939.4667.14.camel@weser.hi.pengutronix.de>
Date: Tue, 22 Jul 2014 10:39:43 +0200
Message-ID: <CAOpc7mGUTXhr6FaYvC54HgyvyT=UD=h8CrrwynKzVuSSiFE1pw@mail.gmail.com>
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
To: Lucas Stach <l.stach@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

There are no memory banks in the sandbox, so adding a working
of_add_memory_bank?  How should that work? Or do you mean adding a
dummy of_add_memory_bank() to arch/sandbox/os/board.c?

> his adds ifdeffery (which everyone hates) just for the sake of a static checker

You probably never have run "scan-build make" after "apt-get install
clang-3.5" ?!?!   For me, this two lines are minimal, and the amount
of warnings that scan-build finds in barebox is staggering.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
