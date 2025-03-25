Delivery-date: Tue, 25 Mar 2025 16:54:56 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tx6cC-0044Ma-2Z
	for lore@lore.pengutronix.de;
	Tue, 25 Mar 2025 16:54:56 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tx6cB-0005kP-N0
	for lore@pengutronix.de; Tue, 25 Mar 2025 16:54:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=+5uMnUIaErIFNwVe8ETSUP5rCdcVrq0A6OHBd+bme00=; b=eeZSqVxiDmF5f3LFiabbjKLzNO
	LDokPw8tQEUs9E2CTYe/PKJt40qEUTk+at9v/VQEQlgZSK6niOM/587D56xxQRS4lxHy0TJ4WtMpx
	VZJc0vaxrvgYVeh3o/hgzdK9VTjOOY6OZ96Jl25gpDsy2qqK5co1Qg6xtBOlD6CfLOEkvFCQU9JPU
	ARFGQ7Kwf5RopcDDTRplCAu0GU2kQhWrtal2Tlc2BLZxYfk62l1oR9HBnMiCJWR+39FfbdXHAkOb+
	QBGX395ooPjwBQe4kW6i0ztN7jFJchWy7wxyZAztC31xwVFVkgEvUqgdvcD9+1AvSEG1aMFwCK0Oq
	9/FLizoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tx6bk-00000006OaY-3w5A;
	Tue, 25 Mar 2025 15:54:28 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tx6bj-00000006Oa9-13Bo
	for barebox@bombadil.infradead.org;
	Tue, 25 Mar 2025 15:54:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=+5uMnUIaErIFNwVe8ETSUP5rCdcVrq0A6OHBd+bme00=; b=a+uJuSfHINz8Pi1ktBegMiLoaA
	MkX1MWRWQP0o1MQSS4X6zs/cO2uEeR+atek0DvDsw57fyqyNpDrOJSSalIyrfxlfJnGRh8vPwMKyL
	9JHt9MoDIByKOM9B6T8CNfj0acXIbt0zTfRmWB1iSaCFGO64ek+4QOA9AdQGRozGPPcp9BA4VGxuz
	VpM6GpAUBfXjlosog1KUkk1ONCAE1H0jp6SDVx2424oEkRwjDCHGB4xU5BcJiCDwoqapYEjoAq4+v
	KIauvCPF/MDCKUzOu44L3VMQgiZf//GLnVyJhIkQ3IKd3ktzuIYnYGmypRDY8SifBmWUaEd5c8w0F
	ANUG+FsQ==;
Received: from zdiv.net ([2001:4b98:dc0:43:f816:3eff:fee4:1d8c])
	by desiato.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tx6bg-00000005cwn-1vjH
	for barebox@lists.infradead.org;
	Tue, 25 Mar 2025 15:54:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zdiv.net; s=24;
	t=1742918059;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=+5uMnUIaErIFNwVe8ETSUP5rCdcVrq0A6OHBd+bme00=;
	b=pGvR5JfUx70TUHKKQF6i8NAY/F252WyasmM+8t/P57SvERB0RFlgRAB/Z+/vtSxK75JRBO
	o+XIkUHiZjlYxwJvR1HzgrZB/Fj+H33ojpI9NDkkhOw6j8pzboKCDHcOSacmj49l1II8En
	D2u2MAw5v7g8rN20pd+I216veAwd5PfORLjvFSf9+rlHioiMRdNQCrOP/XsJrJnQ987csA
	9LcCxvYfUdjHBRp9CEU1CLuHWctWs333fhzzQ4/QjPdamk2quvdnLdtY9gLH/+iKWs1qBk
	qe7TQmKqhuDUjJ23Jj+NsR7yaachAfMBtftQsn5D0ykywzGwg6Q+hbjUeatVWw==
Received: from mini.my.domain (<unknown> [2a01:e0a:12:d860:cc87:df5e:1bf7:9f4c])
	by zdiv.net (OpenSMTPD) with ESMTPSA id 86c0dabf (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
	Tue, 25 Mar 2025 16:54:19 +0100 (CET)
From: Jules Maselbas <jmaselbas@zdiv.net>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@zdiv.net>
Date: Tue, 25 Mar 2025 16:54:13 +0100
Message-ID: <20250325155413.32169-1-jmaselbas@zdiv.net>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250325_155424_628983_7D820C8D 
X-CRM114-Status: UNSURE (   5.84  )
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
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] lib: add explicit fallthrough in strtoull_suffix
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Jules Maselbas <jmaselbas@zdiv.net>
---
 lib/misc.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/lib/misc.c b/lib/misc.c
index 1cb2a6b9b5..7cb7c6224a 100644
--- a/lib/misc.c
+++ b/lib/misc.c
@@ -37,12 +37,15 @@ unsigned long long strtoull_suffix(const char *str, char **endp, int base)
 	switch (*end) {
 	case 'G':
 		val *= 1024;
+		fallthrough;
 	case 'M':
 		val *= 1024;
+		fallthrough;
 	case 'k':
 	case 'K':
 		val *= 1024;
 		end++;
+		break;
 	default:
 		break;
 	}
-- 
2.48.1



