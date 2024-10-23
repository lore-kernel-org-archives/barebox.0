Delivery-date: Wed, 23 Oct 2024 19:42:25 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t3fNJ-007yDn-1t
	for lore@lore.pengutronix.de;
	Wed, 23 Oct 2024 19:42:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t3fNJ-0001Z7-0p
	for lore@pengutronix.de; Wed, 23 Oct 2024 19:42:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=94paXUSxr3+nT2Y3oC0jlICFu9O4xrDKTVa2BcsGGAs=; b=V0cVMy36u5WdSTIJaY9gcFqw1q
	RQ46pwL9sYoefOkP2oeTinhYhu2RRPfjez1op92srtyg6q3b4wWq/mrSKADEZq2JASxbPHmAYwdI4
	t8uaISnizjb33gorC4+ptr5hl/jCaQP6muLWsXldDNeR1iG2sPINGKYU3D2FIopISHRS38lj5iv3b
	eQ4p5FtDZuZLD0NT+FVWBzV5goy1sDHuEqyyXVgb5+3aehgVALxr8A8ReeEvKILpDNGDpN0AoebnU
	HA380VESP0C4gW9pkZdGsEgFDYDLoehpWSIpQL54huLV2j6/0/Ci2UadlgBD9bAFcROcS36B3vNPq
	Gm8fzn1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t3fMZ-0000000FPBF-2CnI;
	Wed, 23 Oct 2024 17:41:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t3enm-0000000FI4E-3iO1
	for barebox@lists.infradead.org;
	Wed, 23 Oct 2024 17:05:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t3enk-0007gG-Ay; Wed, 23 Oct 2024 19:05:40 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t3enk-00040n-0W;
	Wed, 23 Oct 2024 19:05:40 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t3enk-005MBj-0E;
	Wed, 23 Oct 2024 19:05:40 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 23 Oct 2024 19:05:37 +0200
Message-Id: <20241023170537.1276908-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241023_100542_940671_573780A9 
X-CRM114-Status: UNSURE (   9.30  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2] ARM: i.MX9: tqma93xx: workaround warning in variant detection
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Some versions of GCC emit a false positive warning that fdt may be
uninitialized. This can't happen, so tell the compiler that.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - removed warning and fallthrough to CONNECTOR case. As Sascha
    correctly notes, this path is impossible to reach and indeed
    new compiler versions don't warn about it, thus just tell the
    compiler that it's unreachable.
---
 arch/arm/boards/tqma93xx/lowlevel.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boards/tqma93xx/lowlevel.c b/arch/arm/boards/tqma93xx/lowlevel.c
index 8d89ee530ff8..14733d52a3c3 100644
--- a/arch/arm/boards/tqma93xx/lowlevel.c
+++ b/arch/arm/boards/tqma93xx/lowlevel.c
@@ -92,6 +92,8 @@ static noinline void tqma93xx_continue(void)
 	case VARD_FORMFACTOR_TYPE_CONNECTOR:
 		fdt = __dtb_z_imx93_tqma9352_mba93xxca_start;
 		break;
+	default:
+		__builtin_unreachable();
 	}
 
 	imx93_barebox_entry(fdt);
-- 
2.39.5



