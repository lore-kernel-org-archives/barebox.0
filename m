Delivery-date: Mon, 05 Aug 2024 18:03:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sb0Av-006XaV-32
	for lore@lore.pengutronix.de;
	Mon, 05 Aug 2024 18:03:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sb0Av-0005Tt-Cx
	for lore@pengutronix.de; Mon, 05 Aug 2024 18:03:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Content-Type:Date:To:From:Subject:Message-ID:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=aJxm8ocBswP2W5uPkhRQjW+O2UtEYa1NmCa8yjHfRrM=; b=VjWTpLmMRlEY2wc8D7bXz2dy9V
	QCtm6ZhM2M3rtcMM/TgacGd+1nMLE2AMHodlojes4D5y34iqhm4vUQy44a6CF2tmTrcInfYHHcj8K
	JQgUPYxArnvmFO82/YYRrMiSb9pvcalm1YmF0jjkOmWua0uWHLRys4Lg4LpYYLj/vqK6c2gsC/qG2
	KDXAIbFnDUgYuTAv+Xs+vFpz0aaLX1n5EBMkE0aQEjJXdMJL2Z82FlJGjYYvnPYms5j3BQjzNuUp7
	gF6QWas0vvtGKptBIxvvjZVm0NPASCYburmQnN+sb/H4bqHlzk5Uilma/di1YhZU14kaE6YewNclK
	9/gEGK0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sb0AG-0000000GRBx-38XB;
	Mon, 05 Aug 2024 16:02:28 +0000
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sb09m-0000000GR3B-1u4v
	for barebox@lists.infradead.org;
	Mon, 05 Aug 2024 16:02:00 +0000
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-a7de4364ca8so238642966b.2
        for <barebox@lists.infradead.org>; Mon, 05 Aug 2024 09:01:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722873716; x=1723478516; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:user-agent:date:to:from
         :subject:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=aJxm8ocBswP2W5uPkhRQjW+O2UtEYa1NmCa8yjHfRrM=;
        b=TMZydVT5ZH2ia5A9DM7fYMS7tRi6R+PfCa1eOLj//HR3hyCxnqhcAb3Q+w7A6HlyjM
         lOWrZpUS0INzc77nLVcXXo+nLKI3fAQqY6wOqfJdAD062nwG9ZZYHGXdZPJ4rgN/7+eQ
         8c/dGmMY44zzKMBzHDrEEvHiTe8PpjX/sw1Y5tBn2bh7czNOxI9edQuZUBMIyc715cQW
         Hy+34sMA2sPxWO54OrXEFQGqaNznv8w62N2aeKCySrawB/scZbMtVptdLiC/1XFZ3RkM
         0urZzsyFS5PuXmbRLSf0rMiaZnz8/aVTitURz7jPaVBnfaUqpNquin3sbfl6jBe7N9Fz
         15FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722873716; x=1723478516;
        h=content-transfer-encoding:mime-version:user-agent:date:to:from
         :subject:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aJxm8ocBswP2W5uPkhRQjW+O2UtEYa1NmCa8yjHfRrM=;
        b=cp/szM8RsEWYYTzHWOtlzg1lk2hqy72mjFg0qa2GvSsHyWiMYEgyATJFtMwZCXoaAe
         M+wpFk2bmmZt2pRetRjX9LFKpkIHWvTS1xKB/6CKO+5+up4RzcHLm/nmjzL9kVnaWHWN
         GIYoF6PiwigD/3MNBCs1a3nfnpmU5JG5FQX+6Ck5AzI4op5j1OCecZ9wumGWRj4+6Hll
         Jfm3sFuqZQmLhZYsc6NZJTCi/9FOdWyXdcV3JnAs9B2Xfp5NnLyhTte9Gpu4ryqokQkW
         KtGJRP9nmGTx4iOPCG/SLX3Jvn84Gl5yVTkeROEVZkgwlwrkZs1F+5cUpPmsVAL82g4g
         JpaQ==
X-Gm-Message-State: AOJu0YzOziMToCX8UZjVIkXV84IFuq4W4vFFMZFzo0ckwgZic9bU/X+I
	VziCwS2aftP7Ial85OZjVV0YWEX6wEaYl1fRZ+y+g/piysj30KAPAqPH9w==
X-Google-Smtp-Source: AGHT+IFmMrEN+TLxfp1zIt5bJwjf3HOxqrRj1LX3BiazipU11OPBYR3zTxctBTnx1p4LE49Nry9p/Q==
X-Received: by 2002:a17:907:3fa5:b0:a7a:387c:23f8 with SMTP id a640c23a62f3a-a7dc4dc06camr1022010466b.3.1722873715991;
        Mon, 05 Aug 2024 09:01:55 -0700 (PDT)
Received: from vaio ([91.142.65.210])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a7dc9d437b0sm464119266b.114.2024.08.05.09.01.55
        for <barebox@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Aug 2024 09:01:55 -0700 (PDT)
Message-ID: <ca751c63f894078f566cf8de12d3f5a81ce252b0.camel@gmail.com>
From: Stefano Manni <stefano.manni@gmail.com>
To: barebox@lists.infradead.org
Date: Mon, 05 Aug 2024 18:01:54 +0200
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240805_090158_526784_D436C1BB 
X-CRM114-Status: UNSURE (   8.77  )
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
Subject: short entropy delay causes RNG hardware error
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello,

on a custom board based on imx6ul once linux starts I see lot of errors
like this:

  caam_jr 2141000.jr: 2000005b: CCB: desc idx 0: RNG: Hardware error

approximately every 10 seconds. And if I try to read from device the
same error occurs:

  ~# dd if=/dev/hwrng of=/dev/null bs=1 count=1
  caam_jr 2141000.jr: 2000005b: CCB: desc idx 0: RNG: Hardware error
  dd: /dev/hwrng: Invalid argument

No errors are fired in barebox where the RNG self-test is run
succesfully:

  rng_self_test: RNG software self-test passed
  caam 2140000.crypto@2140000.of: Instantiated RNG4 SH0
  caam 2140000.crypto@2140000.of: Instantiated RNG4 SH1
  caam 2140000.crypto@2140000.of: registering rng-caam

Here [1] I found that enlarging the entroy delay may help so I tried to
do the same in barebox by changing RTSDCTL_ENT_DLY_MIN from 3200 to
4800 and it succeded, I no longer see those errors in linux and trying
to read from the device works perfectly.

The strange thing is that on another board based on imx6sx I never see
those errors.

Is it something new to you? 
May we change the delay? On linux-imx 6.6.3 3200 is still used.

Best,
Stefano

[1] 
https://lore.kernel.org/all/CAOMZO5D0m1xCfgFifKz1H+oYQSfxsfuZp4U39rPMACmzv1fvjQ@mail.gmail.com/#t




