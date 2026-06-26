Delivery-date: Fri, 26 Jun 2026 10:51:29 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wd2HZ-00A1Ak-1w
	for lore@lore.pengutronix.de;
	Fri, 26 Jun 2026 10:51:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wd2HY-00021K-Qd
	for lore@pengutronix.de; Fri, 26 Jun 2026 10:51:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FB6W0L8KVuDVe/b2uX9BN6fe8PxwEee0ebk2ECGypxE=; b=ThPSdZADsys9stt+RLfTwTYql5
	UCWNhYKO+7D1m5CHeaAyam8EtESY8nnPpyubUkUi8Bw1mu2AebeBGlWrZWa5ahF+0IoKTMpFLK+h9
	b/++Muy+pKG9a2UB8rHgbXTSe+r4icLS+pmvKxlXxi9Ro7YVj/WF8jZ46mgA1UPcgImI/z/9iAeBs
	Ip12xdjqRw95JLc514qpEBERNVDWLLdVyPxqJbClj/6Xh2DLo7UycKeicAbuCDlafoEMSfm5rP6Z8
	fpjglTFE1P4H/mogR4REH+cStr7FW4CPN9fFHW0BzEKUSeTDM1lmwGqUaeT/y/3TejZN08fqYTTeY
	bQBl2FWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd2Cn-0000000AtYh-1aCL;
	Fri, 26 Jun 2026 08:46:33 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd2Ce-0000000AtG7-2Plw
	for barebox@bombadil.infradead.org;
	Fri, 26 Jun 2026 08:46:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=FB6W0L8KVuDVe/b2uX9BN6fe8PxwEee0ebk2ECGypxE=; b=eQLSGmCZhAz6TWkq8pu6Bled9E
	3p6Fj1A3wQA4nlhmHfsdZVO0dBBiaApYAP0g6WxpDSOi11kVPT8LSkWzZZnGuCvezBvTPOW3dEqRs
	tJJdNAgyKoBWK1piB1bxW0fJnexQJk963X3zmM4fOchxsJxOnWYKz4wlmczaTt9TdsAab8F0jwsRn
	KAj7NjY0sjrbMmD1zUrGyGDF76k5gREfkiFFAHZa4Mk3MzJSYccUghetMo6IfRm4eSQBkMITL2Xgb
	b/uXO5/ZmfJQCRVI7XiaM78bCP7b6a24xZIWArjqxMZQWHW9JlHLXXpWQn1UkE6qSZm+R3e2b9tub
	cO/8wfnw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1wd2CY-00000004cm3-3BBJ
	for barebox@lists.infradead.org;
	Fri, 26 Jun 2026 08:46:23 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wd2CW-0003ZP-3y; Fri, 26 Jun 2026 10:46:16 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Fri, 26 Jun 2026 10:42:32 +0200
Message-ID: <20260626084608.1388806-22-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260626084608.1388806-1-a.fatoum@barebox.org>
References: <20260626084608.1388806-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260626_094620_022892_04FDE630 
X-CRM114-Status: GOOD (  10.30  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH 21/26] fs: fat: fix garbage read when writing with bigger block size
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

fs->win has the size of the biggest supported sector, but regardless,
only the first 512 bytes were actually zeroed.

Extend the zeroing to cover the whole buffer.

Assisted-by: Codex:gpt-5.5
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 fs/fat/ff.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/fat/ff.c b/fs/fat/ff.c
index c8d57ce50054..89b4f9fa5de7 100644
--- a/fs/fat/ff.c
+++ b/fs/fat/ff.c
@@ -292,7 +292,7 @@ int sync (	/* 0: successful, -EIO: failed */
 		if (fs->fs_type == FS_FAT32 && fs->fsi_flag) {
 			fs->winsect = 0;
 			/* Create FSInfo structure */
-			memset(fs->win, 0, 512);
+			memset(fs->win, 0, SS(fs));
 			ST_WORD(fs->win+BS_55AA, 0xAA55);
 			ST_DWORD(fs->win+FSI_LeadSig, 0x41615252);
 			ST_DWORD(fs->win+FSI_StrucSig, 0x61417272);
-- 
2.47.3



