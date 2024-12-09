Delivery-date: Mon, 09 Dec 2024 15:28:54 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tKeko-00601Q-1O
	for lore@lore.pengutronix.de;
	Mon, 09 Dec 2024 15:28:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tKeko-0004bP-D9
	for lore@pengutronix.de; Mon, 09 Dec 2024 15:28:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Message-Id:Date:Subject:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=owxy+S+9x19OTiVgsLzH3M4njPtXVNhFgs/ERrVGEEQ=; b=gREnNoxE4UwakoLTJmMrvNQcGw
	qsY8S9y/VS9X2Fnt1HzmTXuE3XDIZqgc8hgVuOWrWNciOJ39BsL4VzUGibYnBiY0zuDT5ieCdk9sw
	YkANJaKHZM/EoKTD3v9WnVFovfK08u/C8q8lPEXVnu6+C2/om9H0FcXsLGsp8Mt/lgwlHLtRS4GCW
	pYDCqVYsWVsbvOLZyssnzmZgzFMdM1QVrnw67mnlzGZDb93Xspb7gnnCV/HUlzeyFmq/aukkemsrp
	ERnaee2HNIFZnvR5+ukd7iOYzraPo7fijrKS7hefuVdcUe/iOooa85b4PKKNaVtrx64e4SipsWC8U
	fvadtY3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tKekE-00000008CaM-0lSo;
	Mon, 09 Dec 2024 14:28:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tKekA-00000008CXP-127i
	for barebox@lists.infradead.org;
	Mon, 09 Dec 2024 14:28:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tKek8-0004MR-1V; Mon, 09 Dec 2024 15:28:12 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tKek7-002Wtn-01;
	Mon, 09 Dec 2024 15:28:11 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tKek7-005Elf-2H;
	Mon, 09 Dec 2024 15:28:11 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 09 Dec 2024 15:28:10 +0100
Message-Id: <20241209-ext-dt-handoff-v1-0-e61052d5d437@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAHr+VmcC/x2MQQqAIBAAvxJ7bkE3O9hXooPlWnvJ0AhB+nvSc
 RhmKmROwhmmrkLiR7LEs4HuO9gOd+6M4hsDKTKalEUuN/obm/MxBFSjNawcD8NK0KIrcZDyD+f
 lfT925cKiYAAAAA==
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1733754491; l=1174;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=gr0L01+V+VgV9nZV4opa7uOioF4SzCHQKYInnJjkmiQ=;
 b=RUE4p7H4KRLoUpQzcH5haSzt/cEPvKm5mEsFV3U8/F/RdAhr1Zn81qPVYpXAQtsuSF57B8IY3
 9ukRnAwMLoCDV+bH6Vtk0csXPfV4nWdFlzP3fCLc8/geEGp3SOrpybN
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241209_062814_294578_A2B9D3CC 
X-CRM114-Status: GOOD (  11.35  )
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
Subject: [PATCH 0/3] make dtb from 1st stage loader available in barebox
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

When barebox is chainloaded from another bootloader it usually gets
passed a device tree from the previous bootloader. While this external
device tree is normally not used by barebox, its contents can still be
interesting, so store the device tree at /external-devicetree when
found. This needs board support to pass the external device tree in
handoff data, i.e. a board has to call
handoff_data_add(HANDOFF_DATA_EXTERNAL_DT, dtb, size);
This series adds beagleplay support for this feature as an example.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Sascha Hauer (3):
      fdt: Add function to check if a pointer contains a fdt
      store external device tree as file
      ARM: beagleplay: put external device tree into handoff data

 arch/arm/boards/beagleplay/lowlevel.c | 14 ++++++++++----
 common/startup.c                      |  8 ++++++++
 include/compressed-dtb.h              | 24 ++++++++++++++++++++++++
 3 files changed, 42 insertions(+), 4 deletions(-)
---
base-commit: 873b572763d38ab4100d218d0a3614f79b596077
change-id: 20241209-ext-dt-handoff-0594e0ae33b2

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



