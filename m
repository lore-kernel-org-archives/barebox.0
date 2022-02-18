Delivery-date: Fri, 18 Feb 2022 22:27:16 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nLAma-003EYu-BV
	for lore@lore.pengutronix.de; Fri, 18 Feb 2022 22:27:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nLAmY-0001uH-Ux
	for lore@pengutronix.de; Fri, 18 Feb 2022 22:27:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jCiGMcdfELXeNjtAJR9GpYKVo1Qp51Lc4qSQZu1xBTs=; b=vClN69dEHqjQbk
	pv9lpJBbt/+V5I41FvkNdocy5AaoWWwpbLTO5w50KV5ptaToIc/wFBDIERV73ahQ0hqqJXec4QKBp
	QbjY6dJ0B4TOp4RrgYfldUnmyUIWE6tD4m3VNs+ihnd/j3iKObmIEcutBy0OzQWnFiWSmzvxclV9r
	+b1Pd9LGVhMc/8VmcZYj1SLp5hFVN/paRx9SgVqWtPxrAynB6QPwySr5x20lwNE93DKqgLHSx0qUP
	RcZrEvcYcuqyCQFT48wvQQ/EJYg5kc5t61tM9umCnwVxxm4KbAyGd+2CCvgC0NnN0xFLAzFX/PYMK
	WJhGvePqGuYrm6urUsYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nLAkq-00Fl2h-QQ; Fri, 18 Feb 2022 21:25:28 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nLAkl-00Fl16-Rl
 for barebox@lists.infradead.org; Fri, 18 Feb 2022 21:25:25 +0000
Received: by mail-lf1-x132.google.com with SMTP id b9so7760036lfv.7
 for <barebox@lists.infradead.org>; Fri, 18 Feb 2022 13:25:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=tURK1jVOzpXv5k/xYG0bBQ7pGrlugroTFrsXQ2N8n4Q=;
 b=KONa8DLtmdmbx41Ey9GD2VNYoBW1O87Tq+d2q7ujVBtsgFCi7pwRAuw5qM7Hh1GaBT
 pE3lNvvbqX0uDE8uOlhddwvcOLbtxKPNnATSzHW1JPxJJ+QE7vTPAaK7BphG1JTc+h0p
 V7xTZ3zzBqzm6sEpPm9fgGQizRt7iPTdP/y5/pZCqtnaDmjrpim9XnQuRyVe4fP5kw2t
 6JFrvNz4oT3ZtiQG3c3SnAOH5FbXL4U5kHTCoA8aY72eDBI5SxJb4isN+ZGYRV1RxzR+
 Y29X1DC27b/T5tXJAQDblc232V119tyT/6gUO5eFJPD2MrFXkgtYTlblsJoUWfzK3prv
 95zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=tURK1jVOzpXv5k/xYG0bBQ7pGrlugroTFrsXQ2N8n4Q=;
 b=shr0ilc9OzWgf9j2Q6AJD1FHrMxHFbAnbQ+XDpaMz1MSfAf4bjDo6caL1Trs7fMSvh
 2jUglY2ON/2LpH82TfCdratMELUjB2y3Bl/+0x3pAnXLjePOLXiwqtD4VuXtpFXbs/xP
 tgwOEATjxapFjClNk0Ycld+lqbUIAdCFCYlidyoNVO6EbAwi61aviH52B3Q0grgi8P8M
 ammYwablzPabS/EhYA8nCo5d6AVyOECIzMFB5xoxhUsqBZi7MRpmbdg2wrl9DlHtD5ni
 ANkBmO+s2lE1HRpHN8ulxH5AGdY652pN9HCjwiPMow0pCxrsXrCx3ZnfLenCJoMAIUP1
 nU6Q==
X-Gm-Message-State: AOAM530HjqXtBmiVsjUc7SnX1BMkK6vVaN7Fd0+e0R8RLm2SLkTvAyVO
 rCN5gWNtji8Zoa5F4dLQ+Eo=
X-Google-Smtp-Source: ABdhPJy180tXg38/YhOzc9z9jULG6csolr0R4bec6eKyZpk35RtBMWYyminfvpmw+PpuzDL98ggjFw==
X-Received: by 2002:a05:6512:6ce:b0:441:da6e:3fba with SMTP id
 u14-20020a05651206ce00b00441da6e3fbamr6472875lff.509.1645219521247; 
 Fri, 18 Feb 2022 13:25:21 -0800 (PST)
Received: from flare (t35.niisi.ras.ru. [193.232.173.35])
 by smtp.gmail.com with ESMTPSA id x25sm451285lja.23.2022.02.18.13.25.19
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 18 Feb 2022 13:25:20 -0800 (PST)
Date: Sat, 19 Feb 2022 00:25:18 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, Sascha Hauer <sha@pengutronix.de>
Message-Id: <20220219002518.54e7eec76ca0e716131f07c5@gmail.com>
In-Reply-To: <20220217082714.81749-2-a.fatoum@pengutronix.de>
References: <20220217082714.81749-1-a.fatoum@pengutronix.de>
 <20220217082714.81749-2-a.fatoum@pengutronix.de>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; i686-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220218_132523_933414_F4FDC5CF 
X-CRM114-Status: GOOD (  12.37  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/1] Documentation: devel: add new project ideas section
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, 17 Feb 2022 09:27:14 +0100
Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:

Hi!

...

> +Update barebox networking stack for IPv6 support
> +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> +
> +Skills: C, Networking
> +
> +The barebox network stack is mainly used for TFTP and NFSv3 (over UDP) b=
oot.
> +Most embedded systems barebox runs on aren't deployed to IPv6 networks y=
et,
> +so it's the right time now to future-proof and learn more about networki=
ng
> +internals. One major complication with IPv6 support is neighbor discovery
> +protocols that require networking to be possible "in the background".
> +barebox' recent improvements of resource sharing and cooperative schedul=
ing
> +makes it possible to integrate an IPv6 stack, e.g. lwIP.

Several years ago I have tried to integrate picotcp network stack into bare=
box,
please see http://lists.infradead.org/pipermail/barebox/2015-June/thread.ht=
ml#23749
and https://github.com/frantony/barebox/tree/20190707.picotcp
This work can be revived after current picotcp state of affairs investigati=
on.

> +There are also community patches to integrate a TCP stack into barebox.
> +These can be evaluated as time allows.

picotcp supports both IPv6 and TCP.

> +This project does not require dedicated hardware. QEMU or barebox built
> +to run under Linux (sandbox) may be used.
> +

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

