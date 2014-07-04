Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X337J-0006Tt-46
 for barebox@lists.infradead.org; Fri, 04 Jul 2014 13:01:32 +0000
Received: from [99.240.204.5] (port=56645 helo=crashcourse.ca)
 by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
 (Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
 id 1X336w-0002sY-Uq
 for barebox@lists.infradead.org; Fri, 04 Jul 2014 09:01:07 -0400
Date: Fri, 4 Jul 2014 09:01:04 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <alpine.LFD.2.11.1407040846490.22603@localhost>
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
Subject: wanting to clarify terminology regarding kernel and device trees
To: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>


  reading the user manual, section "Booting Linux", about to do a bit
of cleanup there, and i read this:

"NOTE: it may happen that barebox is probed from the devicetree, but
you have want to start a Kernel without passing a devicetree. In this
case call oftree -f to free the internal devicetree before calling
bootm"

  i'm puzzled by the phrase "it may happen that barebox is probed from
the devicetree". i'm sure this is not meant to imply that the device
tree itself does any actual "probing" of barebox. i'm guessing that
what this should really say is something like, "even if barebox has
been built with an internal device tree, you may want to start the
kernel without passing that device tree."  thus, "oftree -f", etc,
etc.

  also, at the risk of being overly pedantic, i would distinguish
between the actions of "probing" and "consulting." i would normally
use the word "probe" in the sense of probing for possible devices, not
knowing if they're there or not. i would use the word "consult" when
one is reading or processing something that is known to be there, such
as the device tree.

  some probably silly questions about device trees coming up shortly
...

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
