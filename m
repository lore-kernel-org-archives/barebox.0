Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr0-x244.google.com ([2a00:1450:400c:c0c::244])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dFoyn-0001wQ-7X
 for barebox@lists.infradead.org; Tue, 30 May 2017 21:47:09 +0000
Received: by mail-wr0-x244.google.com with SMTP id 6so5424667wrb.1
 for <barebox@lists.infradead.org>; Tue, 30 May 2017 14:46:44 -0700 (PDT)
From: Aleksander Morgado <aleksander@aleksander.es>
Date: Tue, 30 May 2017 23:46:34 +0200
Message-Id: <20170530214634.6768-1-aleksander@aleksander.es>
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
Subject: [PATCH] Documentation: remote-control: fix typo
To: barebox@lists.infradead.org
Cc: Aleksander Morgado <aleksander@aleksander.es>

Correctly reference `--port` instead of	`--baudrate` when explaining
how to specify the port.

Signed-off-by: Aleksander Morgado <aleksander@aleksander.es>
---
 Documentation/user/remote-control.rst | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/Documentation/user/remote-control.rst b/Documentation/user/remote-control.rst
index 99c2181df..217251429 100644
--- a/Documentation/user/remote-control.rst
+++ b/Documentation/user/remote-control.rst
@@ -53,9 +53,9 @@ configuring bbremote
 ^^^^^^^^^^^^^^^^^^^^
 
 bbremote needs the port and possibly the baudrate to access the remote
-barebox. The port can be configured with the ``--baudrate`` option or
-with the ``BBREMOTE_PORT`` environment variable. The port can either be
-the device special file if it's a local port or if it's a remote port a
+barebox. The port can be configured with the ``--port`` option or with
+the ``BBREMOTE_PORT`` environment variable. The port can either be the
+device special file if it's a local port or if it's a remote port a
 string of the form: ``rfc2217://host:port``. The baudrate can be given
 with the ``--baudrate`` option or the ``BBREMOTE_BAUDRATE`` environment
 variable. For the rest of this document it is assumed that ``bbremote``
@@ -131,4 +131,3 @@ This can be mounted on barebox using the regular mount command using
   bbremote --export=somedir console
   mkdir -p /ratpfs; mount -t ratpfs none /ratpfs
   ls /ratpfs
-
-- 
2.12.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
