Delivery-date: Tue, 23 Jul 2024 16:55:29 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sWGvJ-002Agm-1C
	for lore@lore.pengutronix.de;
	Tue, 23 Jul 2024 16:55:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sWGvI-0003Dm-QC
	for lore@pengutronix.de; Tue, 23 Jul 2024 16:55:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Content-Type:References:In-Reply-To:Date:To:From:Subject:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4Q4VC/Yb1eDjHJWK2A42Gg/1zp9kyF3O49xHz6PgJNg=; b=wozxjnixEpKmQtULHqUT2kYp5C
	kHxO0DivhYXUX98z2L9RSMItdXNouHykiKyOSra2dgenChq+DSR5ft2x2K/6X/93I8Hh6ovmnhHhH
	mMow8ro0SDLIylwHN+Z/h3XtBuXUeKiqSgX3gnOeTUcmMAeVz9Rytw0S/DfS03WS5JDODxNoYn6gV
	kwjDy5mHtTUfuNM4HgBkPq7nC5PHa8snS5jvVbOQy1jM5j3IozCM3b5YeYODCyUteiXr+E8tfzJxr
	WG5VliYUXlvFI6c+BcOjvPk4RTwDOC4TwsR8foY/aPrMPIbuJKEBf4KFGlg7rAO7A6gBRvihoW373
	+UUHCkyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWGuf-0000000Cnlx-0PXM;
	Tue, 23 Jul 2024 14:54:49 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWGub-0000000CnkQ-1kNV
	for barebox@lists.infradead.org;
	Tue, 23 Jul 2024 14:54:46 +0000
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-368526b1333so2399392f8f.1
        for <barebox@lists.infradead.org>; Tue, 23 Jul 2024 07:54:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1721746484; x=1722351284; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4Q4VC/Yb1eDjHJWK2A42Gg/1zp9kyF3O49xHz6PgJNg=;
        b=JiQFzBpWG97HL0gJKoWHv7kDDKK4p7IxbpP88TM++crzvWEhf6kP7mWKna55WlejsY
         uihloSjC8bSaURiAhg+6G4ijBbhj3JhSASDWArwRGVLCTUQ+Ly21CPakxGyAmiVgB2uh
         JpFB3cbBl3iBnVmZ2A4eERLg2RuJRhtHLvqyXR97J/wIohME9rmL2B40nnSRlaVfN/74
         qiQpOSQDPUJTDRr58RhK8A6Vk0xAtF66A9ySI8uV6sQlA1TACr4v1Eb1oF6otOWsdsl3
         gCVgOd+jZTG/BVX4h7j89irxE2rmONoDLmwGyjX4RkKbnGUS81azGOOVpyT6nm8OcLBT
         xPJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721746484; x=1722351284;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=4Q4VC/Yb1eDjHJWK2A42Gg/1zp9kyF3O49xHz6PgJNg=;
        b=v4joxazvIqTFO3mnmD0g061KlDHJBleWUBz1pN65T1H2jMyWp4j6537pGnKBgCVY1V
         CuGWK02CsrcFrsyQsUcu4Fa+Hy57iHB5yBEkYQNnd0/bX7ahIXzmpifHtyqDcT4gMgD/
         7iDL9eK29MGgL/0OE7qB+zuLk4nfIiw6bn1lUUrNH8qbbUJNOeQr5UENczBZzZ54TMki
         exp5JUFgtHn0DWmi6JwW9HKQPiCzjy9hB8x2VyvJnsXd50F8zneyQf90J6Btp9He9yg/
         nMhkkhc+W5TO55VPfAp0eRcvHEVelNnxcKHz4u+odLLIGmh1FDEraetpL+wmjJCur/LQ
         E6KQ==
X-Forwarded-Encrypted: i=1; AJvYcCU4p0bgv0B3rxhMgQOmP3UqIghJMIKRyoVKm8Y0fUYZQQH1ySZgxNR4JW4JoSO5VGJTceK+YQy1yNBaJLxJfgljcl9Na1pqUUi+2Pk=
X-Gm-Message-State: AOJu0YyVmc+3SzvK6e+34hBJhU5hpCd6macOeyv9ctRqv5n8P7+1rHGn
	QT1xiV/CJwQ0hYLIiBZfUDFYjqHND2KtjYJMcUO6BqIKgNCRqpr7
X-Google-Smtp-Source: AGHT+IEyqYeMO9FflvwiOcV52q2+4dU4DGrae4d1Mv56qd/Na2M6YUmWfvB0vE8KSrMybKqSq2gWzg==
X-Received: by 2002:a05:6000:2a6:b0:362:ad01:5435 with SMTP id ffacd0b85a97d-369e3f29f4emr2124647f8f.29.1721746483728;
        Tue, 23 Jul 2024 07:54:43 -0700 (PDT)
Received: from vaio ([91.142.65.210])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-368787ceda0sm11748523f8f.87.2024.07.23.07.54.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jul 2024 07:54:43 -0700 (PDT)
Message-ID: <38ba9d4d886c030154f2eb52ccf2a6b7c4881c13.camel@gmail.com>
From: Stefano Manni <stefano.manni@gmail.com>
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>, 
	barebox@lists.infradead.org
Date: Tue, 23 Jul 2024 16:54:40 +0200
In-Reply-To: <ba1febb9b457f5876959f093f866b680e266f987.camel@pengutronix.de>
References: <CANn9nbgEYhJEPCZs4oQ-TBLM5OFz-076yiwRCYzewPJVfoiKMw@mail.gmail.com>
	 <c91faed04802d13072ac42b233216fc5cb414d4f.camel@pengutronix.de>
	 <8f4d5c086afb381b17a2289bdc7e22129a51d9e7.camel@gmail.com>
	 <ba1febb9b457f5876959f093f866b680e266f987.camel@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240723_075445_492658_4C603394 
X-CRM114-Status: UNSURE (   8.58  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: HAB warning on imx6sx
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, 2024-07-23 at 15:18 +0200, Rouven Czerwinski wrote:
> 
> Yes, this is correct. You'll probably want to send a patch to modify
> the habv4_known_rng_fail_events[] array in drivers/hab/habv4.c, this
> should prevent it from being displayed as an error. 
> 

Thank you Rouven, patch is coming.

Best,
Stefano



