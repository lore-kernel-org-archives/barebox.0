Delivery-date: Thu, 06 Nov 2025 14:24:06 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vGzyA-00Fx2j-2y
	for lore@lore.pengutronix.de;
	Thu, 06 Nov 2025 14:24:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vGzyA-0001QX-Ci
	for lore@pengutronix.de; Thu, 06 Nov 2025 14:24:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YhUMYEgnKpSl+SZdNCfAKyLXT+6QZFqNmsyC/vRlPNQ=; b=h6sUdjZUDULRueXnM6rq1j92me
	HIPqRFtzsy2CQSTjnPMu90mEQJWh5bPJ6xPd/2dWVufjmKwTzUOzpUMrJWdspx2Df+lYT4yorMX+G
	oFn3Lzkn9qNE7sgWLu//9U0QNbdzFnEUHuXLQtHJDdUL6oLTN2ZJQ7ths/Pe1BByXpKjOo1eE6iuE
	Q89pZ9m+OWHWzzY/H0dyrsx2hQ9xfWY4cI1blEZ0GiPoHIMmWwxqAz5iuLQPfKujZhXXXGjK0J0+H
	16uazSAbmZf8k+BMU/vCOsxQs9jeuGNd51LW+5sGs8Y3nvUfCaL3W4rfJDlquMXCTAq/9r17fCRYo
	ZHDbMYXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGzxV-0000000FYsI-13Jn;
	Thu, 06 Nov 2025 13:23:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGzxS-0000000FYqo-1ncG
	for barebox@lists.infradead.org;
	Thu, 06 Nov 2025 13:23:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vGzxQ-0001F6-S1; Thu, 06 Nov 2025 14:23:20 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vGzxQ-007My1-2C;
	Thu, 06 Nov 2025 14:23:20 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vGzxR-000000032Bb-0BeO;
	Thu, 06 Nov 2025 14:23:20 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20251104-nfs-v1-0-3e69e5c82a41@pengutronix.de>
References: <20251104-nfs-v1-0-3e69e5c82a41@pengutronix.de>
Message-Id: <176243540058.723366.15553391837340584497.b4-ty@pengutronix.de>
Date: Thu, 06 Nov 2025 14:23:20 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251106_052322_473719_4605354C 
X-CRM114-Status: UNSURE (   9.28  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/4] fs: nfs: Fix buffer overflows
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 04 Nov 2025 09:08:04 +0100, Sascha Hauer wrote:
> The NFS does hardly any checks on incoming packets. It blindly trusts
> the length values in packets and happily reads past the packets. This
> series introduces a function to read from packets concentrating the
> boundary checks in a single place. Also some other things I stumbled
> upon along the way.
> 
> 
> [...]

Applied, thanks!

[1/4] fs: nfs: drop PROG_NFS special casing
      https://git.pengutronix.de/cgit/barebox/commit/?id=dbdfa94f2408 (link may not be stable)
[2/4] fs: nfs: do not read past packets
      https://git.pengutronix.de/cgit/barebox/commit/?id=5be38817bc77 (link may not be stable)
[3/4] fs: nfs: use dev_* for messages
      https://git.pengutronix.de/cgit/barebox/commit/?id=c847a2e42ce3 (link may not be stable)
[4/4] fs: nfs: reduce unwanted message to debug level
      https://git.pengutronix.de/cgit/barebox/commit/?id=5789cb9767ba (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



