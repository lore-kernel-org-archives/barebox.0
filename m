Delivery-date: Thu, 12 Dec 2024 13:14:26 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tLi5K-007BEf-0u
	for lore@lore.pengutronix.de;
	Thu, 12 Dec 2024 13:14:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tLi5K-0004oL-6x
	for lore@pengutronix.de; Thu, 12 Dec 2024 13:14:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HnVVGBq/VFtLj6pmZQTlNUNrgiSbA+s49i7TpNo9w8Q=; b=iRJgJhRYLbdFoPjq07VHfpD5wU
	hUePsp7kcy8pBYCIpNYAaK9BXF2zF9gzuo6WgZDtqt9YJggF/4kb2iHZEBtuMD1+sBS5UO/C5jIv4
	pVGFjQajFHDZ6kNAwVEXlbfcJbbc7YQyvLqrF2qBlL/oe1rH6UdRxV34uRCdXXFqHVykg+ubYJ/R6
	tdl2rE/qaS4ZGopQYREPxgHiJ01xd7vBpQkT6XTMscOCyV6nA44CM4M9z8Wl2jUQgjOJsJPiCSxR5
	XkboWkLEOzJyHUs07Md7gUI+zpC9SJ8JwWdroA7JAh7mlkICz0G6NQJoH9wR6vvf/RsvZHWFpEdLI
	B5ZqmrjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLi4m-00000000L2k-2Kju;
	Thu, 12 Dec 2024 12:13:52 +0000
Received: from mail-pf1-x42f.google.com ([2607:f8b0:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLi4j-00000000L24-0fe4
	for barebox@lists.infradead.org;
	Thu, 12 Dec 2024 12:13:50 +0000
Received: by mail-pf1-x42f.google.com with SMTP id d2e1a72fcca58-728f1525565so603245b3a.1
        for <barebox@lists.infradead.org>; Thu, 12 Dec 2024 04:13:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1734005628; x=1734610428; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HnVVGBq/VFtLj6pmZQTlNUNrgiSbA+s49i7TpNo9w8Q=;
        b=A7mntn1Z3p6Fvm5XBV5+HnZ8cclRy+NvxhZOAHX8hWuS4V9sUoYtNeYfBAaolnzoxw
         09MHzZYdOZh8jnWqE8oLz9TTPfFTyB6O6uuglkSqiMzm9SxLYzxy/q+Ta3nq8gu0X77T
         shqZSPd9Ug3UVju8Y7VsX85seLiDAKoXmXXdqWI0N1yO0vlZ2wrCI9OSnIeN8XZawQtW
         w0d/yNFRXPT6J/i5Y3r3+oyPFesjmcuy6j82m/khABR9ncu1KgBfJ1T2kcpcYGayIlth
         kVF8s1mO7f4FPidZGB8I0tkGYfg7uTo/t6Lp1f36BqRusUjdhybNd7rdQLIbC5MoLyrU
         P2bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734005628; x=1734610428;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HnVVGBq/VFtLj6pmZQTlNUNrgiSbA+s49i7TpNo9w8Q=;
        b=ePAUi3NDwvi8ktBlsW+N5XFr2G602oSi8UBFkl86Hej2ZkAwnKa2q8cyv8p1ld9ILu
         ERxNpmkdyo7iUWeOkXKYhQtxEm0rsffk+3jQdV/WKdQq28jnCMF22M2vCjRMhCAxBT7R
         U2GM7LLsOMulvUn8PWIFk8WWRShfgGtAGWwSIBD7auZ9UlCQVRe1b17Fw2gtC+jC7FEC
         uu7xinKEiQ1GX9fRKw3nzCb4KkC5L8aDOpglGuflwxQO9z4r6EAbTdfZRi1D7gpwO+nd
         aW0uj9jFaarI8hZPGvhmbPucvXjrWOJJOwMfqHtrRyrzjtJsjFqdkarN3/n02u+JBlSh
         jluA==
X-Gm-Message-State: AOJu0YxzyjOZNkeh4i1vExD5Fex2wpWGEEDVE+WwRs+ZyZ4q1rhlpj3/
	mWhs9W6LEbTgoUTCuBw8t8pbMzX2bJPKy838ZIXL8mpv2Aa+7/XL9kIrvnZxRsxjGvXGdP0/y4S
	drXgqaRzOqoE0Sgi5HZ2ypvjYfFI=
X-Gm-Gg: ASbGncvPq8Xe2lGzyu8OU91yzd+wKDsIGL6ojf2d+0ADZx9TQ7VlCgvdeLUpwPybLNI
	b0b50HMCAR8sf3mYfProWZ7nOHcVrQbrBhMlTAJA=
X-Google-Smtp-Source: AGHT+IEo5IziI8ATeMQujulbYX7SKeqIVX+w9ik69nvPI3cK8D5VstgZbxJBo8nPYDRuay8R6jmxktV9ugu3jROTz+4=
X-Received: by 2002:a17:90b:1c8d:b0:2ee:d96a:5831 with SMTP id
 98e67ed59e1d1-2f12808a207mr10629935a91.30.1734005628365; Thu, 12 Dec 2024
 04:13:48 -0800 (PST)
MIME-Version: 1.0
References: <CAP1tNvQoUsjRNKMr-CZ_Q67-PKGfj_ZsoePeT3pgOe_DefriMg@mail.gmail.com>
 <Z1qm8cXe6SmEGxvM@pengutronix.de>
In-Reply-To: <Z1qm8cXe6SmEGxvM@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Thu, 12 Dec 2024 15:13:36 +0300
Message-ID: <CAP1tNvT57MCnpFT990o4G4ZnM+jFqKNny25gtiExxSjhWbmytw@mail.gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241212_041349_195429_839A4A1A 
X-CRM114-Status: GOOD (  18.43  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: Possible regression 2024.12.0 in parsing "aliases"
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello.

Yes, there was my bug in incorrectly merging commits for the i2c subsystem.
This bug went away, but another one appeared when adding mux-adapter:

ERROR: i2c4: failed to add mux-adapter (error=3D-16)
ERROR: pca954x pca95460: failed to register multiplexed adapter0

=D1=87=D1=82, 12 =D0=B4=D0=B5=D0=BA. 2024=E2=80=AF=D0=B3. =D0=B2 12:03, Sas=
cha Hauer <s.hauer@pengutronix.de>:
>
> Hi Alexander,
>
> On Wed, Dec 11, 2024 at 09:14:32AM +0300, Alexander Shiyan wrote:
> > Hello.
> >
> > After updating barebox to version 2024.12.0, an error message appeared
> > when loading
> > the RK3568 board. Accordingly, the I2C1 interface does not work.
> > In the previous version (2024.10.0), everything worked as it should. I =
did not
> > understand what the problem is, but I suspect that aliases are now
> > parsed incorrectly.
> > The system has an alias i2c1 (this is the basic SOC i2c1 interface)
> > and an alias i2c10 for the GPIO expander. Perhaps the problem is somewh=
ere here?
> >
> > ERROR: rk3x-i2c fe5a0000.i2c@fe5a0000.of: probe failed: Device or resou=
rce busy
>
> The culprit is likely somewhere in these commits:
>
> 79357f8b96 i2c: start dynamic I2C bus numbers at 32
> b474672545 i2c: get adapter.nr from device tree
> 5b167ad520 i2c: set adapter.nr explicitly to -1
>
> We now use of_alias_get_id() to get the i2c adapter nr. Which adapter
> number does fe5a0000.i2c@fe5a0000.of get and which i2c bus device has
> already occupied that number?
>
> Sascha
>
> --
> Pengutronix e.K.                           |                             =
|
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  =
|
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    =
|
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 =
|


