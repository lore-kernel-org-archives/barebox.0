Delivery-date: Mon, 16 Feb 2026 10:18:28 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vrukN-002H1G-0R
	for lore@lore.pengutronix.de;
	Mon, 16 Feb 2026 10:18:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vrukC-0008Gj-SK
	for lore@pengutronix.de; Mon, 16 Feb 2026 10:18:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3A0LxrrHr82v32NR0oXpqvzE0BuUU7JGKB3ACm5D0m4=; b=UyJWrs86u8zB1ci0J2Dncn1i5C
	A5l6LCLft9BONNUP0IDlrQw/PdUZvZWiH1u4bF+rIaaGwKlHFwxudXfHBl9M2D9XgGdfqcnO3rSG+
	Eoy/XngbCQ8ndNRsvUOdf61e4Y9E1DF9J3AyD6HaWrRze3intWB6SnwmCs4RiVhkC3EBCdvu73pxA
	ak8fjqNJWFo/RQF5p/k86x/0uQmju+yXLqSTSO5a3F0ELpMkqkzA/koX8G9/OSyZ1j/+oy3lxUggD
	ScAFxXm9s0hS8p5qnKTG8gNGr8xp7FRtSwj+vdd7IUkU046KS5/whvW/PcauJafYFr8P2Bc5dGcbJ
	UOCM9Wbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vrujC-00000006F5w-2pxu;
	Mon, 16 Feb 2026 09:17:14 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vruip-00000006Ec3-0fo9
	for barebox@bombadil.infradead.org;
	Mon, 16 Feb 2026 09:16:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=3A0LxrrHr82v32NR0oXpqvzE0BuUU7JGKB3ACm5D0m4=; b=cJaPQiBFqgoLaw1es2CDKyTYST
	IsQInboUnS2+NqpUA1xGYwl4Quytgi7etVYcH1jG0POYTUxHkGoviaqrZca92K638spCKqGp3Bj11
	rCvrhW3JnWjKoWDfEvbPnz7wfjnQjy88NLn9D9WVXwEemNMu7wMEymtIISbtyle3xdSNVm0ax/0aW
	ikKZwSp+w9NLUKpCcPhR+xsEcrjwvWkQSTJXG6egxS05xvuPcXP3cCUXPsPZFRew+vJlkuBRf7zkZ
	xOO4JZcehLtTqwRGXcy0nzJJmGvGmpfHMAhFssD5zGos8VHyb+3618g5xVQig3BXE6pUxM4jEU3fG
	tKJo05yw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vruil-0000000EIEt-15Bc
	for barebox@lists.infradead.org;
	Mon, 16 Feb 2026 09:16:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruig-0006a1-Uf; Mon, 16 Feb 2026 10:16:42 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruif-0012YK-18;
	Mon, 16 Feb 2026 10:16:42 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruH0-0000000Eudd-35yF;
	Mon, 16 Feb 2026 09:48:06 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	"Claude Opus 4.6" <noreply@anthropic.com>
Date: Mon, 16 Feb 2026 09:44:22 +0100
Message-ID: <20260216084758.3548990-23-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260216084758.3548990-1-a.fatoum@pengutronix.de>
References: <20260216084758.3548990-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260216_091648_480624_A6440974 
X-CRM114-Status: UNSURE (   9.06  )
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
Subject: [PATCH master 22/39] efi: fix out-of-bounds read in 1394 device path printing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The F1394 device path Guid field is a u64 (8 bytes), but it was printed
with %pUl which expects a 16-byte efi_guid_t pointer. This reads 8
bytes past the field boundary.

Use %016llx to correctly format the u64 value.

Co-Authored-By: Claude Opus 4.6 <noreply@anthropic.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/devicepath.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/efi/devicepath.c b/efi/devicepath.c
index 31a509f99e42..bf65325fed8a 100644
--- a/efi/devicepath.c
+++ b/efi/devicepath.c
@@ -242,7 +242,7 @@ dev_path1394(struct string *str, const void *dev_path)
 	const struct efi_device_path_f1394 *F1394;
 
 	F1394 = dev_path;
-	cprintf(str, "1394(%pUl)", &F1394->Guid);
+	cprintf(str, "1394(0x%016llx)", F1394->Guid);
 }
 
 static void
-- 
2.47.3



