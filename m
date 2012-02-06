Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RuRE7-0001vX-N7
 for barebox@lists.infradead.org; Mon, 06 Feb 2012 16:15:40 +0000
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
 ([99.241.91.63] helo=crashcourse.ca)
 by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
 (Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
 id 1RuRDz-0007GY-75
 for barebox@lists.infradead.org; Mon, 06 Feb 2012 11:15:27 -0500
Date: Mon, 6 Feb 2012 11:15:20 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <alpine.DEB.2.02.1202061114230.6969@oneiric>
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
Subject: [PATCH] DOC: Grammar and typo fixes in first_steps.dox.
To: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>


Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

diff --git a/Documentation/first_steps.dox b/Documentation/first_steps.dox
index edc612f..17fdf37 100644
--- a/Documentation/first_steps.dox
+++ b/Documentation/first_steps.dox
@@ -3,12 +3,12 @@
 <i>This section demonstrates the first steps with the 'sandbox'
 platform. </i>

-@a barebox usually needs an environment for storing it's configuration.
-You can generate an environment using the example-environment contained
-in arch/sanbox/board/env:
+@a barebox usually needs an environment for storing its configuration.
+You can generate an environment using the example environment contained
+in arch/sandbox/board/env:

 @code
-# ./scripts/bareboxenv -s -p 0x10000 arch/sanbox/board/env/ env.bin
+# ./scripts/bareboxenv -s -p 0x10000 arch/sandbox/board/env/ env.bin
 @endcode

 To get some files to play with you can generate a cramfs image:

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
