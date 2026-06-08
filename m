Delivery-date: Mon, 08 Jun 2026 16:25:51 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wWavH-003fYb-02
	for lore@lore.pengutronix.de;
	Mon, 08 Jun 2026 16:25:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wWavG-0007kf-FM
	for lore@pengutronix.de; Mon, 08 Jun 2026 16:25:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Subject:From:To:MIME-Version:Date:Message-ID:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=p50qMTDvq0ktffM+sX4bQLOclYKrW3RcuWQzarCD8pM=; b=NMu2tD7/Dq87mgCZmtMcD/EX1X
	qitsa1lfpIltOkNoIoD5Mch9WVtyMKXWvzqmMG+WBYNf0BQFs2R52eKpuxc/13GpKfjFiYNOHTb+l
	dIY7grLoDE1l2MfmNRRmQnchnXBrkY+2Q75bAINLvYyPoh26uQPXHkHkvBitlOy0t8Uh2FT9yMk7F
	4rkebLmh5ejlkhwtgcWVl/zNTqy7OT7jIkbFx0HGVFJLEbKDhUixt8YglUAAqxEmRqErwJWRqWF2u
	YL38EoVmyY9byOEgmkiTHqKVO3Cif3PLuxiXvgnEH0b3RRXQctZ9l5QifiXMZ1o0gIYiMAWgKq1y1
	wI+y6iyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWath-00000003khb-3XGz;
	Mon, 08 Jun 2026 14:24:13 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWatf-00000003kh5-1mHa
	for barebox@lists.infradead.org;
	Mon, 08 Jun 2026 14:24:12 +0000
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-490cf322ed0so10110815e9.1
        for <barebox@lists.infradead.org>; Mon, 08 Jun 2026 07:24:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780928649; x=1781533449; darn=lists.infradead.org;
        h=content-transfer-encoding:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=p50qMTDvq0ktffM+sX4bQLOclYKrW3RcuWQzarCD8pM=;
        b=T6FIFZJ8W+ZUwcAZHtlnWlvezV+Sg6UO62F0GQFaRTRrEspiCq/HCeyhaTNzrpr23v
         yeVPFBOgd67xFrbJKtFashkNXZhZFKOlmmRX07gckDki1L785ejxSvYI8C2Gqk5aqA5S
         oIR1OHNJ7Y0wSBtflviWRZGxVVfSdj4E5I1CNNDAfjEyulMBK3X3MoAN++PvyOblGqRj
         ZdD6cLjM43S18d3SqHtvNzk1wsqw14tb1ftxEq2NQ9GRh770JHxfB+QWlhkXoSaEImtG
         KinlzQs/DWKZ2Q9VfpHR4ESyF9Ss6IezvThPqbPDp5GY0fGmVabShRKwZN9Hg9i8Yvud
         EhUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780928649; x=1781533449;
        h=content-transfer-encoding:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=p50qMTDvq0ktffM+sX4bQLOclYKrW3RcuWQzarCD8pM=;
        b=DmRkLu8paT2cP7vVO6XR+hPaCz15b8wJtVLzWuoje3+FgEzSs7QSEqqYREXa8Mjtm/
         KotwCE3DHIz+m+NzBwJwmlp4E2tsiIbPjJOnK0yZ5kovrgDDwxLwcj+9voWNFwk2qGxt
         LBulBmCKDL5eKK+dAbGQfBZMTu9aaHpwjLuS3YxqFibH5QxYMFOTyWUy6NO/Lns6voDP
         G6HshkMkTzWh4uFkTUyT8vyYO3qAwCG93DZlHOi5sN1dfyxtrDiU+1xpmt6rfcp/VOzC
         cFHnaXEExOu7UY1rq9GvNN3MXHUUNdyn8ba+sOzsqymkYXNn+4S+tp8j37QUPRXp3xv+
         Graw==
X-Gm-Message-State: AOJu0YzpeDXLlVkJtJLRwMnnDjwcnlCWgiqV4IixDbzP+HNeR7v0Bdqx
	DrxmEpHuzMOjSxW8YVCG3EtQCfaYoQ8zXQ5VreawPBVyCSQjhY9Mz7cXIGnYSBvk
X-Gm-Gg: Acq92OFiB/0i6VUQkMjejaCiLak8COKJC3GqHxNi4H7zVUUzRRZfeMR7B6KMYtg+sU5
	29Se7xJ3ntt6pI2GjuhdKEdKDwDWETIhmIwwEw8syJz58b3YwCjRIYexzo2HgEHFn1CoQkTsV+P
	UQKvl2cXIfmHykc8TpsSOLpOArPOKtWrYBmHGfc1dzrn0v28FT8OjqoOlzZjngWBTMaKEPi40So
	lrsp1E6hoR4N5zm9Bvp//AtARU0cJij3T+k9wu2nEH+BksBnAto4ZLf0j4uA+pO0uwRuAxXkz8u
	3ZGj1yKVKxzZ6JGINLdya+M0rQ2SU2dFDaDjwjjw7apDSZc3Vau9HjxGkCMPyWEp144nDtj4ScP
	bKQwuIRe3YFxVguK6QnRqkCfoUDEcML4cIgfLNrRFPfPJ7JJIlzDpoWPzbNWIgjB+dfGWgxMjvu
	RtU2fjgQFp1e0NzxZu8xmF93WlFJFo3/fuDBQS4c+Mjj5KBux/lgxQtp/ptE8NkCr7Op919XSZa
	px7RCMBUhtiLnB2hnVNuGiSjk08vnasZOUDEQSzri9uaK9D0gkJAHwamUSGfal8LQlXPdELwRTV
	zIq03ZXW8WfbpKiUWUeib1YuMKbMwEL0mHcqeYrfZQo3tXdphZnUXw==
X-Received: by 2002:a05:600c:190b:b0:490:9804:afdc with SMTP id 5b1f17b1804b1-490c25ff35dmr275651015e9.23.1780928648941;
        Mon, 08 Jun 2026 07:24:08 -0700 (PDT)
Received: from ?IPV6:2a02:8388:e6ca:5780:e831:94fb:6ed5:c216? (2a02-8388-e6ca-5780-e831-94fb-6ed5-c216.cable.dynamic.v6.surfer.at. [2a02:8388:e6ca:5780:e831:94fb:6ed5:c216])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4601f344541sm49496874f8f.22.2026.06.08.07.24.08
        for <barebox@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Jun 2026 07:24:08 -0700 (PDT)
Message-ID: <489b74af-bb47-4c1c-a969-094b9ff3e9ba@gmail.com>
Date: Mon, 8 Jun 2026 16:24:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-GB
To: barebox@lists.infradead.org
From: Andrei Lalaev <andrey.lalaev@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260608_072411_473464_270B22C9 
X-CRM114-Status: UNSURE (   5.26  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FORGED_GMAIL_RCVD,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: iMX ddrphy_utils difference with U-boot
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

I am moving an iMX8MP module from vendor U-Boot 2024.04 to Barebox 2025.02
and found a strange difference in the DDR training code:

  vim drivers/ddr/imx/ddrphy_utils.c +94

And the corresponding line in U-Boot:

  vim drivers/ddr/imx/phy/ddrphy_utils.c +101

Is there any chance that somebody knows/remembers why "return -1" was replaced with "hang()"?

I couldn't find any explanation in the commits/mailing lists.

Thanks a lot!

--
Best regards,
Andrei Lalaev



