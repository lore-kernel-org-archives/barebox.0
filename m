Delivery-date: Fri, 09 Jan 2026 18:01:00 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1veFrA-0033gX-0E
	for lore@lore.pengutronix.de;
	Fri, 09 Jan 2026 18:01:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1veFr9-0008FE-Gv
	for lore@pengutronix.de; Fri, 09 Jan 2026 18:01:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=R5uhgncnC4emrkX4fqUGUcuPt2RqhtJNV3W029d0XUc=; b=J0Gtn80YFCd14FBNGS+IO8wfTV
	c+B1NLcXT3v7OTiKSkL3/b6Snw3s7jInr2Z64NiV/aqRvDB/rIU6iSCE3T5FfiIbVBgRsQZW6IM0Y
	MfA52SRZv7Q1ckfOLOEOTzvwzLkJCrNTVR3mRwIOzQdLdB75LxcOixNpOb0yZ+zFDJk/D9xN6DF70
	YVV/Mtl881OU8aJ4SN08fK5eRxTre3wBW7BQnYBmY3SrSdhTORqw4/TB/QUTo5GYleBkRYxlVbwaX
	3JWGYmoKIkud7rMnV6A18B4dXllr2ViFZVIJiQkwIBGYWrVASBpuSMeRFwDxLQnGzLClX16/s14DW
	Qim3cO8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1veFqQ-00000002gqB-0gmg;
	Fri, 09 Jan 2026 17:00:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1veFqN-00000002gnx-1yCu
	for barebox@lists.infradead.org;
	Fri, 09 Jan 2026 17:00:13 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1veFqL-0007jb-Iy; Fri, 09 Jan 2026 18:00:09 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Fri,  9 Jan 2026 17:57:27 +0100
Message-ID: <20260109170007.805177-2-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260109170007.805177-1-a.fatoum@barebox.org>
References: <20260109170007.805177-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260109_090011_507215_13CCE1CA 
X-CRM114-Status: UNSURE (   8.73  )
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
Subject: [PATCH 1/5] test: arm: multi_v8_efiloader_defconfig: use qcow2 image
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The qcow2 image is 1/4th of the raw image size, so use that for shorter
downloads and easier storage.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 test/arm/multi_v8_efiloader_defconfig.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/test/arm/multi_v8_efiloader_defconfig.yaml b/test/arm/multi_v8_efiloader_defconfig.yaml
index 2aba23f3c0c1..42bb418af6f8 100644
--- a/test/arm/multi_v8_efiloader_defconfig.yaml
+++ b/test/arm/multi_v8_efiloader_defconfig.yaml
@@ -9,7 +9,7 @@ targets:
         kernel: barebox-dt-2nd.img
         display: qemu-default
         extra_args: >
-          -drive if=virtio,format=raw,snapshot=on,file=debian-13-nocloud-arm64.raw
+          -drive if=virtio,snapshot=on,file=debian-13-nocloud-arm64.qcow2
           -device virtio-rng
       BareboxDriver:
         prompt: 'barebox@[^:]+:[^ ]+ '
-- 
2.47.3



