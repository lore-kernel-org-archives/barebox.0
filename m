Delivery-date: Wed, 13 Aug 2025 10:05:58 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1um6Uf-0006rs-2z
	for lore@lore.pengutronix.de;
	Wed, 13 Aug 2025 10:05:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1um6Ue-00013j-NL
	for lore@pengutronix.de; Wed, 13 Aug 2025 10:05:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hDCYnRanDXxhjKOxTndgF53BuVuhvuSMfxVmJ/8QgOU=; b=2Qr4hYaqfXk2nb
	gifv8bJ/UfIqIWWU6Mr9wCNg9OhZvXK2VNd7N1UXP1NWSULCbNmm9m9K9jPmjx+WxVPrS8XuFee1I
	kzdRUGm0k6zvr8PAS3IzxKm0f5JI2Gfs6JhmDpkmft4dMGmQq8Krsc8ZJ6UgxxRwbpn5rtmTyH+Op
	z+690iXK5RnGs/gbc6tIwXBqhiEat0hKIjZsu6BeS4MIKmt97gKhAtIp0EJZPMLEEes7IK4a7zJos
	fCnjRiHf4MOBgJ3iht+6BHf5cPOngyq+ZLMcnY2+I4VTOfMHQ5zyIVkH0iDnnPlmSoe+QbyM3ltor
	zZyEUF8rbcypD9kQLlvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1um6UC-0000000D21i-0xgr;
	Wed, 13 Aug 2025 08:05:28 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1um6He-0000000CzcW-2nTF
	for barebox@bombadil.infradead.org;
	Wed, 13 Aug 2025 07:52:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:From:Sender:Reply-To:
	Content-ID:Content-Description:In-Reply-To:References;
	bh=hDCYnRanDXxhjKOxTndgF53BuVuhvuSMfxVmJ/8QgOU=; b=duPhkI+0Z4UsiMnUObiMPZyGeM
	QMzACxLq7Dbb1UK0qCN4cukO5ZmDFY9PlFHslyBukwaSvIs0HQgoKLvBihyOjQmBpTGLaYJghzKpz
	uXns/YyGjKntC4j2tuxNAoEPPw7qCpn21zF3d3vpLG7aQl1qsQGZCPSsqcELcbfqNFaQBWPQV6vTV
	pqO+VnG6bqPVx+0XpDX3hRkEvB93QtQLH+X7Nf8AD98mXDnfOwkjr6zU3gde4snXoWUht+JcX1Cr2
	NeKnA/o6vDDB74jLrxyR9V7hfN+vh0rZ14sYmPhRuh/cW95ii/TR5eUpWb+pI4ZBSaYg85gdxIZ5a
	uF7jmhww==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1um6Ha-0000000FzVq-1iql
	for barebox@lists.infradead.org;
	Wed, 13 Aug 2025 07:52:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1um6HW-0006db-SE; Wed, 13 Aug 2025 09:52:22 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1um6HW-0003Sa-24;
	Wed, 13 Aug 2025 09:52:22 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1um6HW-00Etvv-1t;
	Wed, 13 Aug 2025 09:52:22 +0200
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Date: Wed, 13 Aug 2025 09:52:19 +0200
Message-Id: <20250813-fix-ax88179_178a-dropped-packets-v1-0-2ce605407d0b@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIADNEnGgC/x2NQQqDMBAAvyJ7dsEkSDb9SpGSbtZ2KWhIRATx7
 w0e5zAzJ1QpKhUe3QlFdq26Lg1M3wF/4/IR1NQY7GDHgYzDWQ+MB5Hx4WU8RUxlzVkS5sg/2Sq
 6wG9OYbZMHlomF2nOvXhO1/UH0UG7jHIAAAA=
X-Change-ID: 20250813-fix-ax88179_178a-dropped-packets-39cbcd9f2c87
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Stefan Kerkmann <s.kerkmann@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250813_085226_548561_811C9C58 
X-CRM114-Status: GOOD (  10.93  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/2] usb: net: ax88179_178a: sync reset and rx with
 upstream
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

These patches are the result of investigating dropped packages while
working with an AX88179A based UGREEN USB ethernet adapter. The main
improvements are bounds and consistency checking in the RX path. What I
couldn't fix at the moment is that the adapter sometimes stops receiving
packets after a "warm reset" of the device which doesn't power cycle the
device e.g. chain loading barebox via tftp without a power cycle of the
whole USB bus and devices.

I tried the following U-Boot commits, but they didn't fix the issue.

- 9713c15d2e6 ("eth: asix88179: Fix ASIX AX88179A PHY hang")
- 1bd136715a4 ("eth: asix88179: reset during probe")

What helps in the situation is physically re-plugging the ethernet
cable, which triggers a link reset in software. This link reset also
happens while opening the device so I'm suspecting a bug in the
controller itself (or there are still some missing reset instructions).
The Realtek RTL8153 chipsets seem handle this situation better, so it is
adviced to use them in a "warm reset" scenario until this is fixed.

Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
---
Stefan Kerkmann (2):
      net: usb: ax88179_178a: align rx_fixup with upstream
      net: usb: ax88179_178a: align reset with upstream

 drivers/net/usb/ax88179_178a.c | 79 ++++++++++++++++++++++++++++++------------
 1 file changed, 57 insertions(+), 22 deletions(-)
---
base-commit: ed59f724912d0b4a86f88fa318836260c88271d1
change-id: 20250813-fix-ax88179_178a-dropped-packets-39cbcd9f2c87

Best regards,
-- 
Stefan Kerkmann <s.kerkmann@pengutronix.de>



