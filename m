Delivery-date: Fri, 28 Nov 2025 15:11:55 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOzCV-005nwC-26
	for lore@lore.pengutronix.de;
	Fri, 28 Nov 2025 15:11:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOzCU-000420-KT
	for lore@pengutronix.de; Fri, 28 Nov 2025 15:11:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CytX66lFOH2ykIOLGrHtj0vYhijVoxDYVTsC9kJwOmw=; b=VycUno4aUvFw3E4TMOOzVmzM8U
	drCEXwC+L6gB+APbGRlAYmFmcK35JDtLVO8awfSEIK52KfI3M3KgSwEf5QLxkQQeRSLr+uiHVvlZ/
	nVIW0DFbkTPfb6ZBEqu0jPALL64nMA5EmvhJvsaYZYYEXWvZ0/wf8aepAAdWK4jwt5fq276SI6NtO
	30iqm3LhLS9r88qtY8H14/4vMwPXxN7Jndh5K3K+KK1F7Qq0ndYRuS4vWXVk6161+dwzuMPE1F91Z
	zTt/utD75HQatyICNeeJH4ynBpV9kRLisH0fhRhucQriQ7OtnR61GyZTFgcYNbyrCz8/LRCRulKMD
	u6FtsThQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOzC0-00000000WUx-1fR4;
	Fri, 28 Nov 2025 14:11:24 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOzBz-00000000WU8-1p80
	for barebox@lists.infradead.org;
	Fri, 28 Nov 2025 14:11:23 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 727B36015B;
	Fri, 28 Nov 2025 14:11:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 29571C116B1;
	Fri, 28 Nov 2025 14:11:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764339081;
	bh=RK5I7MzKqHTT1khivvQb6jIvTV3ZEhugm7xngX+slJg=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=OfFktE0/3OMGT5EdzXTgGgJHUE2/smOtUw127eXHovyBOLWElmxqKr/s5xxdSeL/S
	 r3XxDgdHX0BQerNnF84oQ2x3jECLoaXdNcW+jhnWs1IHeqZUpdgE9p2ohxyx74qIkP
	 rNeFgDEgYXOmpAtJlqz6osL7lRNqiWmCQ59FXgog2jYfi5NNewMQ40uunimQ5hPJvA
	 weQN9mT++gTEdVx50BXBc6Q7hS5HwIz1oQw2C7gENds3yrYmbYsnMyzGUi+GSAOE+T
	 avt0ElF8LumM0G3DyLa1DrbI9Xb1llSDYZXHD0Yy8T8kgpO9VqVc9qauMgP2QvOIkw
	 ysJaHCV2+qpzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1BDDCD116F6;
	Fri, 28 Nov 2025 14:11:21 +0000 (UTC)
From: Maud Spierings via B4 Relay <devnull+maudspierings.gocontroll.com@kernel.org>
Date: Fri, 28 Nov 2025 15:08:53 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251128-imx_usb-v1-2-bb6a5180b38e@gocontroll.com>
References: <20251128-imx_usb-v1-0-bb6a5180b38e@gocontroll.com>
In-Reply-To: <20251128-imx_usb-v1-0-bb6a5180b38e@gocontroll.com>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Maud Spierings <maudspierings@gocontroll.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764339080; l=915;
 i=maudspierings@gocontroll.com; s=20250214; h=from:subject:message-id;
 bh=puxY5pJSZsJ+VyRdZC4qG9rFi3Qw/x8A0EbiuaE/63c=;
 b=Ba7tWP+MlEQr3j+n3GlWvfXZlCAwEaOc4+bguWvJzczNsdgG6Zb6u0wvqe5PsGzcwPyYstTTN
 Gcqg4TlMjfaBHQD4T1A0/n4odPFVlUBKD81MKOD2j0vRgCS0QmV1wN/
X-Developer-Key: i=maudspierings@gocontroll.com; a=ed25519;
 pk=7chUb8XpaTQDvWhzTdHC0YPMkTDloELEC7q94tOUyPg=
X-Endpoint-Received: by B4 Relay for maudspierings@gocontroll.com/20250214
 with auth_id=341
X-Original-From: Maud Spierings <maudspierings@gocontroll.com>
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
Reply-To: maudspierings@gocontroll.com
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-103.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,USER_IN_WELCOMELIST,
	USER_IN_WHITELIST autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/3] scripts: imx: Makefile.mingw64: add _GNU_SOURCE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Maud Spierings <maudspierings@gocontroll.com>

imx.c uses asprintf which requires _GNU_SOURCE to be defined, include
defines.h to define it.

Signed-off-by: Maud Spierings <maudspierings@gocontroll.com>
---
 scripts/imx/Makefile.mingw64 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/imx/Makefile.mingw64 b/scripts/imx/Makefile.mingw64
index e012d833f1..101b39e917 100644
--- a/scripts/imx/Makefile.mingw64
+++ b/scripts/imx/Makefile.mingw64
@@ -30,7 +30,7 @@ $(if $(obj),, \
 # $(realpath ...) resolves symlinks
 obj := $(realpath $(obj))
 
-CPPFLAGS := -I $(LIBUSB_MINGW)/include/libusb-1.0 -I $(src)/../include/ -I $(src)/../../include/mach/
+CPPFLAGS := -I $(LIBUSB_MINGW)/include/libusb-1.0 -I $(src)/../include/ -I $(src)/../../include/mach/ -include $(src)/../include/defines.h
 LDFLAGS := -L $(LIBUSB_MINGW)/lib -lusb-1.0 -static
 
 OBJECTS := $(addprefix $(obj)/, imx.o imx-usb-loader.o)

-- 
2.52.0




