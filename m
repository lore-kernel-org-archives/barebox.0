Delivery-date: Mon, 04 Mar 2024 20:05:38 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDd4-008dDv-1S
	for lore@lore.pengutronix.de;
	Mon, 04 Mar 2024 20:05:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDd3-0000mU-Ny
	for lore@pengutronix.de; Mon, 04 Mar 2024 20:05:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dPrdQMgi9QKe1VKiD1yQbDgzsz/eeyW1Q/tBrQvVFrk=; b=vrRqOA0YjobgSpRRE7r6+gkie0
	CkJbXsVPjPCwJvCOqNb6qViVTkZHuMUXhDyc5b+U9j9VEi7oRKgFMCxeKKh7zsaUP+ZvRZcXWh3Hi
	+QIeqFQoPm8YRhvYVhmpBdv70CtAEbKMl27YbZjozHUq5YkhdjOa6exTsGL/Uq9PrBd2ZLHUfcOtW
	568/yrAlKqq3ic6rcOiIbxo3r+CDAUA3wWIAuS8KBj3TgF2ngjDU1L89aRUeQdMWCpHsu+YrG/jR8
	xkkDmHZ9l09eu29Fh3UIKri8X2dUXi2eok+l4u6NGhehcFD8CQNasKmt5ennCKbAWjcDZMdblYFhz
	AhvpcxBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDcV-0000000AJxW-3jIZ;
	Mon, 04 Mar 2024 19:05:04 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaP-0000000AIRq-49yE
	for barebox@bombadil.infradead.org;
	Mon, 04 Mar 2024 19:02:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=dPrdQMgi9QKe1VKiD1yQbDgzsz/eeyW1Q/tBrQvVFrk=; b=DKpjT0jstZ+PtIL1ElAR6FgTTq
	qd/8e6Y6sde0JmTa4dnlc8uehuWFuXprDGbsRTyEHduejWg+2Ii7ScuLMqkluEv/vj7ZZABvlaWnh
	G1ee0HjFQaIHENkUPes/7ib99X+HkI+1Jy9p8OLUIoa9D2zUgIgnPmpoLCdfQgpseMbGMaUA14iGG
	wu7o44khVvkKzKCYTGsG6vUa19cno9tbZNvQzTxEl/y1HKD7RRT6VwvKo5L/jFC06Pq+YKCCxtEI2
	vKQPRcR7N94jXSejtYljH8d57GsEiuz06HeTP1/1FtI85TAs/hfVROd3suQA4lsb7E54Uo2J3OxD4
	TeVEhUaw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaK-000000051va-1986
	for barebox@lists.infradead.org;
	Mon, 04 Mar 2024 19:02:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaJ-0006Ht-2J; Mon, 04 Mar 2024 20:02:47 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaI-004PML-H1; Mon, 04 Mar 2024 20:02:46 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDYL-00Ed9V-20;
	Mon, 04 Mar 2024 20:00:46 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  4 Mar 2024 19:59:42 +0100
Message-Id: <20240304190038.3486881-58-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
References: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_190248_422644_A88C7F9E 
X-CRM114-Status: GOOD (  13.27  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 057/113] ARM64: runtime-offset: make get_runtime_offset fully PIC
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

get_runtime_offset returns the offset that needs to be added onto
code addresses to arrive at the runtime address. This is 0 after code
relocation and the function calculates it by keeping a reference to _text
and substituting it from the actual _text address, which is found out in
a position-independent manner.

For enabling barebox PBL text section to be mappable W^X, we need to
avoid relocation entries within code, so let's move the runtime offset
into the data section, which is always mapped writable.

As ldr has only a 4K range for label references, we switch to ldr_l,
which has a 4G range.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/lib64/runtime-offset.S | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm/lib64/runtime-offset.S b/arch/arm/lib64/runtime-offset.S
index 822e323c142e..b10c104b4dd0 100644
--- a/arch/arm/lib64/runtime-offset.S
+++ b/arch/arm/lib64/runtime-offset.S
@@ -11,10 +11,12 @@
  */
 ENTRY(get_runtime_offset)
 	adr x0, _text
-	ldr x1, linkadr
+	ldr_l x1, linkadr
 	subs x0, x0, x1
 	ret
+ENDPROC(get_runtime_offset)
 
+.section ".data.runtime_offset","a"
 .align 3
 linkadr:
 /*
@@ -24,4 +26,3 @@ linkadr:
  * use _text here since that is 0x0 and is correct without relocation.
  */
 .quad _text
-ENDPROC(get_runtime_offset)
-- 
2.39.2



