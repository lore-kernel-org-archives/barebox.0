Delivery-date: Wed, 08 Jun 2022 22:28:45 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nz2IH-007vAc-65
	for lore@lore.pengutronix.de; Wed, 08 Jun 2022 22:28:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nz2IG-0005iN-0c
	for lore@pengutronix.de; Wed, 08 Jun 2022 22:28:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=14pjtYWphX+JNjC8FuUIznhjSWzLaOtDrQUyT1BQfJQ=; b=XquKk1Efgo+iV+
	RzgwOA+gTEm94Xq44Bq2eaeQyrDO3wrznaxhueZIWDtJCuwjo6WBmhykuuZzhroa3CjSO0F2asbl4
	5yovetiHDoWFAqNR7mIZ8e2gT/RkXekVzTPbVyS6QpQ1hruK9Kw/Lyeaa6DnRWUq7NOw5dAzwFi5e
	a1VVn9TbXt52uTj1e7lecFuglhEII4I2SCHL0zdtM+o+2ElVO2VrFOqbyv9Npqjo6kPXkzcnuE5A1
	ZbtETBNoXXH/x7Vdu3Hq+PVYonLaPGpXKx9YIhdNbF90FC2mSxYoLJ2UajkG9Lk9Ln8teFgMhfaaG
	PkhKgjQDMgKdmyTZwInQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nz2Gw-00EsQ7-Kr; Wed, 08 Jun 2022 20:27:22 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nz2Gr-00EsO7-Po
	for barebox@lists.infradead.org; Wed, 08 Jun 2022 20:27:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1nz2Gl-0005bQ-Qk; Wed, 08 Jun 2022 22:27:11 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1nz2Gm-007Fhr-G9; Wed, 08 Jun 2022 22:27:11 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1nz2Gk-00G2FO-FG; Wed, 08 Jun 2022 22:27:10 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  8 Jun 2022 22:27:09 +0200
Message-Id: <20220608202709.3821837-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220608_132717_873580_65BEFD07 
X-CRM114-Status: UNSURE (   9.80  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] fixup! ARM64/RISC-V: booti: support global.bootm.image.loadaddr
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

data->os_address may be UIMAGE_INVALID_ADDRESS, in which case, barebox
should determine on its own, which address to use.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
Please squash
---
 common/booti.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/common/booti.c b/common/booti.c
index fbf0d8008443..dde1605fe1f1 100644
--- a/common/booti.c
+++ b/common/booti.c
@@ -12,7 +12,8 @@ static unsigned long get_kernel_address(unsigned long os_address,
 	resource_size_t start, end;
 	int ret;
 
-	if (os_address == UIMAGE_SOME_ADDRESS) {
+	if (os_address == UIMAGE_SOME_ADDRESS ||
+	    os_address == UIMAGE_INVALID_ADDRESS) {
 		ret = memory_bank_first_find_space(&start, &end);
 		if (ret)
 			return UIMAGE_INVALID_ADDRESS;
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

