Delivery-date: Thu, 27 Mar 2025 08:52:58 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txi2s-004mSf-2Y
	for lore@lore.pengutronix.de;
	Thu, 27 Mar 2025 08:52:58 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txi2s-00027x-4p
	for lore@pengutronix.de; Thu, 27 Mar 2025 08:52:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=xKFhXfYc6itX6ew8JbcdhgkH8mCbAeJm8rla01mJ2+w=; b=I/8dhMIc60Ncv+7fEklGsLv8u8
	iPU/gZwute/61XUzzi9uv0o2Nov8Q/Z7QiLSD3/9V8vrgQpFgKgM2krtbzA1LXSEZpGfe5MkLv+zY
	gllT+RzdGYGVctINgDBs2n3/FhtpYMawANTxXned1y+vxFnsaVwqzdcAM0SdOX/AbYpMJQKTWs74b
	P1lvdZLAHv5nnXdPI9jfg1NRzTmszYqXCbALZTczY0elYk6IS4wzpG+hnvDelaTv7vgFtVXY2H9XF
	hNABhcMw1kr/I4PgRtyWHI9osjtGPITSlkMpaGN4f2Ovbool7jO3jlxv68ALpK9sPrePmF3URcW53
	zXXFDpiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txi2R-0000000ANf6-1ZD8;
	Thu, 27 Mar 2025 07:52:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txi0c-0000000ANTX-1w3l
	for barebox@lists.infradead.org;
	Thu, 27 Mar 2025 07:50:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1txi0b-0001g5-0N; Thu, 27 Mar 2025 08:50:37 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1txi0a-001t8y-2d;
	Thu, 27 Mar 2025 08:50:36 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1txi0a-00FbZd-2L;
	Thu, 27 Mar 2025 08:50:36 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 27 Mar 2025 08:50:36 +0100
Message-Id: <20250327075036.3719261-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250327_005038_498336_3E08D384 
X-CRM114-Status: GOOD (  16.17  )
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
Subject: [PATCH] common: pe: fix pe reloc pointer overrun
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Import the fix from U-Boot commit 463e4e6476299b32452a8a:

| Author:     Aleksandar Gerasimovski <Aleksandar.Gerasimovski@belden.com>
| AuthorDate: Fri Nov 29 21:09:44 2024 +0000
|
| efi_loader: fix pe reloc pointer overrun
|
| The fix provided by 997fc12ec91 is actually introducing
| a buffer overrun, and the overrun is effective if the
| memory after the reloc section is not zeroed.
| Probably that's why this bug is not always noticeable.
|
| The problem is that 8-bytes 'rel' pointer can be 4-bytes aligned
| according to the PE Format, so the actual relocate function can
| take values after the reloc section.
|
| One example is the following dump from the reloc section:
|
|     bce26000: 3000 0000 000c 0000 0000 0000 0000 0000
|     bce26010: 7c00 9340 67e0 f900 1c00 0ea1 a400 0f20
|
| This section has two relocations at offset bce26008 and bce2600a,
| however the given size (rel_size) for this relocation is 16-bytes
| and this is coming form the efi image Misc.VirtualSize, so in this
| case the 'reloc' pointer ends at affset bce2600c and is taken as
| valid and this is where the overflow is.
|
| In our system we see this problem when we are starting the
| Boot Guard efi image.
|
| This patch is fixing the overrun while preserving the fix done
| by 997fc12ec91.
| Signed-off-by: Aleksandar Gerasimovski <aleksandar.gerasimovski@belden.com>
| Reviewed-by: Heinrich Schuchardt <heinrich.schuchardt@canonical.com>

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/pe.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/pe.c b/common/pe.c
index 6164dd68b7ab..65d456a2c332 100644
--- a/common/pe.c
+++ b/common/pe.c
@@ -61,7 +61,7 @@ static int pe_loader_relocate(const IMAGE_BASE_RELOCATION *rel,
 		return 0;
 
 	end = (const IMAGE_BASE_RELOCATION *)((const char *)rel + rel_size);
-	while (rel < end && rel->SizeOfBlock) {
+	while (rel + 1 < end && rel->SizeOfBlock) {
 		const uint16_t *relocs = (const uint16_t *)(rel + 1);
 		i = (rel->SizeOfBlock - sizeof(*rel)) / sizeof(uint16_t);
 		while (i--) {
-- 
2.39.5



