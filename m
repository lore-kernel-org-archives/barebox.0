Delivery-date: Mon, 24 Aug 2026 20:33:56 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wyZUZ-006nGk-2O
	for lore@lore.pengutronix.de;
	Mon, 24 Aug 2026 20:33:56 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id DB759200FF9
	for <lore@pengutronix.de>; Mon, 24 Aug 2026 20:33:51 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=3AaqhoNg;
	dkim=pass header.d=waldekranz-com.20251104.gappssmtp.com header.s=20251104 header.b=PTGFuky4;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=OjtWHOZ1ETj5mpAGz25976+ZM6CGqgmW8CUcPmDkPzg=; b=3AaqhoNgc3d4EL+iFiEXuAhxPE
	35X3k8K/eaT+6B8aQK07UyL7A5ZmvvxpYhkSz0VX88ymL3ZyCNdJGTX51HOsMAYWtkuWEnqMmCbcO
	bvk4azxwaaJ1hbUv0xLLLYvrelBUr7dmP4aXNVb28HhYLH14/R/Sp5HvuDqeZdRxAZOaugvsfqVCh
	3m4SmA8phckNMrFYmzGfVPJ7nJe2er2OU+qnVsmmEQn5EQJltVrq7RJVGmKPWkmbKI6gTi9ObLhaT
	K6/R3vtN1qZsyYn8oyNQBLxmRcehbkug4RX0O12Onc1WC5InkJDrojjFiNs/6oDfyWMS6ZOUTW0Rm
	UR1S+9cw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyZTP-0000000HGOK-166e;
	Mon, 24 Aug 2026 18:32:43 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyZTL-0000000HGNL-25Sx
	for barebox@lists.infradead.org;
	Mon, 24 Aug 2026 18:32:41 +0000
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-c1f758014b8so421231166b.3
        for <barebox@lists.infradead.org>; Mon, 24 Aug 2026 11:32:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=waldekranz-com.20251104.gappssmtp.com; s=20251104; t=1787596357; x=1788201157; darn=lists.infradead.org;
        h=content-transfer-encoding:organization:mime-version:message-id:date
         :subject:to:from:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=OjtWHOZ1ETj5mpAGz25976+ZM6CGqgmW8CUcPmDkPzg=;
        b=PTGFuky4Z5TINt47xnqNtRVrDLfXjy8cGwQhLP3H+AcTG8HKcam/smHGLRvz8/29S7
         a6AKZYhOqN9sulbVbENaD9LopcxB2PF2OLW5+MuZKOwTw7ZQGQo1aoMVa0ZLI9D7Byaw
         iz6zdWUdMIBu1XLJ+YMsJj3hp8yYedAhFUNSo2YMdqf7GBTRQVgrKmWRDGMYDdjSaRJT
         kJqRnFvfKQoixB6zL2dPOnVWY1cL0X3VV20A72nwrIdZpLV7RaWVIylmo3JO8j+zWV14
         qTYtXUmjrJhHka7OxshpIxdsISQfuCDdKtFLU4At0OacKO5npml1RV/OSCPXt0tN+T7p
         cz9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787596357; x=1788201157;
        h=content-transfer-encoding:organization:mime-version:message-id:date
         :subject:to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=OjtWHOZ1ETj5mpAGz25976+ZM6CGqgmW8CUcPmDkPzg=;
        b=JmCo/ccRi4iQEzrrjyvKkeTfgv33AYkWm9t6PguAPzu1+dWvTzkI2f3lTF0f4NtCV0
         l060EZolQXvKjDfQZsgijhiwE9vEA0YJs5pQeEc8Pxx48LM+2k4bLMr8/Tu+xgbuiPsW
         t3WxAAGBjcO1fwNv7+9cszj8/O9bx7ovJPl5EYqGNYL+5SoiwV4ZMqcdTTQeLG4YmtM5
         Y5TW31VtONANeRa9Vc2WXRNwkfSTbAtRrnIv0ydMipCrvRUd8i5h+TRvq1aCkO6i7jFO
         FEO/BA8ZW0O0/++o9NnLdHq77z/STAMjyUmkt9mddathhxM9FpUXg4yX8tldd4SOtD0M
         PZeg==
X-Gm-Message-State: AFuF++m/A6QFM+AmciLErBwECzHahGYlC5+BwH+Kgj/EjF4jACnZQrwS
	9OGOf/pLVAkUJxeiiqoRfg6XLLHhlhHeiWTgD5ZROp2/dPOnr4i+R3rYGcryxODOpjy753iy92i
	ZxJqP
X-Gm-Gg: AR+sD134KMKJi6qdXP87U6Rc08bweo2TnErdliBpTEmeS2s6KWQ00IDDrN/VlwnlEtj
	qMw4mlLas96YFSHpZ8C9U2sxMiSa0em4lokYlShxrAH4ufx7FKoGj67vAndLoCQbAbVic67BwHp
	IqqhCR8B2pcYpXxmfRqJo40H2V7FvCjb/IuCEmHSRQ973JKQq23CcVDqy4PVu+ItQOpxeUQGXDk
	6TZHNwgDmQHx8jEVN1LTsLB9Bgizaj3EVdCamoP12qwYp4ZvThmTJJr7VHB9U5QRHT4oOpSb2Zz
	DSJFmVdbYd7+ayGDvAsPO5/3nqpIestu2cAjkbtsVBjUY9kurUkOgnwuwmJjcYpfeVDohHo/D0H
	Gh7p2rnGnFlwrL1VUcOIEFgtCw0BRkyAv0cNmA1L5Nbj30/Cd/2IUeXO3+6kEG7IZ0gmwkVkM3O
	F9h2UvVdO4A9iAgzq6O81lX8tx5U7c5fhKY3c8bMZS7rud79KvYMhECjIxAo9hqD6T0MopIkLkS
	rBxc7neVoWqAxNl8BBRuUIuzTGihLGeLlXZNDYwvDAXf5PaGnaLn+H306JUXAovcvxLbo3zjZ8n
	BdIhlFYE9Yo=
X-Received: by 2002:a17:906:f588:b0:c24:c0f4:899d with SMTP id a640c23a62f3a-c24c0f48bd5mr994148266b.22.1787596356809;
        Mon, 24 Aug 2026 11:32:36 -0700 (PDT)
Received: from spa.addiva.ad (h-79-136-22-50.NA.cust.bahnhof.se. [79.136.22.50])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c249606b683sm1519016866b.5.2026.08.24.11.32.36
        for <barebox@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Aug 2026 11:32:36 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: barebox@lists.infradead.org
Subject: [RFC next 0/2] dm: lvm: Initial Logical Volume Management support
Date: Mon, 24 Aug 2026 18:31:19 +0000
Message-ID: <20260824183203.3759144-1-tobias@waldekranz.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Organization: Wires
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260824_113239_801520_6C839ECA 
X-CRM114-Status: GOOD (  13.60  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  This is an initial RFC on the addition of LVM support to Barebox.
    Avid readers of Barebox lore might remember me describing LVM support as
   a key part of my roadmap of how I would like to boot future versions of Infix
    - a network centric OS I work on - in the origina [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a00:1450:4864:20:0:0:0:62b listed in]
                             [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: 5za9ccua3o87qsw3thq5emirrcg83hoy
X-Spamd-Result: default: False [-5.91 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
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
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_IN_DNSWL_NONE(0.00)[2a00:1450:4864:20::62b:received];
	RCPT_COUNT_ONE(0.00)[1];
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
X-Rspamd-Queue-Id: DB759200FF9

This is an initial RFC on the addition of LVM support to Barebox.

Avid readers of Barebox lore might remember me describing LVM support
as a key part of my roadmap of how I would like to boot future
versions of Infix - a network centric OS I work on - in the original
device mapper series. [1]

I have finally gotten some time to get this in a presentable state.

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

If the overall structure is OK with the community and maintainers,
then the biggest remaining issue is testing. I have been surprised to
learn that the standard LVM tools will not operate on disk images
(without loopback mounting). Nor does there seem to be any other tools
out there that allows you to provision PVs/VGs/LVs without having them
"live" and attached to the host system. If there are any suggestions
here they would be very welcome!

Additionally, I would like to add some fuzz testing to the metadata
parser.

Looking forward to your feedback!

[1]: https://lore.kernel.org/barebox/20250828150637.2222474-1-tobias@waldekranz.com/

Tobias Waldekranz (2):
  dm: lvm: Initial Logical Volume Management support
  commands: lvm: inspect VGs, activate LVs

 commands/Kconfig                |  11 +
 commands/Makefile               |   1 +
 commands/lvm.c                  | 264 ++++++++++++
 drivers/block/dm/Kconfig        |   9 +
 drivers/block/dm/Makefile       |   1 +
 drivers/block/dm/lvm/Makefile   |   2 +
 drivers/block/dm/lvm/lvm-core.c | 712 ++++++++++++++++++++++++++++++++
 drivers/block/dm/lvm/lvm-md.c   | 396 ++++++++++++++++++
 drivers/block/dm/lvm/lvm-md.h   | 106 +++++
 drivers/block/dm/lvm/lvm2.h     |  54 +++
 include/lvm.h                   | 100 +++++
 11 files changed, 1656 insertions(+)
 create mode 100644 commands/lvm.c
 create mode 100644 drivers/block/dm/lvm/Makefile
 create mode 100644 drivers/block/dm/lvm/lvm-core.c
 create mode 100644 drivers/block/dm/lvm/lvm-md.c
 create mode 100644 drivers/block/dm/lvm/lvm-md.h
 create mode 100644 drivers/block/dm/lvm/lvm2.h
 create mode 100644 include/lvm.h

-- 
2.43.0



