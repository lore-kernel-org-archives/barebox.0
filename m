Delivery-date: Tue, 03 Nov 2026 22:33:26 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xOM8E-006wZh-0D
	for lore@lore.pengutronix.de;
	Tue, 03 Nov 2026 22:33:26 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id E30642016D6
	for <lore@pengutronix.de>; Tue, 03 Nov 2026 22:33:21 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=a6TA+jFG;
	dkim=pass header.d=puzzle.ch header.s=20211230 header.b=VphQmrsx;
	dkim=pass header.d=puzzle.ch header.s=20211209 header.b=ZD2qVEo0;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=pass (policy=reject) header.from=puzzle.ch
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793741602;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=bZ+/uxTFbSGHpkdGrkjUh0aV/4QNvf49Se468UoHs68=;
	b=RMDPS5IGqkEBO3NBBa0fuIG3pl4o2r343oxf/QlPOUI8quknUSuPvhtfTLrszq6J3sNUSn
	gu8wMDcO8XI7CqA+asHoeaFMv/GhTxD6thqzbiXarBNEnnSPutr2DNk6Shv+0RTHWcZhNC
	e6cnqljuMFjuZY20NddPyjjW12JibpyQ0Ab7qWMljRJy/rnX2tdTJ/j/XxnKw/8b/3cDhz
	b4IhrX+JCcBTjeRHYfzriI2qrqzHbRV1E0oGy5NFjchyuzDeRzS76YpPXc92A9Ty1t1dSa
	4DWv/PFiW791zI8fnBz7HHJZ8xObPgkz+eE37fwwhmhgx17KJxmt1vkdqlrU6g==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=a6TA+jFG;
	dkim=pass header.d=puzzle.ch header.s=20211230 header.b=VphQmrsx;
	dkim=pass header.d=puzzle.ch header.s=20211209 header.b=ZD2qVEo0;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=pass (policy=reject) header.from=puzzle.ch
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793741602; a=rsa-sha256;
	cv=none;
	b=LlcZHiG1wKQJl0gai+L9UxzW/6RDKX556wOweexikKpnsQiUFyXJfUiFQAgCLB+tofpDSD
	UCXHdI8POqhKskfiMuaVc3x8tvhMBYDs2HGjXo5ebxz+I3OWQ75pkmCPWaiYP64jDKmJX4
	x3mkFfa6xZIk5M0EUaE7nsGnDthRYL8O1a8B/Aw2H6QegY88Mr3A/oFRUkDhrh6Tk786I6
	0wsARAcyWP20XxwLVEaIG//5xX42WC4/tRhgxosr7ZlW9qm0Z4EAEs0PU/0CYreQVjyo4T
	LAbQ2yaAcOu+WXiMXa3edWqDgAgEoHpNy+hO8pIrWXfmeZuN3tNDSLhAkhSbng==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=bZ+/uxTFbSGHpkdGrkjUh0aV/4QNvf49Se468UoHs68=; b=a6TA+jFGbARL34
	P3Thf5ReburtzVt/Hl+lOgx101tqeRPLEAQY3EY3u9CQT2j+ngOCu58LnUIHS51yrkwC+eHxmG7CJ
	LRNJbCT1h0j+L0MJ80Vq78evj9iE9pIzzDVRQrw1fSHHeK0tdvE+mB25o8JQifIRUy1AZWhwqR7tG
	5YP3pmf6TgOhfGbWUP9zPGm9ez1cSAmNn+KPOEg/cbnzSnyrfnEN3IWpSzR5K2y4pdmOOjSokdwZL
	hL5a0IcyFGT+O/eO/VuyS3h9pz5NfpHUgfZXqfqReEuWBTmljI1+SOr/KrwWu6LDGYa9O8mVGhZTq
	PZyBtRy5DMBuBpxDyjlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOM6O-00000003iB7-1TPG;
	Tue, 03 Nov 2026 21:31:32 +0000
Received: from mx04.puzzle.ch ([2a06:c00::560f])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOM6K-00000003i5e-2cXJ
	for barebox@lists.infradead.org;
	Tue, 03 Nov 2026 21:31:30 +0000
Received: from mailstore02.cloud.puzzle.ch (mail.puzzle.ch [45.81.71.99])
	by mx04.puzzle.ch (Postfix) with ESMTPS id 4315F172;
	Tue,  3 Nov 2026 22:31:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=puzzle.ch; s=20211230;
	t=1793741482;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=bZ+/uxTFbSGHpkdGrkjUh0aV/4QNvf49Se468UoHs68=;
	b=VphQmrsxVJ7OnKpUfj+a0jlZ7zUYQ6ICt9gy2FSZFU79vTS/J6uUy0xgxvqC+1dwCVQyn4
	G+xcrDG9IsXx1uhwvyijkNcUhSb1CiD7dxuyrw4JONEu8b1+579H5ZuE4eb9u3YdjgpcfU
	lASgGANSGijFCN/Cbp2DsMeucbhAiqsKLT4RxWD2CllUM3TSPJAxD865izTplV7n8WYS3j
	QRMpNENYD1aIu6/jy1Yfo31QcD4r8XjJBKnx3d1JjYjSCQQqffeXQztStpivgaVxiiKdna
	FpVdzbTyRIP351JfF7nRoNBp1iq7LcevvS2UH+8/aSkb/1+CRfpzCw2pjhyaCw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=puzzle.ch; s=20211209;
	t=1793741482;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=bZ+/uxTFbSGHpkdGrkjUh0aV/4QNvf49Se468UoHs68=;
	b=ZD2qVEo0iBpt7TZiwCEL2gIYfzFJAiTQ33Xxy0ZgIJCfmzHUdzx0nwW6/whq4sWb1wWew9
	1j6n6qcH+vcLuLQI8cUXQ/ilRI/7vdBT3atIosj3I/Kr9BlWMRC+Uf3SulZS3fpwcqoBK3
	uPzaZXIiqG4KRhtotEio7AV9DBV3yWLdvFRCFdyF8zo3T50QTWqIw4L6aaAdw3BV8l1X2p
	GdL4t6vW4oRyRFoTuHvSt/zGy393wEvJYNbGkBj8ro4oTzwoLY7MGTgFFhrGn3Iy7miTYd
	0k21nlEyvBLz4Es6HsRCydh1/m17nI7b0FtXPQWEhtupzNFaVpQGtw8XpBQp0w==
From: Michael Grzeschik <grzeschik@puzzle.ch>
x-ms-reactions: disallow
Date: Tue, 03 Nov 2026 22:31:12 +0100
Subject: [PATCH 6/6] gpio: orion: register at coredevice level
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261103-orion_kw_mvebu-v1-6-86442c0d283e@puzzle.ch>
References: <20261103-orion_kw_mvebu-v1-0-86442c0d283e@puzzle.ch>
In-Reply-To: <20261103-orion_kw_mvebu-v1-0-86442c0d283e@puzzle.ch>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 "open list:BAREBOX" <barebox@lists.infradead.org>
Cc: Michael Grzeschik <grzeschik@puzzle.ch>
X-Developer-Signature: v=1; a=openpgp-sha256; l=1364; i=grzeschik@puzzle.ch;
 h=from:subject:message-id; bh=4io9Pp/N6nr9RPI9TFd8hbkloS48puPbPKJtJe9tKHs=;
 b=owEBbQKS/ZANAwAKAb9pWET5cfSrAcsmYgBq6lKlOmz8CsT9lDcIDgTIK6mdKI4IGxBSZd3WV
 +a1nK8HYYSJAjMEAAEKAB0WIQQV2+2Fpbqd6fvv0Gi/aVhE+XH0qwUCaupSpQAKCRC/aVhE+XH0
 qwSVD/wPlSXyBJq9YORKfrIfIyAzsIkNgLOkG49ndUhwAEW7PrEcSo1AIIfoxuCAcQozCkEkyRe
 qB/Po3VKpUCayOONz9VUuV74MCXK/aq7kLC2KMfKzl6rEU7soSMdyB3j/l72iQH0oaMZcF7kzi3
 TA1xPuPFvWPHjaxrR316Ouk5vLxYPszRm1JI+0ebZ4LT2FVohRceyBK/8N62HhDegxyu4cp6JOM
 yStgD09SCMbfgDP1kWE47l528gESv4sfUwUJ5GgicHKe7FzlfhCajjX2BzQs4j1J/ScAns8E3Ms
 VUuk23AuaRJ301C8RsgIsR1AIVWMOJIYVFTqLj0ukjFb97tClVWMLHPnlTXPLPx/hqTSL8cwbVu
 mu4UDX1shJuEPegSJwp0GaqvVnuyRjDbYCPaKxiaVrMG+/eeoRTKRXQWlixLdnJpeW9LBo60Bxo
 3ISGfRVpIz2aqZ8k7IlHR4v+mImv3r4Y91xCwWLvad11zW1I2dX64aE8uL/8H1j4qX5jafXm1hS
 bS093dDSU2c0QLmo7hcJIQA6/R+fvl5cPjX1weDXMFWnzT0g03Za9bBA99BclDSn+Q740Xagp8t
 thd0zfQk2qceWxQFoawmg/XDQnXhZr7/hu3WM3FVtA8oEeDufrLjLm35LSTNuHc7Q5pOu6TMkdp
 9w0hscnVEC6PmYw==
X-Developer-Key: i=grzeschik@puzzle.ch; a=openpgp;
 fpr=957BC452CE953D7EA60CF4FC0BE9E3157A1E2C64
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261103_133128_874096_8DE0A453 
X-CRM114-Status: GOOD (  10.07  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On boards without deep probe, all devices are created at core_initcall
    and each driver probes its devices when it registers. The orion GPIO driver
    registered at device level, like its consumers, and d [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
 -0.0 DMARC_PASS             DMARC pass policy
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: E30642016D6
X-Spamd-Result: default: False [-7.91 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[puzzle.ch,reject];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,puzzle.ch:s=20211230,puzzle.ch:s=20211209];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[grzeschik@puzzle.ch,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_FORWARDING(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_ALL(0.00)[];
	MISSING_XM_UA(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,puzzle.ch:+];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[grzeschik@puzzle.ch,barebox-bounces@lists.infradead.org];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=1];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: x546heu95id4xfgb4uwq4jq7djb3segi

On boards without deep probe, all devices are created at core_initcall
and each driver probes its devices when it registers. The orion GPIO
driver registered at device level, like its consumers, and drivers/led
and drivers/input are linked before drivers/gpio, so gpio-leds and
gpio-keys were always probed before the GPIO controllers existed:

  gpio-leds gpio-leds.of: error Requested probe deferral: getting gpio for /gpio-leds/led-level
  gpio_keys gpio_keys.of: error Requested probe deferral: requesting gpio #0

They succeeded on the deferred retry, but the messages look like errors
with a debug log level. Register at coredevice level like most other GPIO
controller drivers, so the controllers are there before their users.

Assisted-by: Claude:claude-opus-5-5
Signed-off-by: Michael Grzeschik <grzeschik@puzzle.ch>
---
 drivers/gpio/gpio-orion.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpio/gpio-orion.c b/drivers/gpio/gpio-orion.c
index 994ba1926e..7d9fd33312 100644
--- a/drivers/gpio/gpio-orion.c
+++ b/drivers/gpio/gpio-orion.c
@@ -132,4 +132,4 @@ static struct driver orion_gpio_driver = {
 	.probe = orion_gpio_probe,
 	.of_compatible = DRV_OF_COMPAT(orion_gpio_dt_ids),
 };
-device_platform_driver(orion_gpio_driver);
+coredevice_platform_driver(orion_gpio_driver);

-- 
2.53.0



