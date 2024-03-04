Delivery-date: Mon, 04 Mar 2024 20:10:25 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDhh-008dkh-1Z
	for lore@lore.pengutronix.de;
	Mon, 04 Mar 2024 20:10:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDhg-0005Np-DN
	for lore@pengutronix.de; Mon, 04 Mar 2024 20:10:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yj7IU5p9N2pqb/+owsdkyh9zZK3+ogYAMo+sj1jk0qo=; b=1LWj8dRd46sL5v5HlL/Bl8W320
	zhy6uGGXqw6iNBA7gJgqi7msDXdPolqwBjN4KV61z7C6SHIfLbZ1WTO7xgyuzXcG+DLdJk83ZqlCs
	PR0SnjCAv37tW6J1xBB5Hhnu5KUAV1eYJcqYDRW+SBKecMKMe5tXN1zs7XEvjgWLMkVWYkq69R/eb
	+FDpQ89bpDoMc81F858QWjdQwj9jyqyLW27EL3g0PtW0uTEFCYZonVGSBFAKX4jS/TO9B+0HdiVOT
	iNpbTKmVhZWdDjG8bZIxsh//R6f4NjQgPINCDV8UcmiPGUNs44ZnAB9ajbnmfca3kMLd+W736QhwQ
	hQKozUjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDh8-0000000AN7S-0MEf;
	Mon, 04 Mar 2024 19:09:50 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDad-0000000AId0-0h96
	for barebox@bombadil.infradead.org;
	Mon, 04 Mar 2024 19:03:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=yj7IU5p9N2pqb/+owsdkyh9zZK3+ogYAMo+sj1jk0qo=; b=N95iL78sRj5WOsSSL5SMAcgpbq
	8WZVe1pDv5593yR/yRXZjm/4F3vv3H21auUdDovxCxwhF2EDBfk8udhlRQ5GOuplKcfdiKwvsn+xR
	TRuCU9eeLNQzJ2WVaC9ir3982tYIcBVelhtlQge6Z8GjDmIabNnQhOh6ypgYWGPsqFQxKZapF7+ZG
	Pqu2fnyHcnuOOhS2lZhP2CBoVjLq8DCY0NnEW7mdMyN2tuYfm5ViCLsOpV3Li9ZA8PBoKnLHVMx9H
	rpBg7Kvpfx6td0fp2a5z67dgNOtgumeQLfLO4a+cf9/PBEKBj2X9v+bxXFKnEcDqBq0fGNK2hnxCY
	l7NKwvOg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaW-00000002BSp-2lBZ
	for barebox@lists.infradead.org;
	Mon, 04 Mar 2024 19:03:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaF-00066J-SV; Mon, 04 Mar 2024 20:02:43 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaF-004PJ3-Bw; Mon, 04 Mar 2024 20:02:43 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDYN-00Ed9V-1c;
	Mon, 04 Mar 2024 20:00:48 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  4 Mar 2024 20:00:24 +0100
Message-Id: <20240304190038.3486881-100-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
References: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_190300_743696_AE10DCBE 
X-CRM114-Status: UNSURE (   9.07  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 099/113] efi: devicepath: pretty print BBS BEV DeviceType
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

BBS paths can have multiple types, one of them is the device type, which
we will start abusing in a later commit, so make sure it's
translated to a readable string.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/devicepath.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/efi/devicepath.c b/efi/devicepath.c
index dfedeb6239ac..53387d8bd127 100644
--- a/efi/devicepath.c
+++ b/efi/devicepath.c
@@ -624,6 +624,9 @@ dev_path_bss_bss(struct string *str, const void *dev_path)
 	case BBS_TYPE_EMBEDDED_NETWORK:
 		type = "Net";
 		break;
+	case BBS_TYPE_DEV:
+		type = "Dev";
+		break;
 	default:
 		type = "?";
 		break;
-- 
2.39.2



