Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout-p-101.mailbox.org ([2001:67c:2050::465:101])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kGmoI-0001h5-0d
 for barebox@lists.infradead.org; Fri, 11 Sep 2020 17:26:08 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:2:0])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mout-p-101.mailbox.org (Postfix) with ESMTPS id 4Bp2j55kRwzKmvm
 for <barebox@lists.infradead.org>; Fri, 11 Sep 2020 19:26:01 +0200 (CEST)
From: Thorsten Scherer <tk-scherer@mailbox.org>
Date: Fri, 11 Sep 2020 19:25:34 +0200
Message-Id: <20200911172534.4349-1-tk-scherer@mailbox.org>
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
Subject: [PATCH] Documentation: user: fix referenced filename
To: barebox@lists.infradead.org
Cc: Thorsten Scherer <tk-scherer@mailbox.org>

Adjust filename and path of nfsroot.txt according to Linux commit
f9a9349 ("Documentation: nfsroot.txt: convert to ReST")
---
 Documentation/user/booting-linux.rst | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/user/booting-linux.rst b/Documentation/user/booting-linux.rst
index 983b56dee..60babb513 100644
--- a/Documentation/user/booting-linux.rst
+++ b/Documentation/user/booting-linux.rst
@@ -274,7 +274,7 @@ In any case, make sure that the specified mountpoint is exported by your NFS
 server.
 
 For more information about booting with ``nfsroot``, see
-`Documentation/filesystems/nfs/nfsroot.txt <https://github.com/torvalds/linux/blob/master/Documentation/filesystems/nfs/nfsroot.txt>`__
+`Documentation/admin-guide/nfs/nfsroot.rst <https://github.com/torvalds/linux/blob/master/Documentation/admin-guide/nfs/nfsroot.rst>`__
 in the Linux kernel documentation.
 
 If the preconfigured paths or names are not suitable, they can be adjusted in
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
