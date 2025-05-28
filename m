Delivery-date: Wed, 28 May 2025 14:19:47 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKFl5-001BYi-1W
	for lore@lore.pengutronix.de;
	Wed, 28 May 2025 14:19:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKFl4-0000ch-Ql
	for lore@pengutronix.de; Wed, 28 May 2025 14:19:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5e02QmKQVcbIFUqV2UoXY4kHNtIpSuDYdxz4kVAauoQ=; b=a3N416AM9bcOIqDdhvfUvkv4Yw
	avo0aMjdJ9UHoYhnKIRa8farUJdaVIk3e9oYP5W51ijrSC35mQaiSUOltyis5QTmANMMxZFvWPVP1
	Msn67YIDn0EiqzHx5Rvnu0kqIXO++qxMpwpDhyZaSiVovv8QZ2t7QQHpa8+wpWqZhekN3Y4ocMJX7
	DwmWcnJH++GWLCnr2MdvFZiFyYomNy8vaZCDjuYiEn8phU7QxqTc7Gs9/DcLe/JoHOBfSaawcfQhN
	FOtpExpLeba4iMSHqbI60zqfTF6RYjzjZlsHyiZQ3iy3TkxKBvAO5hBlJnt3B/ZatYkX1NhoH8aMx
	8Dq9+wOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKFki-0000000D5PO-0SoO;
	Wed, 28 May 2025 12:19:24 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKEY0-0000000CvyQ-2cOF
	for barebox@bombadil.infradead.org;
	Wed, 28 May 2025 11:02:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=5e02QmKQVcbIFUqV2UoXY4kHNtIpSuDYdxz4kVAauoQ=; b=r5HlPLLhqV8n0J0/kiNeSuQq52
	tM+fh0Wju5HOLEZtP7R3T8WzJVi9BTJKGPHwKi8MZIBBulPYZdUP4lRXpvbdrpJRSvOh1X1dvgDZt
	STrSD+3TYfeyF9Q5oYSLmZhhmE8A8ElkCF0PX7/S6BCr7EzJiPFTGHV4C1vbxBgD8jXkLFCrtgPrn
	0c1jZQX260XEUIPtnyMYCkpFV0MxXW3yWOAxVl6/8rTjCOnVY9iT1rJBO2T6NtwDuirGfNWWwbpG/
	BaR0xH3pzrjuu3zzuy6sFlHOV5zABB7HFW2K0INqg0c0a6QgK4RDyMuG4CuEpjFtG85N/Rsh12oFD
	6HRHmgdg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKEXw-0000000DXDp-3k08
	for barebox@lists.infradead.org;
	Wed, 28 May 2025 11:02:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uKEXm-0001p9-Ec; Wed, 28 May 2025 13:01:58 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uKEXm-000Zgw-0q;
	Wed, 28 May 2025 13:01:58 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uKEXm-00DuY0-0X;
	Wed, 28 May 2025 13:01:58 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 28 May 2025 12:50:38 +0200
Message-Id: <20250528105046.3270397-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250528105046.3270397-1-a.fatoum@pengutronix.de>
References: <20250528105046.3270397-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250528_120208_972873_A2F57B95 
X-CRM114-Status: GOOD (  10.41  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 02/10] bootm: enable CONFIG_BOOTM_OFTREE by default
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

All pltforms that have HAVE_ARCH_BOOTM_OFTREE selected, should probably
support booting kernels with a device tree enabled.
CONFIG_BOOTM_OFTREE does that, but only indirectly via selecting OFTREE.
Many architectures and boards already select OFTREE and thus can keep
CONFIG_BOOTM_OFTREE unselected undermining its function.

Make CONFIG_BOOTM_OFTREE the default now, so we could at some point in
the future actually require it for bootm -o as it was meant to.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/Kconfig b/common/Kconfig
index 86a651661c35..0a7d9aee3abe 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -632,7 +632,7 @@ config BOOTM_INITRD
 	  -L ADDR    specify initrd load address
 
 config BOOTM_OFTREE
-	bool
+	def_bool y
 	depends on BOOTM && HAVE_ARCH_BOOTM_OFTREE
 	select OFTREE
 	prompt "device tree (oftree) support"
-- 
2.39.5



