Delivery-date: Fri, 25 Sep 2026 12:56:49 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xA3bk-0068h4-0s
	for lore@lore.pengutronix.de;
	Fri, 25 Sep 2026 12:56:49 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id A9859200291
	for <lore@pengutronix.de>; Fri, 25 Sep 2026 12:56:47 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=Ly69LhyM;
	dkim=pass header.d=waldekranz-com.20251104.gappssmtp.com header.s=20251104 header.b=X8MQXeUE;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790333808;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=LUek2LXwbjOIxpEWBv7DOWV/H4q1Gn6zVhkwVUzrKXk=;
	b=D2iC1QHW3SQxD/j6kLWGym3cwmGf4a21NSBS5oiKksi3XYYX6c2lo0q8L4BbD3cBXxOodb
	/fPJZVrZM4Kwor2asU9mPJr1pHatSUjxiLjZL04ydEQ+JGLswqEJ4AsKgtyz2Un97S00ob
	5PxeMA9B6lssziruR5utFlJWviJKxZDzv8XlcunM0hn/Nt4Z2b8Ua7rbFIMxkvzKS6Mz6b
	u+CzEHwIsuMKLsz81zqUwA9tfQ8Ir7eINXzn9XL3x/smO/PR4L+P+u0bDqv1zr0UQx6GmP
	/IUJqe+O83w4yaKiPvnxcqFRNe5BdpgyiZIz39YP/4fVr1sj++sn/RW0aiNpQQ==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790333808; a=rsa-sha256;
	cv=none;
	b=AKJpqSKLw1dnVh5Midq+04xrgEKz+HYHJmzoFwJPWHdd1ufr8DP7w7WWGY2eMwBqwEEjqu
	E8uqdHNZx5pF33/6aZ0XKOQ3izmxzUkamiJWS/00cr4ekrE+9RsGzMqZuoME03NON27cu/
	eC3G4aT0d9N6yBYEhrbkZSGGydXmzxe00byBCo67N+jnGKzZRQPhtCaEryibDuNmCMFtua
	0cTWJCfwUb6DpIZagKBiBsFfWuE57yPvMpjl459s3Aao2/7LlQeGbUMUXg9Yr6j76Gl7B+
	hgIKco+ncSpL9jwPrfarADU89ENc5jN2PPZMlHADuH2eFGEfVDALALfroYCI/A==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=Ly69LhyM;
	dkim=pass header.d=waldekranz-com.20251104.gappssmtp.com header.s=20251104 header.b=X8MQXeUE;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=LUek2LXwbjOIxpEWBv7DOWV/H4q1Gn6zVhkwVUzrKXk=; b=Ly69LhyMvTzaZL7FnLXU0SWK5a
	x8Vau1tVt8pIqKKBtRXBfe6K7m+k9teldVJcUvjtpuhyshRdaHcYvmZTzgCl4JzKrdE0HuLHnwxK9
	xMxMY/N5c3vArjfsVzL2ivlYdjk/J3jT/CutyusuV1muleeGscOF4D6x1LY5I1ZbODur89+/pVgjW
	x8JIkBg1YwbVakpy7WzkmDlzFreNjJzyFNI9Ydi6uowYCWu2s/GpNxP+J+FYyymhdKinyQBzXsgb4
	hBPO7YT65SC/w2mzckjgsYJzuyRW4I3mB8nDhXO33N8FHJ7+A5hYKz3TssDt9y8MrfOWGdrLg296F
	4jPZPGkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xA3aR-0000000D8bF-140x;
	Fri, 25 Sep 2026 10:55:27 +0000
Received: from mail-ej2-x0d.google.com ([2a00:1450:4864:34::d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xA3aK-0000000D8Xz-41x2
	for barebox@lists.infradead.org;
	Fri, 25 Sep 2026 10:55:25 +0000
Received: by mail-ej2-x0d.google.com with SMTP id a640c23a62f3a-c254fa663bfso118036266b.1
        for <barebox@lists.infradead.org>; Fri, 25 Sep 2026 03:55:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=waldekranz-com.20251104.gappssmtp.com; s=20251104; t=1790333718; x=1790938518; darn=lists.infradead.org;
        h=content-transfer-encoding:organization:mime-version:message-id:date
         :subject:to:from:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=LUek2LXwbjOIxpEWBv7DOWV/H4q1Gn6zVhkwVUzrKXk=;
        b=X8MQXeUE3GzA9O/m+X+SimvMTB5HGBgAHChzLKersJTc4InqZ04Eb26hYbEvgSW1Wz
         JW655e3XwUPHoYKPROOyR/Z7kD0ROLUqLI7VsGIbWVVq7ST+MwNNhxrhKfYDQSJE2fGz
         Oc/8qK0ZrSLkvjrDUoHi5ZKhqoI/1yYVvS2eGFVuNWKwmecNdFrT88honV0PTaGRiLfG
         I3sOOG9yN6nfcg/pT8EYrJsUMloQ68r68VSnj0Hpbmir63PbC6isD3XcMtrYvSIrdsQY
         nQ61ppU1RLDyeDqZzonCSus1wy5LxYWii272TjbpmUlLr5FB6UZrtVBGyRlshJP3qS+3
         9htg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790333718; x=1790938518;
        h=content-transfer-encoding:organization:mime-version:message-id:date
         :subject:to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=LUek2LXwbjOIxpEWBv7DOWV/H4q1Gn6zVhkwVUzrKXk=;
        b=bQgO3FEvkvrQV28zoLJVvMzzrESfDMh1A1ihbP64QG+nSJ21ZqSlpg37VDCoq7T1zC
         dRCaXpAUlsBp6cSPWbNL5D/yEng+l6tGA/eu46ROTNMfiMUxRc5b0MFnSRGNcPNTFlgq
         ubEhS0L+LTEhRXf6wte+1OE9j8rxfINQuoftotth3ZYzq2ZOzv7qJs5/gWUdqFj4+bqH
         5sjSqjhXxX0Zo2btma1VuFpchdJ4HLJytHerwbZv/hsx5yN7qciUWoD/4dOLTf2YmEdW
         uSQaQMumesBxw6FfH3zCyfWbgss6xf/8IabyGYro8xuTOiLSTSRALjHjc0lhkYHUM2Pw
         h0IQ==
X-Gm-Message-State: AFuF++mRBPnBJ4Tw4GXJtT3/6qMsGkHwjPWzMXiThMk5ThFSKkyIWRIb
	/siJtVh/WDNrGU/sCf1tnNJxkeavJkoKl398rk2y4RsfSamjy0C8KFelt2sTyg5MVR0txFmO2Ec
	H6ss6
X-Gm-Gg: AYBFou0BS33ZEk4VChh+aDJTTmWYcdgPBqZClg2NCG9yg5dSQOEguei3VKkexK4bejI
	iUPYTTiKrVoiBVod9WnU+kb+zHnHjSnWYIhJnhlJoLJCt/QpKkl1wVXN3Sz8NFfaYMpbUtynYYn
	dTNeWDl01D0YhON67wxngUogpE01IqDPQS1z4PRfyTtuIlkNd8ebEA/0vho5+RC/6hZAgy5M+Sd
	UinQnd1vX4yKrx4BwMW8ikOYlgPbvA6ZRM2b3mDWqEmOBILRz+iRbVM/wi5xOGmYxgyyUhjXmcu
	GOwm890WHeysF64xWp46KVICJr6BO4FJVkrRj41Gm9vpHcWKWoqrep6Ep5HZGKp0PKNcHfrti1c
	36dkL4LrrAEzZwkLqmrU5CDIcitDVWmtcZ593NRUqhP7N1WnxpmU5k+3zr8GwicZSSHIo4+Sz9O
	HTCZIlyo3+66y/LLg2+DxFpLVkUkfpWMzUSLeB9MY34rfaJ36TiPxNVmo24a+V7vtp7GiewFxgF
	SvkCElRTrvaq0pO38gWik6tYP0St+SUQHA7erxf2u9aRm4bcMxZOr0NJG0F37jqmThJGNJ6sf3w
	5lq3foC99vXmVoLYsvWx
X-Received: by 2002:a17:907:1c24:b0:c2a:b998:9f04 with SMTP id a640c23a62f3a-c2ac247981bmr498649966b.41.1790333717638;
        Fri, 25 Sep 2026 03:55:17 -0700 (PDT)
Received: from spa.addiva.ad (h-79-136-22-50.NA.cust.bahnhof.se. [79.136.22.50])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c2ae757ac8dsm98416066b.25.2026.09.25.03.55.17
        for <barebox@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Sep 2026 03:55:17 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: barebox@lists.infradead.org
Subject: [PATCH v2 next 0/5] dm: lvm: Initial Logical Volume Management support
Date: Fri, 25 Sep 2026 10:54:22 +0000
Message-ID: <20260925105510.1431927-1-tobias@waldekranz.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Organization: Wires
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260925_035521_277558_18F50589 
X-CRM114-Status: GOOD (  10.34  )
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
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=1];
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: A9859200291
X-Stat-Signature: zpi7o4jf1y5rgtdsqu8ormunq7w4k3j1

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

v1 -> v2:
  - Labgrid test fixups requested by Sascha

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
 scripts/lvm-pvs.guestfish                     |  55 ++
 test/py/test_lvm.py                           |  75 ++
 test/self/Kconfig                             |  14 +
 test/self/Makefile                            |   2 +
 test/self/lvm.c                               | 818 ++++++++++++++++++
 test/testdata/fuzz/lvm-md.dict                |  29 +
 test/testdata/fuzz/lvm.dict                   |  30 +
 test/testdata/lvm-pvs.disk.xz                 | Bin 0 -> 2968 bytes
 22 files changed, 2924 insertions(+)
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



