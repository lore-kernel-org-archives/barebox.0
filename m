Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TfD9f-0004kE-38
 for barebox@lists.infradead.org; Sun, 02 Dec 2012 17:16:35 +0000
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
 ([174.115.5.73]:59639 helo=crashcourse.ca)
 by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
 (Exim 4.77) (envelope-from <rpjday@crashcourse.ca>)
 id 1TfD9b-0005Lj-Pl
 for barebox@lists.infradead.org; Sun, 02 Dec 2012 12:16:31 -0500
Date: Sun, 2 Dec 2012 12:16:28 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <alpine.DEB.2.02.1212021214320.32338@oneiric>
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
Subject: what is the function of "__barebox_early_initcalls_end"?
To: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>



  while perusing common/startup.c, i noticed:

extern initcall_t __barebox_initcalls_start[], __barebox_early_initcalls_end[],
                  __barebox_initcalls_end[];

but i don't see any other reference to that "early" initcall variable,
and it doesn't show up in System.map.

  what is it used for?  thanks.

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
