Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RvFsu-0000Od-8c
 for barebox@lists.infradead.org; Wed, 08 Feb 2012 22:21:05 +0000
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
 ([99.241.91.63] helo=crashcourse.ca)
 by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
 (Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
 id 1RvFsj-0001Dr-F2
 for barebox@lists.infradead.org; Wed, 08 Feb 2012 17:20:56 -0500
Date: Wed, 8 Feb 2012 17:20:45 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <alpine.DEB.2.02.1202081718100.26281@oneiric>
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
Subject: "panda" config and build doesn't work on panda ES at all
To: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>


  just for fun, i configured and built MLO and barebox.bin for the
panda, then tried to use that on a panda ES -- got no response
whatever from minicom.  i did verify that i could boot to barebox just
fine on a regular panda, though.

  this is different from the case of a regular beagle and beagle xM,
for which the MLO and barebox.bin boot just fine on an xM, so there's
clearly a significant difference between those two panda variants as
far as barebox is concerned.  i haven't had any time to look at it in
more detail yet.

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
