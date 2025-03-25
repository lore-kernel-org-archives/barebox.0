Delivery-date: Tue, 25 Mar 2025 17:05:00 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tx6lx-0044in-18
	for lore@lore.pengutronix.de;
	Tue, 25 Mar 2025 17:05:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tx6lw-0007Fk-88
	for lore@pengutronix.de; Tue, 25 Mar 2025 17:05:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=uHFWAG9xkJ3XXIYOWaYs+k/LCYu8YRH/tfeLJ1GrPCI=; b=nbXBl7Z/dBE2zoU7mbr+u89pk4
	zjjejcdQ3PZiwfC8MQvu+l6zl+GbF/35l3PBmym4kSkX4Eb9/RdSp6+ihrbB6x/Ny4pP8WDpq2Kvt
	bfM9cQPRQgvuM+5Ha0una3swopHSIs6uWqpTdBzpkaAgnpIa7CwGeIdsZk79NMvL0MtikpZwj3A0X
	UhOICPj+DpRbg5uTYa1qFEjtf0lU8nTnjGzrTNg7Qr1ogLa2UWXoHsnm3tZVqVe/YPvC7Fv3oncCw
	gCSdw6OVBZDAxhvQwEi7zC9AZPd4Rs/utK+1c7fRTM+ka/5oEp34an/9jBypafskZPEjYGIYvCuIO
	YYC28Exg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tx6lK-00000006QGW-15OB;
	Tue, 25 Mar 2025 16:04:22 +0000
Received: from zdiv.net ([2001:4b98:dc0:43:f816:3eff:fee4:1d8c])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tx6df-00000006Or2-22vJ
	for barebox@lists.infradead.org;
	Tue, 25 Mar 2025 15:56:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zdiv.net; s=24;
	t=1742918185;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=uHFWAG9xkJ3XXIYOWaYs+k/LCYu8YRH/tfeLJ1GrPCI=;
	b=TfUS2jm1btVSW+DYR8k/7lT9ECtrqwkQqNMRjnJa8tuEM2nDpMjB8dTWNj1hsaBvppWddv
	5xMdUdGch55gUx4wH+MZ/I5QQNZIiLIunaJ9XoaCbjQRuyu6NQbeX5zSwyJfJ5vXMAxom4
	06htwKbZNATrBhuHULcyaILrwuOJbjHesnfF5mumWFmzsEE8G+hwS0EJ/zbRucCqvxaeC5
	0YzGg6Z9A3ysXxhOmnW9BujO1VzhsD6QH/1PN2/rYYNWu2a44NHzoNO5QOtDm5U9ste6cZ
	Qs0MUiqBo/US2LLb60JqZoVxl+XJJdR2DiJHJMG0YGNChHdaZGns93VipitDLg==
Received: from mini.my.domain (<unknown> [2a01:e0a:12:d860:cc87:df5e:1bf7:9f4c])
	by zdiv.net (OpenSMTPD) with ESMTPSA id 7afe8830 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
	Tue, 25 Mar 2025 16:56:25 +0100 (CET)
From: Jules Maselbas <jmaselbas@zdiv.net>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@zdiv.net>
Date: Tue, 25 Mar 2025 16:56:14 +0100
Message-ID: <20250325155614.32678-1-jmaselbas@zdiv.net>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250325_085627_814599_18841C24 
X-CRM114-Status: UNSURE (   6.08  )
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
Subject: [PATCH] lib: add explicit break in kstrtox/strtox
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Jules Maselbas <jmaselbas@zdiv.net>
---
 lib/kstrtox.c | 1 +
 lib/strtox.c  | 1 +
 2 files changed, 2 insertions(+)

diff --git a/lib/kstrtox.c b/lib/kstrtox.c
index 0e4b590531..2052ee94cb 100644
--- a/lib/kstrtox.c
+++ b/lib/kstrtox.c
@@ -357,6 +357,7 @@ int kstrtobool(const char *s, bool *res)
 		default:
 			break;
 		}
+		break;
 	default:
 		break;
 	}
diff --git a/lib/strtox.c b/lib/strtox.c
index b11cc8c969..679a747173 100644
--- a/lib/strtox.c
+++ b/lib/strtox.c
@@ -105,6 +105,7 @@ s64 simple_strtofract(const char *cp, char **endp, u32 division)
 		fallthrough;
 	case '+':
 		cp++;
+		break;
 	}
 
 	if (!isdigit(*cp))
-- 
2.48.1



