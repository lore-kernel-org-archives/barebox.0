Delivery-date: Wed, 03 Apr 2024 13:29:09 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rrynl-005zgo-1j
	for lore@lore.pengutronix.de;
	Wed, 03 Apr 2024 13:29:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rrynl-0003Ra-0g
	for lore@pengutronix.de; Wed, 03 Apr 2024 13:29:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=23DtpK39qx/Q7QnAO1guU1xjX4BkrQOsJTkoBnKXlxA=; b=K5kOeL/MmkOTLtOu7mSi74EJDx
	CJ7Hgsy0tVa4an8AiExB30G7yZ3Lk1t0o43Y84hFCU7y5gollj0FTmn4VeHai9IFDHwf/haDV+0S8
	N8X7KiZUxzH3UyDMs9lBTFZ3MaQYXbXwt7sGCb7taI95fM+oDsy+jHnEq/sm2yEBOMDBye0SOKNbX
	OMD1yPlR5cenx8c3v8yMBD9+pmLGRfTQnv7aQHZencGFdvtSYWqG80Q487jJmL2XN7rOdUq+zroY/
	tmXCXCyJhonZs3B5PwhA6T5SoBlmE1TPvgn88unltGbgXBQqqbEWOfZFO89J4/q3zn+b0cY4MXzFi
	iVPl2QoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrynM-0000000FmCn-0rGI;
	Wed, 03 Apr 2024 11:28:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrynI-0000000FmBp-1h08
	for barebox@lists.infradead.org;
	Wed, 03 Apr 2024 11:28:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rrynG-00035Y-72; Wed, 03 Apr 2024 13:28:38 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rrynF-00AALC-Qb; Wed, 03 Apr 2024 13:28:37 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rrynF-006EcQ-2S;
	Wed, 03 Apr 2024 13:28:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Oleksij Rempel <o.rempel@pengutronix.de>
In-Reply-To: <20240402092654.94523-1-o.rempel@pengutronix.de>
References: <20240402092654.94523-1-o.rempel@pengutronix.de>
Message-Id: <171214371775.1486127.1291476391227135782.b4-ty@pengutronix.de>
Date: Wed, 03 Apr 2024 13:28:37 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240403_042840_484680_51D71972 
X-CRM114-Status: UNSURE (   7.31  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 1/2] ARM: i.MX8MP: skov: add fallback for
 unsupported HW
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 02 Apr 2024 11:26:53 +0200, Oleksij Rempel wrote:
> Add fallback support for currently not supported HW. Instead of
> completely fail, it is better to use some kind of basic devicetree with
> reduced functionality.
> 
> 

Applied, thanks!

[1/2] ARM: i.MX8MP: skov: add fallback for unsupported HW
      https://git.pengutronix.de/cgit/barebox/commit/?id=b3b526447a61 (link may not be stable)
[2/2] ARM: i.MX8MP: skov: add new bd500 variant support
      https://git.pengutronix.de/cgit/barebox/commit/?id=6cf809a063ed (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



