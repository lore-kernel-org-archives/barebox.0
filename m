Delivery-date: Wed, 29 Jan 2025 07:12:00 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1td1It-005oiU-2g
	for lore@lore.pengutronix.de;
	Wed, 29 Jan 2025 07:12:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1td1It-0006Ny-UZ
	for lore@pengutronix.de; Wed, 29 Jan 2025 07:12:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:Subject:
	Message-ID:Date:From:MIME-Version:Reply-To:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=olLRLPuRaLOv86K2gQfQ54FKCzqMVsRC3G9YIF70CH4=; b=BEzIaWh3c0VptrSGnSwgIgjqkg
	378Y37QF0v909nxbm9GVGG4CXy4C8d2Hoqw5q3MjXnVgkHuEQhRXZtEeaW4l493xUr9METX1Kj4S7
	B11mDGLXPnxlCLltX86MjUIGGE9gOJSPuPub8gX414xzqtOEqfImsY123tHtUg7BaWANLLo8tWOOr
	2XnLxO5u16x8tGkmwVaE0ZB69nwQp4XxLV5gsKoP/Az45AxogfdyPCnKSnT7jr+CmT2WEbWY65h5z
	6BkBRKWBNm/hMcDVfcG6alyLAuw2vsjnX0xR1Ry1WNjyfcEU3HYxxvk0e6WB29qsbj+AH8PE3c4LA
	nvdJmGFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1td1IA-00000006Oa3-199R;
	Wed, 29 Jan 2025 06:11:14 +0000
Received: from mail-pj1-x102d.google.com ([2607:f8b0:4864:20::102d])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1td1I7-00000006OZg-2MGD
	for barebox@lists.infradead.org;
	Wed, 29 Jan 2025 06:11:12 +0000
Received: by mail-pj1-x102d.google.com with SMTP id 98e67ed59e1d1-2ee46851b5eso8635556a91.1
        for <barebox@lists.infradead.org>; Tue, 28 Jan 2025 22:11:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738131070; x=1738735870; darn=lists.infradead.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=olLRLPuRaLOv86K2gQfQ54FKCzqMVsRC3G9YIF70CH4=;
        b=ZMDDhojQ5vTcDvHqTI6BiWEr4eABtXEyet6vdRrzZmslknLw95P/yf7V67F7KuIKpT
         /nH0j1uRWjBtmJcQAnOs6rUPb0/pVDi5GKFpGeLmc8s7EggEs/3lD1pD5GXEY31GAb04
         l0mQL3XizXqc5aiK1P4OMtjEi3w1IpM9Igkt9ytvWI7E5H7asCJ0sLgJK6DhH9ROZ5m8
         dg4XXrCrD/PdQ8oXBt4IhmV5+npCzSFw+Ni9FQr8plKdDKTQLH3EGwc5J1PJKZwcepf3
         tfw+YmnqyWmq3vNDbWbV+qgwJdH/dLkqeFqUgZRhqOJRMHpf/BGgG1a4TI4t4eF+gYSJ
         gpCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738131070; x=1738735870;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=olLRLPuRaLOv86K2gQfQ54FKCzqMVsRC3G9YIF70CH4=;
        b=MyiAUndYeFcezRsiqhSfzBfmUyeSzmWTXZ61jp469SnkDIVasFQGoIR4DbdhnOmic9
         tyhIj5jzGZUgiejT0huV4bGGc++CQ6B2rICbgIiPWX6THNP/Sl1Sv6Ei4S6aVEsAxwdx
         P5UbZSTjYZtJGSxJ7osKHB6rmBooVo4UF1Cro3X955iolVbxoV8ha4QokBFUToT0H6Mn
         qhk82AC2RdFuqMB6yFhvhhNT/DO2wG9wvAFmTCCQnHWUVe0Da1UKH+q0q2U5dJKuKwc0
         k/qegAhnLGBv7VZ76mAH44ieBmPp1eiZx9yBiQMlkjM2VyLuLSseaYVNBdPAe6MFDe9a
         l8lw==
X-Gm-Message-State: AOJu0YzUChY0Ii+yIDCqZ+FkZD6Z1huVeU/jBV3PoBN3HvWT4r8h+9ce
	s0rdZDTM720gY6R9Qych0dSVLYRmB6CSblj+hQO+Dez8v96QA+qpTJmCtOc/2EQI2Kq0qCkf/jF
	D7CF7C6aZgE1RGLOAWD/4a1eYMF5MkMZP
X-Gm-Gg: ASbGncvnOkO+RtQoUmAmndxEJ3YnA1h8gw8nembz7FwrFelgKz3TvGrhKSSU1Mau2Ra
	7bNje3YnupwckMiVDQK2qGF4lZgGNWRBqxIfT6VBWLQpg/lUK2R0qnI1T6dsvfGzP5/3S+TP2
X-Google-Smtp-Source: AGHT+IEklfM+fmPOPREJ1jmXBLTQNHs3zBHY1P8524aPzG73i8UrAB3+bn7Thh4uJBKKtgj5DejOAsyx5gJV41yGLz0=
X-Received: by 2002:a17:90b:3a4b:b0:2ee:bbd8:2b9d with SMTP id
 98e67ed59e1d1-2f83ac87b59mr2391786a91.34.1738131070109; Tue, 28 Jan 2025
 22:11:10 -0800 (PST)
MIME-Version: 1.0
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Wed, 29 Jan 2025 09:10:58 +0300
X-Gm-Features: AWEUYZlah6NKfnmaCYf9yY07P4EZeD3CACauqD-stQ_sv1NU5zudfTUespChKCI
Message-ID: <CAP1tNvRa-1XPm087pzti1XmqvRDqchKOWZgvgYmcAQh+uOayBg@mail.gmail.com>
To: Barebox List <barebox@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250128_221111_603087_CB870F5D 
X-CRM114-Status: UNSURE (   3.45  )
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
	SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Devicetree add-on
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello All.

The question arose whether it is possible to load an add-on into
devicetree, but NOT through an overlay,
i.e. as a full-fledged dtb?
Ideally, it should look like this: the main ENTRY_FUNCTION() loads the
base tree, then,
after initialization in device_initcall(), the board modification is
determined and the full devicetree
written for this variant is loaded.

Thanks!


