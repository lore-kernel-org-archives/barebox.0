Delivery-date: Tue, 16 Jul 2024 17:50:28 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sTkRc-0000uP-36
	for lore@lore.pengutronix.de;
	Tue, 16 Jul 2024 17:50:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sTkRd-00037z-8h
	for lore@pengutronix.de; Tue, 16 Jul 2024 17:50:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KHJLDo2trmjt5wvGDXaYecd9Y7lM1omT0PDS2N5Eqqk=; b=IdfXbdkYmBCOMs
	NNmEYu5/SdCFUv8rT36Dxksf+yC5ZHH0m/vdGWwsPAyUA9X8+F6g3TyaIvwoZ8yM8KyzFXd/77wpT
	36jkYZWcny/Kmmh1mMyBBh5ZXChKGWRh6NGUlGxePD0tCdMwJj4svV4/cVjbal4XrKzy7ubXoQQfa
	PKBd02LwDRNoF3mkYqzRqOgGGxDOB5JNzu8x+Ie+4rPzRXtpB2Eim6AUcGegcRcHxYB9KTqIJ1il1
	EQUV3vFP6cxzq7mFrUi9/eyynqwEPR1BjDdEd4N0xopD6CPdWVZDZSpvfO/xVoLsQf09TC3t2EiwJ
	mOH2OoKYmNpb/qOwYspw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTkR1-0000000AwzG-0EFX;
	Tue, 16 Jul 2024 15:49:47 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTkQx-0000000Awy9-1ad3
	for barebox@lists.infradead.org;
	Tue, 16 Jul 2024 15:49:45 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-4266b1f1b21so39167065e9.1
        for <barebox@lists.infradead.org>; Tue, 16 Jul 2024 08:49:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sigma-star.at; s=google; t=1721144981; x=1721749781; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=KHJLDo2trmjt5wvGDXaYecd9Y7lM1omT0PDS2N5Eqqk=;
        b=rkr29ZDSwspmJeuc0QaC2FLfrEQJwYWVS024b7mFPXhgB3yMASbG2zRg1ApNOVYPHZ
         NU6SxOD0IHNg5b2MYcqAtDiylXS+eZPeveZDUWxsW1nnGjAro6IZ+dAqKerZaMrI55nG
         IX6pNCytA7t13bKqwfP5r+u+ANuZor8S8FqYtCamToEf/klXb4LsFl8OFC6ZeEmiJPC5
         oV0/NXhKNGMIt/fWz5Yl/UuXhuzx7ftbH2bYLO/KSrgQRs+HErTE6726sb6ukDvyF+wP
         oMTQZ597lzWxiz8g//Q3P38is95qj11Y8Eh7NQJLolX4lK68i6kjKCDVtM3DP1En3ZcK
         pCtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721144981; x=1721749781;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KHJLDo2trmjt5wvGDXaYecd9Y7lM1omT0PDS2N5Eqqk=;
        b=hcHIsEaWYVxGlP5wbsGjbpQF7nMi0Ay3LMiyjqOxVbUOIYM71P/Ss5MI296Dj2db5s
         /3cDXSnikts550E/djzX4BfiIBZk5ftW0zu6bV7zSDdhCA0ycTuCnm7eh3QqwkLR3Prs
         /iLJxsN4mavqCo7Uy4ujy+SYpPnLDPlh8TOe+TtEeGVsQPnA9KfiFin6XrNGW9DSTNz4
         u0gWNAu2xU1B25JnTxkLXHnqC28kfJ70aPdP7pgev8qEAz478yOP9sMgGq14FqGyUrO2
         qx4sh29q6A9+P9pr5v37L/67N33n+5WNzqkPIfPr1wH2Vk3BF8037MpAPVV84u1HVkta
         bwOQ==
X-Gm-Message-State: AOJu0YxcK4A1B4Wh8hFtM3bnxEW9jrGropon4uO2UU5Sd+L0BrUx/Cpn
	xcdOz9PAQk9QcDG2eJtEeDfKURZTdnFBzvGvj+iNqn+N/kQQ1ontMzv0kFuoi0ANeFrcHFGSU3X
	T
X-Google-Smtp-Source: AGHT+IGAEL31Idka56n8WK8QZHaid0acdThGvG8Iq9Rqq02PodmbsLUeKtGgF5D9HfgCEza59jjFJA==
X-Received: by 2002:a05:600c:19c7:b0:426:5e8e:aa47 with SMTP id 5b1f17b1804b1-427ba666c49mr18594515e9.4.1721144981188;
        Tue, 16 Jul 2024 08:49:41 -0700 (PDT)
Received: from blindfold.localnet (84-115-238-31.cable.dynamic.surfer.at. [84.115.238.31])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4279f23cc5bsm165409245e9.2.2024.07.16.08.49.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Jul 2024 08:49:40 -0700 (PDT)
From: Richard Weinberger <richard@sigma-star.at>
To: barebox@lists.infradead.org
Date: Tue, 16 Jul 2024 17:49:39 +0200
Message-ID: <2572594.vzjCzTo3RI@somecomputer>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240716_084943_748368_D041B542 
X-CRM114-Status: UNSURE (   4.71  )
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
X-Spam-Status: No, score=-2.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,RCVD_IN_SBL_CSS,SPF_HELO_NONE,
	SPF_NONE autolearn=no autolearn_force=no version=3.4.2
Subject: Various Squashfs Issues
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi!

While inspecting the squashfs implementation of Barebox I noticed
some issues and was able trigger heap corruptions using crafted filesystems.

e.g.
=3D=3D30712=3D=3DERROR: AddressSanitizer: heap-buffer-overflow on address 0=
x7f07bdaff800 at pc 0x0000004af3e2 bp 0x7ffdf8374a40 sp 0x7ffdf8374a38
WRITE of size 1 at 0x7f07bdaff800 thread T0
    #0 0x4af3e1 in __default_memcpy lib/string.c:638
    #1 0x534791 in squashfs_copy_data fs/squashfs/cache.c:257
    #2 0x534948 in squashfs_read_metadata fs/squashfs/cache.c:299
    #3 0x539d46 in squashfs_get_link fs/squashfs/symlink.c:62
    #4 0x509153 in get_link fs/fs.c:1919
    #5 0x512395 in trailing_symlink fs/fs.c:2230
    #6 0x512395 in openat fs/fs.c:2600
    #7 0x49926b in barebox_open include/fcntl.h:45
    #8 0x49926b in do_cat commands/cat.c:40
    #9 0x415e99 in execute_command common/command.c:62
    #10 0x40f25e in execute_binfmt common/binfmt.c:67
    #11 0x42cef4 in run_pipe_real common/hush.c:845
    #12 0x42cef4 in run_list_real common/hush.c:969
    #13 0x42b14e in run_list common/hush.c:1107
    #14 0x42b14e in parse_stream_outer common/hush.c:1734
    #15 0x42db7e in run_shell common/hush.c:1957
    #16 0x40a718 in run_init common/startup.c:322
    #17 0x40a7f2 in start_barebox common/startup.c:368
    #18 0x5490f3 in main (/home/rw/barebox/barebox+0x5490f3)
    #19 0x7f07c083e24c in __libc_start_main (/lib64/libc.so.6+0x3524c)
    #20 0x406f69 in _start ../sysdeps/x86_64/start.S:120

0x7f07bdaff800 is located 0 bytes to the right of 16777216-byte region [0x7=
f07bcaff800,0x7f07bdaff800)
allocated by thread T0 here:
    #0 0x7f07c0adc110 in malloc (/usr/lib64/libasan.so.4+0xdc110)
    #1 0x548e44 in main (/home/rw/barebox/barebox+0x548e44)
    #2 0x7f07c083e24c in __libc_start_main (/lib64/libc.so.6+0x3524c)


While implementing fixes for them I realized that these are all known
and fixed in Linux.

I suggest backporting at least these Linux fixes for squashfs:

01cfb7937a9af ("squashfs: be more careful about metadata corruption")
d512584780d3e ("squashfs: more metadata hardening")
cdbb65c4c7ead ("squashfs metadata 2: electric boogaloo")
71755ee5350b6 ("squashfs: more metadata hardening")
a3f94cb99a854 ("Squashfs: Compute expected length from inode size rather th=
an block length")

Thanks,
//richard

=2D-=20
=E2=80=8B=E2=80=8B=E2=80=8B=E2=80=8B=E2=80=8Bsigma star gmbh | Eduard-Bodem=
=2DGasse 6, 6020 Innsbruck, AUT
UID/VAT Nr: ATU 66964118 | FN: 374287y




