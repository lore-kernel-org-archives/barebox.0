Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yk0-x233.google.com ([2607:f8b0:4002:c07::233])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WkC3s-00085V-53
 for barebox@lists.infradead.org; Tue, 13 May 2014 12:44:00 +0000
Received: by mail-yk0-f179.google.com with SMTP id 19so206824ykq.10
 for <barebox@lists.infradead.org>; Tue, 13 May 2014 05:43:38 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20140513162340.c2689ed174c2ad441edceab1@gmail.com>
References: <1399969739-10355-1-git-send-email-holgerschurig@gmail.com>
 <1399969739-10355-9-git-send-email-holgerschurig@gmail.com>
 <20140513152616.037f99e1138c9028878f61f6@gmail.com>
 <CAOpc7mHLsLJehMFkcFeJBGodKEJejiDxgwgWZE2V3-=37BbRHQ@mail.gmail.com>
 <20140513162340.c2689ed174c2ad441edceab1@gmail.com>
Date: Tue, 13 May 2014 14:43:38 +0200
Message-ID: <CAOpc7mG43m7qnMq20DG0_nZhWFnSzDUfjUuZ9T3t61Q1p=AtaQ@mail.gmail.com>
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
Subject: Re: [PATCH 08/19] commands: move CMD_MIPS_CPUINFO to commands/Kconfig
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

> Can we move example 'cpuinfo' output to *.dox?

That can be done, but it is not done by me. The doxygen is in such a
bad state, that I'm not really wanting to work on it. How many
commands are in doxygen? How sorted are they, how complete are they?
Not even concepts like memory area etc are currently described nicely
there.

Also, when I was doing "make xconfig" and wanted to select the
options, I was looking into the xconfig program, not in some
(suboptimal) doxygen docs. So I think the documentation for this step
should be in the Kconfig in the first place, everything else is then
optional.



If it would be to me, I'd in long-term kill the doxygen. Or have the
doxygen only describe the internal API for barebox programmers.
Currently it mixes internal API and end-user documention, not so nice.

Finally, ideally there would be only one place with command
descriptions (currently we have three: BAREBOX_CMD_FOO macros, Kconfig
entries, doxygen comments). It would be nice if the BAREBOX_FOO ones
become the main one, and that other ones be automatically generated
from them. There could even be a BAREBOX_CMD_HELP_DOXY() macro for
text that just ends up in the doxyfile, but not in the barebox binary.

In fact I already have done a first step towards this. My
not-yet-published scripts/checkhelp.py program. It parses all the *.c
file recursively for the BAREBOX_CMD_foo macros, and checks for
various things (e.g. line length not > 77 characters). As this script
already parses the stuff, it could also be used store information and
output into some different format.

However, priority-wise I still think that all Kconfig entries (for
non-commands) without a help text should get one first, this is more
helpful than some long documentation file. And that barebox develops a
policy where patch with a new Kconfig but without a good documention
would simply be rejected.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
