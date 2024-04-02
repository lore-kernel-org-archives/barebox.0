Delivery-date: Tue, 02 Apr 2024 15:51:41 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rreY9-003efX-0S
	for lore@lore.pengutronix.de;
	Tue, 02 Apr 2024 15:51:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rreY8-0003Fw-KH
	for lore@pengutronix.de; Tue, 02 Apr 2024 15:51:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=MefXNjZhR0N0VvMRh0FaZScuc1q4sMQVdL4zZL9Xwkk=; b=i7qHvF4ne3SY829wEqKUWC5MHU
	+SoS20huw/X5SjjKXU+vzGFUzDUyI3dzsThqMzli8TM/cIMHc6ba8gGsaLgz/lJ7PjZfBZN6NhpUf
	uFWT+hRJGv6gQVlcGq4enncsvuCpf3FPbMAFHDSP2drrngNGOCO0ybxbJlmA0Hle5Giq+CcCNVXKx
	A8mPNxxlPhGwrBgfrRy3eBkPmRcJmLguhMp9k2v+xVn9dARW2T/KtSz/EZF6ms+AOG7NbXF3aCny5
	8sJqp09beENJXDFMCaBC47zmXb7bg+jvvtj6IlIuo5rPUDQGaeTvw8zM5LlqQEWH5HSUC+JvXwB3+
	MOAykPbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rreXg-0000000BRz3-2Y16;
	Tue, 02 Apr 2024 13:51:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([185.203.201.7])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rreXW-0000000BRjq-1xlT
	for barebox@lists.infradead.org;
	Tue, 02 Apr 2024 13:51:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rreX7-0001xF-4n; Tue, 02 Apr 2024 15:50:37 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rreX6-009zhQ-O3; Tue, 02 Apr 2024 15:50:36 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rreX6-00FWhb-28;
	Tue, 02 Apr 2024 15:50:36 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: lgo@pengutronix.de
Date: Tue,  2 Apr 2024 15:50:31 +0200
Message-Id: <20240402135035.3700601-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240402_065102_617645_C7750C46 
X-CRM114-Status: UNSURE (   8.50  )
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
Subject: [PATCH 0/4] input: add CONFIG_INPUT_EVBUG debug option
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Incorrectly specified or configured gpio-keys may cause the barebox
boot to abort. To help debugging such issues, add a CONFIG_INPUT_EVBUG
option similar to Linux, which will print a debug message every time
a key event is reported.

Ahmad Fatoum (4):
  input: record parent device at registration time
  input: add CONFIG_INPUT_EVBUG debug option
  input: imx-keypad: remove now-duplicate debug messages
  input: gpio-keys: drop now-superfluous struct gpio_keys::dev

 drivers/input/Kconfig        | 11 +++++++++++
 drivers/input/gpio_keys.c    |  6 ++----
 drivers/input/imx_keypad.c   |  7 +------
 drivers/input/input.c        | 11 +++++++++++
 drivers/input/usb_kbd.c      |  1 +
 drivers/input/virtio_input.c |  1 +
 include/input/input.h        |  1 +
 7 files changed, 28 insertions(+), 10 deletions(-)

-- 
2.39.2



