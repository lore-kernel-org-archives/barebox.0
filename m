Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X0WE8-0001Oc-LU
 for barebox@lists.infradead.org; Fri, 27 Jun 2014 13:30:05 +0000
Received: from [69.196.158.250] (port=33375 helo=crashcourse.ca)
 by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
 (Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
 id 1X0WDl-00074v-1V
 for barebox@lists.infradead.org; Fri, 27 Jun 2014 09:29:41 -0400
Date: Fri, 27 Jun 2014 09:25:31 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <alpine.LFD.2.11.1406270924150.7069@localhost>
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
Subject: [PATCH] Documentation: Fix broken line in download.rst.
To: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>


"::" should properly be "..".

Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

diff --git a/Documentation/download.rst b/Documentation/download.rst
index 9e30efe..1c7e84f 100644
--- a/Documentation/download.rst
+++ b/Documentation/download.rst
@@ -1,4 +1,4 @@
-:: _download:
+.. _download:

 Getting barebox
 ===============

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
