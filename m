Delivery-date: Fri, 15 Oct 2021 18:07:51 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mbPkN-0004uI-K2
	for lore@lore.pengutronix.de; Fri, 15 Oct 2021 18:07:51 +0200
Received: from [2607:7c80:54:e::133] (helo=bombadil.infradead.org)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mbPkM-0002HS-Ok
	for lore@pengutronix.de; Fri, 15 Oct 2021 18:07:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=v3ag8BH+K7ZxDIYjfmZcVBWjtNfbioT98oBG22EWRr0=; b=D0fBrst+Ppxowj
	baRmpBgFzWH3nInAf5mOJeg1abbowthA3rHruGdeeGY0OouoajyAV/oeZ8aLIgUB0ADxpQjgyMNNZ
	TRzUxvrLMleLN4bzK6G2d4mj38lI61RIl5B28IhtE/zNPlZ9D9EIk2xlFfZ31uvNDVn4Bm6KxaKNc
	uneTF7RluZr/Bx5ErkI+9BmzIcoKVWC6673TZmbNgw1z+yYmOuiB2chYuGRLDpm/2GEWqNiSXyDQ2
	0QKIxGr44yQNigGy8XtMQ95g2awSwODPnC4L2nXTglruZyGElbAXymjPpoby88fNDUZAV0F2AvWc5
	cmTxuGvbcFBzix8bjkAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mbPiZ-007zi0-K8; Fri, 15 Oct 2021 16:05:59 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mbPiP-007zej-7q
 for barebox@lists.infradead.org; Fri, 15 Oct 2021 16:05:50 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mbPiL-00025K-PQ; Fri, 15 Oct 2021 18:05:45 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mbPiL-0001ZE-G8; Fri, 15 Oct 2021 18:05:45 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 15 Oct 2021 18:05:44 +0200
Message-Id: <20211015160544.5783-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211015_090549_323472_43912652 
X-CRM114-Status: GOOD (  12.42  )
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
X-Host-Lookup-Failed: Reverse DNS lookup failed for 2607:7c80:54:e::133 (failed)
X-Broken-Reverse-DNS: no host name for IP address 2607:7c80:54:e::133
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,PTX_BROKEN_RDNS,RCVD_IN_DNSWL_MED,RDNS_NONE,
	SPF_HELO_NONE,SPF_NONE autolearn=no autolearn_force=no version=3.4.2
Subject: [PATCH master] ARM: psci: client: fix power off and reset via 64-bit
 secure monitor
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The PSCI function code is a 32-bit integer > 0x80000000, but the
the PSCI client code erroneously casted it to a signed integer.

On 32-bit systems, the cast later on to unsigned long restored the
original value, but on 64-bit system, we passed a very large 64-bit
number in the secure monitor call because of the sign extension.

This worked because TF-A seems to ignore the upper 32-bits anyway,
(tested with i.MX8MN), but for other secure monitors like the default
HVC implementation for QEMU ARM64 Virt machine this didn't hold true
for all commands, leading to aborts when doing reset or poweroff.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/psci-client.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/cpu/psci-client.c b/arch/arm/cpu/psci-client.c
index b5d0d3749702..7d5b3768b59e 100644
--- a/arch/arm/cpu/psci-client.c
+++ b/arch/arm/cpu/psci-client.c
@@ -15,7 +15,7 @@
 
 static struct restart_handler restart;
 
-static void __noreturn psci_invoke_noreturn(int function)
+static void __noreturn psci_invoke_noreturn(ulong function)
 {
 	int ret;
 
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

