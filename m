Delivery-date: Wed, 22 Nov 2023 10:50:27 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r5jsG-004BC4-09
	for lore@lore.pengutronix.de;
	Wed, 22 Nov 2023 10:50:27 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r5jsG-00044U-4Q
	for lore@pengutronix.de; Wed, 22 Nov 2023 10:50:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=euByNV1vfZEXURQJWjBqUojhIp9a4XuVXqyAxz3nnEk=; b=FiJsrM2ZNo3h7NUWYLrmcdVuf3
	6fFN0GlcmOwiZT/Y1KmmWNerdiWP4iBvblr7iNgblHbjDLxcW6PRT/bUGL5n3o9QMV+HUHoM/p7D+
	YOYwSAEoZNAmvKr1ciIR/SD7UiWrxQOJR4XIP8LibS5zlEMRTUR5k5BWL3lxaUSNTP+dGl/U4b9iQ
	IFQxIBuGMvVyM2qGHO+tcVxk8e2BYnUCbcR9uYsJcNyiAMJpLSIBjmjE2ur030T18E1cauVWcx7l1
	mr8wx/gcHNlZd05EbG+UgO/fhrBdQX3naFF8D1uGvqnbGrgakUmjDcsfUtFvd6/ytbaz8NTY887gk
	YVP8ePww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5jqj-001L0N-1C;
	Wed, 22 Nov 2023 09:48:49 +0000
Received: from algol.kleine-koenig.org ([162.55.41.232])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5jq4-001KAv-2b
	for barebox@lists.infradead.org;
	Wed, 22 Nov 2023 09:48:17 +0000
Received: by algol.kleine-koenig.org (Postfix, from userid 1000)
	id EFCDDB9CB6A; Wed, 22 Nov 2023 10:47:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kleine-koenig.org;
	s=2022; t=1700646477;
	bh=gFHM6dD+qwiJr8DO/xfY247YnFnFJlgTkcb4hOoyeq0=;
	h=From:To:Cc:Subject:Date:From;
	b=IVX4XnOduVRgkPL2Yub2TVsmd/dklGbn8eVRAZQgw7tQoSA3J5x+2xTZ/du+XJ7iZ
	 7ur+P8Z1c1fyiPTYbvWvyLvna27X5GVvhrcZhbkqnMaVitkUxTyY6uIDSZxfTFzB9G
	 qWNdjTAItd8QpAtBwL93IjBvY+mmN+662TRyFiZy7HaJ60S5qdmRcg9iQDm0iDTKsV
	 yEJ4BuXSoewOx6F7jery6OsjJR/izyZf03oX/dn1t9KmAUk987onCkHwqEUwD1d4We
	 hJ4EweQim8fn/4uTKHWDnkD7sCeqpr0zZk4nl+Irx0qHRNz92gJF3TBtBU768mzAlF
	 RI3AY+2n2HRcw==
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
To: Sascha Hauer <sha@pengutronix.de>
Cc: Ahmad Fatoum <ahmad@a3f.at>,
	Alexander Shiyan <eagle.alexander923@gmail.com>,
	Thorsten Scherer <T.Scherer@eckelmann.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>,
	barebox@lists.infradead.org
Date: Wed, 22 Nov 2023 10:47:48 +0100
Message-ID: <20231122094747.340825-1-uwe@kleine-koenig.org>
X-Mailer: git-send-email 2.42.0.586.gbc5204569f7d.dirty
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=814; i=uwe@kleine-koenig.org; h=from:subject; bh=gFHM6dD+qwiJr8DO/xfY247YnFnFJlgTkcb4hOoyeq0=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBlXc5DHwcfjndibl8Qk+3F0wwlTbYSI3o+ChbfG ldDsePUAdaJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZV3OQwAKCRCPgPtYfRL+ TmtKB/0WlbF83EnpG596adT3jg2OIF60HVgQNG0Qewn/zBdKxIz52LcNseM8cBogUlk4PL/cfk4 83HOVXOEt5FfePFhBI9h9VllL0DioJiuE08OBHC4jsYAJVdIhf55j2py2GEu+u0qUKyrXBYACTo 9jBOpM6clN9rkPYtN24sXtPz/I+tIN7BWA8pMqqve25ry9/Iks/WuTITbfbfAypRYJ+UeYToN5m PgsAXQyUCYvd1CjZuW2ULPxYgm1wJEdbHiftPs21B4MDXFlrqxL2YyzfH4nKLq2Ecbw/BWkYJsW sEvCSNi6PS1pXXKdDdpJAy02XF7EuwFUpQpRW4yv0i3Ws8lS
X-Developer-Key: i=uwe@kleine-koenig.org; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_014809_264097_B5F518D4 
X-CRM114-Status: UNSURE (   7.62  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v3 0/2] Allow generating MAC addresses from machine ID
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello,

On Tue, Nov 21, 2023 at 09:33:58AM +0100, Sascha Hauer wrote:
> This series neither applies to master nor to next, please resend

here is the rebased series. Applies to current next. There are no other
changes.

Best regards
Uwe

Ahmad Fatoum (2):
  common: machine_id: support deriving app specific UUIDs
  net: add generic MAC address derivation from machine ID

 common/machine_id.c  | 83 +++++++++++++++++++++++++++++++++++++++++++-
 include/linux/uuid.h |  8 +++++
 include/machine_id.h | 11 ++++++
 include/net.h        |  2 ++
 net/Kconfig          | 17 +++++++++
 net/eth.c            | 15 ++++++--
 net/net.c            | 49 ++++++++++++++++++++++++--
 7 files changed, 179 insertions(+), 6 deletions(-)

base-commit: 7c12dcdbe20ffc872af8b433c91263c6520cf669
-- 
2.42.0



