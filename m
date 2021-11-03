Delivery-date: Wed, 03 Nov 2021 18:37:41 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1miKCj-00010p-TU
	for lore@lore.pengutronix.de; Wed, 03 Nov 2021 18:37:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1miKCj-0005Hh-3C
	for lore@pengutronix.de; Wed, 03 Nov 2021 18:37:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:Message-Id:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LPK8okAN6FomPG5aLuoClk/b3HND35hTXN8nuUUfToc=; b=a23gbGVzNa0IGJ
	AyfKb1xUe/wBPPUQnsb9Ok7tlLK03xBqrsEbJAHa34xNo02JNjEZ29yEwAV1FFP1AACbgFDkg7rfU
	Dydl3Pz7Y1EoUvqc//YChw4oD+jxrv73geCCMQg2KlnqnHnp4u6glrAAvLdq8VP8SK/0TDuCKyDzY
	0SeL3IkcvcoH88IRYuICFsdcHQd8ub7iS88bGXNwAIfWIqfqkN4AEvAxGRGmi/Uo2eqD9jVTEKjLn
	gkb1mB4nJggpIC5BoTVPyXgptQ6goID+Ft/IL6Hzw1Sy0dGf6jjXNuyZVnaFJ6y82077ZrtA6J7cS
	R2NPdgt81yLjk4FMpDUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1miKB5-005xsH-FZ; Wed, 03 Nov 2021 17:35:59 +0000
Received: from mail-lj1-x233.google.com ([2a00:1450:4864:20::233])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1miKB0-005xrK-RD
 for barebox@lists.infradead.org; Wed, 03 Nov 2021 17:35:56 +0000
Received: by mail-lj1-x233.google.com with SMTP id g3so5120704ljm.8
 for <barebox@lists.infradead.org>; Wed, 03 Nov 2021 10:35:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:mime-version
 :content-transfer-encoding;
 bh=9+2gymRdLuPZHJST4N7M5CEhuuO5W9zi7iv8qEVYihE=;
 b=AZg4isXInuM2r787zzEqy4cjvf/qzr3VFjO+Wcyqn01b3aFN+IT8dwtHDuuqj8Z91L
 G+8LI2KhiTut5y5rlmgZfTYq1I50lYxm2tN4lxkMPasPgNz24IPgWAIz1VC47TmoIqUg
 +vka9oMw7MwJfaEcaQBB4o3HGhrKnR4odB6xRtiNewrXVa1OS5B6ItGzqDj+B+wUMKVU
 TLbecYC2saFitgX5vcgJfX2cG1GyA/G1aOmj98eZ5sO30t93BOCJnpqzvte73AQlp5cJ
 +A/A1MHzqxtREROBtRlqocvVg9TP8j2SlZjgj0jm5XzJeut40AZEa6S/ByVm2e1XFl/P
 YWqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-transfer-encoding;
 bh=9+2gymRdLuPZHJST4N7M5CEhuuO5W9zi7iv8qEVYihE=;
 b=4DNckm8uV8dCHBVtE2692t5FDf3n/5h5J2tB2Ue6haaS6WjgHsr/RqCffWGYldIj3u
 pCfz7bNTII0wWt/9uG61904AQqzjoifr7jVD3Bmncu739PhGkfkLV/qQdxP4CAiKBpDQ
 CBA4tgRvInQcn0S69YfIhAxTaY4biC2uiZmmFeSchRYMXVi09rNu4lOYndgatiRtboEh
 dsO/I7M9oyDk2vJvzIbWLnVCyfA/oWHJRhZFy+YTvksLQB3kSqC7R/SxHINn8IBtGFdn
 se9TEdrk6LGqz0bwd1PpULEOPg4ACo8Ich18B113678AwkML3pl3guwEz5DlVcAr8GV/
 UM1w==
X-Gm-Message-State: AOAM530m4Fq9UscEkxv2Vlj4DMyiVwq1O+/9JneUI+i5K4/j31BBfjng
 LD8U1J7zbguJS/IZCLze3vLnS7Hj2dw=
X-Google-Smtp-Source: ABdhPJw9roAk8/Ns5tMjCkVVrXaVwGbUtHa54jGwIkDVCQg+thl/QdhoS9p99EaioeUBXTk/SbMtjA==
X-Received: by 2002:a05:651c:612:: with SMTP id
 k18mr6324196lje.383.1635960949459; 
 Wed, 03 Nov 2021 10:35:49 -0700 (PDT)
Received: from flare (t35.niisi.ras.ru. [193.232.173.35])
 by smtp.gmail.com with ESMTPSA id r14sm79633lff.88.2021.11.03.10.35.48
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 03 Nov 2021 10:35:49 -0700 (PDT)
Date: Wed, 3 Nov 2021 20:35:47 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Message-Id: <20211103203547.ee214b1d8bf7987970a3d904@gmail.com>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; i686-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211103_103554_902377_B9939772 
X-CRM114-Status: UNSURE (   7.62  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
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
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: do we need regmap-i2c in barebox?
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi!

I have made draft version of pcf85363 i2c rtc driver for barebox.
I used drivers/rtc/rtc-pcf85363.c from linux kernel as a prototype.
The linux driver uses REGMAP_I2C linux feature. Barebox has regmap
framework, but no special i2c regmap features.

In barebox source tree I have found drivers/mfd/stpmic1.c which
uses regmap for i2c device without REGMAP_I2C linux feature.
So I have just stolen i2c regmap code from stpmic1.c for pcf85363
driver. I'll send pcf85363 i2c rtc driver for barebox in a separate
message.

Is there any sense in porting drivers/base/regmap/regmap-i2c.c from
linux into barebox?

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

