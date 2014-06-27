Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-x229.google.com ([2a00:1450:400c:c03::229])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X0TnV-0004Se-9M
 for barebox@lists.infradead.org; Fri, 27 Jun 2014 10:54:26 +0000
Received: by mail-we0-f169.google.com with SMTP id t60so5056213wes.14
 for <barebox@lists.infradead.org>; Fri, 27 Jun 2014 03:54:03 -0700 (PDT)
From: Holger Schurig <holgerschurig@gmail.com>
Date: Fri, 27 Jun 2014 13:00:11 +0200
Message-Id: <1403866821-4029-3-git-send-email-holgerschurig@gmail.com>
In-Reply-To: <1403866821-4029-1-git-send-email-holgerschurig@gmail.com>
References: <1403866821-4029-1-git-send-email-holgerschurig@gmail.com>
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
Subject: [PATCH 02/12] doc: make "System setup" an appendix
To: barebox@lists.infradead.org

Note that I used "Appendix: " as text, because it looks like
python-sphinx doesn't know about appendices.

Signed-off-by: Holger Schurig <holgerschurig@gmail.com>
---
 Documentation/user/system-setup.rst |    4 ++--
 Documentation/user/user-manual.rst  |    2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/Documentation/user/system-setup.rst b/Documentation/user/system-setup.rst
index 35d6147..683da9e 100644
--- a/Documentation/user/system-setup.rst
+++ b/Documentation/user/system-setup.rst
@@ -1,5 +1,5 @@
-System Setup
-============
+Appendix: System Setup
+======================
 
 Serial Console Access
 ---------------------
diff --git a/Documentation/user/user-manual.rst b/Documentation/user/user-manual.rst
index 4e2a250..fc97bac 100644
--- a/Documentation/user/user-manual.rst
+++ b/Documentation/user/user-manual.rst
@@ -10,7 +10,6 @@ Contents:
    :maxdepth: 2
 
    introduction
-   system-setup
    barebox
    networking
    automount
@@ -27,6 +26,7 @@ Contents:
    usb
    ubi
    booting-linux
+   system-setup
 
 * :ref:`search`
 * :ref:`genindex`
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
