Delivery-date: Wed, 31 Jul 2024 16:36:49 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sZARd-004p2h-2B
	for lore@lore.pengutronix.de;
	Wed, 31 Jul 2024 16:36:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sZARd-0007xt-4k
	for lore@pengutronix.de; Wed, 31 Jul 2024 16:36:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Content-Type:Date:To:From:Subject:Message-ID:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=m3JZYsA2OUUWeMdu4A29rcmgLD3ts7/bRL4Snpvgh2E=; b=Z3lKwhIgLNTOojmnT61MlTYtLS
	3bNldcM90Kx3onjL21/XzkjyznOleu9+3Q+51w7wvquRHqA8YLOuRzQE14HWvhc18u2USNQ2dBLqV
	rCBteBcE/J7FIpq7GZ7UFpGsSIOasaIRt4QL8W1xTwSxK5j92B2zUw0GtngHR/FvI23Qweja9SQHP
	QhAOr/+u0kEVkdT5Sjb3B+uq0yInNjLj5SQ6LoEv/vKzJjp+JLO8S46ZBC0QlK7wOdBG/uHYh/2mF
	CmuDaffM1turKVvsBDgTEmZwCvc9Ue1+TSubarPBc10sWt46APAl50C57mk0tNCGIjRRvCCY035H2
	F2mwZoew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZAQx-00000001VZj-12gW;
	Wed, 31 Jul 2024 14:36:07 +0000
Received: from mail-ej1-x62f.google.com ([2a00:1450:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZAQr-00000001VYy-3iI1
	for barebox@lists.infradead.org;
	Wed, 31 Jul 2024 14:36:04 +0000
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-a7a9e25008aso773397866b.0
        for <barebox@lists.infradead.org>; Wed, 31 Jul 2024 07:36:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722436560; x=1723041360; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:user-agent:date:to:from
         :subject:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=m3JZYsA2OUUWeMdu4A29rcmgLD3ts7/bRL4Snpvgh2E=;
        b=Ljx2itgua6O4gYles5UYbp1PgWGECIAgyR6pWFX7NSj6zBOhMwo8K6ziujEj3wExr6
         1JgKZJ1a2/VleHdhIX2zbRAMrIvQ5KFjYSxxQ6sNKzAPubka4g23puklnToEjhcItCmt
         h5KVtM7bdvheLS4kbJbrFiUK4ipoIAq0vZz5rQCX7XBdHh33rDqrsYfdJWbujgPjPAh2
         9jmciEx9n8/cIWcqeSX0/1c9cErB0BMor6ax91WCfygWpo2cAe8wDxM8u6vIxYdedM38
         o5WajUQDKi4plAEWff9/zczu0CES7jJ/38aTSCkQdPtYMC/22lAE3u6o86tlxcCOpESX
         mx1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722436560; x=1723041360;
        h=content-transfer-encoding:mime-version:user-agent:date:to:from
         :subject:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=m3JZYsA2OUUWeMdu4A29rcmgLD3ts7/bRL4Snpvgh2E=;
        b=Z3ECJpGlsyIzixKnRpRXQ3ChEr2G/77ZsLSPIO5yVcOZizT4Aa3ROAgsmHryTNTYID
         Z60qfOoPbhe77eSFJ9usKIy0KSF94WN2AKXVCxZxJRhShwEFkRwl0imO1y3t4EDPtUoB
         YeV76CWp6P/h4IexH6zqQDq8zaqXkt0mfhtObTRsWpuVLtq1uQZiSnQbup3ay4g/nyqK
         8+ty9xpg0wifGl91aqqTDEAltxe1iytuSJOGw3NUxbq++Pa7+i3jz/NtFlvmDhYCe31/
         WZPrrSmp8N7FBfjvJaQTSq0OYvQlzV2vUiFfC2DWy6xYKNpr7yrDVrJA16FDmRkVYox6
         Sptw==
X-Gm-Message-State: AOJu0YwCvBaC4Uzho8MclaDFjZbXLk5M/vSDeYRcJ+213wtgQwmBRqfF
	+VamgK1iPAuPm3YRnpzmcPxg8LaXcNDDR9aEHZgoSyGd9akNF62CVQk1WQ==
X-Google-Smtp-Source: AGHT+IFtwXiIC7e1mTAER6FjJkdI6LiQEZ95VwUGy5pP5e4aFts2hvsSeWedXCNXl8b/6lyBZPWakA==
X-Received: by 2002:a17:907:9694:b0:a7a:c083:8579 with SMTP id a640c23a62f3a-a7d401b8101mr1200177866b.62.1722436559637;
        Wed, 31 Jul 2024 07:35:59 -0700 (PDT)
Received: from vaio ([91.142.65.210])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a7acad411a6sm768688166b.117.2024.07.31.07.35.59
        for <barebox@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Jul 2024 07:35:59 -0700 (PDT)
Message-ID: <7abdbc190f22b62372d0ae76a943d6e5a1467b05.camel@gmail.com>
From: Stefano Manni <stefano.manni@gmail.com>
To: barebox@lists.infradead.org
Date: Wed, 31 Jul 2024 16:35:57 +0200
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240731_073603_343622_A1778CE9 
X-CRM114-Status: UNSURE (   7.05  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: bootchooser: avoid write environment
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

I'm using bootchooser to switch from a partition to another in case of
an update done in Linux userspace using the command bareboxenv.

But I see that at every boot the barebox decrements the number of
remaining attempts in the environment. 
I'd like to avoid continuing to write the env in order to preserve the
spinor flash memory.

Is there any already-ready mechanism to do it? 

Thanks all.
Best,
Stefano



