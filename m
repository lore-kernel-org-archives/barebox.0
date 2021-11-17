Delivery-date: Wed, 17 Nov 2021 04:51:29 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mnByr-0002II-QJ
	for lore@lore.pengutronix.de; Wed, 17 Nov 2021 04:51:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mnByq-0001oS-Sn
	for lore@pengutronix.de; Wed, 17 Nov 2021 04:51:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=w691U/woH8ZdzD2CoIVCB3eRNm7FWR9l+Sle4NfNTOs=; b=tsldjMvpeG/2AI
	hJNfNH8G4F2gBD2Vyd+PFTRKap6adGKyGA6xfdZQi2Y8qvgC6+6RUdDxWbmQjpjsVDfgVs/syEd9Y
	VYJPXsptUHd4+ci1HL8HxDgNfHmLO0qEYcUQQrmUP4mzrplpW9hh/FrPCiwrWBavF9vxWJ2uHS5kK
	RxUxwkOG9wbg6D+VZyCn1u4TVeQu79izZvpJnYmG7qifaVOhtlyKDMPOAxoUhTgACAnmej32pQot0
	JfNEwME1XCXBaoOy+XrZSxTCEg48VjalAkhzBVC9YxeYB6PX5sR/CucRQ7fnZ7BoPkvtRJ5Idr6Ei
	vfaTZN9of6qcO0Az5OKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mnBxV-003EcO-TN; Wed, 17 Nov 2021 03:50:05 +0000
Received: from conuserg-08.nifty.com ([210.131.2.75])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mnBxH-003EZA-PO
 for barebox@lists.infradead.org; Wed, 17 Nov 2021 03:49:54 +0000
Received: from grover.. (133-32-232-101.west.xps.vectant.ne.jp
 [133.32.232.101]) (authenticated)
 by conuserg-08.nifty.com with ESMTP id 1AH3nM9g012692;
 Wed, 17 Nov 2021 12:49:22 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-08.nifty.com 1AH3nM9g012692
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1637120963;
 bh=/P/1bZl6zPWME7M6BRioZoA2MDVwc3S3akQ9J8gUQE0=;
 h=From:To:Cc:Subject:Date:From;
 b=WwizuGS7IIniwI5T/GSQuK8ble1l93tuKmt4za8RbmHhfL2U2q/8E+bozRupfvCdj
 EKpgrrZWqRO10pH49znxByDCvumN/SzGVW40iAy6K2uNlL5ygKqwI0ZFwo01D2Svp4
 78twnfL+5LDGzPescInsU0KTzA+2jPyCHdQfFusEzmx4hN5V89o6w0Z/2ZKYHTTxK5
 uHeSFOWwvIFEFRKVsaHiLDcRMyxpJk4g2lGyC/Ke9AxFCjhwc9azHc85tVdaiJWUsr
 Z6dExoJPI65Kcz+XiVXxnaDj9Of7l0RxCsl0x6ZFq/5FUwwanZrGc/qjNt6LscPnBW
 UEmp8MXIpvPwA==
X-Nifty-SrcIP: [133.32.232.101]
From: Masahiro Yamada <masahiroy@kernel.org>
To: barebox@lists.infradead.org
Cc: Masahiro Yamada <masahiroy@kernel.org>
Date: Wed, 17 Nov 2021 12:49:13 +0900
Message-Id: <20211117034918.1226358-1-masahiroy@kernel.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211116_194952_215143_7F810625 
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-104.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	USER_IN_WELCOMELIST,USER_IN_WHITELIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 0/5] x86: misc cleanups
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)




Masahiro Yamada (5):
  kbuild: remove unneeded -nostdlib flag
  x86: remove x86-specific cmd_barebox__
  x86: stop copying unneeded sections to barebox.efi
  x86: reuse cmd_objcopy to generate barebox.efi
  x86_64: do not pass the EFI image handle or system table to relocation

 arch/kvx/Makefile                   |  2 +-
 arch/mips/Makefile                  |  2 --
 arch/riscv/Makefile                 |  1 -
 arch/x86/Makefile                   | 23 ++++++++---------------
 arch/x86/mach-efi/crt0-efi-x86_64.S |  6 +-----
 arch/x86/mach-efi/reloc_x86_64.c    |  4 ++--
 6 files changed, 12 insertions(+), 26 deletions(-)

-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

