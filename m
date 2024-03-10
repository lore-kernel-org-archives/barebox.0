Delivery-date: Sun, 10 Mar 2024 21:24:16 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rjPiS-00HTo3-0o
	for lore@lore.pengutronix.de;
	Sun, 10 Mar 2024 21:24:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rjPiR-0004Wz-MU
	for lore@pengutronix.de; Sun, 10 Mar 2024 21:24:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Mime-Version:Message-Id:Subject:Cc:To:From:Date:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=84Urq3U7Zs3BiJRZLMla1IeL6/MvTFxaZUfgZtU64gY=; b=1sBwbHdHQGfFvg/TrzNRh5qKr0
	bevp4/lvJD2mx1d1uCWmiYv+0MVUnzeVK8t8fOLf/LB6AwyPFDz87WnONoisYKM7BL/EvWEzs7mEw
	5btDQe7WTv4qO8g1RV3DVySjYNC0eEEiXRM6I2z7q3rjuUNGJrauGdjX3j/1UfnFYfFpEOqGarE4Q
	XwnmvZ4lfsq/tCLr6d9swQjtPotVDFBbSN35pEqTxcuK/hYc5i5FbHxWS5t6F2+RX1UhmbBpgbAl5
	65p9BSO4i9W3I8f3tGKahxzdGFaKzfC/D2RSu0KMjQDVNJF4AUiRx+wtOb4oVDfNKrMDvLYBJ0MA5
	e7TzG1vQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjPht-0000000GXpb-0qOp;
	Sun, 10 Mar 2024 20:23:41 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjPhp-0000000GXob-0Xzl
	for barebox@lists.infradead.org;
	Sun, 10 Mar 2024 20:23:38 +0000
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-51381021af1so3163846e87.0
        for <barebox@lists.infradead.org>; Sun, 10 Mar 2024 13:23:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1710102215; x=1710707015; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:subject:cc:to
         :from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=84Urq3U7Zs3BiJRZLMla1IeL6/MvTFxaZUfgZtU64gY=;
        b=T5/P64K48unsiozWMxYdlbwJ0DsFpaR1NT8eO5KbZoM9IpbsBTzn3zFxpFIrp+6FKM
         oPVEjvOlaSQnf+qUUxAS80GlO9tDdb+zJSZCaSrz6Ikl+OA3zV4SQYlaUciAtGEv9u5v
         U2jqHbpxRnY5J9f0rWMSe2yXHDqysUpfxBnv37S/FlmiA9zZOx+t50GPkoIrrF6xkdeo
         IIvqQr/5yw64490k8jfqyqyzeYz8i+DA0XT4hgIE0V2p2oihXnNNxd0XRCcvODej984I
         4uDSFqj/xYBMrJh1X0jU066QmyfrqMdAD0auVKwmVQNIJi/UMT1c9GinnXlm7nto92AW
         N4Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710102215; x=1710707015;
        h=content-transfer-encoding:mime-version:message-id:subject:cc:to
         :from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=84Urq3U7Zs3BiJRZLMla1IeL6/MvTFxaZUfgZtU64gY=;
        b=s8YUcy1VxjM4dZk3VNHjQzS1WGRctWcvDUAeiNBXMLjFOfOiN0woKrGJJFnZnMLtM7
         DZp3srog5ZmpXCdp96r2pbiM5GSZg1o0tvUaJVJNb2yyWbGkJ62bYi5dgs//lLK/G0pL
         nMX4vc0EBBf8e2vDiwWEgGOTnikEE2L9kdxJERUaDI36GX5O0nf+BgVrNjyqPC1hFdqq
         iNoxKVsqY/Q0iGaSiu9lk0GLk2flsPI4andcqQ3/1X9oanKS6jkVjQIwl6b36P5FZoSr
         OcWmdirOYnr5zYdNlA88WtW8Zg8nk9+9+UmHVInPd31HPIZTmvCzH2MtnZraDHMLybHx
         diEQ==
X-Gm-Message-State: AOJu0YymH5F7iaZjT9ePPYKjZPilchkj3XwmCoYejVwlgjUKLJGB2ujS
	YblIsxYcZczEvdzLtmHnLIUjuwPsQfAcwVubmjEGqtxVC9ohSLPfh+/HL9ab
X-Google-Smtp-Source: AGHT+IGRvF3dGE603/X9rdFHKwoM+cwG5J5U2iglqGNqgW13pYpAYJmxbdoG5CIhVcnC6MGxqqUGsQ==
X-Received: by 2002:ac2:57c8:0:b0:513:9990:5997 with SMTP id k8-20020ac257c8000000b0051399905997mr2449040lfo.35.1710102214389;
        Sun, 10 Mar 2024 13:23:34 -0700 (PDT)
Received: from flare ([146.185.218.236])
        by smtp.gmail.com with ESMTPSA id x11-20020a19e00b000000b0051325475bb1sm797526lfg.229.2024.03.10.13.23.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 10 Mar 2024 13:23:34 -0700 (PDT)
Date: Sun, 10 Mar 2024 23:33:55 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-Id: <20240310233355.015a6192a3d7cd668dd6f820@gmail.com>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.33; i686-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240310_132337_206258_E6E9EBB3 
X-CRM114-Status: UNSURE (   5.78  )
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Documentation/boards/riscv.rst: can't rebuild image for BeagleV
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Ahmad!

I have tried to rebuild barebox for BeagleV.
Alas I was unable to reproduce the steps from Documentation/boards/riscv.rst
because of changes in opensbi repo.

I have successfully rebuild U-Boot from the https://github.com/andreiw/uboo=
t_jh7100 repo
and used it for running sbi-less BeagleV barebox image.

I planned to use BeagleV for picotcp demonstration but BeagleV ethernet ada=
pter
does not works neither under U-Boot nor under barebox. My dhcp server can't=
 even
receive any request from BeagleV.

Have we any chance to make BeagleV ethernet adapter works under barebox?

--=20
Best regards,
=A0 Antony Pavlov


