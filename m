Delivery-date: Sun, 28 Feb 2021 20:09:12 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lGRRI-0003Sa-4R
	for lore@lore.pengutronix.de; Sun, 28 Feb 2021 20:09:12 +0100
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lGRRE-0000jt-UC
	for lore@pengutronix.de; Sun, 28 Feb 2021 20:09:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe
	:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2viXW5QM419rNbPoCaM4qvtFb7K9VyFXq9HXAQpP5sk=; b=KoDlDSWs9+PxVIoV8HLZT7leRc
	GZCQuz5F+WHw8KqqB6zrDvGQEaQUyl/Xmnz0a8CrrrWu7W1P/wSQCvHWZrTSRQow5j3O2AIwCxmAo
	rPeiINVTsqYFiKst2N//Wbkv1MwWvpT1JMn+VTxt5W3rO+OXRVHHvBftjmZEWVhuoINLJgTcd5gdh
	hDmQzGZol/r7iQufjWJbKz1O6vOpzWAFWbxPOR1rIem7DTTtorGkpSblCRd4Q8O2gWrz9+YCdT2hU
	aTDhUYUTMeTQ4mHGHB2/k8akJAkWpYI+QskkAT8ykUuyuSFybAZXNLPPoZ2GSYbvQ/UbYtvs9rj21
	DBeueIAA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lGRPe-0005w4-O9; Sun, 28 Feb 2021 19:07:30 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lGRPX-0005uN-Tq
 for barebox@lists.infradead.org; Sun, 28 Feb 2021 19:07:25 +0000
X-Originating-IP: 87.123.101.180
Received: from geraet.fritz.box (unknown [87.123.101.180])
 (Authenticated sender: ahmad@a3f.at)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 1BF73E0007
 for <barebox@lists.infradead.org>; Sun, 28 Feb 2021 19:07:18 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Date: Sun, 28 Feb 2021 20:07:07 +0100
Message-Id: <20210228190707.1451161-3-ahmad@a3f.at>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210228190707.1451161-1-ahmad@a3f.at>
References: <20210228190707.1451161-1-ahmad@a3f.at>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210228_140724_071161_F31494F2 
X-CRM114-Status: UNSURE (   8.37  )
X-CRM114-Notice: Please train this message.
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.29
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1231::1
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 3/3] MIPS: qemu-malta: make barebox Malta images detectable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

is_barebox_mips_head checks whether 0x10-0x16 is "barebox".
Have the Malta images provide this signature like other MIPS boards
already do. This makes bootm work.

Cc: Antony Pavlov <antonynpavlov@gmail.com>
Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/mips/boards/qemu-malta/lowlevel.S | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/mips/boards/qemu-malta/lowlevel.S b/arch/mips/boards/qemu-malta/lowlevel.S
index e4ecde45cfd7..98821e0426b2 100644
--- a/arch/mips/boards/qemu-malta/lowlevel.S
+++ b/arch/mips/boards/qemu-malta/lowlevel.S
@@ -40,8 +40,7 @@ ENTRY_FUNCTION(BOARD_PBL_START)
 	   0x1fc00010 address is reserved for BoardID
 	*/
 	.org	0x10
-	.word	0xffffffff
-	.word	0xffffffff
+	.asciiz	"barebox"
 
 __start:
 	mips_disable_interrupts
-- 
2.30.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

