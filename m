Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qg0-x236.google.com ([2607:f8b0:400d:c04::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X4GBJ-0000AL-Nq
 for barebox@lists.infradead.org; Mon, 07 Jul 2014 21:10:38 +0000
Received: by mail-qg0-f54.google.com with SMTP id q107so4180036qgd.41
 for <barebox@lists.infradead.org>; Mon, 07 Jul 2014 14:10:15 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20140707180953.GF15426@ns203013.ovh.net>
References: <alpine.LFD.2.11.1407041217080.16169@localhost>
 <4DA026CE-D019-4CBB-B46B-834064F91333@jcrosoft.com>
 <alpine.LFD.2.11.1407070505420.27781@localhost>
 <20140707180953.GF15426@ns203013.ovh.net>
Date: Mon, 7 Jul 2014 23:10:15 +0200
Message-ID: <CAOpc7mHD57CXbedHveULyXuGQgA8aL8WZBrMgcRcPaDr6XGAuQ@mail.gmail.com>
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
Subject: Re: [PATCH] Clean up Kconfig and source for a couple device tree
 commands.
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

> I tend to agree here. When Holger sent these patches recently I was very
> pleased that he has put some love into the Kconfig files. Bit indeed it
> is very hard (and unnecessary) work to keep them in sync. Holger, what's
> your take on this? Is our new (and yet-to-be-uploaded-to-the-net)
> Documentation prominent enough to drop the usage from Kconfig?

In the long run, I'd like to put a help on all Kconfig entries.

When I was new to Barebox, and started "make xconfig" and was
partially pleased (because make xconfig worked), but also puzzled,
because so many Kconfig entries did not contain any help text. It was
not easy for me to decide if I need an option or not, or if that
option would just be a nice-to-have one.

From that point of view I like the helps on the commands. They give
you all the info you need to immediately knoy if you want to put a
check there --- or not.

However, Kconfig files are relatively easy to parse (or to write). So
we could declare one option as the "main" source and write a python
program that reads the main source and generates the others out of it.
It's probably me who should write that ...   grin.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
