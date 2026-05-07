Delivery-date: Thu, 07 May 2026 15:50:08 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKz7B-001ywy-1D
	for lore@lore.pengutronix.de;
	Thu, 07 May 2026 15:50:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKz76-0000uA-04
	for lore@pengutronix.de; Thu, 07 May 2026 15:50:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qCBXOLk066R1gMmM7K9Q3WqVQUafWXTPOnIYevqvwQk=; b=A8UxSV0ntLScMo
	tndw0lN4f9K8OKCQQpxRAsAzVHgXcwzA2b1a2uCCWd235SxASXWdO73XZlOt+F644FShIUX+l39nm
	uWBin3W6MYAkfL3VfB9mDKTQn/ZvVvgY6vhJTro3ZyEE+aTP/OnsYRlEMsfPmB3jUF+pxCVI/pp/t
	yPWLaOpd9ulvqfkP9RrPAUQKtgsoxHFLCVJBCZD99ha8c89zsxdYeaqT82/vN0aM2UQHPs6Qm8pXE
	0Kbx80GSgZGfeRlDY5WsajRmc1QB8+x/EFNAV8riUhHQUHOJ4b6pU7XidlgAG1qwfVeLy74wpR+3s
	MtP2Ie+/VYyl9iTMQDiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKz5e-00000003xlX-1Qii;
	Thu, 07 May 2026 13:48:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKz5b-00000003xkH-1QHT
	for barebox@lists.infradead.org;
	Thu, 07 May 2026 13:48:33 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1wKz5Z-0008KD-M9; Thu, 07 May 2026 15:48:29 +0200
From: Jonas Rebmann <jre@pengutronix.de>
Date: Thu, 07 May 2026 15:48:22 +0200
Message-Id: <20260507-input_is_key_pressed-v2-0-3c43453a199d@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIACaY/GkC/4WNUQqDMBBEryL73ZSY2kb96j2KiMZVt4Uo2SiKe
 PdGe4B+vmFm3gaMjpAhjzZwOBPTYAOoSwSmr2yHgprAoKR6yLvUguw4+ZK4/OBajg6ZsRFJolW
 VVirLUglhGvKWlvP2VfyYp/qNxh9fR6Mn9oNbT+8cH70/ijkWUrRGyzg4TH3TzxFtN3k3WFquD
 UKx7/sXytnqos8AAAA=
X-Change-ID: 20260507-input_is_key_pressed-4472a8a29980
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.15-dev-18f8f
X-Developer-Signature: v=1; a=openpgp-sha256; l=2128; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=bu+POukKf4jQKPGrHW6T6U+7taePITARgkoEDTa0psQ=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYsj8M0P9ctdp+8rlcc4V10oOLA5Y5/drB8f+FL4aS1XNe
 zcFv02d1lHKwiDGxSArpsgSqyanIGTsf92s0i4WZg4rE8gQBi5OAZjIo1pGhrVVE178EduiLj5r
 h250Aw/3Tvvnjq/+Kn5PCFQzqLxlt4rhv+Mpb/OPVxqKm5cJvE+wSUnT1Sg6yzI70vvk9mPiG5x
 qGQA=
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260507_064831_383098_3DEBE0B0 
X-CRM114-Status: GOOD (  10.23  )
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
Subject: [PATCH v2 0/2] input: Supersede input_key_get_status() with
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
Changes in v2:
- make the loop over input_devices a bit more idiomatic
- Link to v1: https://lore.barebox.org/barebox/20260507-input_is_key_pressed-v1-0-fc701980cb37@pengutronix.de

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



