Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Ra3Gn-0005rZ-Qz
 for barebox@lists.infradead.org; Mon, 12 Dec 2011 10:38:06 +0000
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
 ([99.241.2.77] helo=crashcourse.ca)
 by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
 (Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
 id 1Ra3Gg-0004ws-6H
 for barebox@lists.infradead.org; Mon, 12 Dec 2011 05:37:58 -0500
Date: Mon, 12 Dec 2011 05:37:51 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <alpine.DEB.2.02.1112120536280.27673@oneiric>
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
Subject: [PATCH] Update README to refer to newer location of example
 environment
To: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>


Update location of example environment to match current Documentation.

Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

diff --git a/README b/README
index 9b58f26..5662a1c 100644
--- a/README
+++ b/README
@@ -108,9 +108,9 @@ If everything goes well, the result is a file called barebox:

 Barebox usually needs an environment for storing the configuation data.
 You can generate an environment using the example environment contained
-in examples/environment:
+in board/sandbox/env:

-  # ./scripts/bareboxenv -s -p 0x10000 examples/environment/ env.bin
+  # ./scripts/bareboxenv -s -p 0x10000 board/sandbox/env/ env.bin

 To get some files to play with you can generate a cramfs image:
   # mkcramfs somedir/ cramfs.bin

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
