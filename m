Delivery-date: Thu, 02 Apr 2026 09:56:05 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w8CuL-007m92-1F
	for lore@lore.pengutronix.de;
	Thu, 02 Apr 2026 09:56:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w8CuK-0006bE-Sd
	for lore@pengutronix.de; Thu, 02 Apr 2026 09:56:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=D/FUSSLFA5NCHmsnag8f70VIawyBzykdXQVMDB9yrtk=; b=uCuIheIEvEVkr+
	ynVDjwfXKdX/tPwAr/2Hz3Hwy5RtBKUhzCweug6aOXG9zWGJod5lCnV3hlMxxU5XuUjMa8ZBoEHhd
	C4yVYOJ+MjVyeeoB//H44k54cJTF1CUlaw8gUJnCDr1QUkDYPysFw8C706VvMCcakLkl/rJO/7/uz
	twekrL/uPSUJU5FzZ5OAWQBJAcAQjcHiQyheoA3/5aR3hBtHeYD3bNeO2Lj09n0CCOspnDAFZp6SI
	Y8++zbidGlKItEto6vUVJ8ckXHHXupBNDVuIaEGDHfLmxgHJhPWBLXbr/F6OGvz98foYbUdExtIRB
	KjuVYatfYiquP1OQYgqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8Cty-0000000H7hn-4B1a;
	Thu, 02 Apr 2026 07:55:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8Ctx-0000000H7h8-0jLx
	for barebox@lists.infradead.org;
	Thu, 02 Apr 2026 07:55:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w8Ctf-0006Nu-Dy; Thu, 02 Apr 2026 09:55:23 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w8Ctf-003L4h-0g;
	Thu, 02 Apr 2026 09:55:23 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w8Ctf-00000003RCj-0aTj;
	Thu, 02 Apr 2026 09:55:23 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 02 Apr 2026 09:55:22 +0200
Message-Id: <20260402-net-nfs-buffer-overflows-v1-0-5dc46ef1da81@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAOogzmkC/x3MQQrCMBBG4auUWTsQQxPEq4gLa//RAUlkRmOh9
 O6GLr/Feys5TOF0HlYyNHWtpeN4GOj+vJUHWOduiiHmMIbIBR8u4jx9RWBcG0xe9ec8nmJKOWV
 AQD1/G0SXfX25btsfDlKohmoAAAA=
X-Change-ID: 20260402-net-nfs-buffer-overflows-48255656eefe
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1775116523; l=568;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=DI+AYCFTJEpmgTugt9AeGtQOUq1kCuKvXX/asHc2wG8=;
 b=PoUObUxVIsPW6X0fy4reMMIBNjBzRQ3BPfmxtNO1AHrmJ564Cg1SF1RZ0UootHLiZ9hh6NXQq
 au1rxg3lA7CBcagbJWf52KXV6Bq3BOEEvOmADeI5Qzk/gF6XBjhTTLO
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260402_005541_221913_DAC97AFD 
X-CRM114-Status: UNSURE (   4.99  )
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
Cc: "Claude Opus 4.6 \(1M context\)" <noreply@anthropic.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/2] nfs: protect against corrupt packets and userdata
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

One patch protecting against a too long mount path and one against
truncated packets.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Sascha Hauer (2):
      fs: nfs: fix stack and packet buffer overflows from long NFS paths
      fs: nfs: fix NULL dereference in nfs_read_req on truncated packets

 fs/nfs.c | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)
---
base-commit: 0933e8f2ebf0d91dfcf177a4e4292b02921a53f1
change-id: 20260402-net-nfs-buffer-overflows-48255656eefe

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



