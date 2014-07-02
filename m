Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X2PeQ-00044H-0K
 for barebox@lists.infradead.org; Wed, 02 Jul 2014 18:53:02 +0000
Received: from [99.240.204.5] (port=44573 helo=crashcourse.ca)
 by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
 (Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
 id 1X2Pe3-0006ju-Ss
 for barebox@lists.infradead.org; Wed, 02 Jul 2014 14:52:39 -0400
Date: Wed, 2 Jul 2014 14:52:37 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <alpine.LFD.2.11.1407021450110.4107@localhost>
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
Subject: any reason why sandbox (and other defconfigs) don't enable MAGICVAR?
To: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>


  was playing with a sandbox build and noticed that the default
sandbox config doesn't select MAGICVAR -- any reason why not? on a
larger scale, it seems odd that quite a number of defconfigs select
MAGICVAR (and MAGICVAR_HELP), while others don't.

  is this a per-machine selection? it just seems that it should be
more consistent -- that fundamental features like MAGICVAR should
either be all on or all off by default. thoughts?

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
