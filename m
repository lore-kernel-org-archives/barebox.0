Delivery-date: Mon, 11 Mar 2024 11:58:06 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rjdM6-000vPF-23
	for lore@lore.pengutronix.de;
	Mon, 11 Mar 2024 11:58:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rjdM6-00075n-3X
	for lore@pengutronix.de; Mon, 11 Mar 2024 11:58:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lAnOxdZq3TyB4LpRwRT4G156qS9vGVOrYkJWY5ze3P0=; b=DSVjOCVZhb5mvfVhowwtRwYh4x
	gVfj/tvumlXlu3LE1AdXitgAFqEus1cc4XIwd4eC/bEPNDhrQLhETxCftpQJo3Z2kv++DP21yMsZ0
	cwoF6vFnFR/setZdiwLnzDb8r4eIMK/Yh68gKlbD5KsrxYNCRFg238xlRa9V781O1FTg8wDCmvUXe
	1AQj9jjlHBxMcuOUpg+1co/NStCwZSntcLnVzzHrrDknXtzKYoV6VajfIBrCoU0s4w0GKdIdWJ3Ny
	Dnn7WKznCxLWPO7PsjOkuctRAwepbhek9gzxqMX+yyVWuJ3RFSiuENrjP3v30gzpHbZu+xp5eMUBq
	87BZtLag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjdLa-00000001AoM-2jwy;
	Mon, 11 Mar 2024 10:57:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjdLW-00000001An0-1HJd
	for barebox@lists.infradead.org;
	Mon, 11 Mar 2024 10:57:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rjdLU-0006ZK-IX; Mon, 11 Mar 2024 11:57:28 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rjdLU-005h8l-5r; Mon, 11 Mar 2024 11:57:28 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rjdLU-004RYN-0O;
	Mon, 11 Mar 2024 11:57:28 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Bastian Krause <bst@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240308142052.2683407-1-bst@pengutronix.de>
References: <20240308142052.2683407-1-bst@pengutronix.de>
Message-Id: <171015464812.1059204.11754957283038963749.b4-ty@pengutronix.de>
Date: Mon, 11 Mar 2024 11:57:28 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240311_035730_403712_68E4DB34 
X-CRM114-Status: UNSURE (   6.72  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/2] ARM: i.MX8MM: set SION bits for i2c2, i2c3, i2c4
 mux options
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 08 Mar 2024 15:20:51 +0100, Bastian Krause wrote:
> i2c data lines are bidirectional, so the SION bit should be set. For
> i2c1, this is already the case. Apply the same to the remaining i2c mux
> options.
> 
> 

Applied, thanks!

[1/2] ARM: i.MX8MM: set SION bits for i2c2, i2c3, i2c4 mux options
      https://git.pengutronix.de/cgit/barebox/commit/?id=20b7ed6f3333 (link may not be stable)
[2/2] ARM: i.MX8MN: set SION bits for i2c mux options
      https://git.pengutronix.de/cgit/barebox/commit/?id=29b1a36f7cda (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



