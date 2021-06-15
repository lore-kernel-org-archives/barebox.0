Delivery-date: Tue, 15 Jun 2021 18:47:03 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ltCDP-0002Ph-Bo
	for lore@lore.pengutronix.de; Tue, 15 Jun 2021 18:47:03 +0200
Received: from [2607:7c80:54:e::133] (helo=bombadil.infradead.org)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ltCDO-0004SU-A0
	for lore@pengutronix.de; Tue, 15 Jun 2021 18:47:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ENQtuhaOoSze//6mSuaaDEpy31oKSAZfGP9dlPjsEoA=; b=SV70m1tgJkjA2W
	rotyDNNkNLYDoepgIz+VPEbbgsshIq8oCcrb+d+k7igh2G6CodFpal68tu40HofMz5SipfZaa2P0t
	L4+yjOnK3HtoXyE3pXmRG1IH1XM6uYmTXLYrfK+so6PekY/WiawX6hvOwmaG7a+TQTaYS54LsKxCF
	bRxw6CtXbhIPSTWZUUJe+uCd4eCWzBNt9EBuJfeNSF+mhkKjqmrV5dtIyGOXTEui/dCQxYTV52UWN
	wiUWqcbrZFVIZCpM5OTKwivhU47ItRLmvoF7ENn+5BiyEOHAEkV1r6Gh5loFEkBwduXNMb+HQPCyn
	cL/Anmg9/hQetB3/yPLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ltC7a-001QzH-Mw; Tue, 15 Jun 2021 16:41:03 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lt9s0-000WJs-NS
 for barebox@bombadil.infradead.org; Tue, 15 Jun 2021 14:16:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=josH8ltkIZcpfhSY3NXIuQFjQXUksNyNq9UKQs1WJek=; b=Rn+m7yyTHc7UpNiv1Nb+Zlw4pj
 HqXZQ+gHPkABFEFa0PpweD319kwmk0i2vt3CCMZJrnj8WAuu1IMxq4w8av4uYGggMrt73l/ItiTi6
 BmOkgPLRzgbAVGrnlnumhtAk5+wR4dEqSECMSpKGlWQOqd6IthoLfssO/GW6OQ6QjbJrLbeLNVL3K
 99ge6RKhRThpomTojExGYBeyjTjxzytf+TzYVc/1OYNFIs65ixqLsitf6EmAGe3DFpZFiZm5oGjq/
 VNzhIsQZBtqdqa/wEbZU84aFxLp9HAO1a0fnHWHjQvuzz997MSYNn5uEzOy2a3OkswZgq691Ozr8L
 VUE2o+0A==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lt9ro-007zs0-TD
 for barebox@lists.infradead.org; Tue, 15 Jun 2021 14:16:47 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lt9rv-0000uD-1N; Tue, 15 Jun 2021 16:16:43 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lt9ru-0001DL-IZ; Tue, 15 Jun 2021 16:16:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 15 Jun 2021 16:16:33 +0200
Message-Id: <20210615141641.31577-4-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210615141641.31577-1-s.hauer@pengutronix.de>
References: <20210615141641.31577-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210615_151644_140164_BC3F823F 
X-CRM114-Status: GOOD (  13.29  )
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
X-Host-Lookup-Failed: Reverse DNS lookup failed for 2607:7c80:54:e::133 (deferred)
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,RDNS_NONE,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 03/11] filetype: Add Rockchip boot image type
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Newer Rockchip SoCs boot images starting with the magic "RKNS". There
are older image formats currently not supported, this one is at least
supported on the RK3568.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/filetype.c  | 3 +++
 include/filetype.h | 1 +
 2 files changed, 4 insertions(+)

diff --git a/common/filetype.c b/common/filetype.c
index 0cae00abaa..9edebb2cd8 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -73,6 +73,7 @@ static const struct filetype_str filetype_str[] = {
 	[filetype_stm32_image_v1] = { "STM32 image (v1)", "stm32-image-v1" },
 	[filetype_zynq_image] = { "Zynq image", "zynq-image" },
 	[filetype_mxs_sd_image] = { "i.MX23/28 SD card image", "mxs-sd-image" },
+	[filetype_rockchip_rkns_image] = { "Rockchip boot image", "rk-image" },
 };
 
 const char *file_type_to_string(enum filetype f)
@@ -309,6 +310,8 @@ enum filetype file_detect_type(const void *_buf, size_t bufsize)
 		return filetype_riscv_linux_image;
 	if (le32_to_cpu(buf[14]) == 0x56435352 && !memcmp(&buf[12], "barebox", 8))
 		return filetype_riscv_barebox_image;
+	if (strncmp(buf8, "RKNS", 4) == 0)
+		return filetype_rockchip_rkns_image;
 	if ((buf8[0] == 0x5a || buf8[0] == 0x69 || buf8[0] == 0x78 ||
 	     buf8[0] == 0x8b || buf8[0] == 0x9c) &&
 	    buf8[0x1] == 0 && buf8[0x2] == 0 && buf8[0x3] == 0 &&
diff --git a/include/filetype.h b/include/filetype.h
index fd339f9564..4d4481effd 100644
--- a/include/filetype.h
+++ b/include/filetype.h
@@ -54,6 +54,7 @@ enum filetype {
 	filetype_stm32_image_v1,
 	filetype_zynq_image,
 	filetype_mxs_sd_image,
+	filetype_rockchip_rkns_image,
 	filetype_max,
 };
 
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

