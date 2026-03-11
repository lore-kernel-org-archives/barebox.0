Delivery-date: Wed, 11 Mar 2026 12:07:19 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w0HPK-00AQOp-2o
	for lore@lore.pengutronix.de;
	Wed, 11 Mar 2026 12:07:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w0HPL-00080D-7e
	for lore@pengutronix.de; Wed, 11 Mar 2026 12:07:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wAxtfyCLoEU+R5F4U1gDtwtPt8elLuDzL2tmB9OoFRw=; b=seySuVRCnNXa++
	1VEXEPP57wY8uoVJo9FeXbai3J8hcJnNv2OQIr3zfVV3v+yVpFrotcUrvGhFEGdiUdkjw3gCICV1y
	laQDYpGY8VOsP2cMOxQy4od6ERzwbIf2BVYjO+7D5ecLc2CWA1uhtVggpYA9VbvGivnGeGlrJoPKU
	kwqXmB2/qB9IyF2B/oF7ch86PalTPjn7wQzmHpb21Yx9bAU3p06urLMNtOjXdTdRp9V4SnzDA1A1G
	8lNJexLVCRNoIl3pZpCMNhBxgj5uso8rUuZRhMWG0DrX4cdLQx3zzNG1wDPP7RJsWJ9uPsJgAbFvB
	EZq3gWsz/s4yZRHidCJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0HOu-0000000BTB4-0OzH;
	Wed, 11 Mar 2026 11:06:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0HOs-0000000BTAD-1pQJ
	for barebox@lists.infradead.org;
	Wed, 11 Mar 2026 11:06:51 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1w0HOq-0007lL-NP; Wed, 11 Mar 2026 12:06:48 +0100
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Wed, 11 Mar 2026 12:06:38 +0100
Message-Id: <20260311-agilex5-qspi-v1-0-be8a8e1318e1@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAL5MsWkC/x3MTQqAIBBA4avIrBP8QaGuEi3EJhsIM4UQxLsnL
 b/Few0KZsICC2uQ8aVCdxyQEwN/uhiQ0z4MSigrtJTcBbqwGv6URNw4gzgLL7Q1MJKU8aD679a
 t9w9QmpsdXgAAAA==
X-Change-ID: 20260311-agilex5-qspi-5a5ee90c0365
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260311_040650_498486_1CDC3A1A 
X-CRM114-Status: UNSURE (   7.51  )
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
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 0/4] arm: socfpga: mailbox_s10: cleanup and error handling
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Agilex 5, barebox uses the mailbox_s10 to gain access to the QSPI
flash. Depending on the system configuration, the SDM may deny this
access. barebox assumes that the access always works and surprisingly
fails, if this isn't the case. Add at least some error messages for this
situation.

While at it, cleanup the code to make it more readable and easier to
follow.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
Michael Tretter (4):
      arm: socfpga: mailbox_s10: make retry logic more visible
      arm: socfpga: mailbox_s10: cleanup send command
      arm: socfpga: mailbox_s10: add error messages for QSPI
      arm: socfpga: mailbox_s10: handle error 0x8f explicitly

 arch/arm/mach-socfpga/mailbox_s10.c | 43 ++++++++++++++++++++++---------------
 1 file changed, 26 insertions(+), 17 deletions(-)
---
base-commit: 019645e2b1cf0561afa7dd043e169eff416123ee
change-id: 20260311-agilex5-qspi-5a5ee90c0365

Best regards,
-- 
Michael Tretter <m.tretter@pengutronix.de>



