Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X2Pmd-0008JA-NW
 for barebox@lists.infradead.org; Wed, 02 Jul 2014 19:01:33 +0000
Received: from [99.240.204.5] (port=44638 helo=crashcourse.ca)
 by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
 (Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
 id 1X2PmI-000755-B1
 for barebox@lists.infradead.org; Wed, 02 Jul 2014 15:01:10 -0400
Date: Wed, 2 Jul 2014 15:01:08 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <alpine.LFD.2.11.1407021457320.4254@localhost>
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
Subject: real pedantic whining: "devicetree" isn't really a single word
To: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>


  when writing/editing docs, i typically follow the lead of the
developer of the software/feature, and it seems that the proper
spelling of "device tree" is, well, "device tree" (two words).

  i won't touch any of that now, but it may be that to be rigourously
correct, a single global change should fix references to that anywhere
it's not being used as a variable name.

  anyway, just something to ponder whether it's worth doing some time
down the road. i *warned* you i was picky, but did you listen?
nooooo...

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
