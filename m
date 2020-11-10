Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kcVfN-0005I7-OF
 for barebox@lists.infradead.org; Tue, 10 Nov 2020 15:34:42 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 10 Nov 2020 16:34:30 +0100
Message-Id: <20201110153430.32123-2-a.fatoum@pengutronix.de>
In-Reply-To: <20201110153430.32123-1-a.fatoum@pengutronix.de>
References: <20201110153430.32123-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 2/2] Documentation: state: clarify how to access state device
 parameters
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Users may be inclined to use hyphens in state variable names as this is
customary for device tree nodes. Such variables can't be read with
$state.example-variable or written with state.example-variable=,
because it's incompatible with Hush. Adjust the documentation to nudge
users into the correct direction (${state.example-variabe} and setenv)

Suggested-by: Matthias Fend <Matthias.Fend@wolfvision.net>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/user/state.rst | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/Documentation/user/state.rst b/Documentation/user/state.rst
index 78ce24f9edce..54aa396257f9 100644
--- a/Documentation/user/state.rst
+++ b/Documentation/user/state.rst
@@ -684,9 +684,9 @@ Frontend
 --------
 
 As frontend a *state* instance is a regular barebox device which has
-device parameters for the *state* variables. With this the variables can
+:ref:`device_parameters` for the *state* variables. With this the variables can
 be accessed like normal shell variables. The ``state`` command is used
 to save/restore a *state* variable set to the backend device.
 
-After initializing the variable can be accessed with ``$state.foo``.
-``state -s`` stores the *state* to the backend device.
+After initializing the variable can be accessed with ``${state.foo}`` or
+:ref:`command_setenv`. ``state -s`` stores the *state* to the backend device.
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
