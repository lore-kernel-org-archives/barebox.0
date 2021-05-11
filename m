Delivery-date: Tue, 11 May 2021 15:05:15 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lgS4Z-0005Qs-0D
	for lore@lore.pengutronix.de; Tue, 11 May 2021 15:05:15 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lgS4Y-0001Cm-5g
	for lore@pengutronix.de; Tue, 11 May 2021 15:05:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:Message-Id:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vzQbGWvBOFzKV6WUrntEA3w9RuBG+b0wdMXuA6uAlZ0=; b=RO9IJtKlvyp2YURf4Ss/mKvMy
	DAEZ0DQxdinR2q/KeNte69RU5wLKJIyCqew3yVka8wW65zeYSP3z2+G+dXoPicm3PqC+gyQTqR8rV
	NrsTlGQANMjVb9BnWUDYTT91k3FACGv7rtor/oIDgRwuoHAgjwlre0DMVt9HsZ5bCK3y8FSrSOgB6
	JC8NiMkjIllrZFTkgXdJ21BcE1zZjAmsM5IFwT1PCU5jsvW1PQKZL6/A5C+PVLgnh7ztZN/gxJFj2
	NsIEenrSE45AN2MecXVev3xRDsVzvjmOm+lGcyA6otsFvtdknXKgEshZlS6q4Km4iww/LsvDahhmS
	oe+03RGoA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lgS3K-00HYuR-Eq; Tue, 11 May 2021 13:03:58 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lgQJ2-00H5AM-4P
 for barebox@desiato.infradead.org; Tue, 11 May 2021 11:12:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:Mime-Version:References:In-Reply-To:Message-Id:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-ID:Content-Description;
 bh=KxGCvlKdQQ8X0BDH14QqcH0RukEH3yCSLaZgleb9Ewc=; b=gV/e9UBAVKChjm8dxqn2HcZsas
 bIG8SwpPhBMelVN/U8YCLes900X6hI7FMLru3QP72WQwkeJr48JDhOfjOBbqzy+LYJD4WjbKTZ8ey
 vRpZnF0mE1ZqZKPWnUFcEKqm1qPJwIjPz8oWPRxGTm4V6zp+8BFQHupVIXJPLV8lksliBQR2J6Ttv
 fjUfBPhvgFyJWn+Dy6XSpgoFKbJDoX8mfEBd/Z4KzDF4c8isK2DwB++el/0opt+qesFmJxNh1a0nb
 U/ZushO8rhITGK1KdUV0afU4pY38Nb1MJrveP6p6ikpN7uRywa8SJk5sCORDt/P7u7rUtFNz+0fqJ
 719ryBtA==;
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lgQIz-009Vcr-En
 for barebox@lists.infradead.org; Tue, 11 May 2021 11:12:02 +0000
Received: by mail-lf1-x12a.google.com with SMTP id 2so28055832lft.4
 for <barebox@lists.infradead.org>; Tue, 11 May 2021 04:12:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=KxGCvlKdQQ8X0BDH14QqcH0RukEH3yCSLaZgleb9Ewc=;
 b=hsySCGTOWmY5nUEXqGr6Vho3ewYfl0g7OjPkpKQx4sLTlwfwn4JmppS0qdWlMwhJ6n
 6Vt6V6vZwvlOcz8So4w90bN5SSBs7Bf+78BXcjNSBp/BkW1BjIQG1Ltihn2ehHB2GvSO
 0iolkG6FJWhydbig1gNsB6jYtcYjAg9yfVuaahryJVRJdto7uXRcRl1magU3m0A9ZbrO
 9HPW6QGgMzOfU+54HU7NvVsE4wQ8nJ/gXZByr3xymdTlzWBZRf4woSIXjAqCPm97Il3/
 IgSXYJzXYe/jnKPmgmBB2z2S3WJYgHS6fb7vRUp0yJd4Xn2elhsvKIMQO5iruRwgnDku
 gwXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KxGCvlKdQQ8X0BDH14QqcH0RukEH3yCSLaZgleb9Ewc=;
 b=lxrubo/hlnc8Ih+M2KR0HnAF3GXOyydQSRCPKu5bTYfX6YZ4K/+Rq//tzIYOSMlqeu
 qk0K1hPY6/TPexXYaKenRjJAE4HlK8iex9lKUC1La8Yspg0NjytZ0bWJmliUYSIPfhi8
 kJXAbf9X7QOm98IV5KWQqIQVvSB9/peXqo8UGZpZOuefsVNwaPbK1R74lISUiBeebVhS
 ZjUT/jBj/Yn9+qs0YjQbdRkBiCRAX2JrEXEuTf8r1YGJ0g6G6Dw0IarIoIGGqqAKYAso
 DhgxeULrxynOmbgDqSyu5h4mKz9wTctFEULMkRBskDmR70mP4vELGK3vRUai6Ty0od/a
 yTpA==
X-Gm-Message-State: AOAM533ZRmNTCqxPsgTLjfcRMMPEMdFS1Uzc4Z0rgL6YDEmVwdUIkYFZ
 MHmI1lZJVtOZ/HkeGdErggN8POLge9eHeA==
X-Google-Smtp-Source: ABdhPJybRsHhPluRmYWGFosNMyDumZqsh3zTCzTy1r16zYBXGnqiKd8bEuwKd78ggy0fAkBzxfXT+g==
X-Received: by 2002:a05:6512:3e9:: with SMTP id
 n9mr20465766lfq.207.1620731519491; 
 Tue, 11 May 2021 04:11:59 -0700 (PDT)
Received: from flare (t35.niisi.ras.ru. [193.232.173.35])
 by smtp.gmail.com with ESMTPSA id g15sm2607321lfj.197.2021.05.11.04.11.59
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 11 May 2021 04:11:59 -0700 (PDT)
Date: Tue, 11 May 2021 14:11:58 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-Id: <20210511141158.17cebe7b03b888a1a8bea331@gmail.com>
In-Reply-To: <20210511064144.4930-2-a.fatoum@pengutronix.de>
References: <20210511064144.4930-1-a.fatoum@pengutronix.de>
 <20210511064144.4930-2-a.fatoum@pengutronix.de>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; i686-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210511_041201_513366_C2A09EEB 
X-CRM114-Status: GOOD (  13.63  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/2] RISC-V: extend multi-image to support both S- and
 M-Mode
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, 11 May 2021 08:41:44 +0200
Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:

> We can't currently mix S-Mode and M-Mode images in the same build
> and there's no straight-forward way to determine which mode we are in.
> =

> Move the decision on which mode barebox is targeted at out of Kconfig
> and into the PBL. PBL code can call either barebox_riscv_supervisor_entry
> or barebox_riscv_machine_entry to signal to barebox proper which mode
> it's running in.

It looks like this comment is slightly outdated.
There is neither barebox_riscv_supervisor_entry nor barebox_riscv_machine_e=
ntry
inside the patch.

> Currently the only user of this information is the
> RISC-V timer clocksource driver.

Please add necessary mode check to the sbi_init() from arch/riscv/lib/sbi.c=
 too.

> Any new code that does IS_ENABLED(CONFIG_RISCV_SBI) or
> IS_ENABLED(CONFIG_RISCV_M_MODE) should also be adapted to use riscv_mode(=
).
> =


-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

