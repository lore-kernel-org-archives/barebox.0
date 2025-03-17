Delivery-date: Mon, 17 Mar 2025 09:31:43 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tu5su-000XcV-06
	for lore@lore.pengutronix.de;
	Mon, 17 Mar 2025 09:31:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tu5ss-0003f4-Qr
	for lore@pengutronix.de; Mon, 17 Mar 2025 09:31:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pOVY69V7EZLindlpWea6er47cA6yDc6rIFwQ11UaRdI=; b=Yv/hhkbsBSi3Tu3rsO/p19/+o1
	spJmRqPL5IwLs4yEn9LyeV0AgnOrStKswLlPqIusuZJHZsjgfjAbUlTCYvd026iv1B0OLol9P/n4T
	SzTXm7aZ3GLxSuBW/UISTM174yaI14qP3e/2rcv/HpZdYs5tvINTASz0ZvJBB32m+rhHrZSVRz1ot
	/mh4fjSHuSqLz/mjYxd6qHa5Q4pl4CeRdC24Stvnx+cEr8IRqO2NWDVvJMLtZkiHHLWZiSqcOEnly
	uw9cXZm30whY6n0ZhoAH7YKbXzHpLeH2DDaYzhBp8KyB+BmBXLvNb23dk7E5sugsFGBAQKeLpe1Ji
	I8RVq+dQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tu5sQ-00000001kRe-0jeo;
	Mon, 17 Mar 2025 08:31:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tu5sN-00000001kQN-3IJU
	for barebox@lists.infradead.org;
	Mon, 17 Mar 2025 08:31:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tu5sL-0003VD-7J; Mon, 17 Mar 2025 09:31:09 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tu5sK-000DFe-1p;
	Mon, 17 Mar 2025 09:31:09 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tu5sK-00H1h1-2z;
	Mon, 17 Mar 2025 09:31:08 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Jules Maselbas <jmaselbas@zdiv.net>
In-Reply-To: <20250314104502.14851-1-jmaselbas@zdiv.net>
References: <20250314104502.14851-1-jmaselbas@zdiv.net>
Message-Id: <174220026891.4058046.4189677646354482989.b4-ty@pengutronix.de>
Date: Mon, 17 Mar 2025 09:31:08 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250317_013111_826979_CF9FCE52 
X-CRM114-Status: UNSURE (   6.60  )
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
Subject: Re: [PATCH 1/2] eeprom: at25: replace strncpy with strlcpy
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 14 Mar 2025 11:45:01 +0100, Jules Maselbas wrote:
> strncpy will not nul terminate the dst string in case the src is longer
> than the the dst size, strlcpy will truncate and nul terminate the string.
> 
> 

Applied, thanks!

[1/2] eeprom: at25: replace strncpy with strlcpy
      https://git.pengutronix.de/cgit/barebox/commit/?id=8265cfe43587 (link may not be stable)
[2/2] eeprom: at25: add explicit fallthrough
      https://git.pengutronix.de/cgit/barebox/commit/?id=6a2c56c934d1 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



