Delivery-date: Fri, 13 Mar 2026 14:33:58 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12eM-000DLQ-0v
	for lore@lore.pengutronix.de;
	Fri, 13 Mar 2026 14:33:58 +0100
Received: from bombadil.infradead.org ([198.137.202.133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12e2-00087V-Je
	for lore@pengutronix.de; Fri, 13 Mar 2026 14:33:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NkUD4/eX9XymbapfxX0BKtIUikTxzLhkzMqVEa1UzoI=; b=Q+cV0rUy9TkBFag2+wtG2sgFTs
	IrsFeIyQ70SbdXlNEB+swxwwDjhNN9GMFbSW17zsi70KydRtohq6BIQwvhn1S3qziuML0Z5wt/HJO
	Bj1FkNhx96c6pOj1kJqRx28UNmf/wp20AsEb2GAIu4G2zvSakL3A6NZMBU6vVKIw9lOZ1PUIzj33z
	XyKmnatJ62+9p8h6cvpPmYxip9HcYZ29gATu4bV+kpchBlWFCp6dGTUOI/kReGBuWsCky9PugFIae
	gB4+6cbhouOFdDZhloHjYus6rKy1keNkkUElSvu2ayo+gz7QP4/e3R1VYa78fIJgVxEadyjTXtsQK
	8g4H6cHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12dA-00000000Fa2-029J;
	Fri, 13 Mar 2026 13:32:44 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12d7-00000000FWc-0ET8
	for barebox@bombadil.infradead.org;
	Fri, 13 Mar 2026 13:32:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=NkUD4/eX9XymbapfxX0BKtIUikTxzLhkzMqVEa1UzoI=; b=FwmICceVKfrIyAMNj89OEEss5T
	0qFW7ujondLwkxpW3+JfSerOsO9pPka+81SH6q0xG/wGN2jrb1C14B3ZQ99wOYJM8NaGfyTGc7AR3
	DZYP7SttVse0YgFOWG8kYHv5Kws+WrxR7y8o9LYumAfgt2q4vWfC9u2JUCfo3uKDqDQa5UvWb2w/m
	scn5omY4KTigDR92bnCX7N/uR6lJRR5e0srxxDXI6V2VsMo77/NRv0i547M6zWL+qoNcIKU5PrQPP
	7oiAZmsQSYJ1M279T4twoDRrqbRuYkDPyJxPPlB0OLJRrp03XXI0GSJGIl1StHhFOMBiO9tva++ll
	iC74a14w==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12cz-00000003OSi-0Qmr
	for barebox@lists.infradead.org;
	Fri, 13 Mar 2026 13:32:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12cy-0006nk-LI; Fri, 13 Mar 2026 14:32:32 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12cx-0005Sj-2U;
	Fri, 13 Mar 2026 14:32:31 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12XM-00000009ULB-3bF1;
	Fri, 13 Mar 2026 14:26:44 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Hemanth Kumar M D <Hemanth.KumarMD@windriver.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 13 Mar 2026 14:25:42 +0100
Message-ID: <20260313132631.2257573-59-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
References: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260313_133234_069800_85DF861F 
X-CRM114-Status: UNSURE (   8.43  )
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
X-SA-Exim-Connect-IP: 198.137.202.133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,RCVD_IN_VALIDITY_RPBL_BLOCKED,
	RCVD_IN_VALIDITY_SAFE_BLOCKED,SPF_HELO_NONE,SPF_NONE autolearn=no
	autolearn_force=no version=3.4.2
Subject: [PATCH v2025.09.y 58/58] scripts: fix build failure with glibc 2.43
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Hemanth Kumar M D <Hemanth.KumarMD@windriver.com>

glibc 2.43 introduces linux/openat2.h through the fcntl include chain
(bits/fcntl-linux.h -> linux/openat2.h). This header expects the
__u64 type to be defined before inclusion.

In barebox scripts/include/linux/types.h the header <fcntl.h> was
included before the __u64 typedef, causing build failures such as:

  linux/openat2.h:20:9: error: unknown type name '__u64'

Move the inclusion of <fcntl.h> after the typedef definitions so that
__u64 and related types are defined before linux/openat2.h is parsed.

Signed-off-by: Hemanth Kumar M D <Hemanth.KumarMD@windriver.com>
Link: https://git.openembedded.org/openembedded-core/commit/meta/recipes-bsp/barebox?id=a217683514e051f996fe5675cf9accd44692f6ab
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Link: https://lore.kernel.org/barebox/177340033069.206252.6842304138227246713.b4-ty@pengutronix.de
---
 scripts/include/linux/types.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/scripts/include/linux/types.h b/scripts/include/linux/types.h
index 5b0133345bb9..33cea1986df5 100644
--- a/scripts/include/linux/types.h
+++ b/scripts/include/linux/types.h
@@ -4,7 +4,6 @@
 #include <stdbool.h>
 #include <stddef.h>
 #include <stdint.h>
-#include <fcntl.h>
 
 typedef uint64_t __u64;
 typedef int64_t __s64;
@@ -15,6 +14,8 @@ typedef int16_t __s16;
 typedef uint8_t __u8;
 typedef int8_t __s8;
 
+#include <fcntl.h>
+
 #ifndef __linux__
 typedef long long loff_t;
 #endif
-- 
2.47.3



