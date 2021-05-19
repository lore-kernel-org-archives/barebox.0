Delivery-date: Wed, 19 May 2021 11:48:55 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ljIox-0003yF-J3
	for lore@lore.pengutronix.de; Wed, 19 May 2021 11:48:55 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ljIov-0003L3-HE
	for lore@pengutronix.de; Wed, 19 May 2021 11:48:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:MIME-Version:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=H/AYFZ8ibH43tf0a6m2k5b5Ggmcc4YJHeDgDnhu1m6A=; b=ZUhOhhqbqP0JB6
	EVfCqH3dkoksi3RWdmxhWw/xLkhx64AtGy1jdUQoB4/+o48QGTm0Ja51lSw/AyVdTDcEKf+M+olZx
	5HLECtpjpIyPI6b0Jy7bEjkilbY3myaQ93pA3/bZTdfwb2Xhe18H5sTkhxwKuD/83egZ3KZwNfUyV
	wnBH9HJSyt6puRuZxfciQ6+7jD++ouUBDO11gWgm3Jb/+t3COWaWagNyl7tTcbcT4k7lOHg9SCZiq
	ojTB2SC/sEnaUxmLIc9wi9JAl8EmBzsXU224FxIxKBA1W+JJBH1UNzvI/H2unQ1sMk9qhJkQ8t4i7
	gJHYraMJfhbLyg/brDOQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ljInm-003UX8-TQ; Wed, 19 May 2021 09:47:43 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ljInd-003UVs-VN
 for barebox@desiato.infradead.org; Wed, 19 May 2021 09:47:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:To:Subject:Message-ID:
 Date:From:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=WoNAuJ9t2j50I4rFeNxgvPjFiV3Vbiq4hDW38d7JGsU=; b=PotJY1DWO3KAWt1gy/OREFeZ7F
 bJzT4b9Fk13qF66FaQzh7I62EgKDc6zRmri3zHxm1LceCuQ2NGZZwOfdHOLtYDavChvwznv2Kmv8D
 pTNJhEeMD/GCnPD53uo8N5BewwyLRBLxN/HtotIodEF8pHrIXcyW/mXHp/artZ9bakg7hd+QPGkqW
 8VAqPq+QhvsdwXpR2pss1zNVdV2dFXhBI/2pvo4kDF9UeuikPxZ7jZk6R9fGjarNwDfmPG3s4Iuf0
 HPA1paGS7s8SGT9KnUfNh2uC9hHlr+wtmOpH5C9HfGy1Nk8dSoLEVlBO2fjOwZCtp/dAbJn2wMFvZ
 pJ4ETFUA==;
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ljInb-00FKOL-FJ
 for barebox@lists.infradead.org; Wed, 19 May 2021 09:47:32 +0000
Received: by mail-lf1-x132.google.com with SMTP id m11so18149069lfg.3
 for <barebox@lists.infradead.org>; Wed, 19 May 2021 02:47:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=native-instruments.de; s=google;
 h=mime-version:from:date:message-id:subject:to;
 bh=WoNAuJ9t2j50I4rFeNxgvPjFiV3Vbiq4hDW38d7JGsU=;
 b=PPiV6MWcs6Fx4AWflR1hKK50ZUBMxfLzcHDo/nyvdLI514P6clrkXeg1gkvMSRl4Mv
 4KQ3RX7BM4k3y3H/Jlrn7c8/gckmtjjDJiDd5dip6rUt5jrpqAwTyx/ePOnQ7hbMywgh
 Cd+a/hYU1GpQMMKjUbyYMxd0NHwV7LUNYIYaOpKaJuvHbXfwJ6zEyUgqfH3J9dA9Izo5
 C4OnqWjvUPOPGPhR/DJ2OXslY990RrLy53ACoWNa/WowBoPpW1GKAvq/ywmRljp9kpoa
 bbMXOsTgZQ9o0HOsbnnxkuo2nsvzoUWhMSR1NEGglkpwAovqftKjlotutRMNgHy/qZj7
 BycQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=WoNAuJ9t2j50I4rFeNxgvPjFiV3Vbiq4hDW38d7JGsU=;
 b=helzvoI8vMM+wCJQZUkexAIIby7GdaCjJmFW+O/fTGIM88gpwZWbe+FOyG/TXzeBoG
 HiYzLb18m2sJ/uHfzEyR4poFkPlLSfAxWdxmGHTbu3Wa3Hkc/c3vuc9LiA0Dl1Gjah+A
 TkLnVyUyHJFge8F2q3/WHOq5aeR4anpWmNyr4Hhtk7kdGvE2d+Vj25PsT15zgrqy4dv6
 /p9wNPb1fOnbw1zpL6cOlZHQR6XsvlG0Cs7Z89Spm710UI1Fwg7In/ShWXc1efiRDuTt
 nwD3QVu4pi7ShExoCWWP+MGxJsAyxtApYeeAxy5BKA0OYI8LIwgu2OsGu5Drvqbi+i68
 xCHQ==
X-Gm-Message-State: AOAM532akUMTM9uG+7V08WU183SazkzaC/XbfvLk+5wu25zCqjm81LC0
 UlXTNJYHXxVNjRNGkyNo5Qa1dUqOB5IUWmoU4bGD2fszz6b58Zuk
X-Google-Smtp-Source: ABdhPJwpG4FU2jsYt0e1RM2PnHAJKybxPWKW1Ldzj74ZcTefWFF7b4HfKPVY5109g6VeQJN4cT2Xn8b0vWIF5dZT3J8=
X-Received: by 2002:a05:6512:1303:: with SMTP id
 x3mr7841319lfu.276.1621417649327; 
 Wed, 19 May 2021 02:47:29 -0700 (PDT)
MIME-Version: 1.0
From: Laszlo Sitzer <laszlo.sitzer@native-instruments.de>
Date: Wed, 19 May 2021 11:47:18 +0200
Message-ID: <CACBqSLPEq5gbag1yFs8Sb33B=uJVvYSd3mBj+X6w1vNKqQH-ig@mail.gmail.com>
To: barebox@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210519_024731_526139_82A69952 
X-CRM114-Status: UNSURE (   8.46  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.0 required=4.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: configuring state framework for x86/EFI
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello,

I have a x86/EFI system with barebox running (without state framework).
I noticed using the nv command persists values but I can't seem to
understand where these physically get stored. Is there a way I could
determine that?

I  would like to use the state framework (in order to be able to use
barebox-state to reset bootchooser counters). In order to do so I have
to write my state.dts, but I don't know which backend to choose in
order to use the same location as nv used before.

I am not asking to use nv and state at the same time but rather have
state framework use the location that nv used. Does that make sense?

Best, Lazlo

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

