Delivery-date: Thu, 18 Dec 2025 20:31:23 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWJid-00Cwck-12
	for lore@lore.pengutronix.de;
	Thu, 18 Dec 2025 20:31:23 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWJic-0002GC-QB
	for lore@pengutronix.de; Thu, 18 Dec 2025 20:31:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=N9Jsn9GypmHPRr8Q/kv6KaGrh5DPkLYITDH3DLYetw0=; b=Our59r4T06x+ZD
	QdkBqnpmq4CP/SBgCxZjbwgqgdzNNEA0h8NfnUU3y75SBG7o1OQcJAQWcWhLua+K0lvoIaubeaazT
	E1aok62hHDeS3i/tAKCSifiBz3RTR8bG/R8QA/bZGD3/iw4QhxWNHmjPpzfmkBDl5U7gwEPoOzTDq
	IJdx5ZBfrebfu9L2cc8N8HEyzWLpXTYbHQ55yedwakqKuX7OE6JTXc9tTVXQffW4Ac8Ce4LRmBSo+
	OhwwNSd2fdeNPkkXZWIKT1/WLvT+oSa5HApITwsjrxowDHnVdKD2wFGgBC22+4KWznjtlm7QgXQqg
	5u4M3/vz3MfFgWoXkGfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWJiA-000000095vh-0yK7;
	Thu, 18 Dec 2025 19:30:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWJi7-000000095vL-3Ssb
	for barebox@lists.infradead.org;
	Thu, 18 Dec 2025 19:30:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWJi5-0002Cb-Lr; Thu, 18 Dec 2025 20:30:49 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWJi5-006Kxk-1Z;
	Thu, 18 Dec 2025 20:30:49 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWJi5-0000000G8iz-1cqX;
	Thu, 18 Dec 2025 20:30:49 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu, 18 Dec 2025 20:30:47 +0100
Message-ID: <20251218193048.3845875-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251218_113051_889352_BCC21E18 
X-CRM114-Status: UNSURE (   7.67  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] fixup! efi: guid: add some more GUIDs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Sascha Hauer <s.hauer@pengutronix.de>

efi: guid: declare extern efi_smbios3_guid in header

We added the definition, but omitted the extern definition, so it can be
used.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/efi/guid.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/efi/guid.h b/include/efi/guid.h
index cc9449fd8bb6..f6018b5f7ef8 100644
--- a/include/efi/guid.h
+++ b/include/efi/guid.h
@@ -41,6 +41,7 @@ extern const efi_guid_t efi_load_file2_protocol_guid;
 extern const efi_guid_t efi_device_path_utilities_protocol_guid;
 extern const efi_guid_t efi_linux_initrd_media_guid;
 extern const efi_guid_t efi_smbios_guid;
+extern const efi_guid_t efi_smbios3_guid;
 extern const efi_guid_t efi_gop_guid;
 extern const efi_guid_t efi_snp_guid;
 extern const efi_guid_t efi_text_input_ex_guid;
-- 
2.47.3



