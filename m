Delivery-date: Fri, 09 Jun 2023 07:05:08 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q7UJB-00GkDC-PA
	for lore@lore.pengutronix.de; Fri, 09 Jun 2023 07:05:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q7UJ9-0000X4-Ih
	for lore@pengutronix.de; Fri, 09 Jun 2023 07:05:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Mime-Version:References:In-Reply-To:Message-Id:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mGOQkoMYEyVXgBrAtoR9CIj4nOroRrDy7jDKhNxuN+M=; b=dJW7HEj50G+NllLWaw08AfpDLK
	/syscEvtDtH+nWpFoWGEyKOfk5GxN+EEH3YcDkaKGTLLmEwhjVjikdJUU2CZpMiiZA1ptv932dNM+
	uWQVzvGoX7hmyAslQbBZ4s2NwXlxQbbMontT3GAEm410hOhFeltAjSI3+vNO8RQRD62alDl1LUvaO
	x3ltg/snEo5LIRhr2gVDCcVZyjHK//k4KEsF/CBEnTh3PF4JjWxU+FBtsacCTPV/mvBBzEAGfONnu
	YBL3Tlma2izxBixn1GlNwRqWeCK0UXeQw+tEmw7kzGiabWgHbc2SBjvDPXgZNoOjmSZw+HktCm3gd
	xYUIta8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q7UI6-00BfuV-24;
	Fri, 09 Jun 2023 05:04:02 +0000
Received: from mail-lj1-x231.google.com ([2a00:1450:4864:20::231])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q7UI4-00Bftu-0U
	for barebox@lists.infradead.org;
	Fri, 09 Jun 2023 05:04:01 +0000
Received: by mail-lj1-x231.google.com with SMTP id 38308e7fff4ca-2b1b8593263so13881881fa.2
        for <barebox@lists.infradead.org>; Thu, 08 Jun 2023 22:03:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686287036; x=1688879036;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mGOQkoMYEyVXgBrAtoR9CIj4nOroRrDy7jDKhNxuN+M=;
        b=I9LMQtPD2eOkUDa473PKgp1FggrD6+fzJpIdPeAAoMF+5xyCNr++yqnt2cD4aZMzx8
         FPk11y94rulqaQYr8vUdRmVpWxppxrNe9TGVrPdqDPUSBeRrDJR8HTpasqjCjLe49z0U
         EmwOBDhnDOCexLTANkzgmNS5DN6qBvXWhe95t6skNLyKKMFMLobU0GuRJBXkEL1JvsjR
         cIEfZ/ibdw0COAFlmaHLvKbHjsRULrPXfYfZ1pcdOq+2khscvl9rrxBgrsR9ibkb1+NC
         vO5bzACe+14QNuGCgyUvqU/YxxtgxeqWYr9b9yJl8T2gAjIkiTMIeOQ0TZVJTk39s+aP
         Riww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686287036; x=1688879036;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mGOQkoMYEyVXgBrAtoR9CIj4nOroRrDy7jDKhNxuN+M=;
        b=iE6EjbWmZblDxLxdWjVVMrcZN8nE5BFXcX+5NLY3KykiaVpmjPeV8oV47QqL3t6eBu
         9mXJ1kTZTg+gqdS4+cHHvVLcZPgI0PZ45c+9CRoi74C6gNK5l49rHeQf5jBtlvP2Te9H
         lJDL/EQSex/cRwAZIE8Y/On4ns1T1Bwh0nuk4yz/7svTGJ2r5TBDffb4vlLLL4DKCK8g
         s3UxRJuw5KKKvpGOdpLBZWmrXjyiAEeO1PB0IxfiUKHRGL9ypTRbPWvIzY/mJj+cGWOb
         xPJsKC9QOm/FucsvhJaN4Mn2GJTUdKqnKduFUx9kHpqAZXeIV1Jsd7+yWQ8HNugEtb3i
         z1ww==
X-Gm-Message-State: AC+VfDxo/hDGVPCxztwoafknVwP+FvYm2fAVP2fR9Mo/xAWDtk6moLxB
	Bj9FymqpQsREJ3QouBkd9MU=
X-Google-Smtp-Source: ACHHUZ4Fk1b09kSSs8Py5Jk6Aby/rUhmh01q5O48Y7Jq6rqkDutxCe/jPIGepJRMgWcz5biwpcBu7w==
X-Received: by 2002:a2e:8542:0:b0:2ad:9acb:4849 with SMTP id u2-20020a2e8542000000b002ad9acb4849mr233479ljj.47.1686287035739;
        Thu, 08 Jun 2023 22:03:55 -0700 (PDT)
Received: from flare ([146.185.218.236])
        by smtp.gmail.com with ESMTPSA id e15-20020a2e818f000000b002ad98ec6b10sm221337ljg.52.2023.06.08.22.03.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jun 2023 22:03:55 -0700 (PDT)
Date: Fri, 9 Jun 2023 08:09:38 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
To: Denis Orlov <denorl2009@gmail.com>
Cc: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-Id: <20230609080938.5cdc260aa71f5ba78cf8bf3c@gmail.com>
In-Reply-To: <20230607051155.3175-2-denorl2009@gmail.com>
References: <20230607051155.3175-1-denorl2009@gmail.com>
	<20230607051155.3175-2-denorl2009@gmail.com>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.33; i686-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230608_220400_212783_0227A269 
X-CRM114-Status: UNSURE (   8.57  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,NICE_REPLY_A,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/3] MIPS: add qemu-malta64el_defconfig
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Denis!

On Wed,  7 Jun 2023 07:59:38 +0300
Denis Orlov <denorl2009@gmail.com> wrote:

> This defconfig will compile barebox for Malta board and MIPS64 5KEc/5KEf
> CPUs, emulatable in QEMU. The analogous 32-bit defconfig uses big endian
> CPU as the default one. So, for the sake of variety, and to improve the
> coverage of options, set the CPU as little endian for this one.

One more reason to run MIPS 64-bit barebox in little endian mode:
there is the Debian MIPS64 little endian port but
there is no Debian MIPS64 big endian port.

Also please note that the Debian 32-bit MIPS big endian port was discontinu=
ed
after Debian 10 (Buster).

--=20
Best regards,
=A0 Antony Pavlov


