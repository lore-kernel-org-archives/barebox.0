Delivery-date: Mon, 01 Dec 2025 11:26:47 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQ17H-006mp5-0e
	for lore@lore.pengutronix.de;
	Mon, 01 Dec 2025 11:26:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQ17F-0006oA-8v
	for lore@pengutronix.de; Mon, 01 Dec 2025 11:26:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CytX66lFOH2ykIOLGrHtj0vYhijVoxDYVTsC9kJwOmw=; b=S6LS5HtIr5Fc+y7ATLSPmVFJdW
	RrKIo7K5Nm9ESP4AKrxG8Dse4/EHC/tjPWYKgzigKWabwlkXU6OD8cLYs+f2kjRwIWexVXYFaohwm
	6AEE9NDsZ4qx6inH3ILqIl1aw4rj+LHDgypKmlCq4kR/GWvdkOwXr4n2DeE0Y7cBNa2ZKAZ9GQ8ep
	m4iOrH8fV4CKo0YiSKM2N1tuHk5vUe71hOUpJ9iYAIrya/M1sy0cSJnzfvSvMBmmmKieN+rqBFtkj
	wIn30GsSrlnYY/hh6mYoNAOYXnFwgmztpdrv2Vm+8GugoNaYzNlF+UyPMWGaRvNoM9R8IRiBZOp8d
	hQPefu0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQ16t-00000003KK5-2ybk;
	Mon, 01 Dec 2025 10:26:23 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQ16p-00000003KGo-39sy
	for barebox@lists.infradead.org;
	Mon, 01 Dec 2025 10:26:21 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id BC65042CEB;
	Mon,  1 Dec 2025 10:26:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C992C113D0;
	Mon,  1 Dec 2025 10:26:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764584778;
	bh=RK5I7MzKqHTT1khivvQb6jIvTV3ZEhugm7xngX+slJg=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=YM9V0FlcJjHr+o5AkR9FuHzDo1pOOm2DNc9xVRIsYgJUoDneejSbGvgOEu8ZLmYxR
	 bC8arKa3rbtdj3iJNHtA/jPn/f0LGXNmhWq2cB0PMHLz6Mid9kYHtqlny1hkTKDt9N
	 svgaJQN7Sy6GEw4/9OX5Rpl0vH7G1RAfbFArHA752OXPPIn7x0q0q3bDSLbAXAX8Fs
	 d+lP2PyCzBFZ8CWO0vyP/6AkKYcUz9Dy/70n8yvf9fBaS8ciJgyDW1OTpZ8L/9mWz9
	 W54emBJLsUg0xfRRVhib/58RU3RpzP1plN2e7KOiWA7f2PKvV+gmIjp179Dvd1lxlA
	 /x05r1PdT52iA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8BED111A8;
	Mon,  1 Dec 2025 10:26:18 +0000 (UTC)
From: Maud Spierings via B4 Relay <devnull+maudspierings.gocontroll.com@kernel.org>
Date: Mon, 01 Dec 2025 11:26:16 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251201-imx_usb-v2-1-95ec2a0e8694@gocontroll.com>
References: <20251201-imx_usb-v2-0-95ec2a0e8694@gocontroll.com>
In-Reply-To: <20251201-imx_usb-v2-0-95ec2a0e8694@gocontroll.com>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Maud Spierings <maudspierings@gocontroll.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764584777; l=915;
 i=maudspierings@gocontroll.com; s=20250214; h=from:subject:message-id;
 bh=puxY5pJSZsJ+VyRdZC4qG9rFi3Qw/x8A0EbiuaE/63c=;
 b=89TtDrIB/9pTzhHUFqn+JQLkijYT6dhVdBPxpNSPXgICKx6aQfJVZ2wsYf764KpHhXVK+RaDD
 2Ue+b4tgdtUBwjUtQvjElXVyPyei1b3Rz+hCOdD+rHEN+teXtlEcEPL
X-Developer-Key: i=maudspierings@gocontroll.com; a=ed25519;
 pk=7chUb8XpaTQDvWhzTdHC0YPMkTDloELEC7q94tOUyPg=
X-Endpoint-Received: by B4 Relay for maudspierings@gocontroll.com/20250214
 with auth_id=341
X-Original-From: Maud Spierings <maudspierings@gocontroll.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251201_022619_853452_88590571 
X-CRM114-Status: UNSURE (   8.39  )
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
Reply-To: maudspierings@gocontroll.com
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-103.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,USER_IN_WELCOMELIST,
	USER_IN_WHITELIST autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 1/3] scripts: imx: Makefile.mingw64: add _GNU_SOURCE
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




