Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yk0-x233.google.com ([2607:f8b0:4002:c07::233])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X0ViQ-0007Fa-UI
 for barebox@lists.infradead.org; Fri, 27 Jun 2014 12:57:20 +0000
Received: by mail-yk0-f179.google.com with SMTP id 20so2820316yks.10
 for <barebox@lists.infradead.org>; Fri, 27 Jun 2014 05:56:57 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <alpine.LFD.2.11.1406270830070.5167@localhost>
References: <alpine.LFD.2.11.1406270830070.5167@localhost>
Date: Fri, 27 Jun 2014 14:56:57 +0200
Message-ID: <CAOpc7mE1Z120BKc3bc8XDg2TaYUw6p3aKCE+dvwYOrhGrvTepg@mail.gmail.com>
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
Subject: Re: why is some output placed under "srctree" even if i specify
 output dir?
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

Oh, that's interesting. Because sphinx-build can only be taught about
one sourcedir. But in the srctree != objtree case we have two source
dirs: the in srctree/Documentation with the provided *.rst files, and
the objtree/Documentation/commands, with those files that

   @$(srctree)/Documentation/gen_commands.py $(srctree)
$(objtree)/Documentation/commands

could generate.

Maybe gen_commands should also update the static *.rst files if
srctree != objtree?

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
