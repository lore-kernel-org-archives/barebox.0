Delivery-date: Wed, 03 Jan 2024 19:36:50 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL66k-002OFe-28
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 19:36:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL66e-00088T-NA
	for lore@pengutronix.de; Wed, 03 Jan 2024 19:36:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7SWrDOQedtrsZKHw5NEqB/6KSWBWULh5z22+KnKoZ6g=; b=tstNWM8I/W2k2PZuuTl0wV595R
	/hNUGHAcNh/N601fg/oLAlMl7XScU/p7Jqn1SlMpr+rI7LegJ4Yqy9Tqwzf11rZ9tPbfZmz7S9GJL
	xJ1d+1V2dCTYVvBd8sWEL1ahf8BT6v8Vld/JlLprbF2uB9YcjFLrpY0+kk9d151eXmoD3Cfd9vp1c
	WMsBC2A0teB6294A7atdun3YdcMD1CNpvbqsvWkJSaCqbH815yWM90Q567rp8c7LIEF7ovKvbod4p
	8rY/L192fSsCZzh86hKHJyoyW1Qek3b296YzmhH4CpZFKTc038xt9DbRtb1BzSZMm1FS67itFYQkX
	QM2Pri2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL64z-00Bljc-0S;
	Wed, 03 Jan 2024 18:35:01 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL61N-00BhRJ-16
	for barebox@bombadil.infradead.org;
	Wed, 03 Jan 2024 18:31:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=7SWrDOQedtrsZKHw5NEqB/6KSWBWULh5z22+KnKoZ6g=; b=kUAb09U7NzXEq9S3MFoCYKDOHd
	tcvaqUTK7/TM1K3piQnyrABe6PRqKJP6h3nokusi5hONbN91dLL9LAJLIL0Yo7wNqFzdP6c8t6KaI
	cONwbTm1OeSXnZ6JEOH6skHoe/bs98NxI2GfiKMfL52zjszyvgoneWOAW/Stc27/ZT1VAhdfK6iNv
	nPAYa1zu5niQhOxRIxAFlOjbnVftC71Hc5PPkOvusPUtH9bnXy/CvAXI5OnqxHR5nQ+u209mh0Lth
	3OrwrlILiY4gdpJqBQciAXdvxG4bXCbbeqmnQf0G4dlCc/rEwYol8qiRJ7TqdL+YCa/W9Ohp+fOwb
	u4tbmSWQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL61G-005eBu-06
	for barebox@lists.infradead.org;
	Wed, 03 Jan 2024 18:31:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL611-0001Yn-VB; Wed, 03 Jan 2024 19:30:55 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL611-000Avl-I9; Wed, 03 Jan 2024 19:30:55 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL5k5-001j4X-0b;
	Wed, 03 Jan 2024 19:13:25 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Jan 2024 19:12:54 +0100
Message-Id: <20240103181312.409668-95-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240103181312.409668-1-a.fatoum@pengutronix.de>
References: <20240103181312.409668-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_183110_176434_87F85AD9 
X-CRM114-Status: UNSURE (   9.81  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 094/112] efi: payload: protect against buggy EFI implementations
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

barebox' EFI loaded image handle should have a device path, but on the
off-case that it doesn't, we should just return an error code instead of
dereferencing a null pointer.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/payload/init.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/efi/payload/init.c b/efi/payload/init.c
index 354120b11a86..b312866cb1f6 100644
--- a/efi/payload/init.c
+++ b/efi/payload/init.c
@@ -327,6 +327,9 @@ static int efi_postcore_init(void)
 	loaded_image_dp = device_path_from_handle(efi_loaded_image->device_handle);
 	pr_debug("loaded-image: %pD\n", loaded_image_dp);
 
+	if (!loaded_image_dp)
+		return -EINVAL;
+
 	uuid = device_path_to_partuuid(loaded_image_dp);
 	if (uuid) {
 		wchar_t *uuid16 = xstrdup_char_to_wchar(uuid);
-- 
2.39.2



