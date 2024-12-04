Delivery-date: Wed, 04 Dec 2024 16:14:22 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tIr54-003xRK-15
	for lore@lore.pengutronix.de;
	Wed, 04 Dec 2024 16:14:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tIr54-0005Wu-9y
	for lore@pengutronix.de; Wed, 04 Dec 2024 16:14:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=OTZum+IcxPySzjkZl2oGcZSCyBKhDUOmkVtAKvplz9I=; b=mrhfY9BZGRO6QSA+c/f/CZ3H2u
	VaxRpOEV/T2rV+fPQfbAUhYoz9r8KoZ1uzJ5uEi9Ngi58tApAQ4l2MDC0cHmIbL1SssQlSbJESLLS
	7iqN1t7mj4eAvVWWXEd8IGBUHq+6k8pOpuxunKAxOkArvjKeth6IrrZHUubKqfty0vyCsN6J9fi+S
	gTpTPUXJxq1Vjn0jNSLGsbC1vORG1g3ynvu4RTF/kAqLB+3xmPXWBu42zlXgPBxFDO9d9pvayzCGo
	v5E62qB2phzK2ZNgjj9ukZGil7jvw+WgJe1pQhUmtNrC2jq09ZBcrK+CCAHx0HkLshDvGQC+JFLuS
	k7bX1bZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tIr4k-0000000Cxam-076c;
	Wed, 04 Dec 2024 15:14:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tIpxW-0000000CkcV-31Ug
	for barebox@lists.infradead.org;
	Wed, 04 Dec 2024 14:02:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tIpxU-00013C-9M; Wed, 04 Dec 2024 15:02:28 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tIpxT-001f8E-0p;
	Wed, 04 Dec 2024 15:02:28 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tIpxT-000iOe-30;
	Wed, 04 Dec 2024 15:02:27 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Alaa Ali <alaanourali@gmail.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  4 Dec 2024 15:02:27 +0100
Message-Id: <20241204140227.170560-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241204_060230_759897_7813A141 
X-CRM114-Status: UNSURE (   9.35  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH master] sandbox: sdl: fix use of variable before it was defined
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

handle_sdl_events() makes use of the shutdown variable, but that
variable is only defined later. Move the variable definitions earlier to
fix the build breakage when SDL is enabled.

Fixes: 231c906e52df ("sandbox: sdl: Fix unresponsive SDL GUI by handling SDL_QUIT events")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/sandbox/os/sdl.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/sandbox/os/sdl.c b/arch/sandbox/os/sdl.c
index 6f87273aced2..87c8265ea99f 100644
--- a/arch/sandbox/os/sdl.c
+++ b/arch/sandbox/os/sdl.c
@@ -13,6 +13,10 @@ static void sdl_perror(const char *what)
 	printf("SDL: Could not %s: %s.\n", what, SDL_GetError());
 }
 
+static struct sdl_fb_info info;
+static SDL_atomic_t shutdown;
+SDL_Window *window;
+
 static void handle_sdl_events(void)
 {
 	SDL_Event event;
@@ -23,10 +27,6 @@ static void handle_sdl_events(void)
 	}
 }
 
-static struct sdl_fb_info info;
-static SDL_atomic_t shutdown;
-SDL_Window *window;
-
 static int scanout(void *ptr)
 {
 	SDL_Renderer *renderer;
-- 
2.39.5



