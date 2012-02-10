Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rvq4P-0006HL-Sp
 for barebox@lists.infradead.org; Fri, 10 Feb 2012 12:59:22 +0000
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
 ([99.241.91.63] helo=crashcourse.ca)
 by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
 (Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
 id 1Rvq4K-0002fv-KA
 for barebox@lists.infradead.org; Fri, 10 Feb 2012 07:59:16 -0500
Date: Fri, 10 Feb 2012 07:59:08 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <alpine.DEB.2.02.1202100755520.10458@oneiric>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: what is the earliest i can get MLO to print out debugging info?
To: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>


  as a (sort of) followup to my last post on extending barebox to
recognize pandaboards, at the moment, i have a build that boots nicely
on an original panda but produces absolutely *no* output at all on a
panda ES.

  i know that barebox currently doesn't recognize the ES, but i'm
wondering if that's the real problem, and where i can put debugging
statements in to show something along the lines of, "hi, i'm just
starting to run MLO".

  surely there's an initial part of MLO that has to run before even
checking the revision of the board, so can i add some debugging that
would show that, or is it not even possible to set up the console
before recognizing the board?  thanks.

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
