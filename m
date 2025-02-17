Delivery-date: Mon, 17 Feb 2025 19:23:17 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tk5m1-003aNv-2Z
	for lore@lore.pengutronix.de;
	Mon, 17 Feb 2025 19:23:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tk5lz-0003TM-J2
	for lore@pengutronix.de; Mon, 17 Feb 2025 19:23:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Mn/fIbO1/bfouh+JZSTLorgn4wyL+FQ7Wh5CRTp6PtA=; b=aaJgvrySrL4XQNDvd9q7TSoTdu
	keNO/HY+5XkNgTozMiMspfKTfJm5BPA5oz6YwB3X3m4NVfHsx2SmUoGi26DWAOZvy6eYNzL3gTopQ
	IqcID9IZPvUmE+eHEnc7C20hD4b9Wq5dxjPSWnEKSg4R0G/jT0Yhj9g7IYChEmLKX37pppd0vKdIq
	sZwEY4gikTGEjdgBuZocBd6Ocd1saUDDy5pJsCKa2NONiR7ZyVRYrdjxWuL5XpBcktQ/9Qf2zpmGt
	XlPdabi2bGI6dXTLNc3hDQ/aFBBiJkHb7xSAMTCr2S1OMA56M44whPznbagAmStaD+QtyYKzRucb/
	0L22B57Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tk5lN-00000005aeF-2tk3;
	Mon, 17 Feb 2025 18:22:37 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tk5Z3-00000005Z8M-38E5
	for barebox@bombadil.infradead.org;
	Mon, 17 Feb 2025 18:09:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=Mn/fIbO1/bfouh+JZSTLorgn4wyL+FQ7Wh5CRTp6PtA=; b=Tnxa4ORlEORQR8iHBRs+V/F+fI
	676Y23aFtIEtY3lrFwPCsVKp6Hi5/9KBUMxldoclN6lKi8HcUjWOngIXCAqbxlv5B8dmn1+OU2rAk
	dHLdZq0biktWBappeiY/nzK8RLoujXCgs1oKF5e7oFOuHtfs5dEe9IaHGXWIEP5tTSxHOcJcg7ztI
	bH68sAlExUmaoGul1t/8K7TxgnUqYYyuAe7TawUU5Re0yzoLoSA1YH+wkv1fH86iHpiy77rk+SbQB
	1bwrhGhmugcuRnYNsfZfpiEKOUFsyQdQ8m9I8F7nfRiPCExT9DFa+IQUk1VPn/BOOxqZXDc95qCvI
	WXgFuJcQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tk5Z0-00000001rl4-33Ek
	for barebox@lists.infradead.org;
	Mon, 17 Feb 2025 18:09:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tk5Z0-0001Cs-6M; Mon, 17 Feb 2025 19:09:50 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tk5Z0-001SKD-01;
	Mon, 17 Feb 2025 19:09:50 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tk5Yz-00GcfG-2u;
	Mon, 17 Feb 2025 19:09:49 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Marco Felsch <m.felsch@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 17 Feb 2025 19:09:48 +0100
Message-Id: <20250217180949.3961860-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250217180949.3961860-1-a.fatoum@pengutronix.de>
References: <20250217180949.3961860-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250217_180950_902759_B4170DF2 
X-CRM114-Status: GOOD (  15.56  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 2/3] Documentation: user: optee: bring up-to-date
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Most platforms now use OP-TEE early loading and we have gained support
to communicate with OP-TEE and not only loading it.

Reflect that in the docs.

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - Add Marco's R-b
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



