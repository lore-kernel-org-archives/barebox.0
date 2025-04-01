Delivery-date: Tue, 01 Apr 2025 08:23:34 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzV26-006snq-1k
	for lore@lore.pengutronix.de;
	Tue, 01 Apr 2025 08:23:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzV25-0007aB-SJ
	for lore@pengutronix.de; Tue, 01 Apr 2025 08:23:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:Subject:
	Message-ID:Date:From:MIME-Version:Reply-To:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=GYI6ECWTit2moYAcikmh9XQZ7k/nJDNS4fwHl0Yks9g=; b=V33vZ76TcUdbCt2kjrSSXBwDkB
	zaZwEfX7BDglnU/zKVGJ3EZvr4tKY0b15vRA4FWuwvBKtyeB1DdKbuRg1VbQaydu1jvAeFWiwH8P0
	wDeibceeCDiDA89nKElkeYZkge5TZudgLj5fgsaMDh0u99f7gKqJGqfgiTpSnLqw1CFOyFrUW2aOj
	r658FOKghXeQWz8UAloOcrWP6RF5lURM+tnJUGK9kqMV8n8ZnYQnTHEhYx85YWWSRi1Clf3Li8vDh
	+nOC+K4lmT9nos/xYaknjeU8hGELbWWKxuEQIkXvnX7k/qcw1ev2f+jYu70H1t+Z8VExoqazwWiz+
	Fv8rL+Ig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzV1Y-000000025Hr-1vWI;
	Tue, 01 Apr 2025 06:23:00 +0000
Received: from mail-pj1-x1036.google.com ([2607:f8b0:4864:20::1036])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzUzM-0000000254U-43cx
	for barebox@lists.infradead.org;
	Tue, 01 Apr 2025 06:20:46 +0000
Received: by mail-pj1-x1036.google.com with SMTP id 98e67ed59e1d1-30362ee1312so9172142a91.0
        for <barebox@lists.infradead.org>; Mon, 31 Mar 2025 23:20:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743488443; x=1744093243; darn=lists.infradead.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=GYI6ECWTit2moYAcikmh9XQZ7k/nJDNS4fwHl0Yks9g=;
        b=PePXI6iR7XDr+sCIyVEQ0ctmhI6NJz23LpNqhiq93luyJNYBDpF5+css/mBfHhh1tE
         kaxLaMAoMhrWh/JeMlTo1gwWaaVq+2XgEHvcqYRUEtNEkIQvn9uNyeYdAcxJevz/DC8D
         R8QQLvM3sf3YFM/VFKuHEqhQ5XudKeUeGJeI5qHvWIAe05geYdBImF834EAGDBA0t/SZ
         az79xfEFQcMBXIxmf3liymM/J0SU32LqURiS8uX+6kqCnfmrj10u7rXZkzS0sAnZrnrB
         r7Cauum9JR097OE4E8ytiD9aILysHDlZrcJ0HEVqQaBT61CzYdFOJvg/e19azzPR/99G
         KsTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743488443; x=1744093243;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GYI6ECWTit2moYAcikmh9XQZ7k/nJDNS4fwHl0Yks9g=;
        b=ZT+MCeRs87K6MF6kYA9kBndJ6bdpdDn5H9RfWXZk+SRWbCkxlIc7Pn1lAEJaoCzwTN
         jwVrz1q0ExGyHX18WQOho5QrsrXSPQ93OtWtzsu7v3Uc0txDtd3LYQOa8w5Rma+Fq4uC
         9C10oi1OA/M6CEETSkHHIHQYNp/iVZqcHo8wEkvTJOpy7agMMtoaFbWuXYUa35hNUo7Q
         z9YRbKR7UPlw+9KubpH4UdAdv2MCRx6lTxD1iDHIP4KrSOQ2wtOl6g7MIvBfsahSLFw2
         rZiC59ueS8fUqI3+AZYnSTgb0NIuNvL6F2s1xtSnAyu35INSYIVMPib2Bvyn3BDqyBoT
         0Lcw==
X-Gm-Message-State: AOJu0Yx4uv26QLNDUT9SuzwtDtGNh0fAGXlSa2L7J5BqHXrhCgi+tIid
	wxuOjn4ROYykQyfi5aor3CW7YvqTv3W83qzLK5X+AAdgqadXtVfDKPyyQ8ek4CnMVsr298jo4hj
	nvI5/0Sce0MXdimxHq0bvL2xzCccOEX1q
X-Gm-Gg: ASbGnctCdUDcwPEhZWnBzqiWHkKDOp8UxQbl3Ay9OWEaaFEuLib88J6YXo45wS5zG84
	kvj/+iG8HiwrldY+hSacbE/SbpnGw63tL/ueuYfrkbiPZHDfme1Yj5OWXtJpbDisbDvn5YHrWLZ
	Ok9JvOKeNRNJyBX2Zt1RQ9Dj5e9w==
X-Google-Smtp-Source: AGHT+IFxqdWE2mPS1x95Vh858SIHfRA7i249JxfcFMgxy/0pbh3dUpZg8NxNm43LWx3BomkFhZZVaHhukvAJuOK3X2k=
X-Received: by 2002:a17:90b:5147:b0:301:1c11:aa74 with SMTP id
 98e67ed59e1d1-3053214761dmr19863430a91.28.1743488443342; Mon, 31 Mar 2025
 23:20:43 -0700 (PDT)
MIME-Version: 1.0
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Tue, 1 Apr 2025 09:20:31 +0300
X-Gm-Features: AQ5f1JrfJ0bc49wBCk_bWT91hh1f4_ytlh8xbqarW85vqXKMNxurPwQgHUptaCU
Message-ID: <CAP1tNvQiAqipRwBp9MBcOrPEQnbtqxr5GVZQ0vWhOnzhn3Wijw@mail.gmail.com>
To: Barebox List <barebox@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250331_232045_024354_628B5C2B 
X-CRM114-Status: UNSURE (   4.59  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: NOR damage problem
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello All!

Found NOR partition damage after use ubiformat.
There is a NOR memory (256M) connected via atmel-qspi.
First partition is RAW, the other for use via UBI.

partition@0 {
label = "bootstrap";
reg = <0 0x20000>;
};
...
partition@e0000 {
label = "system";
reg = <0xe0000 0>;
};

barebox@Mega-Milas Informer SAMA5D2:/ md -s /dev/m25p0.bootstrap
m25p80 flash@00: from 0x00000000, len 256
00000000: ea000012 eafffffe eafffffe eafffffe                ................
00000010: eafffffe 00004144 eafffffe eafffffe                ....DA..........
00000020: 65726162 00786f62 00000000 000040b8                barebox......@..
00000030: 55555555 55555555 55555555 55555555                UUUUUUUUUUUUUUUU
00000040: 55555555 55555555 55555555 55555555                UUUUUUUUUUUUUUUU
00000050: eb000c4b e1a00004 eb0008ca e1a0200e                K............ ..
00000060: e1a0300d eb000c8d e10fc000 e22cc01a                .0............,.
00000070: e31c001f e3ccc01f e38cc0d3 1a000004                ................
00000080: e38ccc01 e28fe00c e16ff00c e12ef30e                ..........o.....
00000090: e160006e e121f00c ee07cf15 ee07cf9a                n.`...!.........
000000a0: ee07cf95 ee11cf10 e3ccc085 e3cccc23                ............#...
000000b0: e38cca01 e38cc501 e3ccc002 ee01cf10                ................
000000c0: e1a0d003 e1a0f002 ee11cf30 e38cc040                ........0...@...
000000d0: ee01cf30 e1a0f00e e24f0008 e59f1004                0.........O.....
000000e0: e0500001 e12fff1e 000000d8 e3510000                ..P.../.......Q.
000000f0: 13a03000 15813000 e5d021ff e5d031fe                .0...0...!...1..

So, at this time all OK. Next, format with UBI.

barebox@Mega-Milas Informer SAMA5D2:/ ubiformat /dev/m25p0.system -y
ubiformat: m25p0.system (nor), size 267517952 bytes (255.1 MiB),
4082 eraseblocks of 65536 bytes (64 KiB), min. I/O size 1 bytes
^Mlibscan: scanning eraseblock 0 --  0 % complete
m25p80 flash@00: from 0x000e0000, len 64
m25p80 flash@00: from 0x000f0000, len 64
...
m25p80 flash@00: from 0x0ffe0000, len 64
libscan: scanning eraseblock 4081 -- 100 % complete
m25p80 flash@00: from 0x0fff0000, len 64

ubiformat: 7 eraseblocks have valid erase counter, mean value is 0
ubiformat: 4069 eraseblocks are supposedly empty
ubiformat: warning!: 6 of 4082 eraseblocks contain non-ubifs data
ubiformat: warning!: only 7 of 4082 eraseblocks have valid erase counter
ubiformat: erase counter 0 will be used for all eraseblocks
ubiformat: note, arbitrary erase counter value may be specified using -e option
ubiformat: use erase counter 0 for all eraseblocks
ubiformat: formatting eraseblock 0 --  0 % complete
m25p80 flash@00: at 0xe0000, len 65536
m25p80 flash@00: at 0xf0000, len 65536
m25p80 flash@00: at 0x100000, len 65536
m25p80 flash@00: to 0x00100000, len 64
...
m25p80 flash@00: to 0x000f0000, len 65536

Then check first partition:
barebox@Mega-Milas Informer SAMA5D2:/ md -s /dev/m25p0.bootstrap
m25p80 flash@00: from 0x00000000, len 256
00000000: 22000010 00000000 00000000 00000000                ..."............
00000010: 40000000 00000000 60dc9950 00000000                ...@....P..`....
00000020: 00000000 00000000 00000000 00000000                ................
00000030: 00000000 00000000 00000000 50040051                ............Q..P
00000040: 55555555 55555555 55555555 55555555                UUUUUUUUUUUUUUUU
00000050: eb000c4b e1a00004 eb0008ca e1a0200e                K............ ..
00000060: e1a0300d eb000c8d e10fc000 e22cc01a                .0............,.
00000070: e31c001f e3ccc01f e38cc0d3 1a000004                ................
00000080: e38ccc01 e28fe00c e16ff00c e12ef30e                ..........o.....
00000090: e160006e e121f00c ee07cf15 ee07cf9a                n.`...!.........
000000a0: ee07cf95 ee11cf10 e3ccc085 e3cccc23                ............#...
000000b0: e38cca01 e38cc501 e3ccc002 ee01cf10                ................
000000c0: e1a0d003 e1a0f002 ee11cf30 e38cc040                ........0...@...
000000d0: ee01cf30 e1a0f00e e24f0008 e59f1004                0.........O.....
000000e0: e0500001 e12fff1e 000000d8 e3510000                ..P.../.......Q.
000000f0: 13a03000 15813000 e5d021ff e5d031fe                .0...0...!...1..
barebox@Mega-Milas Informer SAMA5D2:/

Now the first partition is broken.

Any suggestions where to look for the bug?

Thanks!


