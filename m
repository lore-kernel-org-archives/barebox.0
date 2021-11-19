Delivery-date: Fri, 19 Nov 2021 10:56:26 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mo0d8-000124-Ne
	for lore@lore.pengutronix.de; Fri, 19 Nov 2021 10:56:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mo0d7-0006RW-SE
	for lore@pengutronix.de; Fri, 19 Nov 2021 10:56:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hs1WXhJJRgDiB0SsRKM29Lck9BISXSaOMNiquW7v6fY=; b=QeRRMyctiqCKL9
	uOR4Wv8NqTvX5LvKwWtn22i+QJ7tVWgBffFgcr9mpHePRFdoniHp5e4uqWyi1oqHLtVJlJfPZgxNx
	JspauYh9sBZ1KZNNZfzXXlQyeI9VZgfXnK4R5jzXdnY60MBB7CLp4+SIw68kvyNfQnv+FSDmtUc55
	r997bpZK8d5I7LwE4bttfyjxWEIO1nXNr2gWEkBeBD+ndy7nJ6rM2sfYSrrshhwK66Px9ZlH3DwLm
	9U5fOPdquygjAJ5pY+cCUc47Ix+rdO1NYfev9+pCo26xR3vdoSY4VJUXXFSQhAxblnvrgVB/+HyOD
	UaZgO8ub6F9H9hI4MrOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mo0bn-00A2dL-Tj; Fri, 19 Nov 2021 09:55:04 +0000
Received: from cpanel.siel.si ([46.19.9.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mo0bd-00A2ZI-1L
 for barebox@lists.infradead.org; Fri, 19 Nov 2021 09:54:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=norik.com; 
 s=default;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4DRulztPA0piJCtBV/oCrOPpVry7yxVBC1wyHqNge9E=; b=keLdVwe7LaklTEY/QV5nKQ9b+f
 UQbZS1TCO8txCQntnIpqgUaMGPQwb4xdO/+lEX/MlerGkpweoA4kJhPbT5BtxzRUxsuOPlW/iwvK1
 KCq/j041imktShdD/U2t+V4hqkg3kIvlv+y36/fZqBcVkbYZUWmH/G97nojCcuTunwKMXQFv7ZLSp
 t561YyO3+LaUQX1x/mw6PtdkRr7A6h5zwjTjmvD1uM05i3+/TdtT7ys8MZHpgmgIXeI/I/qUAXIbW
 DXj/8HmaxZREKxEv4/wVC/jhMqigY2aORSNo93eStRoYEBsJPqNLeQIjefT1IpYRpKr48uClfhPzu
 Y01prF/w==;
Received: from 89-212-21-243.static.t-2.net ([89.212.21.243]:53856
 helo=localhost.localdomain)
 by cpanel.siel.si with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.94.2)
 (envelope-from <andrej.picej@norik.com>) id 1mo0bM-00E4Y4-7L
 for barebox@lists.infradead.org; Fri, 19 Nov 2021 10:54:44 +0100
From: Andrej Picej <andrej.picej@norik.com>
To: barebox@lists.infradead.org
Date: Fri, 19 Nov 2021 10:54:25 +0100
Message-Id: <20211119095429.1905473-3-andrej.picej@norik.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211119095429.1905473-1-andrej.picej@norik.com>
References: <20211119095429.1905473-1-andrej.picej@norik.com>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel.siel.si
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - norik.com
X-Get-Message-Sender-Via: cpanel.siel.si: authenticated_id:
 andrej.picej@norik.com
X-Authenticated-Sender: cpanel.siel.si: andrej.picej@norik.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211119_015453_447399_05FBBBB6 
X-CRM114-Status: UNSURE (   3.25  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 2/6] ARM: configs: imx_v7_defconfig: add OF commands
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Add OF commands:
 - of_overlay,
 - of_display_timings and
 - of_fixup_status.

Signed-off-by: Andrej Picej <andrej.picej@norik.com>
---
Changes in v2:
 - drop "PHYTEC specific" patch and add changes directly to
   imx_v7_defconfig
---
 arch/arm/configs/imx_v7_defconfig | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/configs/imx_v7_defconfig b/arch/arm/configs/imx_v7_defconfig
index 624698ae3..29c2d3190 100644
--- a/arch/arm/configs/imx_v7_defconfig
+++ b/arch/arm/configs/imx_v7_defconfig
@@ -133,6 +133,9 @@ CONFIG_CMD_WD=y
 CONFIG_CMD_BAREBOX_UPDATE=y
 CONFIG_CMD_OF_NODE=y
 CONFIG_CMD_OF_PROPERTY=y
+CONFIG_CMD_OF_DISPLAY_TIMINGS=y
+CONFIG_CMD_OF_FIXUP_STATUS=y
+CONFIG_CMD_OF_OVERLAY=y
 CONFIG_CMD_OFTREE=y
 CONFIG_CMD_TIME=y
 CONFIG_CMD_STATE=y
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

