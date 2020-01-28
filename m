Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([78.46.208.201])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwJaK-00064O-O8
 for barebox@lists.infradead.org; Tue, 28 Jan 2020 05:38:50 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Tue, 28 Jan 2020 06:38:22 +0100
Message-Id: <20200128053821.677207-6-r.czerwinski@pengutronix.de>
In-Reply-To: <20200128053821.677207-1-r.czerwinski@pengutronix.de>
References: <20200128053821.677207-1-r.czerwinski@pengutronix.de>
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
Subject: [PATCH v3 5/5] user: add documentation for OP-TEE loading
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>

Some rudimentary documentation how to load OP-TEE.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 Documentation/user/optee.rst       | 29 +++++++++++++++++++++++++++++
 Documentation/user/user-manual.rst |  1 +
 2 files changed, 30 insertions(+)
 create mode 100644 Documentation/user/optee.rst

diff --git a/Documentation/user/optee.rst b/Documentation/user/optee.rst
new file mode 100644
index 0000000000..950917b446
--- /dev/null
+++ b/Documentation/user/optee.rst
@@ -0,0 +1,29 @@
+
+.. _optee:
+
+OP-TEE
+======
+
+Barebox is able to start the Open Portable Trusted Execution Environment
+(OP-TEE) either before starting the linux kernel or during lowlevel board
+initialization in the Pre Bootloader ``PBL``.
+
+Before Linux start
+------------------
+Enable the `CONFIG_BOOTM_OPTEE` configuration variable and configure the
+`CONFIG_OPTEE_SIZE` variable. This will reserve a memory area at the end
+of memory for OP-TEE to run, usually Barebox would relocate itself there. To
+load OP-TEE before the kernel is started, configure the global ``bootm.tee``
+variable to point to a valid OPTEE v1 binary.
+
+During the PBL
+--------------
+To start OP-TEE during the lowlevel initialization of your board in the ``PBL``,
+enable the ``CONFIG_PBL_OPTEE`` configuration variable. your board should then
+call the function ``start_optee_early(void* tee, void* fdt)`` with a valid tee
+and FDT. Ensure that your OP-TEE is compiled with ``CFG_NS_ENTRY_ADDR`` unset,
+otherwise OP-TEE will not correctly return to barebox after startup.
+Since OP-TEE in the default configuration also modifies the device tree, don't
+pass the barebox internal device tree, instead copy it into a different memory
+location and pass it to OP-TEE afterwards.
+The modified device tree can then be passed to the main barebox start function.
diff --git a/Documentation/user/user-manual.rst b/Documentation/user/user-manual.rst
index 41fdb8805c..827683eaa0 100644
--- a/Documentation/user/user-manual.rst
+++ b/Documentation/user/user-manual.rst
@@ -33,6 +33,7 @@ Contents:
    system-reset
    state
    random
+   optee
    debugging
    watchdog
 
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
