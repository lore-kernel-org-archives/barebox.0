Delivery-date: Tue, 30 Sep 2025 15:26:18 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v3aN0-002nAM-1F
	for lore@lore.pengutronix.de;
	Tue, 30 Sep 2025 15:26:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v3aMz-0003Av-Hg
	for lore@pengutronix.de; Tue, 30 Sep 2025 15:26:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VTJkJb1vMohGTbikt5C6bXTB5qxk4N+oInsi4+uMXLE=; b=r8VYmmMntnUxI5
	bQ5dggGdfc41dzuz5gYLC23jDz4dcgjkj1JfrfYu9EnV+FK6hjBJ+mhKWoAijVF19Fq+eDh2yZv+V
	GMbelA4LNXXYc+8wQb9dEoYeXN4OT/I1Eer7tEHHNFqZZP0HKuVjKWQFlMTEwioxg3tRxY57964Zu
	rQeQJWBv/29A5u6GrQklspmxLLH8cHNUscXrFlAS9PaCCLKbi/6ut38BAVNhf6rdu3e8s4WOnWYAM
	ki7mjUhNvNsr2n2QUKlzeqOSfk9d67Q6SgSVXNj/Hys+aaRIboDpczvNC5Vzoxu0qKMIGIx1uSlRz
	5v1B2DWnXzRNV2mTz3Vw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3aMR-00000005OoF-1INx;
	Tue, 30 Sep 2025 13:25:43 +0000
Received: from mail-pl1-x62b.google.com ([2607:f8b0:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3aMO-00000005Onv-1SNd
	for barebox@lists.infradead.org;
	Tue, 30 Sep 2025 13:25:41 +0000
Received: by mail-pl1-x62b.google.com with SMTP id d9443c01a7336-26d0fbe238bso45653185ad.3
        for <barebox@lists.infradead.org>; Tue, 30 Sep 2025 06:25:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759238739; x=1759843539; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VTJkJb1vMohGTbikt5C6bXTB5qxk4N+oInsi4+uMXLE=;
        b=gn4byREwTWBQPoa+i706oQ1TjPPkycokEC9ln/tlO6EX/PmK3SHLWofmlpYVSFPYim
         6hXnAC65Hje5UWzeoGdtpdpsEFjuHkVS60lAfKH51B8sr4ujBO+JJhsZqKNT7VKVX0XC
         OHUEZ9/jegd+iDGjma7HzrjrlYB+kaGIzKm8y2GZmVv/nGRixcJ8oH1i/vanheHA+8sx
         bu847KLLoDJ6irHkIYgd8Zo1qHOsc2FNxjwTCFaxYTOG67GYwxsynxeW5Boz+9bE2mGz
         o8A9mNUyirTI0FAjN49bnD8t0+18BQUooGryKgr3chTKyXctm1jaqkPcWJ3IX2FwhvS4
         cOQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759238739; x=1759843539;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VTJkJb1vMohGTbikt5C6bXTB5qxk4N+oInsi4+uMXLE=;
        b=ipgKaAISOiPPt3ZS/+5hCMR8vnTLfC2BioVRL6E0wu1/xWWIFZelAbjmu31VP9MJ+D
         9bM2kBMV32sTMp7ZlnAZtuOJ5MmDdc+2e+lNGzLR4g5oxEq+LPpf7UTSlT7n38x7GRLs
         Ryqik79zY5zTM68eG47ZR+kfbZIa2/4jy5fYaRg/2VN7KlkZIpB+qsdzdD/BFnwYV2YQ
         9luyqKMgifZBgI1mgon8hFmFCG2MWBsXZVmwioiHNS6sGLv6YaSlGFt/10MN2WKR3qwk
         t39PwxT9GiP79Au9deDRiUnsa4/UU2yF+jH62zIaePzkZtg69CUqmu0OasxOcN4T4vew
         vxrg==
X-Forwarded-Encrypted: i=1; AJvYcCU1TLiY/rTYdTHybPlGmbTALlIPrzn71Ye7Zrr5VDaOBCdRGWAZW9S8xk9nTfBxpgeSa75jbzYn@lists.infradead.org
X-Gm-Message-State: AOJu0YwXL5DDf/skJdYvbhBenuB8s5g0D1LPmn2Ajxb2SiBSEHjikO0B
	pc/xw3e74j5kvrOvFQ/tmM6ailSjlsg+nV77hHSqPOhMW0vh/6x61mAFfVRHSOIJAiyXfBO+DF1
	BTH2F4MRQgdVb0fYhMR39FlRlQjHZ4NiaJ7lo
X-Gm-Gg: ASbGnctnfHzG2MIGrU4F9RY5NUaMqZFysd2NUc4mi4y1iwReWTpMEDUl2QQzspcMFYT
	2X4leKKRDZw/sSAyC3GzFmV7QVofDR7kHZLcy7Jp9rTqrB7/GjNarApfTYDIbC7m7F8YiwwC+EX
	ZGaQUnosWiVjqRYiMxAWe2i4DxIksjrRV6a6Q/Wl0o/r9xnBHn4iuTAQGYeNWn3E4ydT4t20ds1
	WrdL7RQN9kZhPEhvVfihkexV8EAm/aSUCdUOP6W2D4=
X-Google-Smtp-Source: AGHT+IGBVJjL2XLKvhJVMvgoIIQY9z5M8+pIhKWCIGuh4icpj51nUzBjSmnE++A9u5r5X6TFRvfzqXsNRoWoSc5dwXg=
X-Received: by 2002:a17:903:19ec:b0:266:2e6b:f592 with SMTP id
 d9443c01a7336-27ed4a374a8mr278381815ad.25.1759238739471; Tue, 30 Sep 2025
 06:25:39 -0700 (PDT)
MIME-Version: 1.0
References: <aNugWfoJR_2AirEx@pengutronix.de> <CAP1tNvTR9SkajSZaeh2Jsb_FNu=w87Et5oAcc1=FoZiK=_-rCQ@mail.gmail.com>
 <00e828e8-be6f-40bf-b83d-026fdf0fbe8a@pengutronix.de>
In-Reply-To: <00e828e8-be6f-40bf-b83d-026fdf0fbe8a@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Tue, 30 Sep 2025 16:25:26 +0300
X-Gm-Features: AS18NWBANZTDNyIZUISZD-dm3QWsT2hrcJpryI2Fc9Lnxx5RuWwmmCVSx9yVfJ4
Message-ID: <CAP1tNvQVbf3OSd22RfZzRDTs5c5m_dbgodqZ9+1kRD=U2SmSRg@mail.gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250930_062540_393555_7A2C0D42 
X-CRM114-Status: GOOD (  10.95  )
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
Cc: Barebox List <barebox@lists.infradead.org>, Michael Tretter <mtr@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: v2025.09.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

shc@shc /home/ARM64/barebox $ LANG=3Den PATH=3D$PATH:/usr/local/usr64/bin
make ARCH=3Darm64 CROSS_COMPILE=3Daarch64-buildroot-linux-gnu- V=3D1 -j25
make -f /home/ARM64/barebox/scripts/Makefile.build obj=3Dscripts/basic
rm -f include/config/kernel.release
echo 2025.09.0""-00661-gf714704aed30 > include/config/kernel.release
set -e; mkdir -p include/generated/; trap "rm -f
include/generated/.tmp_version.h" EXIT; {      echo \#define
LINUX_VERSION_CODE 132712704; echo '#define KERNEL_VERSION(a,b,c)
(((a) << 16) + ((b) << 8) + (c))'; } >
include/generated/.tmp_version.h; if [ ! -r
include/generated/version.h ] || ! cmp -s include/generated/version.h
include/generated/.tmp_version.h; then : '  UPD
include/generated/version.h'; mv -f include/generated/.tmp_version.h
include/generated/version.h; fi
set -e; mkdir -p include/generated/; trap "rm -f
include/generated/.tmp_utsrelease.h" EXIT; {   if [ `echo -n
"2025.09.0-00661-gf714704aed30" | wc -c ` -gt 64 ]; then echo
'"2025.09.0-00661-gf714704aed30" exceeds 64 characters' >&2; exit
1;fi; echo \#define UTS_RELEASE \"2025.09.0-00661-gf714704aed30\"; } >
include/generated/.tmp_utsrelease.h; if [ ! -r
include/generated/utsrelease.h ] || ! cmp -s
include/generated/utsrelease.h include/generated/.tmp_utsrelease.h;
then : '  UPD     include/generated/utsrelease.h'; mv -f
include/generated/.tmp_utsrelease.h include/generated/utsrelease.h; fi
if [ -f /home/ARM64/barebox//config.h ]; then : '  SYMLINK
include/config.h -> /config.h'; ln -fsn /home/ARM64/barebox//config.h
include/config.h; else [ -h include/config.h ] && rm -f
include/config.h; : '  CREATE  include/config.h'; touch-a
include/config.h; fi
make -f /home/ARM64/barebox/scripts/Makefile.build obj=3Dscripts/dtc
mkdir -p .tmp_versions
make -f /home/ARM64/barebox/scripts/Makefile.build obj=3Dscripts
rm -f .tmp_versions/*
make -f /home/ARM64/barebox/scripts/Makefile.build obj=3D.
set -e; mkdir -p include/generated/; trap "rm -f
include/generated/.tmp_asm-offsets.h" EXIT; {   echo "#ifndef
__ASM_OFFSETS_H__"; echo "#define __ASM_OFFSETS_H__"; echo "/*"; echo
" * DO NOT MODIFY."; echo " *"; echo " * This file was generated by
Kbuild"; echo " *"; echo " */"; echo ""; sed -ne
"/^->/{s:->#\(.*\):/* \1 */:; s:^->\([^ ]*\) [\$#]*\([-0-9]*\)
\(.*\):#define \1 \2 /* \3 */:; s:^->\([^ ]*\) [\$#]*\([^ ]*\)
\(.*\):#define \1 \2 /* \3 */:; s:->::; p;}"
arch/arm/lib/asm-offsets.s; echo ""; echo "#endif"; } >
include/generated/.tmp_asm-offsets.h; if [ ! -r
include/generated/asm-offsets.h ] || ! cmp -s
include/generated/asm-offsets.h include/generated/.tmp_asm-offsets.h;
then : '  UPD     include/generated/asm-offsets.h'; mv -f
include/generated/.tmp_asm-offsets.h include/generated/asm-offsets.h;
fi
make -f /home/ARM64/barebox/scripts/Makefile.build obj=3Dscripts/imx
make -f /home/ARM64/barebox/scripts/Makefile.build obj=3Dscripts/mod
# HOSTCC  scripts/rkimage
gcc -Wp,-MD,scripts/.rkimage.d -Wall -Wmissing-prototypes
-Wstrict-prototypes -O2 -fomit-frame-pointer -std=3Dgnu11 -include
/home/ARM64/barebox/scripts/include/defines.h
-I/home/ARM64/barebox/scripts/include/    `pkg-config --cflags
openssl`   -o scripts/rkimage scripts/rkimage.c   `pkg-config --libs
openssl`
scripts/rkimage.c:16:10: fatal error: openssl/core_names.h: No such
file or directory
16 | #include <openssl/core_names.h>
|          ^~~~~~~~~~~~~~~~~~~~~~
compilation terminated.
make[1]: *** [scripts/Makefile.host:107: scripts/rkimage] Error 1
make: *** [Makefile:1095: scripts] Error 2

shc@shc /home/ARM64/barebox $ openssl version
OpenSSL 1.1.1s  1 Nov 2022
shc@shc /home/ARM64/barebox $ pkg-config --cflags openssl

shc@shc /home/ARM64/barebox $ pkg-config --libs openssl
-lssl -lcrypto

=D0=B2=D1=82, 30 =D1=81=D0=B5=D0=BD=D1=82. 2025=E2=80=AF=D0=B3. =D0=B2 16:1=
5, Ahmad Fatoum <a.fatoum@pengutronix.de>:

> On 9/30/25 3:10 PM, Alexander Shiyan wrote:
> > Hello.
> >
> > shc@shc /home/ARM64/barebox $ LANG=3Den PATH=3D$PATH:/usr/local/usr64/b=
in
> > make ARCH=3Darm64 CROSS_COMPILE=3Daarch64-buildroot-linux-gnu- -j25
> > CREATE  include/config.h
> > HOSTCC  scripts/rkimage
> > scripts/rkimage.c:16:10: fatal error: openssl/core_names.h: No such
> > file or directory
> > 16 | #include <openssl/core_names.h>
> > |          ^~~~~~~~~~~~~~~~~~~~~~
> > compilation terminated.
> > make[1]: *** [scripts/Makefile.host:107: scripts/rkimage] Error 1
> > make: *** [Makefile:1095: scripts] Error 2
>
> What's your version of OpenSSL? Can you run with V=3D1 and paste the full
...
> >> I am happy to release barebox-2025.09.0.
...


