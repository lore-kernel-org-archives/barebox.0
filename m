Delivery-date: Thu, 07 May 2026 13:12:23 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKweW-001wOV-0x
	for lore@lore.pengutronix.de;
	Thu, 07 May 2026 13:12:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKweT-00053s-ID
	for lore@pengutronix.de; Thu, 07 May 2026 13:12:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=eH2xs2qo+gw1N5/V7pLr6g+nenunpTKwHM4AIhASL3M=; b=R8+HU/bz1zaJJA
	hJkB4QVIdMSlihO62b+zE/C+2a/Cg/UrBZ9kS4foPSi0cuOTYFwjdSDmnHn6OsVm1Ih4Nu8p7i1Ve
	k/MtNbtz0/us8uECKBWUdAzp8enorb+lbzY+AvRmz7sblreOP1q+THfd0uCLx81f6xKfSDKy4+vqH
	EW8Y2f1JlTPW+wez+sz/BOd/u1ZkZ49jbLLi6id2j3gNr58DSC2vz/F7rIIvQw8DTGp/Au6YFeS2L
	Ewc0+y0Rn80GIY9+t3wd+MmvZPTUyuSONCNPFVFJI/Slipm59uEs4O2m3VtG1hxW6Pj7RUPdq3GlR
	J7dx+SZV3fb76vzLlc+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKwd0-00000003aIS-0HXY;
	Thu, 07 May 2026 11:10:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKwcx-00000003aHd-1IBB
	for barebox@lists.infradead.org;
	Thu, 07 May 2026 11:10:48 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1wKwcu-00046U-FA; Thu, 07 May 2026 13:10:44 +0200
From: Jonas Rebmann <jre@pengutronix.de>
Date: Thu, 07 May 2026 13:10:38 +0200
Message-Id: <20260507-input_is_key_pressed-v1-0-fc701980cb37@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAC5z/GkC/yXMUQqDMBBF0a3IfDeQhrRqt1IkxDjqWEglk5RKc
 O9N9fM8eDcDYyBkeFQZAn6I6e0LrpcK3Gz9hIKGYlBS3eVN1oL8mqIhNi/czBqQGQehda1sY1X
 bNhLKtewjfY/sszvNqV/QxX8L9v0HyaJQp3gAAAA=
X-Change-ID: 20260507-input_is_key_pressed-4472a8a29980
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.15-dev-18f8f
X-Developer-Signature: v=1; a=openpgp-sha256; l=1937; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=CsAgcgSjxJLBROUZBFEC1EYL0BGS+UfdUIz3gcM+l6w=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYsj8U6y/P72/fWXXGX7LZnuPk7e/1nAXHnwSOut66Ips6
 5d84vEvOkpZGMS4GGTFFFli1eQUhIz9r5tV2sXCzGFlAhnCwMUpABM52MfwVyame3v4ifY//Wo8
 Vn+eqkR06m25NmXLnRuKbT0KWtfX6TAyrPXZ91VHdIllE9+sL0JlpRFbXlyozlDIfS1v8oXp3up
 FzAA=
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260507_041047_356638_F5BBAEA6 
X-CRM114-Status: UNSURE (   8.65  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/2] input: Supersede input_key_get_status() with
 input_is_key_pressed()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Reading a GPIO button via gpio-keys can be preferable over direct GPIO
access as gpio-keys abstracts away from GPIO hardware via the
devicetree, consistently across barebox and linux.

Trying to read a single key state analogous to prt_imx6_init_prtvt7
failed as input_key_get_status should have been provided with the
keycode in question plus one to ensure a large enough bitfield to
contain the desired key state.

The correct way of reading a single key state via the
input_key_get_status() interface is as complicated as

    bool is_button_pressed(int key) {
        unsigned long *keys;
        bool pressed;

        keys = bitmap_xzalloc(key + 1);
        input_key_get_status(keys, key + 1);

        pressed = test_bit(key, keys);

        free(keys);
        return pressed;
   }

This series implements a simple way to read the state of a single key
directly in the input driver.

As this can easily be invoked twice to check for a key combination,
replace this single occurence of input_key_get_status() with
input_is_key_pressed().

While those changes where thoroughly tested on a board with boardcode
very similar to protonic-imx6, the change to protonic-imx6 itself is
untested.

I suppose we have to keep input_key_get_status() for now for backwards
compatibility with downstream board code?

Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
Jonas Rebmann (2):
      input: add input_is_key_pressed() to read single key
      ARM: boards: protonic-imx6: use input_is_key_pressed()

 arch/arm/boards/protonic-imx6/board.c |  8 +-------
 drivers/input/input.c                 | 14 ++++++++++++++
 include/input/input.h                 |  1 +
 3 files changed, 16 insertions(+), 7 deletions(-)
---
base-commit: 7a178f01f6e25474a5eb6e071ca479076b8d4d92
change-id: 20260507-input_is_key_pressed-4472a8a29980

Best regards,
--  
Jonas Rebmann <jre@pengutronix.de>



