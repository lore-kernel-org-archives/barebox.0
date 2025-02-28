Delivery-date: Fri, 28 Feb 2025 13:15:25 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tnzH3-0083JH-1r
	for lore@lore.pengutronix.de;
	Fri, 28 Feb 2025 13:15:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tnzH2-0006Xq-DI
	for lore@pengutronix.de; Fri, 28 Feb 2025 13:15:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Grh0tH9ZYjiDXIByZ3mq3ft0oqkvFfwl6X3KreP0fGM=; b=Kmd50TAZF6o/FI6u6rsTZHR2FO
	5ImrwcwhtljSvBm090OBA0coeo+AX4TJ+hw0f1ec9q0tV9+6VUPl1s92e9JNhjgQihQi3DhrsvcDC
	vDuq0PU3nUUPahjMcFEs8cqNI8wynx1Re4EcDErX68bMEeJHD803OAhd758cHrf1W6uqcaQIW9Yyx
	WXJyd8iLXc9mRH20CYKB0QlzA8a19VPpIxZ7ygYwc6VK9IK9kE+FM2Wx2uF9JWMKRlnpbjPpQZJ8+
	y56A5epmr90Hqp+LC6zBZMWpa/aBxPDbmkah0Xo96t2lgonvuIM+VrZQpkkfUv8LFM9/aN6ufSdRx
	8Ojwt3lg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tnzGY-0000000ArnP-3j4v;
	Fri, 28 Feb 2025 12:14:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tnzG8-0000000ArfE-3SGZ
	for barebox@lists.infradead.org;
	Fri, 28 Feb 2025 12:14:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tnzG7-0006Oi-Im; Fri, 28 Feb 2025 13:14:27 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tnzG7-003I8y-1F;
	Fri, 28 Feb 2025 13:14:27 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tnzG7-00AvP0-0z;
	Fri, 28 Feb 2025 13:14:27 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20250218140407.1224499-1-s.hauer@pengutronix.de>
References: <20250218140407.1224499-1-s.hauer@pengutronix.de>
Message-Id: <174074486730.2603876.9589199751001079496.b4-ty@pengutronix.de>
Date: Fri, 28 Feb 2025 13:14:27 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250228_041428_868898_70A55680 
X-CRM114-Status: UNSURE (   9.57  )
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
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] ARM: i.MX6: Enable PBL_VERIFY_PIGGY with HABV4
 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 18 Feb 2025 15:04:06 +0100, Sascha Hauer wrote:
> Some i.MX6 configurations use the xload mechanism. With this the ROM
> only loads and verifies the PBL. The PBL will then load barebox proper.
> Without verification the barebox proper binary is untrusted and could be
> modified. Select PBL_VERIFY_PIGGY when HABV4 is enabled to ensure the
> barebox proper binary has not been tempered with.
> 
> boards not using the xload mechanism don't need this option, but there
> is no good way to detect currently if the xload mechanism is used, so
> these boards will have to live with a slightly increased binary size
> for now.
> 
> [...]

Applied, thanks!

[1/2] ARM: i.MX6: Enable PBL_VERIFY_PIGGY with HABV4 support
      https://git.pengutronix.de/cgit/barebox/commit/?id=c2cf17685bf6 (link may not be stable)
[2/2] ARM: i.MX9: Enable PBL_VERIFY_PIGGY with non INSECURE
      https://git.pengutronix.de/cgit/barebox/commit/?id=cab919df26f5 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



