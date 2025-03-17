Delivery-date: Mon, 17 Mar 2025 10:42:06 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tu6z1-000Yv1-06
	for lore@lore.pengutronix.de;
	Mon, 17 Mar 2025 10:42:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tu6yz-0003LI-UD
	for lore@pengutronix.de; Mon, 17 Mar 2025 10:42:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:Cc:To:Subject:
	Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TRz/p3+XxZJQZ0zUzCVF2R0ZE4ReB6G+7BNQkDyzRho=; b=4Yu1u1r8kAtERuly2q7cEellI5
	uOcyzlB8cgv8AE9GqRkMM+ZSUlFmuI3ccn8tQnTG2Mf//CGryMMAFUHBjrhT5wj4K3NDyYMIzwGUx
	f2SK7tf67KLHe4Fowad+3dDXxUcuN+hGvp7LUv74muKDq6+Y36+Ke/FzxSIpFMF/otOobtwE+Q1+q
	HsVRLEuNmYQbZLLC4O1o6u79DuYCRDx/Q9VupapmAnYeDO7RwA4bNbYCwx/Sfoopr4SJrYCVXUVPi
	2wtzWFADtINe2cgPX2/nZ4fWFD3ME37XhXfKy/WrXMpbuNcVW5yprOXO9BV+3is2lsuxh6knDyo9E
	egJTzRSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tu6yY-00000001yZj-0UMW;
	Mon, 17 Mar 2025 09:41:38 +0000
Received: from mail-pj1-x102f.google.com ([2607:f8b0:4864:20::102f])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tu6yV-00000001yYC-23lV
	for barebox@lists.infradead.org;
	Mon, 17 Mar 2025 09:41:36 +0000
Received: by mail-pj1-x102f.google.com with SMTP id 98e67ed59e1d1-2ff80290debso2750561a91.3
        for <barebox@lists.infradead.org>; Mon, 17 Mar 2025 02:41:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1742204494; x=1742809294; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=TRz/p3+XxZJQZ0zUzCVF2R0ZE4ReB6G+7BNQkDyzRho=;
        b=IhRF9f+z7Kr1fM4pYY+pTza/r6vevLjVmrcj+dR/z3loqBGk4YzF7ZYuAhz+ZoJGij
         ciTF/CpHhx4QjZpWLPvTYbd2sgmWflbfVYJqkbcc+vUdFaRz5KWJuv26r1hWHBAANpb7
         sWigYDD0ut3NEKVZgarJJUnYQxcwDTlLfW/Xw2UaM09VhJRSiP0uQ+BjYd1B5rQ4uEcr
         QLBozgBgpIO37L+rpfe2FP/YfeMvY/I/+WPIi6TBGWZ4ea9cTfyRZvHQLZBkZI98LHrJ
         Um8CcBCfyQkiyJctOTpPl6+aI8kHiIZuZWw0mEYWveDrwgI3dBdTT5Jq7Wre8Xj/LIE1
         bmgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742204494; x=1742809294;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TRz/p3+XxZJQZ0zUzCVF2R0ZE4ReB6G+7BNQkDyzRho=;
        b=Fg675BQmpIUdUllH7+Sbwd2NYWIdqCUnOeHDO92OUTtY1multdh5u8t3pDD8CNfo1M
         kJYIELjhYRPBFeE7bYczEnPG4sC7q0115KgwJ3QsECAnt6JkJX2VZD4vnpWlC7qzsNHo
         NuuQHv6ETJq4O+uVrBfu6eXq3t4qEq8R59q8y2TxPNjzDUFL1fDgHvj+fenfqbh7DSGS
         LVIujne/4echacvnedJtc/dES1NPRyFA+3/5vsd5o5d9sXmKnkfTfZBV+RLCUDO9hMGt
         emDj4Vg5lgg/BpSYAf9ap8leHt/m43kxaP9wbOiumicZLehGJ+hum/NEFPq23Hn5uaOO
         bxWQ==
X-Gm-Message-State: AOJu0YxMdbqYmVYe6KwaAdWj5NfEHFfcwn//1nSkF4AzrvG/8kD62dJr
	jFfP4ruNnc6zwPBN1iiYkR365ARiHKzE4VhjPGnkzVL2Yvh3pErzE3zUHeO1anFKjE0TgG3gmV6
	Xx3qsm9SYoWG4rDIH8EMDBuIsWHPORarh
X-Gm-Gg: ASbGncusheel38wHlpv6s2idgrpZ5amLjEunfLw24RQozenMPdliCLgt2xRzgl1eTmO
	xbn2fDPZkMd28pDjH8Fo3gUlHzSEFwedraOQGu972RqNmlaVPBCxu3GE3xSYufVsK1t7STGOjOq
	6S22yW/NnJleLHUGSodzDs/zJAfA==
X-Google-Smtp-Source: AGHT+IFIwkoIi4SwEGWa4QFYOnl2Rgmrr6t6cCRFNtduCy0RZ1IWe6ZcH798ltu1vbLkT8N8B1+xUFrQ4MNr3aSZZ3I=
X-Received: by 2002:a17:90b:1fcd:b0:2ff:58b8:5c46 with SMTP id
 98e67ed59e1d1-30151c7eb62mr14473472a91.8.1742204494211; Mon, 17 Mar 2025
 02:41:34 -0700 (PDT)
MIME-Version: 1.0
References: <20250317-mci-misc-cleanup-v1-0-24b4d6f5d31a@pengutronix.de> <20250317-mci-misc-cleanup-v1-1-24b4d6f5d31a@pengutronix.de>
In-Reply-To: <20250317-mci-misc-cleanup-v1-1-24b4d6f5d31a@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Mon, 17 Mar 2025 12:41:22 +0300
X-Gm-Features: AQ5f1Jpnb2gzxbgcfQhgriprvsAaA4LfW-XKOGHAdohMODB9FM2hyi9mMz_CN2I
Message-ID: <CAP1tNvTCxfq7wnfwhmvMhKga67h4YUw4RebJYGxcb4o2Yw2btQ@mail.gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "open list:BAREBOX" <barebox@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250317_024135_530142_B2E4A450 
X-CRM114-Status: GOOD (  15.08  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/6] mci: use struct cid
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello.

> Linux has a struct mmc_cid where the CID data is parsed into whereas
> in barebox we call the UNSTUFF_BITS macro whenever we need a field
> from the CID data. Do it like Linux and parse the CID data into the
> same struct. While at it convert the UNSTUFF_BITS macro into a
> unstuff_bits static inline function.
...
> diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
> index 7ec2643b8d..34ea775813 100644
> --- a/drivers/mci/mci-core.c
> +++ b/drivers/mci/mci-core.c
> @@ -26,19 +26,19 @@
>
>  #define MAX_BUFFER_NUMBER 0xffffffff
>
> -#define UNSTUFF_BITS(resp,start,size)                                  \
> -       ({                                                              \
> -               const int __size = size;                                \
> -               const u32 __mask = (__size < 32 ? 1 << __size : 0) - 1; \
> -               const int __off = 3 - ((start) / 32);                   \
> -               const int __shft = (start) & 31;                        \
> -               u32 __res;                                              \
> -                                                                       \
> -               __res = resp[__off] >> __shft;                          \
> -               if (__size + __shft > 32)                               \
> -                       __res |= resp[__off-1] << ((32 - __shft) % 32); \
> -               __res & __mask;                                         \
> -       })
> +static inline u32 unstuff_bits(const u32 *resp, int start, int size)
> +{
> +       const int __size = size;
> +       const u32 __mask = (__size < 32 ? 1 << __size : 0) - 1;
> +       const int __off = 3 - (start / 32);
> +       const int __shft = start & 31;
> +       u32 __res = resp[__off] >> __shft;
> +
> +       if (__size + __shft > 32)
> +               __res |= resp[__off - 1] << ((32 - __shft) % 32);
> +
> +       return __res & __mask;
> +}

For board specific code where the eMMC ID is used as a unique identifier,
it would be useful to have this function in the header.


