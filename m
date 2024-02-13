Delivery-date: Tue, 13 Feb 2024 08:52:58 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rZnb8-004Wu5-2U
	for lore@lore.pengutronix.de;
	Tue, 13 Feb 2024 08:52:58 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rZnb8-00074N-8g
	for lore@pengutronix.de; Tue, 13 Feb 2024 08:52:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:Subject:
	Message-ID:Date:From:MIME-Version:Reply-To:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=VPlONjagkYaPW5zDP+6mLR41xKzHZrlqKr3t70e7Ep8=; b=V/SdsDJl24mRs17QTx1NonsN8u
	KSXBmhw0kv7Aesamv4w1zdbPdesaU3g4S8jfbGAbJTTbSDXiKLD0Z69mR9Duhy2UcqXfpR9vQC64C
	/qJWT8x2MVU9IninOODP/zLPgbpnEaX0pxChPs5RDJygE6RTHrDfQx0bFi4SLfUjM0ByyYfQ3jPFM
	G51DYzP4ARe6kqjv9ajVSxBFx8EfmbaMiysPxexZvgmOMfxT21fu3Asq0dAeDfBhb7lS6frUbkV1C
	OeFTmbH7QX9jw1DdgtP+NEJQZ4bOMSbI7sFFoxGVJl3dgIVGhn6mHOY5DWBkFUB02A9+CLpZtpnbs
	cNFna8Kg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZnaU-00000008JAz-070X;
	Tue, 13 Feb 2024 07:52:18 +0000
Received: from mail-ed1-x52f.google.com ([2a00:1450:4864:20::52f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZnaQ-00000008JAJ-3mnT
	for barebox@lists.infradead.org;
	Tue, 13 Feb 2024 07:52:16 +0000
Received: by mail-ed1-x52f.google.com with SMTP id 4fb4d7f45d1cf-5602500d1a6so5515032a12.3
        for <barebox@lists.infradead.org>; Mon, 12 Feb 2024 23:52:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707810732; x=1708415532; darn=lists.infradead.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=VPlONjagkYaPW5zDP+6mLR41xKzHZrlqKr3t70e7Ep8=;
        b=DFdVJVqI6fMMGSLRAIYvEyflEMGv5WPaAdQhomyOFFn9hooPUxrs89N60Xb+Tyz3Tn
         D8AfU8UEBKlSQfJ0A6E474mx7uvVqtR8DG0i2sFgyeE2VaZEgr0kqRUCXWpDT6ITst77
         oYfi+NKZRWyXG9qN0k8vHsQXrquUmxkdsoWre1+GhClJpcuGFTUPMHU9tOpn6VIrbRV4
         OY/lz/2IE9Fdr95WofHy8WN6yq26Rm5LEDY8dbrMOu26X9+xQ/9kZVBEfKIKoiGTH9Lz
         oju0Tq60+vmZTvGTTzqIceLUyMdMI4vJ4LmRbBzMqtnPQimWAF1L1BGAP4ioKN4SkQXZ
         QcAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707810732; x=1708415532;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VPlONjagkYaPW5zDP+6mLR41xKzHZrlqKr3t70e7Ep8=;
        b=lbpYRYsrx59UTAg7NRQVTeQhOxXQJhN1VRDttw6o8AuQqLvQXBJalaUU7Ey5kI3xhY
         Xu1CVvynVaWBbm44rknC6GE6IIv6pa8SONxfaK1+5TvYx3L5Tu/hrj/jeiQTyEgDCjyE
         I/tOQzQX2aRtyENhZZRCdmlA5Ejnb57EiuaePktdMtLXfWw1sWIWT6Ob/Yn85eVYRxni
         abXm9jtdZ3FfQeFTUTbVPlGTn5b3rgvvYYJHLFjHQ3xC8pgn2D3WDm76ESkFJ7JLyBrj
         doTcG4xuatUrmC2dKGEyCvJsAEPL5RodGmyeKhFYfSl4EwjCCFaGa3amyePBKASNo6ce
         7b4g==
X-Gm-Message-State: AOJu0YxXzHAQ1wusAp5I7DmleLRmz2lU64Ze+tmsN8iMWbt1PFJj3rya
	l6ufyuSOY/y5tJmxBxdhaJIvokLZVlTemP30HY8rklIxOZxA+oikVGC5B9qi+fdvxJ81zwynWzc
	4Ug99tLsn08+9X5IXG5m0vxyh3RWs9pPS9sg=
X-Google-Smtp-Source: AGHT+IE1TAEGwyaylq3rgd8pNc6PcNdHxTIm6t7+A18C6T3drDGP0Kpg24s+PnwHtLiKn/aYUP1wKDMI61AGboOR7Ho=
X-Received: by 2002:aa7:d60c:0:b0:561:b28:e61 with SMTP id c12-20020aa7d60c000000b005610b280e61mr6711433edr.31.1707810732081;
 Mon, 12 Feb 2024 23:52:12 -0800 (PST)
MIME-Version: 1.0
From: Cedric Blancher <cedric.blancher@gmail.com>
Date: Tue, 13 Feb 2024 08:51:00 +0100
Message-ID: <CALXu0UeQAXPGuuEqT-buX5o_H7YbSdUYqkpyP7i1d5yc55xcfQ@mail.gmail.com>
To: barebox@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240212_235214_967371_62F00B83 
X-CRM114-Status: UNSURE (   2.84  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Booting from NFSv4 file system?
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Good morning!

Does Barebox support booting from a NFSv4 file system? Explicitly
neither NFSv2 or NFSv3 will work in our case, as both protocol
versions are no longer allowed by our IT department.

Ced
-- 
Cedric Blancher <cedric.blancher@gmail.com>
[https://plus.google.com/u/0/+CedricBlancher/]
Institute Pasteur


