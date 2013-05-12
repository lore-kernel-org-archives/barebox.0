Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-f42.google.com ([74.125.83.42])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UbUx6-0002Li-CU
 for barebox@lists.infradead.org; Sun, 12 May 2013 12:00:33 +0000
Received: by mail-ee0-f42.google.com with SMTP id c50so12516eek.1
 for <barebox@lists.infradead.org>; Sun, 12 May 2013 05:00:09 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Sun, 12 May 2013 13:59:55 +0200
Message-Id: <1368359995-1754-1-git-send-email-sebastian.hesselbarth@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] gitignore: add kwb binary images to gitignore file
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

This adds barebox.kwb and barebox.kwbuart to the list of files to
be ignored by git.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Acked-by: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
---
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: barebox@lists.infradead.org
---
 .gitignore |    2 ++
 1 file changed, 2 insertions(+)

diff --git a/.gitignore b/.gitignore
index d197196..a08c6c1 100644
--- a/.gitignore
+++ b/.gitignore
@@ -39,6 +39,8 @@ barebox.ubl
 barebox.zynq
 barebox.uimage
 barebox.map
+barebox.kwb
+barebox.kwbuart
 barebox-flash-image
 System.map
 Module.symvers
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
