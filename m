Delivery-date: Wed, 06 Oct 2021 13:00:38 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mY4f8-0007Nu-2n
	for lore@lore.pengutronix.de; Wed, 06 Oct 2021 13:00:38 +0200
Received: from [2607:7c80:54:e::133] (helo=bombadil.infradead.org)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mY4f7-0000aw-4O
	for lore@pengutronix.de; Wed, 06 Oct 2021 13:00:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:Message-Id:Subject:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ublu7mdc+0+bFuiomaTqnv0BQKzwqf+AwBssXE93Bxs=; b=VJ2G9EwNSpPeRP
	6shCLes8gfAR8azLZpDyuQIXTgxe1i7d0ArbHLssAB3MczZOmIfWcdM3NFwaP0o5vWQaYl0QnGc/H
	+iYF7VDxl6oy0RFhK9iRWDr9DLzRkXe4EriUMymfle5ML8f/XDeaFBm3tbPCm4ewEDBLvlePVQcjR
	+6i+1X4651SMfRGhXMoHel8H8KxvXsotWAWrTtY3iYFWMmH/G4UiQem1S6sJyIsRFxIpn4qUzwg7Z
	0+xkRkU+6QJGjilt7B5J6Xx26dpDlAWToxr49JQsw3iw1u7mX+Qp+6RzddYHpUVYOPY++YjTFhRaS
	O7g973DjRfa/eDptbRhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mY4dS-00Dv4z-4E; Wed, 06 Oct 2021 10:58:54 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mY4dM-00Dv4Q-CZ
 for barebox@lists.infradead.org; Wed, 06 Oct 2021 10:58:49 +0000
Received: by mail-lf1-x12e.google.com with SMTP id j5so8671260lfg.8
 for <barebox@lists.infradead.org>; Wed, 06 Oct 2021 03:58:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:mime-version
 :content-transfer-encoding;
 bh=CqAlBA+doyVVNsAZgsI3iz+x0jRmpnoYhp88sqUUZ/s=;
 b=IsCi/vOS1KVhy1YKqu4sJDVmQ/5ZI9yU7L/tfLYOCesOzI70JUpj74g/ss/kXKfkUi
 yGU+wBWB9Wycx1S7ir9TUFuP1lY+iw66vAbuXoWw+wC5ro1Tr9Kf9gopz8/vIW5yCdIy
 1pIfzFe+S9oHbkhVXlt2+Rro5FCOxIz2aDBAWuVGf7xaAosUyHkGSmwUZVMpRmrssRrs
 EH46p6x+E9j8u1269rrjANs7IC6lX1WO5J82TQT0SGdTWiZKUbTgUwvnCxxRkubOr4vX
 YToMvwp5US0XqUsAqXUFda7ljaREykh6yPcFUbuchl96pblwGrMGOOMKJZtrAgoWZ63S
 iGXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-transfer-encoding;
 bh=CqAlBA+doyVVNsAZgsI3iz+x0jRmpnoYhp88sqUUZ/s=;
 b=na7jX4cR+Txq5o2ny0Q1sV+aM9mUhZpWAFax2vyYi3RU/q87aFSSknvr2QFu8c2w6T
 o7e76K9dRjKuFHJPUZCkXhWTtFiQtxJwhBXG45O4odJeK+65jqZ1fazbi5E07HfF9Wm3
 Dho3oadyAhaUOGNdCQkhZ29358V5Ti1xYbTnt+LAVAz/LrbB5Dfa5JyTwQaHsw6jvgWi
 RkGQZsWCMIAJqfjb4dgyDhL5G7A4KRvlma3r6fP3o/WKE2jjbIywxiTLGCtdgGzXGKle
 Oa4AkiqRStoDv9ougIwLmWgYQUMX8cuYY0cGQGSbpbdnmVSlnA9Fv/W5KVI+UJzLCX4H
 RNvA==
X-Gm-Message-State: AOAM533I3rAMajPCySXGXghkiPZ6OzXaeF3DvZTWnCfJtGcX9CfjJKux
 SKiLRBiSnuhrofIShW0oMOZ4Qd43RKI=
X-Google-Smtp-Source: ABdhPJwFHDZUIBsYCWwNpvxQ4cLKONfvWzrQYvAx1Dt53GH1t6qL4i+01NXL6PNb2IjWb8MHzR6CJA==
X-Received: by 2002:a05:651c:1204:: with SMTP id
 i4mr27367938lja.445.1633517925802; 
 Wed, 06 Oct 2021 03:58:45 -0700 (PDT)
Received: from flare (t35.niisi.ras.ru. [193.232.173.35])
 by smtp.gmail.com with ESMTPSA id d1sm1274506lfm.75.2021.10.06.03.58.45
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 06 Oct 2021 03:58:45 -0700 (PDT)
Date: Wed, 6 Oct 2021 13:58:44 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Message-Id: <20211006135844.7361b72436286f5accbde0ad@gmail.com>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; i686-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211006_035848_455251_ECDA1C08 
X-CRM114-Status: UNSURE (   6.24  )
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
X-Host-Lookup-Failed: Reverse DNS lookup failed for 2607:7c80:54:e::133 (failed)
X-Broken-Reverse-DNS: no host name for IP address 2607:7c80:54:e::133
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	PTX_BROKEN_RDNS,RCVD_IN_DNSWL_MED,RDNS_NONE,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.2
Subject: inkscape 1.1.1 issue
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi!

I have just update inkscape from Debian repo.
It looks like inkscape-1.1.1 has new unexpected behaviour.

During barebox sandbox build process I have faced with unexpected
inkscape dialog. Also the '--without-gui=3D' option is depricated.
See my build log

barebox$ make
...
Warning: Option --without-gui=3D is deprecated
Unable to init server: Could not connect: Connection refused
Background RRGGBBAA: ffffff00
Area 0:0:3000:1500 exported to 640 x 320 pixels (20.48 dpi)
  LOGO.S   lib/logo/barebox-logo-w640.bblogo.S
  AS      lib/logo/barebox-logo-w640.bblogo.o
  AR      lib/logo/built-in.a
  AR      lib/built-in.a
  GEN     .version
  CHK     include/generated/compile.h
  UPD     include/generated/compile.h
  CC      common/version.o
  CC      common/imd-barebox.o
  AR      common/built-in.a
  LD      barebox
  SYSMAP  System.map
  OBJCOPY barebox.bin
  CHKFILESIZE barebox.bin
  LN      barebox-flash-image
antony@cinco:~/barebox$ dpkg -l | grep inkscape
ii  inkscape                                     1.1.1-2                   =
                amd64        vector-based drawing program

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

