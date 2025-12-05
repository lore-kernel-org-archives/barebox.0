Delivery-date: Fri, 05 Dec 2025 13:20:42 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vRUni-008CTm-1f
	for lore@lore.pengutronix.de;
	Fri, 05 Dec 2025 13:20:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vRUnh-0002zX-U0
	for lore@pengutronix.de; Fri, 05 Dec 2025 13:20:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Message-Id:Date:Subject:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ud7XhYw0xj62YlA4OV3cnCL3zVCX4pl2/NVxrHF5f/s=; b=NKa4r7D2/3q31h/M9ldFuy6TVv
	0jyJkV4YCh1ZSFS3BUXgqFLnsP+a0fKcTTozp1Ge0J63kk289qMT2qW0hK3ZgIJgCSL1J37eIftRR
	EJ3TOD0atlZO3Wus/y+s9U4hPiCXNX811LJB7whyDw3qIElay3kZwPNHMH1F5iVxW7fT5aZB2A0qM
	UL9GLezpBt3l+4U6WK3SX5w4Spmje+o3M6tNFVUUS3huihIYQVJ1SO7fzBZPzgi9U2lbg1k6DlyFu
	pbaXKuavo1F3nnddh4/QnB2iE2uAbspnYbhwSBjPi7bgQdVgsmGcEqB/XHUL56j96+5fQDUzPTA9j
	9oKrDK5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRUnB-00000009SsW-24xP;
	Fri, 05 Dec 2025 12:20:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRUn8-00000009Srl-3Pmo
	for barebox@lists.infradead.org;
	Fri, 05 Dec 2025 12:20:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <m.grzeschik@pengutronix.de>)
	id 1vRUmz-0002pB-CF; Fri, 05 Dec 2025 13:19:57 +0100
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <m.grzeschik@pengutronix.de>)
	id 1vRUmz-0047ah-0Y;
	Fri, 05 Dec 2025 13:19:57 +0100
Received: from localhost ([::1] helo=dude04.red.stw.pengutronix.de)
	by dude04.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <m.grzeschik@pengutronix.de>)
	id 1vRUmz-0000000GVZd-0ORd;
	Fri, 05 Dec 2025 13:19:57 +0100
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Fri, 05 Dec 2025 13:19:44 +0100
Message-Id: <20251205-gppll-v1-0-bcd7b0f0408a@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAODNMmkC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1NDIwNT3fSCgpwcXUNzC6MU00RLS5M0IyWg2oKi1LTMCrA50bG1tQCfgcF
 fVwAAAA==
X-Change-ID: 20251205-gppll-1782d5a994f2
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=492;
 i=m.grzeschik@pengutronix.de; h=from:subject:message-id;
 bh=DP6SF6lPLkpfU3TKMHwaNCZPo86rPL4LXqIWLLqdsV8=;
 b=owEBbQKS/ZANAwAKAb9pWET5cfSrAcsmYgBpMs3oHJjynqbW478MKX+6nWTwsKhWM0Qe+TBoF
 W8fX6CrTxqJAjMEAAEKAB0WIQQV2+2Fpbqd6fvv0Gi/aVhE+XH0qwUCaTLN6AAKCRC/aVhE+XH0
 q0ltEAC3CtlTCYVtqHhWlpjd7+0Ye73wSwIQlSCDI5f+FtXdm730Rt+oQEp8ffo3ou4x4rLcphL
 wpBqR74MzTYPJsY0XS8eLgg7AK4Uq3iEHaVOyVSqhaGjZ+6Z7f5B+vMsgaJb3q70nrFxO/JXjES
 SMpcvcPiNaGSFcsX64ejSeHlcgWQvFyaR+H2ZiAlO3i3IqHDH3FDBtMQkFO7sPiuad9VdBhPjtH
 7MVYIyb0whYkSAFxbkDDfsSJGrcShGzaxcF22O4N11aYZfg4mUl2UgUEPkzaZRdEzcJnr86ofpj
 2oDaY7itYeSnruhEAav2D4U9RlQh/IU+kE0MDUB53FlIOmcS5ok2nh/yX555T14+XUIdRGtHJUZ
 7PbtjvqEykWruUUCjQeceWWA8DaKFK9RC5bsMFcIyMh7d1IcDmdfRiT0RJIFxaYMBwgRAbogAOq
 QHSmYzNOCw/cbu0Sw0OA8zCBV9mojQ98F0agAAl6EJI4N1fW/+H3fcYJtFJc7Tzz0NDG3fZnNDR
 GBXC7UcwAyO3ntrhVTHLD56K6dpNhVctI6sJxg7BmYF0Si7VdFZneUoP63GNLgbin01XM537n1J
 cZPfjlcc5DbAXOgYahu6Nb2E2U/BdJuxB3Z/MWC47jCzwL4x8wt8hlaYD2MomCUI96q1FI5hnDA
 6enpqDISycnwHOw==
X-Developer-Key: i=m.grzeschik@pengutronix.de; a=openpgp;
 fpr=957BC452CE953D7EA60CF4FC0BE9E3157A1E2C64
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251205_042006_857305_09CD5452 
X-CRM114-Status: UNSURE (   5.86  )
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
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 0/2] clk: imx: clk-fracn-gppll: add more frequencies for
 video-pll sources
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
Michael Grzeschik (2):
      clk: imx: clk-fracn-gppll: Add 355.6MHz config for video pll
      clk: imx: clk-fracn-gppll: Add 135MHz config for video pll

 drivers/clk/imx/clk-fracn-gppll.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)
---
base-commit: 09de6fda433abc62402ca37ceadc9737ba9f0a1b
change-id: 20251205-gppll-1782d5a994f2

Best regards,
-- 
Michael Grzeschik <m.grzeschik@pengutronix.de>



