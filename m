Delivery-date: Tue, 07 Sep 2021 15:03:22 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mNal0-0007Lo-06
	for lore@lore.pengutronix.de; Tue, 07 Sep 2021 15:03:22 +0200
Received: from [2607:7c80:54:e::133] (helo=bombadil.infradead.org)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mNakz-0000qX-0Q
	for lore@pengutronix.de; Tue, 07 Sep 2021 15:03:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rax606u80x9g1j9l9/Wyl71dvYSVdTBip5jxO5AoA9M=; b=uHZZ14a3ADGURx
	nJaGMy7b4TEAr5KqxhCQeuJZ4QuZRSi6y2nYQytF891Hc8jTVy+56ERG7IhMknMxt+7pAwks0N1w+
	1E7MuSRcvLTJk23j1GmAejnXZpn/mrCwtz24cFZ+ea3aw3hSVeW2IFeaDYX5P9LRNvds2bpdENqLu
	+ZLD3lmlbc2tMRLeRpZcA73rgGejD9FF17BBl+yfttQSgiU7wcDmu+c4GdFPcYXuWGo3v+XR9MzPT
	idiwD4fTMN5DpZkYaXKurLwBuDRFEzgHa6QCjP+WNAnbs70Grk+Og2KhCbsDA1X1pFDpl6k+ejBzs
	KnWA+uqSwEVFp8pYrSzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mNajZ-003k1U-K6; Tue, 07 Sep 2021 13:01:53 +0000
Received: from mxout.security-mail.net ([85.31.212.42]
 helo=fx302.security-mail.net)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mNajU-003k09-Ge
 for barebox@lists.infradead.org; Tue, 07 Sep 2021 13:01:50 +0000
Received: from localhost (localhost [127.0.0.1])
 by fx302.security-mail.net (Postfix) with ESMTP id 2C0483D3B55E
 for <barebox@lists.infradead.org>; Tue,  7 Sep 2021 15:01:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
 s=sec-sig-email; t=1631019699;
 bh=Fg+wLOBmbH0Ux0zMoeSjcMKIvCi3nOP3OrjFv6F9T/k=;
 h=From:To:Cc:Subject:Date;
 b=SUhzvsxssucmYEbXZl16x2yW6QgnZZUZbiMnxjusc9VDCcW12/kSR/Sjwy9BEZSQF
 KG6KVxuEmG1yVaAmYPMYExH5JJOBLxlkMn1gmer+CVWXNYs3JFydqq85M5fgJdkC0u
 8YMF6FhK0ckStD83dY0IZH7XFRfOGRQHwOx0v+nY=
Received: from fx302 (localhost [127.0.0.1])
 by fx302.security-mail.net (Postfix) with ESMTP id 9BADF3D3B5ED
 for <barebox@lists.infradead.org>; Tue,  7 Sep 2021 15:01:38 +0200 (CEST)
X-Virus-Scanned: E-securemail
Secumail-id: <543c.613762b2.1d4ac.0>
Received: from zimbra2.kalray.eu (unknown [217.181.231.53])
 by fx302.security-mail.net (Postfix) with ESMTPS id 1E0203D3B5DD
 for <barebox@lists.infradead.org>; Tue,  7 Sep 2021 15:01:38 +0200 (CEST)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTPS id E50C627E02DE;
 Tue,  7 Sep 2021 15:01:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id CFD8427E02DB;
 Tue,  7 Sep 2021 15:01:37 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu CFD8427E02DB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1631019697;
 bh=I05ES9aLbs5SYHKwx1qaLmRyJL7hsOG39KFch8vtR4U=;
 h=From:To:Date:Message-Id;
 b=jZaQobZC3H7wfBSF06KkdEetcbv6ZZOrFx9wKCQZ9/EMocnVKUAKkLWVQPWng+41U
 jrGmyI4gzp+S3asg2sPwUBZVnG+O7tKqdAPLu02FaTv8bdLU3sfXXpnLbvBVbB2G/H
 VSRNjdvWTuS/dIAIG7Ch2lKh+wGPDPpz/72pd2io=
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id mXlKCH-G77si; Tue,  7 Sep 2021 15:01:37 +0200 (CEST)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206])
 by zimbra2.kalray.eu (Postfix) with ESMTPSA id B7D1027E02DA;
 Tue,  7 Sep 2021 15:01:37 +0200 (CEST)
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>
Date: Tue,  7 Sep 2021 15:01:30 +0200
Message-Id: <20210907130131.26755-1-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: by Secumail
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210907_060148_866507_8F5020A2 
X-CRM114-Status: GOOD (  12.48  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Host-Lookup-Failed: Reverse DNS lookup failed for 2607:7c80:54:e::133 (failed)
X-Broken-Reverse-DNS: no host name for IP address 2607:7c80:54:e::133
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,PTX_BROKEN_RDNS,RCVD_IN_DNSWL_MED,RDNS_NONE,
	SPF_HELO_NONE,SPF_NONE autolearn=no autolearn_force=no version=3.4.2
Subject: [PATCH] Documentation: Replace ENTRY_POINT with ENTRY_FUNCTION
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

I think the documentation is referring to the ENTRY_FUNCTION macro, not ENTRY_POINT

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 Documentation/devel/porting.rst    | 2 +-
 Documentation/user/multi-image.rst | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devel/porting.rst b/Documentation/devel/porting.rst
index 97b787327c..5bf0b45e65 100644
--- a/Documentation/devel/porting.rst
+++ b/Documentation/devel/porting.rst
@@ -131,7 +131,7 @@ Lets look at this line by line:
  - ``ENTRY_FUNCTION(start_my_board, r0, r1, r2)``
    The entry point is special: It needs to be located at the beginning of the
    image, it does not return and may run before a stack is set up.
-   The ``ENTRY_POINT()`` macro takes care of these details and passes along
+   The ``ENTRY_FUNCTION()`` macro takes care of these details and passes along
    a number of registers, in case the Boot ROM has placed something interesting there.
 
  - ``extern char __dtb_my_board_start[];``
diff --git a/Documentation/user/multi-image.rst b/Documentation/user/multi-image.rst
index 727b98fe5a..0a7bf91a55 100644
--- a/Documentation/user/multi-image.rst
+++ b/Documentation/user/multi-image.rst
@@ -46,7 +46,7 @@ let the common binary determine the board type.
 
 The board specific PBL images are generated from a single set of object files
 using the linker. The basic trick here is that the PBL objects have multiple
-entry points, specified with the ENTRY_POINT macro. For each PBL binary
+entry points, specified with the ENTRY_FUNCTION macro. For each PBL binary
 generated a different entry point is selected using the ``-e`` option to ld.
 The linker will throw away all unused entry points and only keep the functions
 used by a particular entry point.
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

