Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x243.google.com ([2a00:1450:4010:c07::243])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bhjDF-0006w6-TI
 for barebox@lists.infradead.org; Wed, 07 Sep 2016 20:12:53 +0000
Received: by mail-lf0-x243.google.com with SMTP id s29so250909lfg.3
 for <barebox@lists.infradead.org>; Wed, 07 Sep 2016 13:12:29 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed,  7 Sep 2016 23:12:20 +0300
Message-Id: <20160907201220.26764-1-antonynpavlov@gmail.com>
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
Subject: [PATCH] Documentation: usb: fix sphinx warning
To: barebox@lists.infradead.org
Cc: "Robert P . J . Day" <rpjday@crashcourse.ca>

The patch fixes this sphinx warnings:

    barebox/Documentation/user/usb.rst:61: WARNING: Could not lex literal_block as "c". Highlighting skipped.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
Cc: Robert P. J. Day <rpjday@crashcourse.ca>
---
 Documentation/user/usb.rst | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/user/usb.rst b/Documentation/user/usb.rst
index 8602a8f..bbcb045 100644
--- a/Documentation/user/usb.rst
+++ b/Documentation/user/usb.rst
@@ -56,7 +56,9 @@ shall be provided to the host. For the possible ``flags`` see
 
 On the host side, the tool `dfu-util <http://dfu-util.gnumonks.org/>`_ can be used
 to update the partitions. It is available for most distributions and typically
-supports the following options::
+supports the following options:
+
+.. code-block:: none
 
   dfu-util -h
   Usage: dfu-util [options] ...
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
