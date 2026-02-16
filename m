Delivery-date: Mon, 16 Feb 2026 10:18:31 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vrukQ-002H2B-0Q
	for lore@lore.pengutronix.de;
	Mon, 16 Feb 2026 10:18:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vrukF-0008JO-Lk
	for lore@pengutronix.de; Mon, 16 Feb 2026 10:18:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yr8WaG63kbWJLf1Jfgi4oHobujOq+PdbVSt/JTclRVw=; b=g4ha2gRcQJRZ+aAKIyRkh2cxPD
	PeYFvl33DkIGAmyezuAslUMsC01G0HZr8swVBYeD66R5z544xaJcwaOo9JMNjfEekwOwJdeA+cLdJ
	m7mROWB6lsnPap5Cs/NQ4mTbXWnQSCsOFvPLB6/luwFeansl/+vnXHCRISPRUSYivFoQc2EIbmm0I
	cpZPstf6VfUn92Eq+XmryvNIG3gkgxGmOoXH7qPSLmzzhZK965sd1T3Emx2n+vhH8Gk/z0BuvbbAI
	O1F2QSGMdZ2D3mbMz2rVKUs69QkTgW77tmXWMJ8j+Q0uy5hu7FEmbNfON3iMohgJ2B/afZlrlsDdZ
	HcfQGfaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vrujA-00000006F26-3aeY;
	Mon, 16 Feb 2026 09:17:12 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vruio-00000006Ebd-3xkJ
	for barebox@bombadil.infradead.org;
	Mon, 16 Feb 2026 09:16:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=yr8WaG63kbWJLf1Jfgi4oHobujOq+PdbVSt/JTclRVw=; b=Zid6MXwaSPx+0OlF66FyVNKKyg
	hkz7O+GjGQULvBAnr4X0V8hCSUEzXmFX4gsODG8KxUqdlk7hdxmFqrRCEVABDV/wW0AnMVQIpxqMD
	eDqMuKIG9T+F3gM/fHA2PbNnChRnD+t13dOrDIYYxYAhYgOy/wsegrN5BoZ8Wn8RtJhVDv2OcBKWU
	m8O0ZfoJuxR7Kui4koEGCkji2JTIyKDAQmRIdxlCQJDCLIeSzE27ywN64njr+NNzKEcKmcgTuiepm
	i+IjWGZZxhKmekFfhwZqL+uzn2Ow6CJ4PKYsYjv5UKuKOJsA0VJgsyiL+dWf+7KR2IgbL6pkXcfkO
	d0wYPMOQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vruik-0000000EIEo-22at
	for barebox@lists.infradead.org;
	Mon, 16 Feb 2026 09:16:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruig-0006Xw-BV; Mon, 16 Feb 2026 10:16:42 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruie-0012Xr-2D;
	Mon, 16 Feb 2026 10:16:42 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruH0-0000000Eudd-3eMR;
	Mon, 16 Feb 2026 09:48:06 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	"Claude Opus 4.6" <noreply@anthropic.com>
Date: Mon, 16 Feb 2026 09:44:25 +0100
Message-ID: <20260216084758.3548990-26-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260216084758.3548990-1-a.fatoum@pengutronix.de>
References: <20260216084758.3548990-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260216_091648_089566_E49B4C63 
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
Subject: [PATCH master 25/39] efi: fix Fibre Channel device path type vs sub_type comparison
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

dev_path_fibre() uses device_path_type() to distinguish FibreChannel
from FibreChannelEx, but device_path_type() returns the major type
field (DEVICE_PATH_TYPE_MESSAGING_DEVICE = 0x03), not the sub_type.
Since DEVICE_PATH_SUB_TYPE_MSG_FIBRECHANNEL also happens to be in the
messaging range, the comparison is coincidentally always true, making
FibreChannelEx paths incorrectly display as "Fibre" instead of
"FibreEx".

Compare header.sub_type directly to get the correct behavior.

Co-Authored-By: Claude Opus 4.6 <noreply@anthropic.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/devicepath.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/efi/devicepath.c b/efi/devicepath.c
index bf65325fed8a..131c3df16641 100644
--- a/efi/devicepath.c
+++ b/efi/devicepath.c
@@ -232,7 +232,7 @@ dev_path_fibre(struct string *str, const void *dev_path)
 
 	Fibre = dev_path;
 	cprintf(str, "Fibre%s(0x%016llx,0x%016llx)",
-		device_path_type(&Fibre->header) ==
+		Fibre->header.sub_type ==
 		DEVICE_PATH_SUB_TYPE_MSG_FIBRECHANNEL ? "" : "Ex", Fibre->WWN, Fibre->Lun);
 }
 
-- 
2.47.3



