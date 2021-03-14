Delivery-date: Sun, 14 Mar 2021 13:29:37 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lLPsH-0007mg-0s
	for lore@lore.pengutronix.de; Sun, 14 Mar 2021 13:29:37 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lLPsE-00075x-8b
	for lore@pengutronix.de; Sun, 14 Mar 2021 13:29:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rhX5Op4OxGOWY7Tq5cg2jdjhUg70krfdEziJ0kpAaAQ=; b=iiYn0pqFjLoWUBT/kDKWxo1B2
	pCrq8Nh7bQ0ddu3MrYdVP57yU7Zq2PNJtwlWhU3a7ohGdoC0YzjqlA7FNO4yv+u21fb368dgWIihD
	SqPeh3v882RrovoX++oxnCSYb0kCCQz30qfo6pgYSd+kX2qCXoT2LAJqKxolNOBmugbeLtCuujFCs
	eSBFMaxz18A2sPue/LdF/OIlEXgZv5WwjX/Z5zsDPc8yc2zeGZVw4mWe+mq5WF/hGmsCj7bZzrTe9
	q7/vSHXrxcyORxscbbpG1EJgIu/6wLbq8ewheyQQ8oeevMh13Sa2LGZiiq8NVVNpN0CYjYgLZFWHs
	k7oY2N/Ng==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lLPrM-00EC5Q-Eb; Sun, 14 Mar 2021 12:28:40 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lLPqx-00EBub-Cc
 for barebox@lists.infradead.org; Sun, 14 Mar 2021 12:28:17 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lLPqo-0006LT-Me; Sun, 14 Mar 2021 13:28:06 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lLPqn-00015x-Gf; Sun, 14 Mar 2021 13:28:05 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Sun, 14 Mar 2021 13:27:46 +0100
Message-Id: <20210314122804.4128-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210314122804.4128-1-a.fatoum@pengutronix.de>
References: <20210314122804.4128-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210314_122815_706549_59BF6B10 
X-CRM114-Status: UNSURE (   9.51  )
X-CRM114-Notice: Please train this message.
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, rcz@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 02/20] images: make BOARD_ARM_GENERIC_DT available for other
 arches
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Other architectures would benefit from the generic DT image too.
Add a new arch-agnostic symbol that arches besides ARM can select.

The new symbol itself should not have a prompt as the help text for
each architecture likely differs (e.g. device tree handoff register).

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/Kconfig | 2 +-
 images/Makefile  | 4 ++--
 pbl/Kconfig      | 4 ++++
 3 files changed, 7 insertions(+), 3 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index a1f781b60f95..3b983c8b3d0a 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -323,7 +323,7 @@ config BOARD_ARM_VIRT
 	select OF_OVERLAY
 
 config BOARD_ARM_GENERIC_DT
-	select LIBFDT
+	select BOARD_GENERIC_DT
 	select ARM_AMBA
 	depends on HAVE_PBL_MULTI_IMAGES
 	depends on OFDEVICE
diff --git a/images/Makefile b/images/Makefile
index b8899dcd2a81..84492a154d16 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -166,9 +166,9 @@ include $(srctree)/images/Makefile.zynqmp
 include $(srctree)/images/Makefile.layerscape
 
 
-pblb-$(CONFIG_BOARD_ARM_GENERIC_DT) += start_dt_2nd
+pblb-$(CONFIG_BOARD_GENERIC_DT) += start_dt_2nd
 FILE_barebox-dt-2nd.img = start_dt_2nd.pblb
-image-$(CONFIG_BOARD_ARM_GENERIC_DT) += barebox-dt-2nd.img
+image-$(CONFIG_BOARD_GENERIC_DT) += barebox-dt-2nd.img
 
 ifdef CONFIG_ARM
 pblb-$(CONFIG_PBL_SINGLE_IMAGE) += start_pbl
diff --git a/pbl/Kconfig b/pbl/Kconfig
index 6e8cc3ac04ae..2eea5aef7a30 100644
--- a/pbl/Kconfig
+++ b/pbl/Kconfig
@@ -40,6 +40,10 @@ config PBL_VERIFY_PIGGY
 	depends on ARM
 	bool
 
+config BOARD_GENERIC_DT
+	bool
+	select LIBFDT
+
 config IMAGE_COMPRESSION
 	bool
 	depends on HAVE_IMAGE_COMPRESSION
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

