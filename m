Delivery-date: Wed, 29 Apr 2026 12:20:37 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wI221-0004CW-1E
	for lore@lore.pengutronix.de;
	Wed, 29 Apr 2026 12:20:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wI220-0005Vk-Ro
	for lore@pengutronix.de; Wed, 29 Apr 2026 12:20:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Message-Id:Date:Subject:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=e56XfXXlYktcdEfFnPgByWNGdisbrwygf5FsPqC4COk=; b=n4HLI6TrjSGD7bkpcUv6OB7Dp+
	9GzvVWyf759gxsONOqi+xym3yWwVoXFKRcw/znpHDc2U/ziU1NIuVh5YhF0E4ADVSi1JTBT/MaKEA
	Fz3j64naf/7mDUmQFQ34PLoCehewX7hSL8up6NgVM3YgmayIbEvmJdmCvxH3vPk1axWucHcgEBab2
	8YkEcq2N+N+k4Laf8e+0oskjQQfthqdrE25MvtmiXsXkUgRZlF/6AAA8YE56pmFm2PJGazXbzTaDI
	/ZO0tuE3zwkX4kr8Siy3YUZGOObp1Ry7tVzcE/c4a4PAp1BMaK4+DJsjE0gW0ZA2LygMq0qQ5Rv+H
	JoIu36Pw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wI21Z-00000003RQ6-0UQf;
	Wed, 29 Apr 2026 10:20:09 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wI21Y-00000003RPs-0jnh
	for barebox@bombadil.infradead.org;
	Wed, 29 Apr 2026 10:20:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:From:Sender:Reply-To:
	Content-ID:Content-Description:In-Reply-To:References;
	bh=e56XfXXlYktcdEfFnPgByWNGdisbrwygf5FsPqC4COk=; b=XLkGL3+tjpXHgC5XsG+wPUfhpd
	eiuTNqJTVKfV9RIlzAldqDJTGnB4cb/ijseKP/CD4bhkcxSZZAX4xZSPV2voHyKFLiHpzU6ojb6pe
	6YfPxZOFpovFnsiZ4VoZwZ4w+yo0R2TKe68BMKbUMqie6jsMjK2nUADJs7UjdWxbaGaYO8t1l3Yva
	8hxWzXT3tYHbucwdNcFGARUvMjQs97zz7qEM0WrdWkRYn7OXLvD83yUa2XmKZIX7IuOyjXCc7TD33
	Y1BkFZvnn31/sWHeqP8Sz0tLO6CTSIPy0OBz+D97tFxGo8W3yLBgxhWMEcikUkHxzgqbglWrZ84UA
	AiHiR7kQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wI21U-000000055t2-3L7N
	for barebox@lists.infradead.org;
	Wed, 29 Apr 2026 10:20:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wI21M-000575-F7; Wed, 29 Apr 2026 12:19:56 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wI21M-007psF-0e;
	Wed, 29 Apr 2026 12:19:56 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wI21M-00000000qpg-0bbA;
	Wed, 29 Apr 2026 12:19:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 29 Apr 2026 12:19:52 +0200
Message-Id: <20260429-rkimage-resign-v1-0-1478086c369e@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAEjb8WkC/x2MSQqAMAwAvyI5W6jBtuhXxINLrEGskoAI4t8tH
 mdg5gElYVJoiweELlY+UoaqLGBahxTJ8JwZ0KK3NTZGNt6HrIWUYzI+WOfDiEjBQY5OoYXvf9j
 17/sBNgCuKGAAAAA=
X-Change-ID: 20260429-rkimage-resign-670567b22e75
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1777457996; l=727;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=ibF6JNYHzbCen5VenjVI2HXXtEqJDjtx3BaXM07GhA8=;
 b=dPfg9sGbzANXtveMiBilJUVbQob3P/5lBj3Z6YHRMT0QcngiGipIjp02DPIZRsdyYXc8iIGb+
 VXwLeNtbcb4CWH8OZyhEU4nhsycxVrQAtsIp5Eo5sZo2wq/2Vqi9fwo
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260429_112005_233978_9D93AC1B 
X-CRM114-Status: UNSURE (   7.65  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH 0/4] rkimage: Add resigning support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add support for changing the signing key of an existing image. Can be
either used to add a key or to replace a key. Also some cleanups along
the way

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Sascha Hauer (4):
      rkimage: Support openssl provider API
      rkimage: unconditionally fill newidb
      rkimage: add support for re-signing an existing image
      rkimage: improve error handling

 scripts/rkimage.c | 115 ++++++++++++++++++++++++++++++++++++++++++++++++------
 1 file changed, 102 insertions(+), 13 deletions(-)
---
base-commit: 019d102038a64e6b6e8f445cbfd2d15e68d0ec3f
change-id: 20260429-rkimage-resign-670567b22e75

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



