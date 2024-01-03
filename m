Delivery-date: Wed, 03 Jan 2024 18:09:23 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL4k8-002GU7-0V
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 18:09:23 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL4k7-0004zz-5b
	for lore@pengutronix.de; Wed, 03 Jan 2024 18:09:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Q0fQzphAvTPVd8opOVIO4szl+xQJK+aOknVtajsLkns=; b=lOEyIiE3gTx40f
	K7RTallpkNak5NZJ0jHqmv42SR0ZSTHgf6oDda+LxDN++5Jt0jANERjAGbg8TNq5xXsANTYg6SlpA
	a+FRaj1rVKs7rRFabu0M6nz+K7GlCtLOqzlvNjHQzMsbWbKOoDlMTo5Hmql15X02avwm2L1jJonoh
	FiNseganFdkV7vO9CeLQGPqQpVV8Kmz3imXirWr74swOpOQdXG4FZKsPwC/DGXaVD4jjRq7/rizoF
	5JFLnWm2IX9oQcPYJtndIFQm2rS2LGNe4L+jDv1VKQT6ScTUcGA2otFLhTCrLQkpaPoaSAOWAl9uS
	Z0YYe1cv7tGnNHeleykg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL4i1-00BUUY-0I;
	Wed, 03 Jan 2024 17:07:13 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL4hy-00BUSd-1c
	for barebox@lists.infradead.org;
	Wed, 03 Jan 2024 17:07:11 +0000
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-50e741123acso8696577e87.0
        for <barebox@lists.infradead.org>; Wed, 03 Jan 2024 09:07:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1704301627; x=1704906427; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Q0fQzphAvTPVd8opOVIO4szl+xQJK+aOknVtajsLkns=;
        b=OuMdRIoJX4+ukxDYes/0VEiJ+cToI/uP1b5NC1OS+uFJLve/lRAsYGY93bO+cxD05f
         fhEYlmy8MTilTBkhtouzuNCq1nmZlY0tKmtPRQkOvmbjc9DuOkJo3QdN7onZeJ/sqBOP
         W042/pU2ZJ+PXiiFMBBmiqe8ABWjFOOeNXkp91cgj96loFyG9mO7/BdJ6IL5Tl2ztBux
         qumTyT4752nQeVDhjh3xajK9EwruCNCyWXJX9VRczZFyl/kfcgS+0MGPj1VMK6P7TOmL
         f+pZXrkvpP3kCWVoz3FkPgQEyvp/CRjl4QD9Es76KXH8Jh9tfgy/xHwvHKK4rQS7p9AP
         cYvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704301627; x=1704906427;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Q0fQzphAvTPVd8opOVIO4szl+xQJK+aOknVtajsLkns=;
        b=ikgdKZ9UCQxiWk+1lSsvRjF+Cmu5swBX9MMYsw6FgWg430RVc7B+DOw9/wv9xgeXm0
         S7yJSIONc82eAEHEJNoPaldbLGqe8QUmEBS2ElGy8OfHyInjz6i3Jj2V7eVZ5eLJuq/5
         zDOS6FfiTUvSL9m+xO7Xwo5Ktbnz4Bc37B7ntgpsQbljyioXMwdNr2vz8OIgdDrIHpNd
         UyymjOkpNSoVI0dnSQM/LaeGSkiyJVXXEFks/HMabT7g1a5jTBnBnXiFOfACwGnVr/17
         ymnkh3gSQNb87t5AdognfjIwM/yA7j/7TwBzd0fQKZG5w55aeQHopeRrPGjgLZFv8IWf
         L0qA==
X-Gm-Message-State: AOJu0YyMGZrhrgnoV2lJyGqm6mVUGtcvctv3OlgaE+YAZNG9YvoWR1Rd
	KPxpaf64S5oryBlNLhgk/dDBOe3Krow=
X-Google-Smtp-Source: AGHT+IH1yHgnm5Q5INtKRxm1CWSH8jJ+X3PM0vPUTkBW6L1kmxeDCbRUjsPzhyBJ+v9wX0QlqCPPBg==
X-Received: by 2002:a05:6512:3183:b0:50e:9da7:3136 with SMTP id i3-20020a056512318300b0050e9da73136mr2262046lfe.75.1704301626925;
        Wed, 03 Jan 2024 09:07:06 -0800 (PST)
Received: from cinco.. (109-252-3-142.nat.spd-mgts.ru. [109.252.3.142])
        by smtp.gmail.com with ESMTPSA id d25-20020a0565123d1900b0050e743b0b2csm3313364lfv.34.2024.01.03.09.07.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Jan 2024 09:07:06 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Wed,  3 Jan 2024 20:07:23 +0300
Message-Id: <20240103170725.846378-1-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_090710_540603_681C6411 
X-CRM114-Status: UNSURE (   4.82  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/2] uImage fixes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Antony Pavlov (2):
  uImage: use IS_ENABLED(CONFIG_TIMESTAMP)
  common: Kconfig: TIMESTAMP: fix help

 common/Kconfig  |  7 +++----
 common/uimage.c | 22 ++++++++++++----------
 fs/uimagefs.c   | 24 ++++++++++--------------
 3 files changed, 25 insertions(+), 28 deletions(-)

-- 
2.39.0



