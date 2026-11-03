Delivery-date: Tue, 03 Nov 2026 22:32:56 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xOM7k-006wXZ-0a
	for lore@lore.pengutronix.de;
	Tue, 03 Nov 2026 22:32:56 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id ECDA2202BAB
	for <lore@pengutronix.de>; Tue, 03 Nov 2026 22:32:51 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=kGZFKea2;
	dkim=pass header.d=puzzle.ch header.s=20211230 header.b=qcYK+zoW;
	dkim=pass header.d=puzzle.ch header.s=20211209 header.b=j+S54aXK;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=pass (policy=reject) header.from=puzzle.ch
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793741572;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=kMWHIA+JHMPaBWbpx896I1tFuUmKFCx2IJjzuBqGmd8=;
	b=cwhJOkw7nciLnBna6Jj/L3unsXpPaZEeJoai/fjv3GwslABHVXhBuqa1iZJl4L8xdKNscE
	Ujrt0fGAUnS5tcysfgaSJeX1rYEBRU+rW++8XvAwIrqpFbRBgVeMKo21FRdACq9OjRaTZZ
	HHWtvn3mZ8W1aZVGuwYVZUL193CtuacpGFSH9+UWdzQRIicEwhW1kGnDUCV3pzxiTWFnXn
	eEL5YPSOngV5yK6WUhbvcTvUu8HZCYQiygupsioavkSPGwxNzjyn+8VDO8ZEaIzs8c2AxJ
	websL8dFX/nMuQzLvF59MaA+bTu83aXe3eRNBwJB4/ecod5Bn4Gk4LCdG2XuxA==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=kGZFKea2;
	dkim=pass header.d=puzzle.ch header.s=20211230 header.b=qcYK+zoW;
	dkim=pass header.d=puzzle.ch header.s=20211209 header.b=j+S54aXK;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=pass (policy=reject) header.from=puzzle.ch
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793741572; a=rsa-sha256;
	cv=none;
	b=LxVXmsjvNzLzwM0wYSeTmMyhjxaBoyMiwzPYjpi1MXjOq9TdU4sKdexkXfRL0cd6NeHeZm
	tgl+0nCZX68mCl9QyCB4+iHvsucEhTeu1nfJQ+faURGvQsepgKAV741YSD90+tG7I25egS
	V8C6c6ajFIHhrDSfhoso2PRCwAHPaLup/Vx+ATjfOE3OAZTuRv2YK6350qDcSn+IXpWyvC
	f0Ef/IcZeq1j0wwcMD/DgJLl8tMOenYiySWVBmbdRVkfSHnrCbrKazCksZ1Hu+4nPvmxHd
	4mxBO5xgcfveRkjT8G9F5jDJilfbCxFTL4XIRas2Y92B3vlbwLFX9IA2bD+q2g==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=kMWHIA+JHMPaBWbpx896I1tFuUmKFCx2IJjzuBqGmd8=; b=kGZFKea2asdTJO
	/phMT35Ry9kCaVI0STRXwt5O0P4808qbDc08qvgb1KCrWNQOhxyt8+TiACY2LhKi1Bg0+1DQssiFv
	HMrI7pRiFPIwketIIVecrVrlOghXAkkQuc9xjWW/SQKTz8Aaii6QB4IUsG6TwXZKNAjkFyrIDn1qc
	JRncjRo+7lh2Dh8WZ5t9x1vySERmXACKKbXiiPcV13DoYkUAa5k0NC1OlAMdKHZPvlisBrNGkP/KA
	oDGjTDqxmKfe3iZit51lzLnKnnxsCDpR3/wRXDiHJea776vTdofWSSxP83nd45a+fIRV8DZAAjvPL
	vrNvMjrbuOD8DwESQ53w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOM6O-00000003iBJ-20RS;
	Tue, 03 Nov 2026 21:31:32 +0000
Received: from mx03.puzzle.ch ([45.81.71.124])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOM6K-00000003i3Q-2dra
	for barebox@lists.infradead.org;
	Tue, 03 Nov 2026 21:31:31 +0000
Received: from mailstore02.cloud.puzzle.ch (mail.puzzle.ch [IPv6:2a06:c00::5086])
	by mx03.puzzle.ch (Postfix) with ESMTPS id EF93E1B9;
	Tue,  3 Nov 2026 22:31:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=puzzle.ch; s=20211230;
	t=1793741479;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=kMWHIA+JHMPaBWbpx896I1tFuUmKFCx2IJjzuBqGmd8=;
	b=qcYK+zoWPXvGtjNUGb5jqTyBZnaIZ2u5DiLRjPoWG08n4Q+0kiCZJm8nxexX3L/7pjkJrX
	sKyohzq/6U4ZGAJQ+OARZnMdv5gRmViA48916zSmjemLtkc/aSppbFY4rbXhXPGLNLQxYb
	2mfl7mDFfXorMHL0obhGrci+wgttvHhxCAyZSyDf15suxFXYkRiOWLfqOCCdmaJtQ7JY7r
	4us8dtqDEm49LOHavnFyjEBF+62Bk44V994oPbM09o750V8lbbSdVO96FLXsnBRuehBTqA
	jUHQ3ril/JQnbJw69BcjnESuY9kunH7Omq81KgaEVV3fPUcJRwPmaZUOSdbXrQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=puzzle.ch; s=20211209;
	t=1793741479;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=kMWHIA+JHMPaBWbpx896I1tFuUmKFCx2IJjzuBqGmd8=;
	b=j+S54aXKvdZ0wahV6TCg02/JoQhtQGu/f42TUg3aL3pOj244rYjKHfpVbD2JxGMO5Ml6QM
	ZIMD97AwbHEDVIy/+k/hZdpywecOcODvTsd2e91D+Kknbgx1T+Pz167/+VVbdp+6xrFp4a
	jvvaEE3vf7/dDiSLTg8omk7+l2J8ZHX2JgkUUpoXUseBoghfr1k97cx/uqHV7NjISR3K3p
	67Cd0G6TCnIryZLCOihZ3RD6/uDpUuGNYdSTKZ5rfpBrPnRB1ij5pm8KwHIvg+VwMps4ZY
	CWN+tjUewEAPNts5BTixYw31lcuJ4brXXTmdGZWvYDDtb4/9xruTA2bWK4Y0mA==
From: Michael Grzeschik <grzeschik@puzzle.ch>
x-ms-reactions: disallow
Date: Tue, 03 Nov 2026 22:31:08 +0100
Subject: [PATCH 2/6] mtd: nand: orion: set Hamming ECC algorithm in
 ->attach_chip()
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261103-orion_kw_mvebu-v1-2-86442c0d283e@puzzle.ch>
References: <20261103-orion_kw_mvebu-v1-0-86442c0d283e@puzzle.ch>
In-Reply-To: <20261103-orion_kw_mvebu-v1-0-86442c0d283e@puzzle.ch>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 "open list:BAREBOX" <barebox@lists.infradead.org>
Cc: Michael Grzeschik <grzeschik@puzzle.ch>
X-Developer-Signature: v=1; a=openpgp-sha256; l=2414; i=grzeschik@puzzle.ch;
 h=from:subject:message-id; bh=GxLedt8CUD32sqQfO0Wt6/igkkNEAk7sMHvGNtzo7TE=;
 b=owEBbQKS/ZANAwAKAb9pWET5cfSrAcsmYgBq6lKkb2i+yqZW0mAtaYqNzLyEmUFlnzMfkkz0j
 /Wo5q1VXzmJAjMEAAEKAB0WIQQV2+2Fpbqd6fvv0Gi/aVhE+XH0qwUCaupSpAAKCRC/aVhE+XH0
 q9/vEACNed6eSJXMEaFbAwz/O9tsI0PHIxwgYkTwP2Pz1J6Cx1fT0Qsg5NtiyEUvtpAdmojvM+3
 iiQlNOyTV8NqfKAUpq0SsxdlKgbgbmD2oew0mIb1vXysFoRc9KGbfG3E6FHQs7Q3G9BzZjCju/R
 64fSqn52hftdb0Z1mOaGPCIpu8qm2S/CC/nru/jlj+GhYPsmj2ou6vNAURyVWYmmDiZ1+ro2LdG
 69zHexmJePzF+RJJs9hrF1BQcywObOnA5RwMa2OTK4oPp1RFcAefRGimVq5PlI6ZOcGXbsDgii7
 ocQzLR3knsqIPoMKuVmXS7ARXWzPjtZscAd6ePJ1iIMoR0RuXIz5SxX40RLdcPuLhBzKxqYZWow
 jzHtEr0oHSAHyY5XxeIey/mu68IxOGzT0YbDKT/lGK9oY86tDAf0vnQHI3ydk5HcR7UzBFGwRJD
 /UT41E/1uLlXUrjWxUGUg0O3dVysdPJcEAWv0PImy7v9ayhYSGyb0Fub8Jm6kGKJaYyyNSSwAar
 n/1FQUWfogdOFDQbrF8/Z+T0mfOKoOMegS5tntCqIjE2cG11C2BkADW9JubZRG3v8QKBsQj1dLk
 HNg2vwKeb8kCwCeRGyar+BkdIzgBkpFS9T3w/Slk2NQ/jZoI/IBe1X97lFTuI39xexhk/WFFzjm
 K0v1H09okI/S8yg==
X-Developer-Key: i=grzeschik@puzzle.ch; a=openpgp;
 fpr=957BC452CE953D7EA60CF4FC0BE9E3157A1E2C64
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261103_133128_918339_5ADA7F46 
X-CRM114-Status: GOOD (  14.09  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The driver selects software Hamming ECC before nand_scan(),
    but rawnand_dt_init() unconditionally overwrites chip->ecc.algo with the
   device tree setting. None of the Kirkwood device trees has an ECC p [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: ECDA2202BAB
X-Spamd-Result: default: False [-7.91 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[puzzle.ch,reject];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,puzzle.ch:s=20211230,puzzle.ch:s=20211209];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[grzeschik@puzzle.ch,barebox-bounces@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_FORWARDING(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_ALL(0.00)[];
	MISSING_XM_UA(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,puzzle.ch:+];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[grzeschik@puzzle.ch,barebox-bounces@lists.infradead.org];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=1];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: 6cmzw5ggzg3daexjde7rf1sutrby9tdw

The driver selects software Hamming ECC before nand_scan(), but
rawnand_dt_init() unconditionally overwrites chip->ecc.algo with the
device tree setting. None of the Kirkwood device trees has an ECC
property, so the algorithm ends up as NAND_ECC_ALGO_UNKNOWN and probing
fails:

  WARNING: at drivers/mtd/nand/raw/nand_base.c:5783/nand_set_ecc_soft_ops()!
  WARNING: Unsupported ECC algorithm!

leaving all boards with an orion NAND controller without NAND.

Do the same as the Linux orion_nand driver: keep the software engine as
default before scanning, and pick the Hamming algorithm in
->attach_chip(), which runs after the device tree has been parsed, if
neither the device tree nor anything else chose one.

Assisted-by: Claude:claude-opus-5-5
Signed-off-by: Michael Grzeschik <grzeschik@puzzle.ch>
---
 drivers/mtd/nand/raw/nand_orion.c | 20 +++++++++++++++++++-
 1 file changed, 19 insertions(+), 1 deletion(-)

diff --git a/drivers/mtd/nand/raw/nand_orion.c b/drivers/mtd/nand/raw/nand_orion.c
index c7fa4a08e9..68797b9b38 100644
--- a/drivers/mtd/nand/raw/nand_orion.c
+++ b/drivers/mtd/nand/raw/nand_orion.c
@@ -73,6 +73,19 @@ static void orion_nand_read_buf(struct nand_chip *chip, uint8_t *buf, int len)
 		buf[i++] = readb(io_base);
 }
 
+static int orion_nand_attach_chip(struct nand_chip *chip)
+{
+	if (chip->ecc.engine_type == NAND_ECC_ENGINE_TYPE_SOFT &&
+	    chip->ecc.algo == NAND_ECC_ALGO_UNKNOWN)
+		chip->ecc.algo = NAND_ECC_ALGO_HAMMING;
+
+	return 0;
+}
+
+static const struct nand_controller_ops orion_nand_controller_ops = {
+	.attach_chip = orion_nand_attach_chip,
+};
+
 static int orion_nand_probe(struct device *dev)
 {
 	struct resource *iores;
@@ -117,8 +130,13 @@ static int orion_nand_probe(struct device *dev)
 	chip->legacy.IO_ADDR_R = chip->legacy.IO_ADDR_W = io_base;
 	chip->legacy.cmd_ctrl = orion_nand_cmd_ctrl;
 	chip->legacy.read_buf = orion_nand_read_buf;
+	/*
+	 * The default ECC engine is software. The algorithm is set in
+	 * ->attach_chip(), after rawnand_dt_init() has overwritten it with the
+	 * (usually absent) device tree setting.
+	 */
 	chip->ecc.engine_type = NAND_ECC_ENGINE_TYPE_SOFT;
-	chip->ecc.algo = NAND_ECC_ALGO_HAMMING;
+	chip->legacy.dummy_controller.ops = &orion_nand_controller_ops;
 
 	WARN(width > 16, "%d bit bus width out of range", width);
 	if (width == 16)

-- 
2.53.0



