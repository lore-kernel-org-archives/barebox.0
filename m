Delivery-date: Sat, 30 Sep 2023 11:12:05 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qmW18-00HF1h-9c
	for lore@lore.pengutronix.de; Sat, 30 Sep 2023 11:12:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qmW16-00016W-3z
	for lore@pengutronix.de; Sat, 30 Sep 2023 11:12:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Mime-Version:Message-Id:Subject:Cc:To:From:Date:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=AWAd7hlfsjxiri17Cmv5Eh7frN15o1PT7rfogsq3Doo=; b=p4GBYHD27bKa40pEsh/Jixfmlp
	HhKevUZwODtjrCAL0iWMJZOJYN6LhYRyu4qB/trNRX0gfv+Ql2vzbbRX37kB+NqegcfShubtjdV5e
	u1FJNtQb1mDjkJi5zHYZyGFifOvNEK3okTDB3mXm+N20pHxDBL72RFyaefU7xfNqOsZONk7rKJvP5
	eXZwfEMUSaaxLUh7l7uvlXAYNDcsnK6Jar4O9G4uuRb8E2CHvk5jKPn8G3dSrktDmr/4UQwqNSzwW
	WTXpO7znxyxy9I+TiA881cdy+3riSq8E9P5YUEibJrXikt6yKAX/qDJ/HMWYpCWQsd2mA38a0qxFW
	miA6q5uw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qmVzV-009Dq4-1s;
	Sat, 30 Sep 2023 09:10:25 +0000
Received: from mail-lj1-x232.google.com ([2a00:1450:4864:20::232])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qmVzR-009Dp6-2e
	for barebox@lists.infradead.org;
	Sat, 30 Sep 2023 09:10:23 +0000
Received: by mail-lj1-x232.google.com with SMTP id 38308e7fff4ca-2c131ddfeb8so225454181fa.3
        for <barebox@lists.infradead.org>; Sat, 30 Sep 2023 02:10:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696065018; x=1696669818; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:subject:cc:to
         :from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=AWAd7hlfsjxiri17Cmv5Eh7frN15o1PT7rfogsq3Doo=;
        b=AclvGZ5VJlU2YhleoZT7+B7lNEwUnJufDlhs0DnEboFiTYN6EQU6WNed2/DK9eQv9b
         N5Tf9P7RP+Piy+ArnCPH0FCNEXs0y3pnkhR5kYN44mg0c5YsCAEWdeASbUhfXJCtdSDm
         HKG4MKVTwC+vaGlLSX9XlM7xb6PaYoITN7Q7vej2VLlsjl0cqxmHnkMnuArDpPWM5uQ+
         BKMKEZilwbqEB3DAM37HkhZLV8UHCGSDeFutWXOrJAOtdn60KG6Li++Ehj1xiovVJ6/I
         Z9ExlDTNMQmQUTAODEddF2VHvIlnN/UwX80dmmFosWsT7k08s3TO7y1kRgh9VAYkQrAz
         h/Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696065018; x=1696669818;
        h=content-transfer-encoding:mime-version:message-id:subject:cc:to
         :from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AWAd7hlfsjxiri17Cmv5Eh7frN15o1PT7rfogsq3Doo=;
        b=IYrpIozg62OPIzGD7i/U4+PrK/4XOl1SYMTEWVNVHcvl1ULvfiOS5MUSh7n0HYLbf8
         pytSrpWhsEbwY8kr3GA5Tg4SNRGkhKE6uMwNZar14jF+tG9wCrbL5+FwywP2B/eil+hn
         gSBLZkmjpuDihFhLwiPxq5nMT170vrgFifqKvDDp1IuxC2j/rHFmVm6HzNFAUlH8YvKG
         52tDmEEKAq1XR/RhUWX99fzxhhRlRDZbITHJ3ejZQySTAjNkEnMrFK/8htz6gFihu0ka
         O/imuWX4Hc9YcKnzWedAyzpc2IDkDhG3brwIDhZHHh1dG/6WKfb2ah69dPfG5J9Q3HIs
         fnOg==
X-Gm-Message-State: AOJu0Yx/lm0f/SNHCI2HdT54wUJHbSSI2gHN7gghMGOOQZH7PZ4GfnB7
	ut0udKKk6f+bTSwSwlOn/YE=
X-Google-Smtp-Source: AGHT+IF0H4W5BvCiwhlCOhzhePgja/cRw71NFWj3qdbxPjiZV0GDs5ZxqMGwzz19ItbZbpHNN4i5XA==
X-Received: by 2002:a2e:9609:0:b0:2c0:3186:8efa with SMTP id v9-20020a2e9609000000b002c031868efamr5266727ljh.11.1696065018099;
        Sat, 30 Sep 2023 02:10:18 -0700 (PDT)
Received: from flare ([146.185.218.236])
        by smtp.gmail.com with ESMTPSA id j3-20020a2eb703000000b002c0414c3b6csm4376892ljo.121.2023.09.30.02.10.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Sep 2023 02:10:17 -0700 (PDT)
Date: Sat, 30 Sep 2023 12:17:20 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Sascha Hauer <sha@pengutronix.de>, barebox@lists.infradead.org
Message-Id: <20230930121720.770d90611fc199200445dda3@gmail.com>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.33; i686-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230930_021021_879764_1C9F72D0 
X-CRM114-Status: UNSURE (   5.65  )
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
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: barebox.org browser demo uses barebox-v2022.02
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Ahmad!

barebox browser demo (https://www.barebox.org/jsbarebox/) looks very impres=
sive.
But it uses old barebox-v2022.02. Could you update it please.

As barebox browser demo runs on top of RISC-V machine can we add RISC-V men=
tion
to barebox.org/index.html page?

--=20
Best regards,
=A0 Antony Pavlov


