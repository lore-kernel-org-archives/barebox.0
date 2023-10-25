Delivery-date: Wed, 25 Oct 2023 09:45:15 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qvYZn-0039FS-7n
	for lore@lore.pengutronix.de; Wed, 25 Oct 2023 09:45:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qvYZl-0003T6-Ti
	for lore@pengutronix.de; Wed, 25 Oct 2023 09:45:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Mime-Version:References:In-Reply-To:Message-Id:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=R/CP4S/2ukDlyOdcW1LiW66tOM2pA4ufmwsKIWMbKE8=; b=H7igWOE7TM/Jc56W8e4CqleleG
	sJtxdINCml6JyHT+8Pbx0XqwJoQPw8Fu1wO1N7s0Up+aY0r9lQiXbVoHW0z9XwnG7PvDsDCZ05J3I
	sPBJlNSBcPmbJI64r8AY95sORQloJK0hgKwXPvoAJXGffZ9fw9XLBYK2O2h0srSUvNs6iCrr0tGYg
	nLPXL8+doWMdF+vVo3lLExSqK6oR/uNZ3Xtsk7j0U1+TTJI3PQwEEA6xseeyjOtaCW6ZztPPtOm1R
	xOC+ZbC7kNeTcVIVO8A8Uqu+2EztdGNllWprymvBZZtb5miLNRelOOI7lUDuyXL7nkDF8hHjhPaN1
	Jy226ocg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qvYXn-00Bbcc-11;
	Wed, 25 Oct 2023 07:43:11 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qvYXj-00Bbc8-21
	for barebox@lists.infradead.org;
	Wed, 25 Oct 2023 07:43:09 +0000
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-507a29c7eefso7982505e87.1
        for <barebox@lists.infradead.org>; Wed, 25 Oct 2023 00:43:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698219785; x=1698824585; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=R/CP4S/2ukDlyOdcW1LiW66tOM2pA4ufmwsKIWMbKE8=;
        b=L378cA5hL8G92kaeFObH7IoQqsorkU+VzreetoMb18C8xMpYmQK1VeE3OU44NFeNlj
         jgTGfsKc4XUERaRLFZVIn3OvD1NAOenQIYNjHOD33cRK3UKNW5ckiLfxEI4uo4mD22EJ
         Db0J4Q81uhQf6UWOc5k8BdAECOYbpUFDvpvlXiZP7hFosFxcvK/1bridBiL2AMZqFehK
         KH1n8HKnXz9QgsbSObJCamzUzF8v23casX4yqGjdEji1S6oVcDvAY/PM4PJOSgMvBhL/
         vazFKpCDVp9GKOMz7K2IT7wxzAfzoNoVot7gA5vsxAqmDQSgPSJvjsssr5f0UO84Wo0H
         qJZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698219785; x=1698824585;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=R/CP4S/2ukDlyOdcW1LiW66tOM2pA4ufmwsKIWMbKE8=;
        b=Hhw3qbb7ijbfZNRYelxdGxh6JoYUCfS8R9yW3iohCxMz2UHC0uIWUAKiDnuDfQzeyM
         mCjCZaOuIsjZZpRTnmG3NIePg+L9Fntr4cwR9fjx1kc6QTJY9u+G89aXy/nZfTHuMGVe
         5DCSBiOKNCeGlrL8c5j3WQIjV+xBmUyo7EkXPA6KQ2ikyVSN+ElXsoPZdCWanlN1g+/4
         sSk0ONBeVs4r8yhUFmu1Rrv61R27SI+RmP9Mr1AjRWp4Df95f8iQQdtXxK88kmPnLU77
         B+TWrI7PmDjPHBsPnHfoiIa/AzvbHAgCmhvPdHi9cayXRJOGO2pjsJ+S2WQbIA2lrRq0
         Sbow==
X-Gm-Message-State: AOJu0YwAV2vyxNj3aGt333fznKicBlxOv0XCbBq9opyGk+0+SAhmlkK0
	juFzh75+eWN/lVNP992ze11cMXDnPKE=
X-Google-Smtp-Source: AGHT+IHhFBAatgWkKfJVcj5oczJ3mDxz87tIprhTm+g9WopjV2VeSlQ4B7nrANqeesbRIFaqxK24JA==
X-Received: by 2002:a05:6512:3c8f:b0:507:f103:a69a with SMTP id h15-20020a0565123c8f00b00507f103a69amr9514337lfv.37.1698219784498;
        Wed, 25 Oct 2023 00:43:04 -0700 (PDT)
Received: from flare ([146.185.218.236])
        by smtp.gmail.com with ESMTPSA id eo25-20020a056512481900b004fe10276bbfsm2436109lfb.296.2023.10.25.00.43.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Oct 2023 00:43:04 -0700 (PDT)
Date: Wed, 25 Oct 2023 10:50:37 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
To: Sascha Hauer <sha@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-Id: <20231025105037.d22b218a917ef079bd5f6830@gmail.com>
In-Reply-To: <20231024092904.GV3359458@pengutronix.de>
References: <20231024092904.GV3359458@pengutronix.de>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.33; i686-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231025_004307_666494_826FB04B 
X-CRM114-Status: UNSURE (   7.79  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,NICE_REPLY_A,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: v2023.10.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, 24 Oct 2023 11:29:04 +0200
Sascha Hauer <sha@pengutronix.de> wrote:

> Hi All,
>=20
> We finally have a release for October.

I see the v2023.10.0 tag in the https://github.com/barebox/barebox repo
but no such tag in the git://git.pengutronix.de/git/barebox.git repo.

--=20
Best regards,
=A0 Antony Pavlov


