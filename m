Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gud20-0000XC-Tr
 for barebox@lists.infradead.org; Fri, 15 Feb 2019 12:55:54 +0000
From: Enrico Jorns <ejo@pengutronix.de>
Date: Fri, 15 Feb 2019 13:53:44 +0100
Message-Id: <20190215125348.12851-5-ejo@pengutronix.de>
In-Reply-To: <20190215125348.12851-1-ejo@pengutronix.de>
References: <20190215125348.12851-1-ejo@pengutronix.de>
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
Subject: [PATCH 4/8] doc: bootchooser: be more explicit about attempts reset
 on successful boot
To: barebox@lists.infradead.org
Cc: Enrico Jorns <ejo@pengutronix.de>

From the current description of how the bootchooser algorithm works it
is not that easy to figure out how to actually use it in a full (redundancy)
boot chain.

Signed-off-by: Enrico Jorns <ejo@pengutronix.de>
---
 Documentation/user/bootchooser.rst | 41 +++++++++++++++++++++++-------
 1 file changed, 32 insertions(+), 9 deletions(-)

diff --git a/Documentation/user/bootchooser.rst b/Documentation/user/bootchooser.rst
index 52aa595c74..7d7564b552 100644
--- a/Documentation/user/bootchooser.rst
+++ b/Documentation/user/bootchooser.rst
@@ -61,9 +61,15 @@ When booting, *bootchooser* starts the boot target with the highest ``priority``
 has a non-zero ``remaining_attempts`` counter. With every start of a boot target the
 ``remaining_attempts`` counter of this boot target is decremented by one. This means
 every boot target's ``remaining_attempts`` counter reaches zero sooner or later and
-the boot target won't be booted anymore. To prevent that, the ``remaining_attempts``
-counter must be reset to its default. There are different flags in the
-*bootchooser* which control resetting the ``remaining_attempts`` counter,
+the boot target won't be booted anymore.
+This behavior assures that one can retry booting a target a limited number of
+times to handle temporary issues (such as power outage) and optionally allows
+booting a fallback in case of a permanent failure.
+To indicate a successful boot, one must explicitly reset the remaining
+attempts counter. See `Marking a Boot as Successful`_.
+
+To prevent ending up in an unbootable system after a number of failed boot
+attempts, there is a also a built-in mechanism to reset the counters to their defaults,
 controlled by the ``global.bootchooser.reset_attempts`` variable. It holds a
 list of space-separated flags. Possible values are:
 
@@ -74,12 +80,29 @@ list of space-separated flags. Possible values are:
 - ``all-zero``: The ``remaining_attempts`` counters of all enabled boot targets are
   reset when none of them has any ``remaining_attempts`` left.
 
-Additionally the ``remaining_attempts`` counter can be reset manually using the
-:ref:`bootchoser command <command_bootchooser>`. This allows for custom conditions
-under which a system is marked as good.
-In case only the booted system itself knows when it is in a good state, the
-barebox-state tool from the dt-utils_ package can be used to reset the
-``remaining_attempts`` counter from the running system.
+Marking a Boot as Successful
+############################
+
+While the bootchooser algorithm handles attempts decrementation, retries and
+selection of the right boot target itself, it cannot decide if the system
+booted successfully on its own.
+
+In case only the booted system itself knows when it is in a good state,
+it can report this to the bootchooser from Linux userspace using the
+*barebox-state* tool from the dt-utils_ package.::
+
+  barebox-state -s bootstate.<target>.remaining_attemps <reset-value>
+
+If instead the bootchooser can detect a failed boot itself using the
+:ref:`reset reason <reset_reason>` (WDG), one can mark the boot successful
+using the barebox :ref:`bootchoser command <command_bootchooser>`::
+
+  bootchooser -s
+
+to mark the last boot successful.
+This will reset the ``remaining_attempts`` counter of the *last chosen* slot to
+its default value (``reset_attempts``).
+
 
 .. _dt-utils: https://git.pengutronix.de/cgit/tools/dt-utils
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
