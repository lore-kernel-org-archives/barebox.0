Delivery-date: Sat, 01 Aug 2026 14:20:03 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wq8h7-005BR3-03
	for lore@lore.pengutronix.de;
	Sat, 01 Aug 2026 14:20:03 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id EF5B62008B7
	for <lore@pengutronix.de>; Sat, 01 Aug 2026 14:20:00 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="MJ/qK0cd";
	dkim=pass header.d=foxmail.com header.s=s201512 header.b=fOydk0Q8;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=pass (policy=none) header.from=foxmail.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Date:Subject:Cc:To:From:Message-ID:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=UmOSy1NeCVxXZo3kqtnnQmJNKwGeOsJmtdV0/0uPzQw=; b=MJ/qK0cdBdKpeM5pNM3I5KNJOk
	+vYY6BBKD53G70vcqvOL4oTro3uSZkSiHuLV/Y1fQr9I91vTS6gsMqukOP5Na/IjBg+ejKTSJodRJ
	36VSvVM2EldJ14mg0ucBRJm7dOiwbRKgLdq09qH9iaD/0kst47q7VLP9SJvH7VpYjkpkwkcPrASdD
	87deqA+3FXfP2uXD8k+OI/SPh8HmeOSzEpv2ooUu/FEirKg6k5DTlTvTexnRi+ncGW+WFIRlIrEuI
	Wki3pmf7zrL9xiUdcVSMrRGpD5OvZbmUvXL1cs8EasCWcQpbq1HGCGbHOjEIl/7Sm9996oM24QPeF
	jYjGpUYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wq8fp-0000000EdxH-0kFJ;
	Sat, 01 Aug 2026 12:18:41 +0000
Received: from out203-205-221-236.mail.qq.com ([203.205.221.236])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wq8fl-0000000Edwj-2z7S
	for barebox@lists.infradead.org;
	Sat, 01 Aug 2026 12:18:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foxmail.com;
	s=s201512; t=1785586708;
	bh=UmOSy1NeCVxXZo3kqtnnQmJNKwGeOsJmtdV0/0uPzQw=;
	h=From:To:Cc:Subject:Date;
	b=fOydk0Q8e3ZOdo0ULaif0MlFaKHD/VD4lDGMYBWzehGeTOJFldlv8h7xWOeb9l6QD
	 78jEWfzBmRkkw6pnkiXifsztVMIcFTYoZn+vhKqPeeE+g0QX8DYnqG0tjpgnFWnGE0
	 l8sfp9NoIyca3tSZBbLmkT+fd6yG0+TIMPNpiTlY=
Received: from MACBOOKPro.localdomain ([49.77.218.122])
	by newxmesmtplogicsvrszc50-0.qq.com (NewEsmtp) with SMTP
	id 49A318F1; Sat, 01 Aug 2026 20:18:26 +0800
X-QQ-mid: xmsmtpt1785586706tb7ro4820
Message-ID: <tencent_DD27DC34878B1D3783E35CF6A02E85C9D20A@qq.com>
X-QQ-XMAILINFO: Mj/iAmGmt8LdZuMVRm1B21jwusXoes39535lGt6YI5mWiDy2UlG9ls7Uuinmf/
	 vdPkhp1ny+BZjRSwuqQ/OFSudbFzeFRiRzDi8sRhsN85we3TZsepRrzEam1HcCtakEGqWhCXb8wL
	 z1mxQ2K7ddbyZtQqvDJ3owjq4O5eI+ID3kkeUyBMbqi4q8WqHF4cDogMwFd8i+gz7BDqBeMRAPjo
	 2igQejbzQbkY9mQfw5Y+9eBal69I5b/O9CLsVl0Nm0QUlRBVjiHUEkOmUbrMvnR97Srd4CbuJ6D7
	 4ytOaj0U81+XkRvj7SfZPj0ZEqb7cxmP6e9f6aicLg3ugckOAKlMLQL97l2gHryp4NAVKzmHv5Bg
	 qiAWauc7ND17c35ESAYGwXAP2Zdz0v82bI9+o5LLRz5uGZqDAUFfIPO0irAawDGFgkf0pv+I3SZZ
	 uPkjoU2fuxIIV2xtjof7COlIr1ffTglpopQhDNd1d+ItlgRd4CsgEpEBa41YugzlSzjRQFSyu3w0
	 bxkBF3x+rjZfxMg+yhdeAQkalUWPR+zTDzdC10zDssRwU+8iQcHhkIaoEgKcH+mHgZbMbWsueS6a
	 CJlnlgBnteuY1g1kl9G0FpkAX1ILC5Z9CPEMWGetIC42BEo3L1mNeyuwb6RJJnShkJ5rXGzcmsPC
	 Yu6zMGZ3s+03s6O7MciwgV7LB6WgR2dfE7TUryGR4Tlp7VKbYcr+LLA8CtelJm2FjacJZFQtPSbS
	 IEsl5Tcqx4DdgBxFyDnpA9Dokq0AXgPQRsokMeMqYWSJVu9jPsMRC9L9MVK/DBYmbAQXj05X2OdD
	 pp3UgEC8eKmW1C3+Q0nTwNFjdStvwB6oboeAaVjUsnFZswnaQHRbVjh7ZseaxvUEyVF+3fpKw+ET
	 n13h+zhIw3H5NeW9LEvyCRDBeDAAbqeLUl2rW043N/U6py4N7L5dljz5b++Spa2tvGJkG0+BFufP
	 lNFj5MvvnlvTCrJRMBAIh6tq/3zZ4bd69UMRimSb30PgKweEGzDAu6bqX2xdFbFwDuoSX0DfqaEW
	 rycwgmQIQl6Rhg1HBLqcJ+geeWySChowW1YVvgqagieqhRIf9YJzbi3nz5Mzpw5x8DFwK7JJ1v5w
	 oZpZFMowS1RAH8DjQaseErUtYC38E+KY5ZLuiU83YX+nNUmTdo0uXfzLieK0ux/ROJbL3DRXMRaA
	 ZfRQd6XiZpCepkxaD8zKUat/c/
X-QQ-XMRINFO: MPJ6Tf5t3I/ylTmHUqvI8+Wpn+Gzalws3A==
From: zhengxiaojun <zheng.xiaojun@foxmail.com>
To: barebox@lists.infradead.org
Cc: zhengxiaojun <zheng.xiaojun@foxmail.com>
Subject: [PATCH] net: designware_eqs: set upper 32bit address for DMA descriptors to support 64-bit addressing
Date: Sat,  1 Aug 2026 20:17:48 +0800
X-OQ-MSGID: <20260801121748.35294-1-zheng.xiaojun@foxmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260801_051838_073951_1079D14C 
X-CRM114-Status: GOOD (  10.70  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Signed-off-by: zhengxiaojun --- drivers/net/designware_eqos.c
    | 29 +++++++++++++++++++ 1 file changed, 19 insertions(+), 10 deletions(-)
    diff --git a/drivers/net/designware_eqos.c b/drivers/net/designware_eqos.c
    index a6e9d8677f..332dc7eb73 100644 --- a/drivers/net/designware_eqos.c +++
    b/drivers/net/designware_eqos.c @@ -17,6 +17,7 @@ [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail provider
                             [zheng.xiaojun(at)foxmail.com]
 -0.0 HELO_STATIC_HOST       Relay HELO'd using static hostname
 -0.0 DMARC_PASS             DMARC pass policy
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
X-Spamd-Result: default: False [-0.11 / 15.00];
	SEM_URIBL(3.50)[foxmail.com:email,foxmail.com:dkim];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	RCVD_UNAUTH_PBL(2.00)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,foxmail.com:s=s201512];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	BAD_REP_POLICIES(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[foxmail.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[foxmail.com];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RECEIVED_SPAMHAUS_PBL(0.00)[49.77.218.122:received];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[zheng.xiaojun@foxmail.com,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	R_SPF_ALLOW(0.00)[+mx:c];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DMARC_POLICY_ALLOW(0.00)[foxmail.com,none];
	DKIM_TRACE(0.00)[lists.infradead.org:+,foxmail.com:+];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: EF5B62008B7
X-Stat-Signature: ifyx5noxc38s3br7swzw5q1psnnj3emn

Signed-off-by: zhengxiaojun <zheng.xiaojun@foxmail.com>
---
 drivers/net/designware_eqos.c | 29 +++++++++++++++++++----------
 1 file changed, 19 insertions(+), 10 deletions(-)

diff --git a/drivers/net/designware_eqos.c b/drivers/net/designware_eqos.c
index a6e9d8677f..332dc7eb73 100644
--- a/drivers/net/designware_eqos.c
+++ b/drivers/net/designware_eqos.c
@@ -17,6 +17,7 @@
 #include <linux/iopoll.h>
 #include <linux/time.h>
 #include <linux/sizes.h>
+#include <linux/bitfield.h>
 
 #include "designware_eqos.h"
 
@@ -416,6 +417,7 @@ static int eqos_start(struct eth_device *edev)
 	u32 val, tx_fifo_sz, rx_fifo_sz, tqs, rqs, pbl;
 	unsigned long last_rx_rf_desc;
 	unsigned long rate;
+	dma_addr_t dma_addr;
 	u32 mode_set;
 	int ret;
 	int i;
@@ -632,13 +634,15 @@ static int eqos_start(struct eth_device *edev)
 		writel(EQOS_DESC3_BUF1V | EQOS_DESC3_OWN, &rx_rf_desc->des3);
 	}
 
-	writel(0, &eqos->dma_regs->ch0_txdesc_list_haddress);
-	writel((ulong)eqos->tx_descs, &eqos->dma_regs->ch0_txdesc_list_address);
+	dma_addr = (dma_addr_t)eqos->tx_descs;
+	writel(upper_32_bits(dma_addr), &eqos->dma_regs->ch0_txdesc_list_haddress);
+	writel(lower_32_bits(dma_addr), &eqos->dma_regs->ch0_txdesc_list_address);
 	writel(EQOS_DESCRIPTORS_TX - 1,
 	       &eqos->dma_regs->ch0_txdesc_ring_length);
 
-	writel(0, &eqos->dma_regs->ch0_rxdesc_list_haddress);
-	writel((ulong)eqos->rx_descs, &eqos->dma_regs->ch0_rxdesc_list_address);
+	dma_addr = (dma_addr_t)eqos->rx_descs;
+	writel(upper_32_bits(dma_addr), &eqos->dma_regs->ch0_rxdesc_list_haddress);
+	writel(lower_32_bits(dma_addr), &eqos->dma_regs->ch0_rxdesc_list_address);
 	writel(EQOS_DESCRIPTORS_RX - 1,
 	       &eqos->dma_regs->ch0_rxdesc_ring_length);
 
@@ -720,8 +724,8 @@ static int eqos_send(struct eth_device *edev, void *packet, int length)
 	if (dma_mapping_error(edev->parent, dma))
 		return -EFAULT;
 
-	tx_desc->des0 = (unsigned long)dma;
-	tx_desc->des1 = 0;
+	tx_desc->des0 = lower_32_bits(dma);
+	tx_desc->des1 = upper_32_bits(dma);
 	tx_desc->des2 = length;
 	/*
 	 * Make sure the compiler doesn't reorder the _OWN write below, before
@@ -780,9 +784,10 @@ static void eqos_recv(struct eth_device *edev)
 
 	/* Read Format RX descriptor */
 	rx_rf_desc = &eqos->rx_descs[eqos->rx_currdescnum];
-	rx_rf_desc->des0 = dma;
-	rx_rf_desc->des1 = 0;
+	rx_rf_desc->des0 = lower_32_bits(dma);
+	rx_rf_desc->des1 = upper_32_bits(dma);
 	rx_rf_desc->des2 = 0;
+
 	/*
 	 * Make sure that if HW sees the _OWN write below, it will see all the
 	 * writes to the rest of the descriptor too.
@@ -827,7 +832,8 @@ static int eqos_init_resources(struct eqos *eqos)
 			goto err_free_rx_bufs;
 		}
 
-		rx_rf_desc->des0 = dma;
+		rx_rf_desc->des0 = lower_32_bits(dma);
+		rx_rf_desc->des1 = upper_32_bits(dma);
 		eqos->dma_rx_buf[i] = dma;
 
 		p += EQOS_MAX_PACKET_SIZE;
@@ -942,13 +948,16 @@ int eqos_probe(struct device *dev, const struct eqos_ops *ops, void *priv)
 
 void eqos_remove(struct device *dev)
 {
+	dma_addr_t	dma;
 	struct eqos *eqos = dev->priv;
 
 	eth_unregister(&eqos->netdev);
 
 	mdiobus_unregister(&eqos->miibus);
 
-	dma_free(phys_to_virt(eqos->rx_descs[0].des0));
+	dma = eqos->rx_descs[0].des1;
+	dma = (dma << 32) + eqos->rx_descs[0].des0;
+	dma_free(phys_to_virt(dma));
 	dma_free_coherent(DMA_DEVICE_BROKEN,
 			  eqos->tx_descs, 0, EQOS_DESCRIPTORS_SIZE);
 }
-- 
2.43.0



