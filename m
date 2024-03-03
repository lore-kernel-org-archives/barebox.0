Delivery-date: Sun, 03 Mar 2024 19:48:46 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rgqtC-006xWs-0S
	for lore@lore.pengutronix.de;
	Sun, 03 Mar 2024 19:48:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rgqtB-0004ye-JM
	for lore@pengutronix.de; Sun, 03 Mar 2024 19:48:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-Id:Subject:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gwbT1RhQlu2tYgajIHt3EKm7O1Uq35kEW0jZ1/Jnesc=; b=Z37vMSfBEadvMZ
	/rk24DrBiyYQztORWL4hxZPfNTEn4+dYTwf5F81SiI74b84+Nbg3E/HFYcKpsg0t0JJRFA9Do8c6E
	ivMPrbTW5TDCTiBbGHb4ZNp5we0O94xap/+Zg7D6cCTiyHlaCgNL5wkHmdQ/0GBQw/R7hwdlYc//7
	A3oTxBEnyrA6JgDA7gqbbHBsMqRdF1k3emW0+98d3XnJ7KxmHI3Nm4YCoWJHa/+WeTs/pXJTdhBO+
	xaxNNuAgo67QgdEqJNRMnIHYv+O54VJi8XHkSPnRhvGFsmRMA1uW5JViTIML67jgZ3/nz1LIJHf+o
	ZkOrU8brLy3ym0A05mrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rgqsQ-00000006Um1-1354;
	Sun, 03 Mar 2024 18:47:58 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rgqsM-00000006UlK-2IuD
	for barebox@lists.infradead.org;
	Sun, 03 Mar 2024 18:47:56 +0000
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-5131f3fc695so3893669e87.1
        for <barebox@lists.infradead.org>; Sun, 03 Mar 2024 10:47:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1709491672; x=1710096472; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:subject:cc:to
         :from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=gwbT1RhQlu2tYgajIHt3EKm7O1Uq35kEW0jZ1/Jnesc=;
        b=PSV57Rn2wqw4abPfdp5RafqkzgjEZhc/hSk26SEZU1vCEp/30YOypR8bQZdzEafm8h
         4v/lbqd5DLyYlRnk/lUpsLc/n5EzyXVxvt34ckI1XGErev3KqIORo3lYj9WgrSMeUn2V
         LoMo/36eFgDThrT7t4+yZE/s8YfRlvcp21HE9g4tKkNYR4hIaXT8NMUF3AhjyDOnVckV
         YiMVmwSF/ZuFUeRxntYm40wUDsfZNVPJL5jAX50+jZTixhF74EVmRJkh3cewBhgHwctk
         4T8xSj6PSfdrsSpLpLo8c/vyMDf/rlgJ+LadqS0YoC7NEKGPo0GT7ufbEUhPsIRecf3I
         AqhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709491672; x=1710096472;
        h=content-transfer-encoding:mime-version:message-id:subject:cc:to
         :from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gwbT1RhQlu2tYgajIHt3EKm7O1Uq35kEW0jZ1/Jnesc=;
        b=tBLi+luQmkeXIei7sofLcCAoD8Yegeg1Fp8qLrz3Jx8C/1NFPQY0W31SsxJ+ILBkVc
         v5D4d4UZPNROiH3qfONUbMLp7xVEUo7QtB626Z79i+H4k/7KhN2OEiDLCp4/mjNbDLbf
         zO6xFNfbbgncmSYMG5iZhll/gdH/AAW1xFNZsawq1UdNu679COSK685P/3+yPlMVEMct
         HFCTAl5bNQC9MZx4PpTMF9x/lDL7nppnH/Cjhn1gA2Rk7FbOj8wm00PhiHHXsVT97+UB
         YBQIPKj6teFizdnxth5tMQc9EnI67mLwFGF+JJbls45puke8QmiWFv+d1P/uSQjO4cIE
         e4Rw==
X-Gm-Message-State: AOJu0Yxr7JttWnYqJDBhlz8UJrbH07fuX05p12CmJIjMoUAJeffMbJyU
	MX45fe7GRcTnJHYCi/0tdvIOr2tXy7YZa3R3ERvATUhpzlj7DmjVa5R7xks2
X-Google-Smtp-Source: AGHT+IHGlgjI98xM7V7IUYZisCuigzlW2on1u2wbraOI1mQMKTdeGsIe1j9qx7zQh4WFFk1kKJSVKQ==
X-Received: by 2002:a05:6512:132a:b0:513:3b5a:297a with SMTP id x42-20020a056512132a00b005133b5a297amr3050205lfu.2.1709491671357;
        Sun, 03 Mar 2024 10:47:51 -0800 (PST)
Received: from flare ([146.185.218.236])
        by smtp.gmail.com with ESMTPSA id g11-20020a0565123b8b00b005133104dd72sm1019818lfv.40.2024.03.03.10.47.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 03 Mar 2024 10:47:50 -0800 (PST)
Date: Sun, 3 Mar 2024 21:58:03 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Message-Id: <20240303215803.f8693ec93f03fd048acd3a30@gmail.com>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.33; i686-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240303_104754_613033_091FFCFC 
X-CRM114-Status: UNSURE (   6.78  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, Dan Shelton <dan.f.shelton@gmail.com>, Sascha Hauer <sha@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: barebox + picotcp-1.7.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi all!

In the message [1] Sascha proposed to have the barebox network stack
and picotcp in parallel.

This approach is used in the branch 20240303.picotcp-1.7.0 from
https://github.com/frantony/barebox/ repo [2]:

* all incoming packets go through the barebox network stack and only if
  they are not processed by it, they are forwarded to the picotcp network
  stack (all incoming ARP packets always go to the picotcp network stack).

* risc-v virtual qemu machine with user networking (slirp network stack)
  is used for demonstration; one needs only qemu risc-v emulator
  for demonstration;

* these barebox commands are introduced for picotcp stack capabilities
  demonstration:

  * dhclient --- setup picotcp network interface using the DHCP protocol;
  * ifconfig --- print/setup picotcp network interface information;
  * route --- print picotcp routing table;
  * picoping --- send ICMP ECHO_REQUEST to network hosts, receive replies;
  * picohost --- perform DNS lookup (google DNS server is used);
  * app_wget --- download file using the HTTP protocol.

* tcpdump code is incorporated into barebox for network stack debugging.
  tcpdump supports parsing most of the protocols supported by barebox
  (DHCP, ARP, ICMP, DNS, TFTP and TCP).

Please comment!

  [1] http://lists.infradead.org/pipermail/barebox/2024-February/045937.html
  [2] https://github.com/frantony/barebox/tree/20240303.picotcp-1.7.0

--=20
Best regards,
=A0 Antony Pavlov


