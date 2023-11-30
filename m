Delivery-date: Thu, 30 Nov 2023 08:05:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r8b6l-00E5tU-0y
	for lore@lore.pengutronix.de;
	Thu, 30 Nov 2023 08:05:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r8b6l-0000mq-CI
	for lore@pengutronix.de; Thu, 30 Nov 2023 08:05:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MgDMH4k6ElqcjpVH+bKFQWZvpOaLIY8kL6fahBuO6yo=; b=mGBENS8cyorW13AmlJXNWMlsak
	NqEjuObSPjvc8inImvKpwYTHe5arzOIi76ncxDmaY0ouyJTcIK78D9eEq68UeuWpyaKX5vQyirVOF
	T523w/Aafj/yvYa2Ud/k1Ds5REhCrsIBmAItQf9bhUmELE+5cOjdbePuTQRowYJ9Mw7ix8h9dbXcF
	zZUBYzHJq0DkH4zGNYwAEDVmuaDOqAYLWXGCQmGXQVrUSfxNE1UYsy/+YGRUhRJAUGVP+T7NBbDky
	AYS23EBUtce1aZ50y1wXu3AVKIm9ENNvj7ExSboy/+0ADglREsPEp7diGZbDw7YASWbuumz6ik6J/
	eJOLI8eg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8b5I-00A3gl-03;
	Thu, 30 Nov 2023 07:03:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r8b5E-00A3gM-1f
	for barebox@lists.infradead.org;
	Thu, 30 Nov 2023 07:03:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r8b55-0000ZJ-AU; Thu, 30 Nov 2023 08:03:27 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r8b52-00CZZQ-Eo; Thu, 30 Nov 2023 08:03:24 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r8b52-00DpHb-1D;
	Thu, 30 Nov 2023 08:03:24 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 30 Nov 2023 08:03:20 +0100
Message-Id: <20231130070320.3295372-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231130070320.3295372-1-a.fatoum@pengutronix.de>
References: <20231130070320.3295372-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231129_230336_554185_907E67B4 
X-CRM114-Status: GOOD (  11.49  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/2] kbuild: don't warn about reg formatting
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Overlays, especially new style ones, are prone to trigger the reg
formatting warnings if fragments add node with reg properties without
also patching the parent:

  &phy0 {
	reg = <7>;
  };

In order to add #address-cells and #size-cells, the parent would need to
be overlaid, which is a bad tradeoff as it's either redundant or it
overrides the existing cell count with the wrong ones, possibly
invalidating reg parsing for existing nodes.

Improve the situation and avoid false positives by silencing the warnings
when building device tree overlays.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 scripts/Makefile.lib | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index 8aa49b1ee1b0..0b236babb275 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -371,6 +371,8 @@ ifeq ($(CONFIG_OF_OVERLAY_LIVE), y)
 DTC_FLAGS.dtb += -@
 endif
 
+DTC_FLAGS.dtbo += -Wno-avoid_default_addr_size -Wno-reg_format
+
 # Generate an assembly file to wrap the output of the device tree compiler
 quiet_cmd_dt_S_dtb = DTB     $@
 cmd_dt_S_dtb = $(srctree)/scripts/gen-dtb-s $(subst -,_,$(*F)) $< $(CONFIG_IMD) > $@
-- 
2.39.2



