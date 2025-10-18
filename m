Delivery-date: Sat, 18 Oct 2025 12:00:31 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vA3jj-00990I-0B
	for lore@lore.pengutronix.de;
	Sat, 18 Oct 2025 12:00:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vA3jg-0008P2-Sh
	for lore@pengutronix.de; Sat, 18 Oct 2025 12:00:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VPGNF6oPs5fJTzQi/q9qxLtFuHqM3AmrejeSlPEg8S8=; b=Lf0CBi8BV5mCZya06XVe4zk9Ww
	QRgGv32WC99pkoV6sGIb1uOmL/lNbLQPFHTO/j1hpUYG6rMEnhW4lXaUDtnhxtjsPGTTM2fHrD1H2
	Rzr8o3cYn0zGOj57/uJSB0qVWoI/fw4O2LP6EwJR8FI+S/YRRfT/3/l/CpQiL15to7O9EUmw+k3h1
	xIhebHQCjDe8sjT89eG7ucf9IbL8tT+yX4l+aAKvttSYJNCtpdbeyQYSOOIy5xK3hXHRLhwNFBxz4
	DHxOZr0EIi5ZHooNTRP7eNwPF2BNx9AGxUPCLX/IdaluGZCM6iBoMqHOWDv8VVSJXBu0KpSKLwFn4
	TnJYXS4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vA3j7-00000009mFP-0ckO;
	Sat, 18 Oct 2025 09:59:53 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vA3j6-00000009mF0-0JD3
	for barebox@lists.infradead.org;
	Sat, 18 Oct 2025 09:59:52 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 33E916060D;
	Sat, 18 Oct 2025 09:59:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF045C116B1;
	Sat, 18 Oct 2025 09:59:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760781590;
	bh=XycAGMPIJ5sWvIv52KJEkOJCRQTqQE5tjSvMY6Se380=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=izVbWgkJH7hEOfVxQl0avK9ZVRnn1dAmnFEcSmOQW6ZSkrsLjEqjwo/ZpWsZHWT0B
	 PYXCBVy3TwpVDnPPlxuFcPD0IcLP5z+EMUK9XwfURyCkSS3h0rhc2cIg/y5ghlYS83
	 XEKk9sB7MBmi1iz//m0wtJtvrrQ7sCH3jy1eWMiddLAACkH5HTZZ+L4JE9s0hC/rE8
	 sx5geNfXTqn3MsSinSgIxWArDpQl/0OYvs1wcndjbFkgoqq2Hcjp6+2TgODJ3E0WbA
	 MfbkfUoHvM80/nd/IPnl1uqiH83ZErYAStuApSCcz5tl2axDbUYlTYiu1dkt+M7Efm
	 JPpezkB6H3nuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0BD3CCD184;
	Sat, 18 Oct 2025 09:59:50 +0000 (UTC)
From: Maud Spierings via B4 Relay <devnull+maud_spierings.hotmail.com@kernel.org>
Date: Sat, 18 Oct 2025 11:59:48 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251018-imx_gpio-v2-2-22e4fc090de6@hotmail.com>
References: <20251018-imx_gpio-v2-0-22e4fc090de6@hotmail.com>
In-Reply-To: <20251018-imx_gpio-v2-0-22e4fc090de6@hotmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Maud Spierings <maud_spierings@hotmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1760781589; l=841;
 i=maud_spierings@hotmail.com; s=20241110; h=from:subject:message-id;
 bh=jPNzUK/lQcbfb8T2/TBWUgMNeR+eIZuOIYqxnDE4JG8=;
 b=verRk9OLR3/Kd7bb8TI0goIF1hGWfP9utQPNAtv0ZtJPpSx5x8KH0VddBeNHFIq5rvnbiuona
 Eq6Oo7RFj64AGw98dT3+ornYQwG5iQuYY0QtjWWD1dLp/QFl7fov2jz
X-Developer-Key: i=maud_spierings@hotmail.com; a=ed25519;
 pk=CeFKVnZvRfX2QjB1DpdiAe2N+MEjwLEB9Yhx/OAcxRc=
X-Endpoint-Received: by B4 Relay for maud_spierings@hotmail.com/20241110
 with auth_id=273
X-Original-From: Maud Spierings <maud_spierings@hotmail.com>
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
Reply-To: maud_spierings@hotmail.com
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-103.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,USER_IN_WELCOMELIST,
	USER_IN_WHITELIST autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 2/2] Documentation: migration-2025.11.0: add note about
 new gpio behaviour
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Maud Spierings <maud_spierings@hotmail.com>

The previous change, changes the behaviour of reading gpio values, make
a note of it in the migration guide.

Signed-off-by: Maud Spierings <maud_spierings@hotmail.com>
---
 Documentation/migration-guides/migration-2025.11.0.rst | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/migration-guides/migration-2025.11.0.rst b/Documentation/migration-guides/migration-2025.11.0.rst
new file mode 100644
index 0000000000..9cbc46acc3
--- /dev/null
+++ b/Documentation/migration-guides/migration-2025.11.0.rst
@@ -0,0 +1,7 @@
+i.MX GPIOs
+----------
+
+Reading output GPIOs now returns the configured output level instead
+of reading back the input register. This aligns us with what Linux
+is doing, but may falsify readings of single-ended GPIOs that have
+the SION bit configured.

-- 
2.51.1.dirty




