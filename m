Delivery-date: Fri, 13 Oct 2023 10:14:20 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qrDJM-006pOK-UK
	for lore@lore.pengutronix.de; Fri, 13 Oct 2023 10:14:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qrDJJ-0004kH-PZ
	for lore@pengutronix.de; Fri, 13 Oct 2023 10:14:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:Subject:
	Message-ID:Date:From:MIME-Version:Reply-To:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=p9k4M7JlapOyHDBx1psyxme8m9tsJOxUPnog2oQb9qw=; b=TX1oSH75YaAXeyqPisnNczUNLb
	0JHI5NCnROnd0H2GO/5nqY18J2nnRyKhFeFwiw5Ze93oxPXXGevpMjZ1Cpw1N5cNLAUjtoddwwcpF
	wR2rhvJ2OBG/jTqGhOphFGd8HvFi3XVO7ahpHRbe4JFZ4jLO3iYkdkE09WTW1sggS4G+1f3voV7lh
	o1lOBc1gqV/8hjSpt5htNid53Ae67aAlzNwbWTEVQvVLKm43yzAZxj3EQSGI59d8PUXv5f5S7ruYn
	+mQrCux/UoWUxk2LDNsq1FtyxKChYwKDXaHQZP2EJ1Tn0p+BJyOr0q8PnB1m1HWDfIbZIKTO2kQCa
	0gASHlqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qrDI9-002nWq-0h;
	Fri, 13 Oct 2023 08:13:05 +0000
Received: from mail-pj1-x1033.google.com ([2607:f8b0:4864:20::1033])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qrDI6-002nVz-1m
	for barebox@lists.infradead.org;
	Fri, 13 Oct 2023 08:13:03 +0000
Received: by mail-pj1-x1033.google.com with SMTP id 98e67ed59e1d1-27d1fa1c787so1242998a91.3
        for <barebox@lists.infradead.org>; Fri, 13 Oct 2023 01:13:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697184781; x=1697789581; darn=lists.infradead.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=p9k4M7JlapOyHDBx1psyxme8m9tsJOxUPnog2oQb9qw=;
        b=nsWOQ9UwgrS64zoOw8hlzf6iN92or17hEwIDKJZE7nYorPa92RUvV7XhRXXs+7+ALH
         MuHEPXEHt/nFoZ6Tdutv6x6Wel5cNo9ZL5bh4RCc0dfALmYiDa/UVYKLVn93Ylz9Kctn
         GKASXE9nrB5ao4Lo4IWqq8VFukTqRTvd95OPWjiZLm2vCJyiVCQ3K12RsQETVzyiqsuX
         g8b7HF2TPmDslKBgGUbRdUCtIA5JvdvzJVZsSmKZVjT29a1IW0jwK2D6H+kbIU63apus
         6l8tNeZuYNW0hmyMKyN4MblJFJHxr32f3SzU5dUmadJURBc5SCy4lXLGl/Cnda95CJ9P
         1qJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697184781; x=1697789581;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=p9k4M7JlapOyHDBx1psyxme8m9tsJOxUPnog2oQb9qw=;
        b=Hb4n7h4dYGkWsS8DAwvUlJ1OJzlnRYK3n94eRjc8WbeOI8Syo6DJ7Pp0kmT/arfQ75
         8WDZo57jRpWEDlV6u/myUrYzPpPPBMWEMUiecu8HhLPBpRQktValRHJnEuSZC/oRb6G0
         hhftXVN3wjALU0MIofCsHPqU9MRSVSL37s38jcOlI8hGL6bEAfyerAKg3ILEfM+oVLfm
         Uyv3v0lQmB3AI+2YMDBtJl7MhV/k3QgDbdOGLAym85iFxQdYLEUzvi1QgO7GYVuLt76y
         M1CtFO9/NBS12i7CSyCQyNmHgfO5uyxb5LQpBY5Oxkzx39SrKO17Kos76HPGfaD7Y+q3
         I2Zw==
X-Gm-Message-State: AOJu0YxwQwVPr4UK177ul9QxJj5E1L+iO5hGoVNEkE9MPmecGQSoBwky
	HHkrvBvbb5P9nIRqZwXXeHQqyYbXu5Fu2bn0BfFjKLcE2eQ=
X-Google-Smtp-Source: AGHT+IH5nZQLGutD/iLF3ibMuB3mUI+o4386oOJQ5kq0ci95oFA65wqQree8VSKTsrykViYuGEuXvGvKGy2QjCMInpk=
X-Received: by 2002:a17:90a:1c8:b0:27d:1822:f3de with SMTP id
 8-20020a17090a01c800b0027d1822f3demr5241032pjd.16.1697184780728; Fri, 13 Oct
 2023 01:13:00 -0700 (PDT)
MIME-Version: 1.0
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Fri, 13 Oct 2023 11:12:49 +0300
Message-ID: <CAP1tNvRpgjbBKxCV94cOHdvFtgwmRz0fRX3B2=-FjYXCY+Z_MA@mail.gmail.com>
To: Barebox List <barebox@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231013_011302_587321_F0D2BA95 
X-CRM114-Status: UNSURE (   7.89  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: RK3568 some question
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello.

I'm trying to run PCI-e 2.0 on an RK3568 processor. The driver loads
OK and does not detect anyone on the bus except itself.
In the kernel, everything works as it should and connected devices are
visible on the bus (in my case, I use Intel AX200 and MediaTek MT7921e
Wi-Fi modules).
Enabling PCI debugging produces these messages:
pbar0 set bad mask
pbar1 set bad mask
Has anyone run PCI on this CPU?

I'm not too familiar with the PCI subsystem, but after briefly looking
at the code,
I saw in the setup_device() function the line:
pci_write_config_dword(dev, pci_base_address_0, 0xfffffffe);
On Linux and u-boot this value is ~0.
The question is, are we doing the right thing here?

And the question is not related to the PCI:
rk3568_lowlevel_init() does not call arm_cpu_lowlevel_init(). Is this OK?

Thanks!


