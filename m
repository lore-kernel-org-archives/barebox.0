Delivery-date: Thu, 17 Sep 2026 09:43:36 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x76mN-00369c-37
	for lore@lore.pengutronix.de;
	Thu, 17 Sep 2026 09:43:35 +0200
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=N787qSQY;
	dkim=pass header.d=waldekranz-com.20251104.gappssmtp.com header.s=20251104 header.b=kFbl+DVC;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 743EF20004A
	for <lore@pengutronix.de>; Thu, 17 Sep 2026 09:43:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=b+kgM1GpNNtZJCSUrKlvHk6lLt8uB5GFjHXLpABk1ac=; b=N787qSQY05QVnjME+tBnXakGBr
	IYf61kluQ9Vr2PiBgPBYBy51ar0RJ5jn2UyeYy4aZoXEYprCulF2jbYWu7vVripAp4wXN6BvwBW00
	FSveK8d/0UjTqw2qg6G/jNNsGdFGmAkUiyZw6rMjg/rEELn49HiiIfCnmnBxUdjLGoxPOWwOP93rX
	UIUUd09boiah4Ck1VJ/oX0//ULRPTJTbTjbxQeJwKPIbg+T7Mr5lRgjH7zYeeQbsnMOYRzI0EgXzP
	OSa8+o+q8FtxCH+aXAjw7bvaW69JMtNYhq1rdVLQOvH101Fs9SOxIA/dUzkY1J6gfNPe4UIAVhWna
	Y6FsRAOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x76l6-0000000AnES-0q4r;
	Thu, 17 Sep 2026 07:42:16 +0000
Received: from mail-ej2-x10.google.com ([2a00:1450:4864:34::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x76l2-0000000AnCX-3s5k
	for barebox@lists.infradead.org;
	Thu, 17 Sep 2026 07:42:14 +0000
Received: by mail-ej2-x10.google.com with SMTP id a640c23a62f3a-c2940ff2313so36530366b.1
        for <barebox@lists.infradead.org>; Thu, 17 Sep 2026 00:42:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=waldekranz-com.20251104.gappssmtp.com; s=20251104; t=1789630930; x=1790235730; darn=lists.infradead.org;
        h=content-transfer-encoding:organization:mime-version:message-id:date
         :subject:to:from:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=b+kgM1GpNNtZJCSUrKlvHk6lLt8uB5GFjHXLpABk1ac=;
        b=kFbl+DVCLc17hUiU7Ms9VjkqX+1Vc8XQnsrTKAPYbhEhkCo6FKNJV7smv/z4+320Yp
         93Rf0SLUULpLEvdarUihFvy00Q3oKRJ6HyyPIh58vwnlBO6qtgvrrQDdCqojL9DAi/4u
         mLdFck1S9ZIhDe1qOz89tjSy6YelfC8+nfgzoWrq3vxxq71VJN2z/7sIpT3EMHjihT2q
         1aOpA5iz4lHzy7wM04bDJpXqK0a1AFJbvx0F2O5cEiKtBfcuGn7ZIkHCFU7tH1to9k36
         mV/bMW32patXPtBXaGXzQv98D4IRgIkbr/KTLbur89twG+VfVswRSWMAb4me2kXDNBzD
         hCMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789630930; x=1790235730;
        h=content-transfer-encoding:organization:mime-version:message-id:date
         :subject:to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=b+kgM1GpNNtZJCSUrKlvHk6lLt8uB5GFjHXLpABk1ac=;
        b=zQ7cpUBxizzASpQ4k3XeXxv6a4+Q673zyrzA64ygp8NAsxIQBM62OtC+/MFqpNS4G+
         PFQwnyHIXmXhyFiyxN/gFmSYjTYmOUaW4JMSvtZA3+zKJuC5lVe7ne09fre91UCS6dIr
         XEfYf6HGhwPHlrUAIDzU+gCbF7/C3xVssNg6j1pNt2KjlOG56nUDLF2JpmQ12t9q6irr
         BkngRZ7Rr7T9C3Ib157kMXanRVmGmMEZbIXIL9yhbVUB43UCdNLtGg8j2nVGwa/vECW9
         VZBh/7NnvkgQsJS0WHSTDdVrx7JdqoNj8A3UOJQZMDR+wk+Lx+XxmupyabmGa50Muyy3
         H4zQ==
X-Gm-Message-State: AFuF++kupzRayh/Bz6609l3g3icXDBstzRMRtpOGWMu4nqbYZ3Ecm1Mb
	FR+Bu63EQtIK73TLbghB8oNsZukFsnT2FaGaA7WzCNPJU9RJC8Q/M68+VfA3zcjQUiIJ78GG78U
	0lL9Q
X-Gm-Gg: AYBFou1obTeJE5OckB3FO6DiN9itEEwe/q4aNFACTooDZ1BL+k7SgMSVCt1kduiQ/Hp
	uB7rx3Jyak7h5lI6Rrhg72f5iGVTZyvF6toI+LRvO8oWEYS22sL9Wr31IwVElxmxJiRUbkJKMNA
	PNYnd06vB9/sgS0u825U2eMAZBjr7iNoxLGoO6fC5lsrgUPFlqLW6fDBjKBHRPuPJNVC8SKXoeL
	U+V1vIqtGqzGuwbO3seBGaobMUveHQuS07U95O+L0PFXwomP1W6mGt5794HkYAs1qbI8rJeucXH
	aR/vpm5kGlHBZuzwZH0lIOYFucCOCG+zxoKmvYkEDTA96c5DgqGjmxAuKShhZluVfsWrZopDqG7
	LsBNfmTbkVg9cDtLKFp1bjd/CRmydhpN8vG1vequ79+UR+cBAVeObUyYPoJ50dLk3TVkGva6drY
	1gcFgcsOaQ5esc9ysd8dJo7S/ZRjF9a07+D/5cAVhswNjeNV2hqZVy0o5YtPagHa4TdSEupnDXo
	KulcsCXBNzXuhq47QODLK3YeSiTdMRDaSSES37KVKy3FeXst1LIlSvcvaxTVzYwsLu4xwCgkwPW
	9DpDlUg8rTPeUEFkR3dJ7DbgZRQKE2+I
X-Received: by 2002:a17:907:3ea4:b0:c29:c575:de84 with SMTP id a640c23a62f3a-c29f5295c6emr197460666b.8.1789630929366;
        Thu, 17 Sep 2026 00:42:09 -0700 (PDT)
Received: from spa.addiva.ad (h-79-136-22-50.NA.cust.bahnhof.se. [79.136.22.50])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c29de5e4ca9sm238865966b.42.2026.09.17.00.42.08
        for <barebox@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Sep 2026 00:42:08 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: barebox@lists.infradead.org
Subject: [PATCH remotes/origin/next 0/5] dm: lvm: Initial Logical Volume Management support
Date: Thu, 17 Sep 2026 07:40:36 +0000
Message-ID: <20260917074202.3851071-1-tobias@waldekranz.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Organization: Wires
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260917_004213_111087_6A666309 
X-CRM114-Status: GOOD (  10.09  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  This series adds basic support for accessing LVM logical volumes.
    Example session: wkz@spa:~/src/github.com/barebox/barebox$ ./barebox -i disk0=infix-x86_64.disk,blkdev
    [...] barebox@Sandbox:/ lvm info VG "internal": UUID: sN8htx-oD18-wHWH-SuCU-1EWy-th1l-5WPU6j
    SeqNum: 1 Size: 132 [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a00:1450:4864:34:0:0:0:10 listed in]
                             [list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Rspamd-Server: mx1
X-Stat-Signature: gpkb1tw765x8pondewpfnofp44k8t3db
X-Rspamd-Queue-Id: 743EF20004A
X-Spamd-Result: default: False [-5.91 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,waldekranz-com.20251104.gappssmtp.com:s=20251104];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[waldekranz.com];
	ARC_NA(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	HAS_ORG_HEADER(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_IN_DNSWL_NONE(0.00)[2a00:1450:4864:34::10:received];
	MIME_TRACE(0.00)[0:+];
	PREVIOUSLY_DELIVERED(0.00)[barebox@lists.infradead.org];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_HAS_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	TO_DN_NONE(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tobias@waldekranz.com,barebox-bounces@lists.infradead.org];
	DKIM_TRACE(0.00)[lists.infradead.org:+,waldekranz-com.20251104.gappssmtp.com:+]
X-Rspamd-Action: no action

This series adds basic support for accessing LVM logical volumes.

Example session:

    wkz@spa:~/src/github.com/barebox/barebox$ ./barebox -i disk0=infix-x86_64.disk,blkdev
    [...]
    barebox@Sandbox:/ lvm info
    VG "internal":
      UUID:    sN8htx-oD18-wHWH-SuCU-1EWy-th1l-5WPU6j
      SeqNum:  1
      Size:    132 MiB (1 MiB extents)
      #PV:     1
      #LV:     1
      PV disk0.2:
        UUID:  6VHjVF-WVt7-Gk4Y-oTrK-lsgY-ve7N-GJ0CUn
        Size:  134 MiB
      LV "infix-x86_64.raw":
        UUID:  Xp76Ig-9XXj-aBfK-Xv2U-rbsY-nEWX-omt4Bo
        Type:  linear
        Size:  132 MiB
    barebox@Sandbox:/ lvm activate internal infix-x86_64.raw
    [GPT warnings...]
    Created internal-infix-x86_64.raw
    barebox@Sandbox:/ ls /mnt/internal-infix-x86_64.raw.0/
    mounted /dev/internal-infix-x86_64.raw.0 on /mnt/internal-infix-x86_64.raw.0
    bin       boot      cfg       config    dev       etc       home
    lib       lib64     loader    log       media     mnt       opt
    proc      root      run       sbin      srv       sys       tmp
    usr       var
    barebox@Sandbox:/

A while back, I sent an RFC of this series [1]. Based on the lack of
critique of the overall structure, I went ahead and added the missing
tests and fixed up the issues it uncovered.

[1]: https://lore.kernel.org/barebox/20260824183203.3759144-1-tobias@waldekranz.com/

Tobias Waldekranz (5):
  dm: lvm: Initial Logical Volume Management support
  dm: lvm: Add fuzz testers for metadata parser and binary headers
  test: self: lvm: Add tests for metadata parser and binary headers
  commands: lvm: inspect VGs, activate LVs
  test: py: lvm: Add basic LV activation test

 commands/Kconfig                              |  11 +
 commands/Makefile                             |   1 +
 commands/lvm.c                                | 264 ++++++
 .../boards/configs/enable_dm_testing.config   |   2 +
 drivers/block/dm/Kconfig                      |  10 +
 drivers/block/dm/Makefile                     |   1 +
 drivers/block/dm/lvm/Makefile                 |   3 +
 drivers/block/dm/lvm/lvm-core.c               | 714 +++++++++++++++
 drivers/block/dm/lvm/lvm-fuzz.c               | 182 ++++
 drivers/block/dm/lvm/lvm-md.c                 | 423 +++++++++
 drivers/block/dm/lvm/lvm-md.h                 | 109 +++
 drivers/block/dm/lvm/lvm2.h                   |  79 ++
 images/Makefile.sandbox                       |   2 +
 include/lvm.h                                 | 100 +++
 scripts/lvm-pvs.guestfish                     |  53 ++
 test/py/test_lvm.py                           |  76 ++
 test/self/Kconfig                             |  14 +
 test/self/Makefile                            |   2 +
 test/self/lvm.c                               | 818 ++++++++++++++++++
 test/testdata/fuzz/lvm-md.dict                |  29 +
 test/testdata/fuzz/lvm.dict                   |  30 +
 test/testdata/lvm-pvs.disk.xz                 | Bin 0 -> 2956 bytes
 22 files changed, 2923 insertions(+)
 create mode 100644 commands/lvm.c
 create mode 100644 drivers/block/dm/lvm/Makefile
 create mode 100644 drivers/block/dm/lvm/lvm-core.c
 create mode 100644 drivers/block/dm/lvm/lvm-fuzz.c
 create mode 100644 drivers/block/dm/lvm/lvm-md.c
 create mode 100644 drivers/block/dm/lvm/lvm-md.h
 create mode 100644 drivers/block/dm/lvm/lvm2.h
 create mode 100644 include/lvm.h
 create mode 100755 scripts/lvm-pvs.guestfish
 create mode 100644 test/py/test_lvm.py
 create mode 100644 test/self/lvm.c
 create mode 100644 test/testdata/fuzz/lvm-md.dict
 create mode 100644 test/testdata/fuzz/lvm.dict
 create mode 100644 test/testdata/lvm-pvs.disk.xz

-- 
2.43.0



