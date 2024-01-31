Delivery-date: Wed, 31 Jan 2024 22:04:36 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rVHl5-00EP6Q-0S
	for lore@lore.pengutronix.de;
	Wed, 31 Jan 2024 22:04:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rVHl5-0002Z2-Rd
	for lore@pengutronix.de; Wed, 31 Jan 2024 22:04:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:Subject:
	Message-ID:Date:From:MIME-Version:Reply-To:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Gxw68Ugl+sA2kUvfvtE8Sp/FegaYzqTTa8ELs1iQUqI=; b=yb4XmJuOHGEHVInwk+RXaXhqSH
	MY5tKTKtl1Bf+Z0WgvoOY+390NmBCbCi3M/tR9OrUFKg3bc37MF78bYqOAsxchftDixzpdQAPQzmC
	L0Uo/2G9sFWJiCNbLgTWMlTidSu254b6UTx7D8a+qEC01ZYj0d9CH+vQqBkjCSWEnbgQ+4AbX7tvF
	Y+tdJgUYo3Yx0ORNIfwTP0ftxyk/cxHXgEKfL35honZSr75ecgh4gK5OMOIug+xJvxSkYXlnCeLPS
	n1/zORX6ZLPVlqgV4LVRuklkNx2CGoyjG/5gv2gWSGTaZjgzq2gQZ8rUv+/ViUmKJqCwKRUhD+BDF
	QmZQY8Uw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVHkS-00000005QZh-1tG4;
	Wed, 31 Jan 2024 21:03:56 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVHkP-00000005QYV-3HpN
	for barebox@lists.infradead.org;
	Wed, 31 Jan 2024 21:03:54 +0000
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-5112cb6d1e7so198725e87.0
        for <barebox@lists.infradead.org>; Wed, 31 Jan 2024 13:03:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706735030; x=1707339830; darn=lists.infradead.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Gxw68Ugl+sA2kUvfvtE8Sp/FegaYzqTTa8ELs1iQUqI=;
        b=H8vCfPNP8J85zl2vmfCrUbgncHF3LzJZkYPNDm5sKIK5tHnwhvnQs1jCcQPF1H/L44
         cdw/fXEv7ToD38ZzbQoFiWLtdBNqyxKRg/V2P3hZ77blVijZz4JSf6PgZSX++IEL9lIy
         pfkLhEbZZm4sVH7LdPxVhr3gLDPkFfsEY066K9DTOIOTCN4gMGBaHqoZfVOL1Vyzjuu1
         QQ7AxBOmtbOq1Rs+FwfYrnpslyy0+fvji4r7KEJ4YyH/7mxR0c1K4n0tnJIGTpX0329l
         17cMwIlqmUGOZAgi5Zd5b80HtKYM2h27rnSkFlbq5rmS+Oj6vUCAMpmaYfvM4McXOWwI
         0H0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706735030; x=1707339830;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Gxw68Ugl+sA2kUvfvtE8Sp/FegaYzqTTa8ELs1iQUqI=;
        b=bOSXAhw++0mq/L9H+oD2Tc95pMnduO+nNXTUVifdbmlE0nVl5aHOgpi4P47LppwOxN
         BRD3cpbG7VirB5z+C+1O2w1IV2/26WbzXS1UngGnGhzHhTE5T4HA2ILIghj/tILJ28TZ
         O8J7zLXh/QFa5C0VtvRXbVGRCoHYPEffjDr0r43zLU+Go1xDh0Xm/kvzF3rZIe+8DQjR
         fgh59q2cbryKsN8KoXkrTjXW2Wk0kdn6yZ6R0HkXk5aHE1gnrN4SH/ZFKCg/cvp98zAp
         vx0JhV6aF1PTUlZX5xR4xX4w5U6zPyWk8HBnHHcP+6xmxaaqgUYdjjNG3YihsNhiFKmh
         C0GQ==
X-Gm-Message-State: AOJu0YzmEqBEle34fX8/83qOjSHUquedGkWKle1k/ib381yPdL0ejY6x
	VfIClC7MeHRyFBkvahjzCt43apPrBBku2UfzX4eeHQVtZEy1SD+g6UHY0sU8Sr1+EumeIkLXMUw
	pSjKQYD75a+rBo8Yqt//l1xI4T5CX5Fb8d8Q=
X-Google-Smtp-Source: AGHT+IE0XynTSiFw6zNTa5NOhUUt72nTnvlT/LaVRADQW3/Ye+cuAfnZkUfQ3ubwBm+H5baSYJsjxOJOkdwQdiJjjRU=
X-Received: by 2002:ac2:55b2:0:b0:50e:76d1:b9c5 with SMTP id
 y18-20020ac255b2000000b0050e76d1b9c5mr435538lfg.60.1706735030514; Wed, 31 Jan
 2024 13:03:50 -0800 (PST)
MIME-Version: 1.0
From: Dan Shelton <dan.f.shelton@gmail.com>
Date: Wed, 31 Jan 2024 22:03:23 +0100
Message-ID: <CAAvCNcCZhS8mkvdgcJ2L-eiur+OxgWEXRLnadO_HFyHfSi7WFA@mail.gmail.com>
To: barebox@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240131_130353_839556_9AAA173E 
X-CRM114-Status: UNSURE (   3.48  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham
	autolearn_force=no version=3.4.2
Subject: NFSv4 boot support?
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello!

Does barebox support booting from a NFSv4 filesystem, e.g. boot from
NFSv4 filesystem into a Linux NFSv4 netroot (diskless machine)?

We need NFSv4, because it does not need rpcbind, and combines
filesystem, lockd and other stuff all in one TCP port (2049). Site
policy also does not allow NFSv2/NFSv3, but allows NFSv4.

Dan
-- 
Dan Shelton - Cluster Specialist Win/Lin/Bsd


