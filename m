Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X0VQN-0005l8-UC
 for barebox@lists.infradead.org; Fri, 27 Jun 2014 12:38:40 +0000
Received: from [69.196.158.250] (port=60939 helo=crashcourse.ca)
 by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
 (Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
 id 1X0VQ0-0004vP-RR
 for barebox@lists.infradead.org; Fri, 27 Jun 2014 08:38:16 -0400
Date: Fri, 27 Jun 2014 08:34:07 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <alpine.LFD.2.11.1406270830070.5167@localhost>
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
Subject: why is some output placed under "srctree" even if i specify output
 dir?
To: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>


  perhaps another silly question, but i typically like to build with
all output generated in an external directory to keep my source
directory clean, but if i do that building the docs for barebox on the
"doc" branch:

  $ export KBUILD_OUTPUT=../barebox_build
  $ make docs

i still get the output files "Documentation/commands/*.rst" dumped in
my source directory because of:

docs: FORCE
        @mkdir -p $(srctree)/Documentation/commands
        @$(srctree)/Documentation/gen_commands.py $(srctree) $(srctree)/Documentation/commands
        @$(SPHINXBUILD) -b html -d $(objtree)/doctrees $(srctree)/Documentation \
                $(objtree)/Documentation/html

is this deliberate? it strikes me as inconsistent if i *explicitly*
specify an external build directory.

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
