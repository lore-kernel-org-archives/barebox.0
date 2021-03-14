Delivery-date: Sun, 14 Mar 2021 14:04:17 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lLQPp-0007up-Lz
	for lore@lore.pengutronix.de; Sun, 14 Mar 2021 14:04:17 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lLQPo-0002Qx-FE
	for lore@pengutronix.de; Sun, 14 Mar 2021 14:04:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TkdfnVBFu5CAXemkynyrFE2wl/av0lzCcoPqfSQuqlk=; b=BlMOE+0xp1le6Be4e+oFI+gTD
	Tl8cG6mLV5nWBFrRrTH5qklmvFGaZD//J7XiE6V9f/+4pZ9MJqrW4qu1U8kPZMtj+3fdFPQys0VVM
	ohNgzH0calXx9Nq3s4yO/Q0a3YiquYyAHmaWvbyuMIoD5ulOkf2JfjCxFPUroxBIPf6dR+Yn+QqF1
	hBoS5peX7IqrtNofsDiAbr9HWCA6hlTWJ47EaMLagCTPAg7Z/G3ZD9BMHGgK66AWcNjr8fBeUYo7A
	x8qjTrWKuXhyZRJ/OFXRz7tI8kUzG/A6JpsEqkEqFYC9ujhiHRpjo5/jDIsKANcxYrc0IOC5b49QF
	KJQA7bc/w==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lLQOo-00EEfG-Da; Sun, 14 Mar 2021 13:03:14 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lLQOi-00EEek-BS
 for barebox@lists.infradead.org; Sun, 14 Mar 2021 13:03:10 +0000
X-Originating-IP: 87.123.99.173
Received: from geraet.fritz.box (unknown [87.123.99.173])
 (Authenticated sender: ahmad@a3f.at)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 7CDC120006;
 Sun, 14 Mar 2021 13:03:05 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>,
 Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Sun, 14 Mar 2021 14:03:01 +0100
Message-Id: <20210314130301.620307-2-ahmad@a3f.at>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210314130301.620307-1-ahmad@a3f.at>
References: <20210314122804.4128-17-a.fatoum@pengutronix.de>
 <20210314130301.620307-1-ahmad@a3f.at>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210314_130308_851286_DBB76C5F 
X-CRM114-Status: UNSURE (   6.94  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] fixup! RISC-V: add 64-bit support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We don't yet require support for float and atomic ops, so remove
their letter.

Suggested-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/riscv/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
index 133e43af41bf..6df7d9d9eeac 100644
--- a/arch/riscv/Makefile
+++ b/arch/riscv/Makefile
@@ -6,7 +6,7 @@ ifeq ($(CONFIG_ARCH_RV32I),y)
 	riscv-cflags-y += -march=rv32im -mabi=ilp32
 	riscv-ldflags-y += -melf32lriscv
 else
-	riscv-cflags-y += -march=rv64imafd  -mabi=lp64
+	riscv-cflags-y += -march=rv64im  -mabi=lp64
 	riscv-ldflags-y += -melf64lriscv
 endif
 
-- 
2.30.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

