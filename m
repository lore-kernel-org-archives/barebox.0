Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mailout03.rmx.de ([94.199.88.101])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyybx-0002cX-78
 for barebox@lists.infradead.org; Tue, 04 Feb 2020 13:51:30 +0000
Received: from kdin01.retarus.com (unknown [172.19.17.48])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mailout03.rmx.de (Postfix) with ESMTPS id 48BmM217bkzlc90
 for <barebox@lists.infradead.org>; Tue,  4 Feb 2020 14:51:26 +0100 (CET)
Received: from ppmail.arri.de (unknown [217.111.95.7])
 (using TLSv1 with cipher AES128-SHA (128/128 bits))
 (No client certificate requested)
 by kdin01.retarus.com (Postfix) with ESMTPS id 48BmM133NCz2yy8
 for <barebox@lists.infradead.org>; Tue,  4 Feb 2020 14:51:25 +0100 (CET)
From: Christian Eggers <ceggers@arri.de>
Date: Tue, 4 Feb 2020 14:50:42 +0100
Message-ID: <20200204135042.16545-1-ceggers@arri.de>
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
Subject: [PATCH] doc: bootchooser: Fix barebox-state example
To: barebox@lists.infradead.org
Cc: Christian Eggers <ceggers@arri.de>, ceggers@gmx.de

- Fix prefix
- attemps --> attempts
- add missing equal sign
- Add 2 examples

Signed-off-by: Christian Eggers <ceggers@arri.de>
---
 Documentation/user/bootchooser.rst | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/user/bootchooser.rst b/Documentation/user/bootchooser.rst
index 1680ea78ed..8456e11823 100644
--- a/Documentation/user/bootchooser.rst
+++ b/Documentation/user/bootchooser.rst
@@ -112,7 +112,9 @@ In case only the booted system itself knows when it is in a good state,
 it can report this to the bootchooser from Linux userspace using the
 *barebox-state* tool from the dt-utils_ package.::
 
-  barebox-state -s bootstate.<target>.remaining_attemps <reset-value>
+  barebox-state [-n <state variable set>] -s [<prefix>.]<target>.remaining_attempts=<reset-value>
+  barebox-state -n system_state -s bootstate.system1.remaining_attempts=3
+  barebox-state -s system1.remaining_attempts=3
 
 If instead the bootchooser can detect a failed boot itself using the
 :ref:`reset reason <reset_reason>` (WDG), one can mark the boot successful
-- 
Christian Eggers
Embedded software developer

Arnold & Richter Cine Technik GmbH & Co. Betriebs KG
Sitz: Muenchen - Registergericht: Amtsgericht Muenchen - Handelsregisternummer: HRA 57918
Persoenlich haftender Gesellschafter: Arnold & Richter Cine Technik GmbH
Sitz: Muenchen - Registergericht: Amtsgericht Muenchen - Handelsregisternummer: HRB 54477
Geschaeftsfuehrer: Dr. Michael Neuhaeuser; Stephan Schenk; Walter Trauninger; Markus Zeiler


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
