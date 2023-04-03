Delivery-date: Mon, 03 Apr 2023 13:55:09 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pjImC-008UFg-JS
	for lore@lore.pengutronix.de; Mon, 03 Apr 2023 13:55:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pjImC-0007YW-Bc
	for lore@pengutronix.de; Mon, 03 Apr 2023 13:55:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=W8MGkzg2b1UCcKsfNw02Jkz1J/oevcu8siCHUUpJueQ=; b=UsZk9DYQBuxN5Rtk1HO8RVWspp
	xW2i9EqRHLtih0DMQ/geh7oQfKrtUJ9EOehw3sH0FjMuuKKVqlam81eWgUDMM70Tg6eNghC5mISVf
	ENNlQwrAFZEpiO/xysjW8KcOvfepi/SvCzKymZSKK7PSG/FH7FdHTQMaTDIO5pb5qvr9zu68NxmxS
	D0TZbt4pEHAScEL0r4WFX1MAU/OGwB5HgvleaJ4JQrG1N39ZsWtoQtEJ2s2aFzaRz0CUjyqcaG0aC
	wWwBEKPBJh+imkJYARhQ2YadheeiZ5FCDZsk/o3W72phVYTkkxtOG8kZYuiqdtL8ZdXOwsMbn3/wr
	pNiC1okA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjIl1-00FCIZ-1w;
	Mon, 03 Apr 2023 11:53:55 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjIkx-00FCGd-2V
	for barebox@lists.infradead.org;
	Mon, 03 Apr 2023 11:53:54 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1pjIks-0007JJ-MK; Mon, 03 Apr 2023 13:53:46 +0200
From: Philipp Zabel <p.zabel@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon,  3 Apr 2023 13:53:40 +0200
Message-Id: <20230403115340.3416720-4-p.zabel@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230403115340.3416720-1-p.zabel@pengutronix.de>
References: <20230403115340.3416720-1-p.zabel@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230403_045351_812115_337D8826 
X-CRM114-Status: GOOD (  11.21  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 4/4] spi: update spi_board_info FIXME comment
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The spi-stm32 driver now supports the spi_transfer.bits_per_word
override.

Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
---
 include/spi/spi.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/spi/spi.h b/include/spi/spi.h
index 809ebd8df1a8..d479e4f34f0c 100644
--- a/include/spi/spi.h
+++ b/include/spi/spi.h
@@ -44,7 +44,7 @@ struct spi_board_info {
  *	This may be changed by the device's driver, or left at the
  *	default (0) indicating protocol words are eight bit bytes.
  *	The spi_transfer.bits_per_word can override this for each transfer
- *	(FIXME: not currently implemented).
+ *	(FIXME: not currently implemented by most drivers).
  * @irq: Negative, or the number passed to request_irq() to receive
  *	interrupts from this device.
  * @controller_state: Controller's runtime state
-- 
2.39.2



