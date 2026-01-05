Delivery-date: Mon, 05 Jan 2026 09:34:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcg2V-001SSa-1e
	for lore@lore.pengutronix.de;
	Mon, 05 Jan 2026 09:34:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcg2U-0003A7-TU
	for lore@pengutronix.de; Mon, 05 Jan 2026 09:34:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=D+TeZ4pC7/i8YG2PewDUZzjLhpAE9kEW0G9kiwfjE4I=; b=YxF24/kF8E3jdhLeL3Ktcf5Fgb
	Id2cfDe0wMZ2cLVN0I/acyh++wLT8KPoeyrjmelXHX8Rpx3ztAQxSA1rWy0EFELvDEJfzT7Jd+Rt1
	5Vqf70NMfT9QGXGWn++O3nJ8SpmWRWLD4WPVkg2mnJ9+uAQrnh72eMjao0TujBkFrJ9d4ZkYX8zww
	ETv3QuyS0T749TJ1SWVB3t7u5zF02dY0B8FxjKgFkUv89lN7unZMUmfyDT3mxS3+2YRQOqiCDvYbu
	HVEFfhM3AKN9Ch/oq0JCcuLtBVF85dhqJ255txXen+peMF/96CUeMK+I8P7Rp0N8Aha2Cbbndl6nH
	REgG8N9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcg25-0000000AzYd-43sm;
	Mon, 05 Jan 2026 08:33:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcg22-0000000AzXY-3gt8
	for barebox@lists.infradead.org;
	Mon, 05 Jan 2026 08:33:43 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vcg21-0002yf-8p; Mon, 05 Jan 2026 09:33:41 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon,  5 Jan 2026 09:33:38 +0100
Message-ID: <20260105083340.3254634-2-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260105083340.3254634-1-a.fatoum@barebox.org>
References: <20260105083340.3254634-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_003342_915039_9A7ACCF3 
X-CRM114-Status: GOOD (  11.18  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] common: elf: use memcmp for fixed-size comparison
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

strncmp would only make sense if it were taking the size of buf as
argument, but it's taking the size of ELFMAG instead, which is a fixed 4
bytes. It's thus effectively equal to memcmp, so switch to using that
instead.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 common/elf.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/elf.c b/common/elf.c
index e8126c9b64e7..18c541bf827e 100644
--- a/common/elf.c
+++ b/common/elf.c
@@ -201,7 +201,7 @@ static int load_elf_image_segments(struct elf_image *elf)
 
 static int elf_check_image(struct elf_image *elf, void *buf)
 {
-	if (strncmp(buf, ELFMAG, SELFMAG)) {
+	if (memcmp(buf, ELFMAG, SELFMAG)) {
 		pr_err("ELF magic not found.\n");
 		return -EINVAL;
 	}
-- 
2.47.3



