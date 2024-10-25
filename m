Delivery-date: Fri, 25 Oct 2024 16:00:04 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t4KrD-000eCf-1b
	for lore@lore.pengutronix.de;
	Fri, 25 Oct 2024 16:00:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t4KrE-00039J-7L
	for lore@pengutronix.de; Fri, 25 Oct 2024 16:00:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:Cc:To:Subject:
	Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1kz5259MwYRI+aDbtE30q508qtTHkpLxxnr+Zb0znIg=; b=QLAXog5ih9QoRC0QbS4dTN8WBt
	WAm6GfA8f7hutBEdn/2HEEZYmzr5QxOhloeVsiwGM8kPaPzPXh7Ei+GYcqpBmfrNzZAR4Ii2btsuw
	bB4eZBdmQyUGRM+hu0XHiXfBHGLE0xCQ/SgWPswxmZPtIWfnwobf5iMXgd/wA7PlWIt5MBLXNr2ix
	Ad+q+6EvpaNI7pdgucvZ1rKrsCSlRLGaL70qoPUvHQV4olx1rijYFFsVAP2qQuKvzEsUcSpkUPqw+
	7bAdmnztj+a/JlchZlwzR2ru+ZClMjF8ZZqmclmY8DUSWC9zeOl1znv4HqBBocFi84a05NzIzQzIV
	fn1xSc8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t4Kqc-00000003uZO-2WzJ;
	Fri, 25 Oct 2024 13:59:26 +0000
Received: from mail-pg1-x532.google.com ([2607:f8b0:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t4KbT-00000003r7f-3zrW
	for barebox@lists.infradead.org;
	Fri, 25 Oct 2024 13:43:49 +0000
Received: by mail-pg1-x532.google.com with SMTP id 41be03b00d2f7-7db54269325so1381077a12.2
        for <barebox@lists.infradead.org>; Fri, 25 Oct 2024 06:43:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729863827; x=1730468627; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=1kz5259MwYRI+aDbtE30q508qtTHkpLxxnr+Zb0znIg=;
        b=dks1MEg9QrWSJT+3ZbH8l2Y3BU8fuDDg0J9YOwAnalA4Axyp6kCnYs7X6tFEnM3tiT
         ZL1R9aceRxhc8aIKmGo6dUqRFZsG5eIQXKD/QNdcHv2Y27WN6Qq3xA/y86noiM0UT6Fk
         PBfki2vlDFh7iDOKCrBjrwP7zgGhH9usunEJa9eierpdyQuNXOtuqpNdJGfdSAi9dc1l
         3/c2GTmMprVUR13TSrLqMCQbETRhrqZurwxetWsgfWkULTcyXP/C3FzB60V90jucRr3I
         om0dSrT3VCCvsggocOJglEQjOAON3bzqsdeAMQPaVjyfsyAiR4a6oKCBsfNz5h15Tt6P
         4wVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729863827; x=1730468627;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1kz5259MwYRI+aDbtE30q508qtTHkpLxxnr+Zb0znIg=;
        b=rzFAbbNrtUzYxN1Df0V7Zb9m7n9db5MBpjO1McJzdBd0th2goX/EI+3AmXZX3p6UXd
         IReJAddlzrdySRSmAyEv79JfXKD4Kai3KBt15RZWj9+SDP2iCeHsdteTMjpInM6x6Btu
         WbhOh5o6CgPkldmOASrlN6/IoX8IUX1gpqzL843tpXTRqB7JyixCuitTbkAfIfnGgnPD
         zDq3003XyA6zasAZfG6w8cY+bIs5q2ZclydufU5esMSVb8v8F2PqzsRP7ntrIFBb4ZBK
         nx4kbouwCHt1f+7bF8HewOXgbyBZE9Oxhh79pso87MjQYw5tQOZ4/Bp4D0qLFnoslWn5
         pX9g==
X-Gm-Message-State: AOJu0YzsQ/7TbHdurpztK06INlJUOVpPSq7W+IHF6fyFP+z8kI79W8CE
	R7YqKnHv7VxqTqUsZcqocWT3P3J2OxC0ZZkYeoT5xI4gIfzVQYgTIsMDE0xa0EK2I9qKUHVWIRJ
	s/klHdouzKqIHd4lZiLht9ebU0f1jhGpm
X-Google-Smtp-Source: AGHT+IEbnyQwSbNQtSh7sEOODuX/m/yRITasTyiFoK2nSygvxMyXnNuoNBFHRlD79j7hEKKeJF/p6fPJyQr9uzRIOFw=
X-Received: by 2002:a05:6a20:46a0:b0:1d9:26b7:6ca with SMTP id
 adf61e73a8af0-1d978bd0174mr9226985637.45.1729863826864; Fri, 25 Oct 2024
 06:43:46 -0700 (PDT)
MIME-Version: 1.0
References: <20241025-i2c-busnum-v1-0-332d9257eafe@pengutronix.de> <20241025-i2c-busnum-v1-1-332d9257eafe@pengutronix.de>
In-Reply-To: <20241025-i2c-busnum-v1-1-332d9257eafe@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Fri, 25 Oct 2024 16:43:35 +0300
Message-ID: <CAP1tNvR0tYRQVY63bUwB24gAP4-UWQvP1v=GWZs_GkD0vBUiNg@mail.gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "open list:BAREBOX" <barebox@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241025_064348_011113_B49DE743 
X-CRM114-Status: UNSURE (   7.04  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/3] i2c: set adapter.nr explicitly to -1
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello.

Last time I didn't do it completely :)
https://lore.barebox.org/barebox/20230714051510.2304-4-eagle.alexander923@gmail.com/

Thanks!

...

> dev->id will always be -1 for device tree instantiated devices. Instead
> of setting adapter.nr to dev->id, set it to -1 explicitly for all I2C
> bus drivers that are purely instantiated from device tree.


