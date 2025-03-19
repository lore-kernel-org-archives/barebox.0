Delivery-date: Wed, 19 Mar 2025 18:38:22 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuxN1-001Xw5-0Q
	for lore@lore.pengutronix.de;
	Wed, 19 Mar 2025 18:38:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuxN0-0000As-1Z
	for lore@pengutronix.de; Wed, 19 Mar 2025 18:38:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XTm6Pka0uVPvWJX9Vj7/RoPlW7nXxfZhWyvzFr2LyaY=; b=ZV85zU1tkUsSYC0ta5xXapAV4e
	bsxnIipG9exdSkmK1lUbOKVpS03g/KvNlKyDzH2OrF6QSv4kCxGQFjkNEBAdb057k5HL4DOZLZzyc
	6mwJl4cipsZby5ua3FF9JV4f6omHjcYYw9BPbU7qaWkNgbtIKNBXQQBb/8wge9juGJHkzMNUG1Rdg
	cP/rG3fyNLSKDvVmll6IQ8QAER6z+lKPdlYlUUQEkQZOvyzCjYey0B/iiqiN33LxLErq4PHU3vJZx
	fStiBqbd/sTp+qQR/7VQ6iJlS0M+fcsAlMaUOLiANxMyXNgCpXmVv12G+0QSA73ij9LBsjjBsn7SP
	90ffExXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuxMZ-00000009jKk-2sGo;
	Wed, 19 Mar 2025 17:37:55 +0000
Received: from algol.kleine-koenig.org ([162.55.41.232])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tuxHi-00000009iXT-36R2
	for barebox@lists.infradead.org;
	Wed, 19 Mar 2025 17:32:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kleine-koenig.org;
	s=2022; t=1742405573;
	bh=1pFKITkQ4w1vEuA/oluGo0AP/swL0DrKNwhEXcQZPRw=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=O+Nxwcoy51VL2tgq9l75o3Tfs2jvEFGTTp5nCi5s3UL+uVFozs9EF/04p/sriRQUT
	 NE3f9lI9MwaM4ol3KtvTXQOmD3iUL20VJZL9il4mZIZ44eR6OtE9cH8AQazzhPYqzF
	 QXGsuPD1Yk5J7xBUZtIQM4t8TW9rIlBelWFRCm9DmOwgxxCqOFQMEo1z2hdHJX3nJM
	 BXxT7jZIWcvlgUJPwSoUuoF6EaMMzyY9WhWj95cV2V22djlmMjdOlYMizW9lbED4eL
	 1rlcMuQ6jeaV/kdiMC/3uJmKZ6BgLHfNjoY8geEHKwPA2ur2ruTwCsvzRpw6tLZPgq
	 590rQOAcoXQJw==
Received: by algol.kleine-koenig.org (Postfix, from userid 1000)
	id 74D6FFC69B9; Wed, 19 Mar 2025 18:32:53 +0100 (CET)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
To: barebox@lists.infradead.org
Date: Wed, 19 Mar 2025 18:32:39 +0100
Message-ID: <d17c2dc494d8fc582dbee8eb8f04de34729d3ad5.1742405341.git.uwe@kleine-koenig.org>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <cover.1742405341.git.uwe@kleine-koenig.org>
References: <cover.1742405341.git.uwe@kleine-koenig.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=737; i=uwe@kleine-koenig.org; h=from:subject:message-id; bh=1pFKITkQ4w1vEuA/oluGo0AP/swL0DrKNwhEXcQZPRw=; b=kA0DAAoBj4D7WH0S/k4ByyZiAGfa/7qj64vsrmJksKyxbin9asDzxQ4Ua8aiU6dAeYeVkCZ1b IkBMwQAAQoAHRYhBD+BrGk6eh5Zia3+04+A+1h9Ev5OBQJn2v+6AAoJEI+A+1h9Ev5OR9MH/Ruf jxmbOU65hldyaGIBgVjWNXw5ODs9E6aRwF69vz+zjIAUjq230nbXiqj4+gsvEdnvNculcVO6v9J NVHxWdJ8YuKDAcMd+qkrduzz4RfrX86/+TZINC4NsKjvxY+IyWWzeQdQ6RJo4nBlOo4UXVo04Sv WgYloa5XjVRBOo/JeSS6MdMWftyI7WYcpmxL/5+DfUXjsHHeLK2N6Et4zDneOU+6M4dTkNB2q4A u0MwH0eRzc6IeCQiXmIjR169K+hDRg2NjvGtKPyI3Mpwk7Sr+auRCMFc5SGfdXKolT63WFwl5K6 QDABFU2XtNt1cSaV5zcO+KKtWrQJqKXFoAKIhwA=
X-Developer-Key: i=uwe@kleine-koenig.org; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250319_103254_922895_760CADE5 
X-CRM114-Status: UNSURE (   6.87  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] arm64: rockchip: Enable generic fit image
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The generic device tree 2nd stage FIT image is a quite convenient image
during development. Enable it in rockchip_v8_defconfig.

Signed-off-by: Uwe Kleine-König <uwe@kleine-koenig.org>
---
 arch/arm/configs/rockchip_v8_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/rockchip_v8_defconfig b/arch/arm/configs/rockchip_v8_defconfig
index 95900368cc02..89e2bbcd6784 100644
--- a/arch/arm/configs/rockchip_v8_defconfig
+++ b/arch/arm/configs/rockchip_v8_defconfig
@@ -10,6 +10,7 @@ CONFIG_MACH_RADXA_CM3=y
 CONFIG_64BIT=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_PSCI_CLIENT=y
+CONFIG_BOARD_GENERIC_FIT=y
 CONFIG_MMU=y
 CONFIG_MALLOC_SIZE=0x0
 CONFIG_MALLOC_TLSF=y
-- 
2.47.1



