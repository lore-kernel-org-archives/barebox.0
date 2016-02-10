Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aTRgo-0002W5-Eh
 for barebox@lists.infradead.org; Wed, 10 Feb 2016 10:08:03 +0000
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Wed, 10 Feb 2016 11:07:36 +0100
Message-Id: <1455098857-25339-3-git-send-email-r.schwebel@pengutronix.de>
In-Reply-To: <1455098857-25339-1-git-send-email-r.schwebel@pengutronix.de>
References: <1455098857-25339-1-git-send-email-r.schwebel@pengutronix.de>
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
Subject: [PATCH 3/4] Documentation: user manual: improve tftp description
To: barebox@lists.infradead.org

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 Documentation/user/barebox.rst | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/user/barebox.rst b/Documentation/user/barebox.rst
index b1f06b0..530693d 100644
--- a/Documentation/user/barebox.rst
+++ b/Documentation/user/barebox.rst
@@ -186,7 +186,9 @@ with U-Boot's 'go' command::
   U-Boot: tftp $load_addr barebox.bin
   U-Boot: go $load_addr
 
-With barebox already running on your board, this can be used to chainload another barebox::
+With barebox already running on your board, this can be used to chainload
+another barebox. For instance, if you mounted a TFTP server to ``/mnt/tftp``
+(see :ref:`filesystems_tftp` for how to do that), chainload barebox with::
 
   bootm /mnt/tftp/barebox.bin
 
-- 
2.7.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
