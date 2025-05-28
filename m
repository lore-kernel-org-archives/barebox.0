Delivery-date: Wed, 28 May 2025 07:58:28 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uK9o4-0015kC-1T
	for lore@lore.pengutronix.de;
	Wed, 28 May 2025 07:58:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uK9o3-0004jw-Rk
	for lore@pengutronix.de; Wed, 28 May 2025 07:58:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=gM0Y5F/AVTvXe+dNq6n4z0UmaIa4n2TSKgZYV5vDIA4=; b=gXDeUjNG9Sxqo/Bi7IxyMPa1KT
	yXBR1EO8BNNbnECD6DDcU7sEPUULh1PzC5yU6OddK5itf4QzmfrGLokmu2umGdZEPTwxDwwcF/iIW
	tDPCWRIgjsuNSiUrtclHYfoja3WciJLkIg8zgN42+RhLFWoL1GMTfFF7H0IBlDvOLmLQQhRENo40W
	4dH2YYH3RaBfSp9tgrJXcgHqFoz4NurMRdIO7P6SnSZ0Ylyu5QS83KQLaSo6ZkmOCBlTj28HheSJ9
	kx9KSXxP6hirrJHLhTeL0no55ZCTy2idItvQCENXIxEQlxtw7E/P5iGG8um9TCjsznbZM65scmq4K
	nKeOkbdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK9nO-0000000CFVA-0UP3;
	Wed, 28 May 2025 05:57:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK9nA-0000000CFUV-190T
	for barebox@lists.infradead.org;
	Wed, 28 May 2025 05:57:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uK9n7-0004Ji-TQ; Wed, 28 May 2025 07:57:29 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uK9n7-000XLL-2J;
	Wed, 28 May 2025 07:57:29 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uK9n7-005jsm-1z;
	Wed, 28 May 2025 07:57:29 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 28 May 2025 07:57:28 +0200
Message-Id: <20250528055728.1368000-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250527_225732_311010_790E288D 
X-CRM114-Status: GOOD (  10.32  )
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
Subject: [PATCH] Documentation: migration-2025.07.0: create empty section
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

To avoid conflicts between commits adding the file, let's create it now,
even if empty.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/migration-guides/index.rst               | 1 +
 Documentation/migration-guides/migration-2025.07.0.rst | 2 ++
 2 files changed, 3 insertions(+)
 create mode 100644 Documentation/migration-guides/migration-2025.07.0.rst

diff --git a/Documentation/migration-guides/index.rst b/Documentation/migration-guides/index.rst
index 182654847f17..2eb8af84afa2 100644
--- a/Documentation/migration-guides/index.rst
+++ b/Documentation/migration-guides/index.rst
@@ -12,3 +12,4 @@ cause build errors are generally out-of-scope for these documents.
 
    migration-2025.05.0
    migration-2025.06.0
+   migration-2025.07.0
diff --git a/Documentation/migration-guides/migration-2025.07.0.rst b/Documentation/migration-guides/migration-2025.07.0.rst
new file mode 100644
index 000000000000..55f0baef6550
--- /dev/null
+++ b/Documentation/migration-guides/migration-2025.07.0.rst
@@ -0,0 +1,2 @@
+Release v2025.07.0
+==================
-- 
2.39.5



