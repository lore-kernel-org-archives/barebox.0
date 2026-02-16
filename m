Delivery-date: Mon, 16 Feb 2026 10:17:55 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vrujq-002GyU-1t
	for lore@lore.pengutronix.de;
	Mon, 16 Feb 2026 10:17:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vrujn-0007mx-Io
	for lore@pengutronix.de; Mon, 16 Feb 2026 10:17:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=B6rYQoaBQ2WFDyOBON8+ngRS/sSmTnb0CBG8ZGjaTKc=; b=XhAsmET8aE3sddx3ZVm8zWMJXi
	cI4hE8eDTu5RoRhun3XoRuIji2Nkt4hekC+v4dccxgbrqawmzklWPmyfJRAu3imWuyD9sxTa/qQwY
	kWW5TFrbkJRA7UIcwutRkc1g7bWBIW0l0DgtWticzHpfi8aXSB4UQlXdsm2eyB/UZFPD3TBXCOZdR
	++ZNqvqsYYiuhv+fG4f5c/4uwu9gV+xaV6+dDLh56th26UIAvJivvOaUK9/h/g6kQORX2EqdSWwMl
	+tlj2Vyzo6srqHLDO3c0oUPX4aSSsxCObj4XEgjxrVSHipzkNdE0lI1GpwTqIrT6LywXWnl/EKKTi
	dzZs52lg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vruiv-00000006Em2-0oZQ;
	Mon, 16 Feb 2026 09:16:57 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vruio-00000006Eaj-1aQW
	for barebox@bombadil.infradead.org;
	Mon, 16 Feb 2026 09:16:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=B6rYQoaBQ2WFDyOBON8+ngRS/sSmTnb0CBG8ZGjaTKc=; b=HUzO+g9UsDvemPR627E1QGv9ir
	etVYs1y6m5C4/1H9Y1PwnWuKu7KglTKeigagM2wkJ/m1PE4s6A068U4GUn84xhMGIuQKXts/wOwTZ
	QSb45M0gSSzkNwd3ezdDmBVBEPw2NfgwNSZss1ZIWKAp8w+D2z4saD/xdU/6P2eQ/TxIOvlYYaQLy
	dpPKiZ1MNQpejRlwY4/EG25PmwSeLhndLHQkMzkY/PdxkjX7cStQICEIq3tcRJYElmYJ8qd+SAmzs
	ouo4+AOUSZMK8ppswoGFLoRSawppGpyRprb28KG+k+Y1Ft05P60R0QrpK1Jk97WkZ+LAyD8qE7H4M
	PcFxWBqg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vruij-0000000EIEr-2zLS
	for barebox@lists.infradead.org;
	Mon, 16 Feb 2026 09:16:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruih-0006aN-0E; Mon, 16 Feb 2026 10:16:43 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruif-0012YO-1R;
	Mon, 16 Feb 2026 10:16:42 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruH1-0000000Eudd-0vkR;
	Mon, 16 Feb 2026 09:48:07 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	"Claude Opus 4.6" <noreply@anthropic.com>
Date: Mon, 16 Feb 2026 09:44:33 +0100
Message-ID: <20260216084758.3548990-34-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260216084758.3548990-1-a.fatoum@pengutronix.de>
References: <20260216084758.3548990-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260216_091646_417609_D83739F8 
X-CRM114-Status: UNSURE (   9.40  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH master 33/39] efi: loader: fix stale return value in console out-of-memory path
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

efi_console_register() returns the stale value of r in the
out_of_memory path. If efi_install_multiple_protocol_interfaces()
succeeded but a later allocation failed, r still holds EFI_SUCCESS,
masking the error.

Return EFI_OUT_OF_RESOURCES explicitly.

Co-Authored-By: Claude Opus 4.6 <noreply@anthropic.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/loader/protocols/console.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/efi/loader/protocols/console.c b/efi/loader/protocols/console.c
index d2c13196e4c2..857b38f5df32 100644
--- a/efi/loader/protocols/console.c
+++ b/efi/loader/protocols/console.c
@@ -1316,7 +1316,7 @@ static efi_status_t efi_console_register(void *data)
 	return r;
 out_of_memory:
 	pr_err("Out of memory\n");
-	return r;
+	return EFI_OUT_OF_RESOURCES;
 }
 
 static int efi_console_init(void)
-- 
2.47.3



