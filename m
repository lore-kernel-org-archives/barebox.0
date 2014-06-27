Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X0Vqx-0003F1-23
 for barebox@lists.infradead.org; Fri, 27 Jun 2014 13:06:07 +0000
Date: Fri, 27 Jun 2014 09:01:34 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
In-Reply-To: <CAOpc7mE1Z120BKc3bc8XDg2TaYUw6p3aKCE+dvwYOrhGrvTepg@mail.gmail.com>
Message-ID: <alpine.LFD.2.11.1406270858110.6308@localhost>
References: <alpine.LFD.2.11.1406270830070.5167@localhost>
 <CAOpc7mE1Z120BKc3bc8XDg2TaYUw6p3aKCE+dvwYOrhGrvTepg@mail.gmail.com>
MIME-Version: 1.0
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
To: Holger Schurig <holgerschurig@gmail.com>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On Fri, 27 Jun 2014, Holger Schurig wrote:

> Oh, that's interesting. Because sphinx-build can only be taught
> about one sourcedir. But in the srctree != objtree case we have two
> source dirs: the in srctree/Documentation with the provided *.rst
> files, and the objtree/Documentation/commands, with those files that
>
>    @$(srctree)/Documentation/gen_commands.py $(srctree)
> $(objtree)/Documentation/commands
>
> could generate.
>
> Maybe gen_commands should also update the static *.rst files if
> srctree != objtree?

  ok, that's something that can be decided by those of you higher up
the food chain; as i said, my only concern is that if i select an
external build directory, nothing should really be generated in the
source directory. but maybe i'm still unfamiliar with the build model
here -- still reading the sphinx docs, starting to really like this.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
