Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rg27f-0001Wk-SY
 for barebox@lists.infradead.org; Wed, 28 Dec 2011 22:37:27 +0000
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
 ([99.241.2.77] helo=crashcourse.ca)
 by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
 (Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
 id 1Rg27S-0005Qd-7u
 for barebox@lists.infradead.org; Wed, 28 Dec 2011 17:37:10 -0500
Date: Wed, 28 Dec 2011 17:37:03 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <alpine.DEB.2.02.1112281732160.11010@oneiric>
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
Subject: barebox support for 4460-based pandaboard ES?
To: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>


  i *probably* know the answer to this, but does the current
development version of barebox support the pandaboard ES?  over at
elinux.org, there's a page discussing barebox and the original version
of the pandaboard:

  http://elinux.org/Panda_How_to_Barebox

it claims that the current 4430 code in barebox isn't correct for the
4460 -- i don't know enough to know whether that's still true as that
page hasn't changed in a month and a half, but the barebox git log
doesn't seem to suggest anything that would have addressed this.

  so my first guess is, barebox still doesn't support the ES.  but i'd
love to be proven wrong.

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
