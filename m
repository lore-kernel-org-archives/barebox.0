Delivery-date: Sun, 30 Jan 2022 13:02:07 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nE8uD-000dxD-Dg
	for lore@lore.pengutronix.de; Sun, 30 Jan 2022 13:02:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nE8uC-0002RA-4s
	for lore@pengutronix.de; Sun, 30 Jan 2022 13:02:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:Message-Id:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=g4eh9xIfdbe+S0YJxeJ2S9IsEXducF6g3JAlUaYWYMA=; b=HovFNceEAAdkQN
	SS4Nca4l1RLV2v+AssNO21dpH5d3gc+SWaRhGGokZK0wEkKZ/c6bSpp2Pa74ZxwE7mjKPojpM9oz9
	k37sCisCRGfXuvsgIhurz6JDWFajurpmtVTORvrUvZjcp59y49vw2ApU7xyAmVOwI/gapUT29iW00
	v+e+EgzYyYyNUACDrNU7QaWwy7Q1r4N7KjE27uS8o8SjUNjblwL0SqojkQHkTGill6Ssqa8vRNJVF
	s57aS+JX3fDzELRvHmff9sZ9zscxQpVem9fVg50k9+pgmdyEB5MJEEpOkrVrVpXj1ARqaXPdkQI+r
	7/d4KX1+NSNbOfhzOU2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nE8sW-006SAW-Jv; Sun, 30 Jan 2022 12:00:20 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nE8sR-006S9u-En
 for barebox@lists.infradead.org; Sun, 30 Jan 2022 12:00:16 +0000
Received: by mail-lf1-x132.google.com with SMTP id a28so21117438lfl.7
 for <barebox@lists.infradead.org>; Sun, 30 Jan 2022 04:00:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:mime-version
 :content-transfer-encoding;
 bh=yZV0dpQU+ymRSf7SwcOjUMxw5DOLNNn2o9Hohqmi1B0=;
 b=DxbdxTw0OojETOxuIJstKViqkmm+sNtV4dY8u5hPVkqjb5Ptx3SLpKgKYLgG/bs/jH
 uhl4rfedVpvWUH7oeZ3OtOYIx2wgwuqJkhkC28ZBI36Gw0xwZvYytqf1rlyVb/pR3U9D
 WWX3cNRHEy9aT4L7fKZSsJtDykMf9pdza1G/PJGaNFv+/fe1gtZizybrRaME4yF/vp7C
 SvMppps4T8X7duyirkULrqcfWefosn7I2uz3WNzmXxKs1p2x5Cc0ewHMCmk/dakMqT9O
 Wji73UZAgwivnDNTS4/1bYt2FObnMBiaCYfpTSDOC0O/rY1YJxoHjVOWA1XrXSZeQlnJ
 Tumw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-transfer-encoding;
 bh=yZV0dpQU+ymRSf7SwcOjUMxw5DOLNNn2o9Hohqmi1B0=;
 b=nOnNH4xxaCskHve7RLbAopKu3uBl2p62OX2M4zBgSMdfjdHsrCv9F/KwY0JpyqiqxK
 SrzXSz+CYWs6VKhjXfrm5SGwu7ZicSQ+ltP7mMj77KXQeQQQPZqkmHH0FVGAIG8DtVBM
 lL64eELxwss2GH9FYszquflqB756ZHnvcL5e7CYTEp5LpabT8SaYnpUV17DMERQIqOkV
 c/yJRPQ7AsJ2DxyNzjdL9cxjkKilhSGBYWrx3SxP38O3VEyECUksuZctwdi1I9Gw9DI9
 bX3CoPl1wJVN7gvjo7HrxvAmIAPk7KCJU/S3I09cYn9c2yncOLhg1RkgT43sAOerE8FY
 Lv7A==
X-Gm-Message-State: AOAM533wi3EZ0kTxDPBhwShnAvw+tkQueBk5fypWsGFfkPPzwYyAcLEZ
 ECWqdoN5G6aRz0n4FyQKFbI+YKjgNB8=
X-Google-Smtp-Source: ABdhPJxm+Y9XelQqYCuR4+H3/9hPOHBY6eCIAhWQKj8XT5eLUw+55LodZjDFTXsfK6ldiq9WnPvJOQ==
X-Received: by 2002:ac2:46c4:: with SMTP id p4mr12654841lfo.75.1643544013734; 
 Sun, 30 Jan 2022 04:00:13 -0800 (PST)
Received: from flare (t35.niisi.ras.ru. [193.232.173.35])
 by smtp.gmail.com with ESMTPSA id b7sm2932195lfi.125.2022.01.30.04.00.12
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 30 Jan 2022 04:00:13 -0800 (PST)
Date: Sun, 30 Jan 2022 15:00:11 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
To: Sascha Hauer <sha@pengutronix.de>, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-Id: <20220130150011.e8b22a088b654f6a0b0f96de@gmail.com>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; i686-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220130_040015_521413_5F07F70E 
X-CRM114-Status: UNSURE (   5.53  )
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
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: RFC: Gitlab CI for barebox
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi!

I have made simple Gitlab CI for barebox.

Gitlab CI runner setup instruction and
the source for Debian 11 docker image can be found at:

  https://gitlab.com/frantony/barebox-gitlab-ci-runner

Sample gitlab-ci.yaml config file:

  https://gitlab.com/frantony/barebox/-/commit/b1ed597d8e67c8f76f4f98cd1c66=
05b936cf2471

Corresponding gitlab pipeline results:

  https://gitlab.com/frantony/barebox/-/pipelines/459422690


Some notes:

  * there are several "images size > maximum size" errors during 'build ARM'
  * fake firmware blobs for ARM are used
  * 'build doc' produces sphinx generated html docs archive artifact
  * 'build ARM/MIPS/RISC-V/X86/sandbox' produce log/ directory archive arti=
facts
  * no support for kvx, openrisc and powerpc

@Ahmad

I suppose we can add your qemu barebox/test/emulate.pl tests into CI.

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

