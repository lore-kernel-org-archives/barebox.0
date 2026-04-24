Delivery-date: Fri, 24 Apr 2026 10:20:44 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wGBmG-00FmlL-1q
	for lore@lore.pengutronix.de;
	Fri, 24 Apr 2026 10:20:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wGBmD-0003d5-C1
	for lore@pengutronix.de; Fri, 24 Apr 2026 10:20:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:Cc:To:Subject:
	Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KvQC1eG55jmnE+72XmXqRIh+YwGoRMuFT89sa6MWeRs=; b=CoxidR/kIuihxYydB0Yo6S3tJN
	/pHljbK5zqF/OlvVjG0lXw3cQVGbXMHsSQ8TBkzVcqYMckkgGZfajtJTDy1CkAAmgmdZYxzxZyCbS
	OB5ZZV4fnNbxpE8pEMcogoKJZ4KDg7N+KZoTeoWCU/a4oztnX5PUQ78jb597TR3ZN2EyGykJJJKR7
	/h1xzbeNeNXsrfLbO2HRvFjYpOE6oCzuouCZyedu2RpDnheFuF4R1e2c8d5Szbuge/CW8ip69Gm2a
	yBixyRgrIBT/kF5H09w3R30bGk2OW+cE97trTF9s5Ct0Ih8bKZ9cimLTzTKuCRTC0XodcjIeOYq9/
	LJJrvV6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wGBlT-0000000Cr65-1dHi;
	Fri, 24 Apr 2026 08:19:55 +0000
Received: from mail-dl1-x1230.google.com ([2607:f8b0:4864:20::1230])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wGBlP-0000000Cr5W-1GdS
	for barebox@lists.infradead.org;
	Fri, 24 Apr 2026 08:19:54 +0000
Received: by mail-dl1-x1230.google.com with SMTP id a92af1059eb24-12c7212836bso2695885c88.0
        for <barebox@lists.infradead.org>; Fri, 24 Apr 2026 01:19:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1777018790; cv=none;
        d=google.com; s=arc-20240605;
        b=LkcPxOejtXXF4miazDe2DIyrUNEeO2zEt2p0X2aaUJhLHUMwPClzw6xoX51r127OGv
         jVLeRCroO3jqfSQUcrHLtikmj0FZR61R1qPTSLibGLOTzBLj9PbgiWEcqlQPG2598Nlf
         f7TKPrs75p+GrkYrPrNLLsD9YCNK6Z1ArOxaHEmdn2nI7yKr0K0UC2QV+1JLsk4OsyI/
         vyTN5gaofqbgNf8rWR/j6CPzpGMj2gYCdVHP+7W9IOWb5fRucJ2mFnEj87fc+dz9LHvu
         lFy0bXqxcKfRtP8cwvIwbEi/T7Nj/9DlkFtrYr8K3PB8TVSIJgjcEZaPRuvkUk4EC4cw
         I1oQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=KvQC1eG55jmnE+72XmXqRIh+YwGoRMuFT89sa6MWeRs=;
        fh=7Yiba8wXx+vLUz4ud+g5VaEZLPel68E1Fvl1EGss/6I=;
        b=dafwQXQYC9hKzNR+jo5FHTbvMb1ilDwu6IKZYmdn7wb7Et3bQSyMWcZ+KWfx/GLRXD
         K1XAFsV0UnXmROiE1JhNrpuxBgH5W3MuPp5hQdvP/ANgK7Osr3EhieMUhCbVsLNpIYcg
         kV+knrdG0ulmxrV3HQ0hj71rH6rvcjHzldR6wh6WNZbRroflZ+gxQzcFp1TYEwoqAVYu
         y0ZE5wKCY7IoKmEciQJZvUJuKZVeeFYSSiP7OEh+L1G/IqGJoPMvT9h7QM/lIOW5T4b5
         bO//0I+2Z3DtzP1iKORexCfaFSYSfeqPd4cwRSEYz3aoI+r10i3fcIG4R1hByCdNV3+p
         UV5g==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777018790; x=1777623590; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=KvQC1eG55jmnE+72XmXqRIh+YwGoRMuFT89sa6MWeRs=;
        b=UlFfIC/hVTAWSlCNB4tBCqBB7lKfccdgCLKEHD/6C5JyWk/vL7MbiVJHmdWP+53EaB
         QupgUNYBI6xyR2iPlPKj69ZGu5la+9f+hglfpTnCVx+O05gyAU6BelekfNK+d/K7yiKJ
         ZP/CKLAfYX5yA/ylSf3xahyzdaj02AWoBcF+bJ6y/GA+ue2cjI4jiCHC953eFjUY7NnA
         BslutTJjoLArlwSz1K5rW90iIqeJaIa0gkvV28czVECpweWkL5HqQ9iyDKy/x0kE9HY2
         C3PLcxecYA3szXaCm/3Yh6kQ66jJ4LiNpeeoLfvCnrs8PbpO7eUfQZCG9mqyo4jdIyxw
         x5ZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777018790; x=1777623590;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KvQC1eG55jmnE+72XmXqRIh+YwGoRMuFT89sa6MWeRs=;
        b=ARsC8c6gj6aL+tTmv3RY5KfOxTh4dWjYhvw027DD8xeluU6hTINlw5LFlDREfPplPb
         /o+Y3gBdfLulIh4gH1xUIsbd3/iCGDNfFkDLb8A50w5qcW7uioReTVgKRrBPv0jg2cCd
         4NpQvCNJYBMU7XIhd1JtdS9AXNurcKBV6ynIJGwq6At3dqmo249sVB77oVVO7lKMhy8c
         Y7RQgxN8RDow0FiqyFSw55KeIv6Held2b0ugF0KpqC1y/+YdWN6HGujsItomw5QqYZG2
         nQ2ak5x2ca8jlfUxlVAa63gNFgyfS389n6eS6E+1GWEgcarY+4HelS74oGO3UDKXim9v
         5QlQ==
X-Gm-Message-State: AOJu0YzwGfyI8mh5g5WI17dyKP10SYzHQj5b6UScAutkrqDwAcypX+2s
	jl0nXZDR4+H0gVdzvx2t/V6yk/Z/XL+Blt/fEHpGniI2Qa4n38sxpE9pXBWM8AbR5NROeFJjhkv
	afcpM68UFiTCHLs7MniYqop7H1aMMYzMkYhmw32U=
X-Gm-Gg: AeBDietGhIZAHN83CudLqqbs7h/ia/EmTPusHw6QxaxkmEdURJJhFoHJlOfBdti8FmF
	KPtL6lrk8+FxIRZDM5sFmah0BU6pjmUUNypdoJVIhf60dazzaGw2lyiDL4TixpJxuBwnww1KWnV
	S1G3watCInyJQ7TWJT/LaN4F6lqJxIdwC5IgqwU8cTUwIwWNodY7qAy3Hnx49KvkRxAYY+uAgRe
	JZVBMGLHauHlE/n9S7aCKlbyrJ1rUbbcHmZejLajUIHUMzeJcPRBTXkUG3Mj5gc3pKzjaPSW948
	kP5yaWuK9GsXzRup
X-Received: by 2002:a05:701b:2415:b0:12d:b26f:cafd with SMTP id
 a92af1059eb24-12db26fcc16mr5937935c88.5.1777018789899; Fri, 24 Apr 2026
 01:19:49 -0700 (PDT)
MIME-Version: 1.0
References: <20260416134518.3282395-1-eagle.alexander923@gmail.com>
 <20260416134518.3282395-2-eagle.alexander923@gmail.com> <2a9c9062-621c-4d8d-bbb9-5f979a4da81d@pengutronix.de>
In-Reply-To: <2a9c9062-621c-4d8d-bbb9-5f979a4da81d@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Fri, 24 Apr 2026 11:19:38 +0300
X-Gm-Features: AQROBzCylloThcSIyJQ5fecvW8kPFJ-qnBqacbRtx2s03TnTaTvUJn31o0NEWyA
Message-ID: <CAP1tNvSv6EFTRVNAovG_PTTedM===Rw=qecGsTMJCysSO6hAbA@mail.gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260424_011951_340502_B5FA61EB 
X-CRM114-Status: GOOD (  14.63  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FORGED_GMAIL_RCVD,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/2] Documentation: add extlinux.conf support description
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Ahmad.

> On 4/16/26 3:45 PM, Alexander Shiyan wrote:
> > Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
>
> Thanks for adding documentation.
>
> I have been wanting to add bootloader spec support to openembedded-core
> to barebox can be used to boot Beaglebone black images generated by it,
> but with extlinux support in barebox that should work as well.
> I will surely give this a try in the future.
>
> Could I motivate you to add a self test that exercises the parser?
>
> Doesn't have to be anything extensive, see test/self/blspec.c for an
> example. It's basically adding a few configs into the barebox
> environment, calling bootentry_create_from_name() on the directory and
> then running some assertions.

I think this can be done later, so as not to bloat the patch series...


