Delivery-date: Tue, 05 May 2026 12:48:39 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKDKS-001DTM-26
	for lore@lore.pengutronix.de;
	Tue, 05 May 2026 12:48:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKDKN-00041c-Rc
	for lore@pengutronix.de; Tue, 05 May 2026 12:48:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:Cc:To:Subject:
	Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Vrs6DO18J54YXCKpAiRTUSMkoVGyNjzSdRDbqvTERW8=; b=M+4sQchGs+RquyEiBq93URfrev
	XyUq55haAY2cn/av7BByTgELabC4XYhP7l4GGQS1fLcGuk9Pnc/aut1WbkjKkJnFJGv5lTUmIGfUc
	2t/zcXFn4bfVV29zehN49X5Q5bv04ekahwxSONiPZ2OTcwjgPa1+YflXXg99n3nLqeZV+Y89eTwON
	rrj1nF3IjH3v9E+YRCXZqqLMOFuO0PxYR++DVQZYCYApI2n7a027A3qungTPx2xu/ldUzkl973LhO
	dCfAC7yd1G53fLMp8pRRQVr/B7evWZDT6wBpSgcLbjhhvC36SXocsklomxI1C6gNB79ofMXycJX9v
	cJ01wwag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wKDJh-0000000FwNJ-2qRC;
	Tue, 05 May 2026 10:47:53 +0000
Received: from mail-dl1-x122b.google.com ([2607:f8b0:4864:20::122b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wKDJg-0000000FwMu-0Mv2
	for barebox@lists.infradead.org;
	Tue, 05 May 2026 10:47:53 +0000
Received: by mail-dl1-x122b.google.com with SMTP id a92af1059eb24-12c45281a06so7884722c88.1
        for <barebox@lists.infradead.org>; Tue, 05 May 2026 03:47:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1777978071; cv=none;
        d=google.com; s=arc-20240605;
        b=QabVOyssp+O96cTlKFvhhH86bIkxtQJ7P6oM61K+CEGQtCXxJP5pQF7m1Tba20pE2o
         N/iZWeOxb1drH3sdFT1PKRKxFPzmgjxO/i5mKEiADwm0L6bRdqRNyZBi1Bj7BzDlXS7K
         6c4+9FqZb0UjcZJA9IZtPlvp5jrGgwOZCS40BkrHBUsBmeIVX+zAERpzstzc+ehrxNTm
         1+y4JgHcmN9ivb9WhY3OgkyUR18pAkKLz+jJeojcsqf48z8MeYFj3MzwPTx/qycM6DtH
         yw/WpHgTF0saW2mPwcwbzsqRyiaMMpYHOMUAjISRAUgMJ/RvLctAh6/DEqvU8yf70LkM
         r1Bw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Vrs6DO18J54YXCKpAiRTUSMkoVGyNjzSdRDbqvTERW8=;
        fh=7Yiba8wXx+vLUz4ud+g5VaEZLPel68E1Fvl1EGss/6I=;
        b=YUiBmWZK+CXrP4mHUsC5E371b/Hi/4VtzykiEoS3IASNeYBpxuSV52SoGi3ggWwlQr
         mBt/+R0UGHM/0tyS2O74iqN7P8skW8FZOZMOWER2I/y9UxW0/YJMmrxmUP2OKzDw1iCm
         Y9Na38kAIPAyMYVQ+B3QBeNpfPFoATDrH9rl1DoX4FvXhIrNhrLU2NuRJthvq/+AQSNo
         XDGzQYoJeGc7R0vgiymuSrHLet4gqkgz42yWAxvfoph3LxS/EH9hsnMus56Xmsc6ijjQ
         rDKMHg4AcZerMU4Uw+GYdl1XxHGkzD0T9BWAyOug0U6z6hM+2v3V8ENdJI2cAQeO6HWJ
         mqaQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777978071; x=1778582871; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Vrs6DO18J54YXCKpAiRTUSMkoVGyNjzSdRDbqvTERW8=;
        b=VVBhCd8mNbts47V3wQAu6NI56XcABpNuocy5WKJYOkJI9lgFtAxP2l5M3ca9ayzbYT
         IAyUmgQ5Yn0t1Asg86lj63gLrabz69M0fMfMjToj/r1bE3mKmL9rI2FTxe4cYlmdtNw/
         LX9nEaJf4Mf7lBskZ3t9HUpZQ2kEhB/8u3FpGxc35lewUSZff97d8rcG3XrDtL53gWfC
         hIIHb9V9W1lMcJ8ugRsRqZ/IHQxDbo/quvfLdmPSjX4Q432hTIA1HDuTcOoSBsudGoyV
         U2YVRN5mSmvxGr4viqukRaqOTJvZ7KLRXiTs9p4yJU10bVp7x3B5sSelqE4vyqdzq/eX
         8fyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777978071; x=1778582871;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Vrs6DO18J54YXCKpAiRTUSMkoVGyNjzSdRDbqvTERW8=;
        b=Z7+o5m9ZgOr12lB9okRlSV8CuP059k4ZA4O42oM2yYZ+swr/l1JUMilzs7EL+MtA/B
         ybAmrySV+vhtexLmRk9XESXc+lU+o1K6px0EnWDZLRwd5yu1APkKJYlu/xQyKAc0BfZ8
         AWnAYuFV+3D74SdxleVK966eyYvl7NZGn3SZAAiG4bDKakSqAwCQQnnp0np2E7gOT9Yt
         5LNvM+UnjqF2fc9BGOQvm1InXWzGMaF7KMW6JDk4k9vBHdOs0MAaeLqUuTSK+QOfO6u9
         ZbApztnQ7IUxvwPceL+eNHaWs8RAAn2RmHV1T8zCNP8Ef4KTsQ6CBOFB5/W9GBbfjkfw
         N+RA==
X-Gm-Message-State: AOJu0Yzy/i2SaFg5mcTNzuUAI4sKM8if702iLEiufVkCmNRJATf1Ps0O
	6EyZW5WUYQpN+1Ep2QJC3PsHFJZF6st4sPlr4WT9+x98KmDlEbus7t9fI7/VHsrvKr/m8wA7ywj
	2Ks3XzNF3A+/U/6/LYkJHlxNjCT6zl7tJXe+Lu5UOseb1
X-Gm-Gg: AeBDiet/sVvPAIGvXZiru+csCPr3Q2fMGW5ZptKlpyM4HVHHSLQ1CYDK9lg20DDnrcI
	C2lQ6f3dvj3MsJjgh+t2NpQwfUydYvClqn7QxXf9SHWA1aC8nV6DEfEvRaRsvLhqN5lhKSSZnfS
	O4aHmDiUZlJDG0pVXGLcylu7q2CWz5ywtI3HrYH6iKq3EqM5xxSZaOhahWVvi06QlJI6APmeqBj
	kpXjh5wdTw8GHaQ28R3WoHnAzAvmXvvbNl42hU0PxO6rWacf01LOXIowgsOC5A5pppn6dTv1a0y
	NDxJNi7KoN0o2jEp9Q==
X-Received: by 2002:a05:7022:238e:b0:128:d352:bf8a with SMTP id
 a92af1059eb24-130b1c72299mr1192926c88.33.1777978071148; Tue, 05 May 2026
 03:47:51 -0700 (PDT)
MIME-Version: 1.0
References: <20260428132811.3691086-1-eagle.alexander923@gmail.com> <c3a17e51-3624-4215-b352-6dce10e1a1b4@pengutronix.de>
In-Reply-To: <c3a17e51-3624-4215-b352-6dce10e1a1b4@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Tue, 5 May 2026 13:47:39 +0300
X-Gm-Features: AVHnY4LpE8gB8QrtpDKBR_5B0Ta1tJmhk_zgJ2NPEbMrHNtCNDilb7iHJrk7fl8
Message-ID: <CAP1tNvShGMqgQ+MHq46n0q_VhqscNz3wNbgnCDaF20n=T-M_aA@mail.gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260505_034752_130728_BBC7F7B5 
X-CRM114-Status: GOOD (  14.47  )
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
Subject: Re: [PATCH v2 1/2] Add support for extlinux.conf
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Ahmad.

...
> > +     if (e->append) {
> > +             char *append;
> > +
> > +             /*
> > +              * The same rootfs image may be launched from eMMC or SD card.
> > +              * Remove any hardcoded root= parameter from "append" to avoid
> > +              * conflicts, then let barebox automatically add the correct
> > +              * root= (via global.bootm.appendroot) based on the boot device.
> > +              */
> > +             if (data.appendroot)
> > +                     append = remove_param(e->append, "ROOT=");
...
> I thus have a question to you: What happens if you drop remove_param()
> completely? Sure we will have two root=, but the later gets precedence,
> so your use case would continue to work without giving users a wrong
> expectation.

Yes, the second one takes priority.
The second one is the one added via extlinux.conf APPEND option.
In our case we need the first parameter, i.e. which comes from barebox
when global.bootm.appendroot is toggled on.

Thanks!


