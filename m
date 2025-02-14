Delivery-date: Fri, 14 Feb 2025 15:24:43 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tiwcV-002IUH-2o
	for lore@lore.pengutronix.de;
	Fri, 14 Feb 2025 15:24:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tiwcU-0008W6-IE
	for lore@pengutronix.de; Fri, 14 Feb 2025 15:24:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3qmLloRGLY2U+oOMPYgt7sQ+iP+QueI80tfMENqvNE4=; b=BtkT9YH4jAGutZ0HNP9xQBzaa7
	+IrLc5rVuZJXh9Zhih7g9qu1tRgsgBc3pjhzs0AlcbFr0OVMzuT9sqag76VZ4rQp5zxIgkWDPTJt6
	R2SQekXqoY9OFlcnLEbUHAVLXVlBl3dOqF9nOscsey4qYBzEKc7N6sh0n8/PeW1E63kUUcQMqUOvb
	hGEz+Dsox8Edtrf+MoGw8tTQnw+4kiC2OrNgYdlZFz8aoXyMLPSk7h+UH4NuIzga/dHKAfLOnBxCl
	o12BlPOMIbm61maVx5JIt+uC2pIGLPu1LSBYFmxfqTBCweR8ro69aFmppFHauq1qhCotOOwkz/vKV
	9ifQFA6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tiwbr-0000000F8eM-41Oy;
	Fri, 14 Feb 2025 14:24:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tiwbn-0000000F8dC-3kfz
	for barebox@lists.infradead.org;
	Fri, 14 Feb 2025 14:24:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tiwbl-0008FZ-TA; Fri, 14 Feb 2025 15:23:57 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tiwbl-000vqF-2H;
	Fri, 14 Feb 2025 15:23:57 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tiwbl-00FCw2-20;
	Fri, 14 Feb 2025 15:23:57 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 14 Feb 2025 15:23:55 +0100
Message-Id: <20250214142356.3624561-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250214142356.3624561-1-a.fatoum@pengutronix.de>
References: <20250214142356.3624561-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250214_062359_931638_00DBCE00 
X-CRM114-Status: GOOD (  15.23  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-6.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 2/3] Documentation: user: optee: bring up-to-date
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Most platforms now use OP-TEE early loading and we have gained support
to communicate with OP-TEE and not only loading it.

Reflect that in the docs.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/user/optee.rst | 45 +++++++++++++++++++++++++++---------
 1 file changed, 34 insertions(+), 11 deletions(-)

diff --git a/Documentation/user/optee.rst b/Documentation/user/optee.rst
index 950917b446ad..2729d21d2e44 100644
--- a/Documentation/user/optee.rst
+++ b/Documentation/user/optee.rst
@@ -4,20 +4,20 @@
 OP-TEE
 ======
 
-Barebox is able to start the Open Portable Trusted Execution Environment
-(OP-TEE) either before starting the linux kernel or during lowlevel board
-initialization in the Pre Bootloader ``PBL``.
+barebox has support for loading and communicating with the Open Portable Trusted
+Execution Environment (OP-TEE).
 
-Before Linux start
-------------------
-Enable the `CONFIG_BOOTM_OPTEE` configuration variable and configure the
-`CONFIG_OPTEE_SIZE` variable. This will reserve a memory area at the end
-of memory for OP-TEE to run, usually Barebox would relocate itself there. To
-load OP-TEE before the kernel is started, configure the global ``bootm.tee``
-variable to point to a valid OPTEE v1 binary.
+Loading OP-TEE
+--------------
+
+barebox can start OP-TEE either during lowlevel board initialization
+in the :ref:`prebootloader <pbl>` or prior to starting the linux kernel.
+
+.. _optee_early_loading:
 
 During the PBL
---------------
+^^^^^^^^^^^^^^
+
 To start OP-TEE during the lowlevel initialization of your board in the ``PBL``,
 enable the ``CONFIG_PBL_OPTEE`` configuration variable. your board should then
 call the function ``start_optee_early(void* tee, void* fdt)`` with a valid tee
@@ -27,3 +27,26 @@ Since OP-TEE in the default configuration also modifies the device tree, don't
 pass the barebox internal device tree, instead copy it into a different memory
 location and pass it to OP-TEE afterwards.
 The modified device tree can then be passed to the main barebox start function.
+
+Before Linux start
+^^^^^^^^^^^^^^^^^^
+
+.. warning:: Late loading of OP-TEE is deprecated, greatly increases the
+   attack surface and is only supported on 32-bit ARM systems.
+   Systems should prefer early loading OP-TEE whenever possible.
+
+Enable the `CONFIG_BOOTM_OPTEE` configuration variable and configure the
+`CONFIG_OPTEE_SIZE` variable. This will reserve a memory area at the end
+of memory for OP-TEE to run, usually Barebox would relocate itself there. To
+load OP-TEE before the kernel is started, configure the global ``bootm.tee``
+variable to point to a valid OPTEE v1 binary.
+
+Communication with OP-TEE
+-------------------------
+
+Controlled by the ``CONFIG_OPTEE`` option, barebox has support for
+communicating with OP-TEE via secure monitor calls and dynamic shared memory.
+This is possible independently of whether OP-TEE was loaded by barebox or not.
+
+The primary use cases currently is SCMI-over-OP-TEE, which is required on
+the STM32MP13.
-- 
2.39.5



