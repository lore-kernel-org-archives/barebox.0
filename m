Delivery-date: Fri, 13 Feb 2026 08:50:33 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vqnwe-001B2r-1F
	for lore@lore.pengutronix.de;
	Fri, 13 Feb 2026 08:50:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vqnwe-0003Oc-Kc
	for lore@pengutronix.de; Fri, 13 Feb 2026 08:50:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=nWxsOPCJpwkEjOgFLJr3YdxTg8Z95fSKgGkshr41eeM=; b=ZxjGReHqlnTg+Le6AwEoIphAQt
	FiIQSg2bvOb+SdHHdRdUiUk8d2Ir90JusF5iPEWBlqxP9rOyJ0xzylEvAW1PJGM9E6FYvY+tEwrK+
	gGubqJ2BK2nSRAHPnBrZHn7ejLTKyN6Oaa68UxUwtaXAFK37QIpTKB5g0wEOzbUCflmyJfM/u8y2J
	lkXEjsTpRyOOBqZHDkjkmdpN4Z6NsUeWzPrYYegvli5SVZdbWqP7+wmebyPkGbgyiNxNfrMP8ze0M
	KaaT3+ME25/c47BHh7qWGSPfeMXLMIILMpuDCZqsBpIWQ8WJ5Ld/YVfvQtATbcffru+6Yyu+A31iZ
	AMRL84rg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqnwD-000000037nT-0gCf;
	Fri, 13 Feb 2026 07:50:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqnwB-000000037mS-1pQc
	for barebox@lists.infradead.org;
	Fri, 13 Feb 2026 07:50:04 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=leda.hi.pengutronix.de)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <rsc@pengutronix.de>)
	id 1vqnw8-0003JX-F6; Fri, 13 Feb 2026 08:50:00 +0100
Received: by leda.hi.pengutronix.de (Postfix, from userid 1006)
	id 09A242C80253; Fri, 13 Feb 2026 08:50:00 +0100 (CET)
From: Robert Schwebel <r.schwebel@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 13 Feb 2026 08:49:45 +0100
Message-ID: <20260213074958.1448689-1-r.schwebel@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260212_235003_497415_3975AF37 
X-CRM114-Status: UNSURE (   8.88  )
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
X-Spam-Status: No, score=-1.9 required=4.0 tests=AWL,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] Documentation: spell out what TLV actually means
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

"barebox TLV" is used in many places, but the acronym is not explained
anywhere. Spell out what it actually stands for.

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 Documentation/user/barebox-tlv.rst | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/user/barebox-tlv.rst b/Documentation/user/barebox-tlv.rst
index 1c1abfb43a..0887194801 100644
--- a/Documentation/user/barebox-tlv.rst
+++ b/Documentation/user/barebox-tlv.rst
@@ -1,8 +1,8 @@
 barebox TLV - Non-Volatile Factory Data Storage
 ===============================================
 
-barebox TLV is a system to store and retrieve a device's (read-only)
-meta-data from non-volatile memory.
+barebox TLV ("Tag Linked Value" format) is a system to store and
+retrieve a device's (read-only) meta-data from non-volatile memory.
 It is intended to handle information that are usually only set in
 the factory - like serial number, MAC-addresses, analog calibration
 data, etc.
-- 
2.47.3



