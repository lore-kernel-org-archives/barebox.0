Delivery-date: Tue, 25 Aug 2026 03:23:12 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wyfsd-006ty0-1P
	for lore@lore.pengutronix.de;
	Tue, 25 Aug 2026 03:23:12 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id A90B7200F47
	for <lore@pengutronix.de>; Tue, 25 Aug 2026 03:23:11 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=fkJGh16P;
	dkim=none ("invalid DKIM record") header.d=cetola.net header.s=default header.b=Nmc0KKYE;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QWrb0zr3SHoY4wYJ9nFxojrFfr8LYhZ3SeA1m2fia+g=; b=fkJGh16PAu65Gr
	v19i/uce2UnjYSl+8CaRwQHzLrZywaZ0n6wHbkSTspDeFvvrvcfdqfV+xgnOLfMGuvrKF/L52BXFr
	1AzvOe0267eZS6Ud+zb4GXPE8wp+fHhu+JWsVAx/y3uDokxhajhabqnisRWkr9b5Bc/d4veouD/Bs
	EMyHXccKY/8HemkRSM+UuSzgsXW/LjSRl/LMfZfPS0JZ2LFiG0OZdEVotzhNLGx4HfCr8wn3Tap2o
	1FHyxPnnaTifiMX/imynjjT4nNp7jWRjoc4kBXAKB57KoUMS8vS8T4kGmq87dtAqKx32F5S65yJy6
	pS2NKZjqY51tpW+rs96w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyfrE-000000000S1-3YJh;
	Tue, 25 Aug 2026 01:21:44 +0000
Received: from omta38.uswest2.a.cloudfilter.net ([35.89.44.37])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyfrA-000000000RZ-1wUJ
	for barebox@lists.infradead.org;
	Tue, 25 Aug 2026 01:21:43 +0000
Received: from eig-obgw-6004b.ext.cloudfilter.net ([10.0.30.210])
	by cmsmtp with ESMTPS
	id ybr2wd62Fv0ndyfr8wzMxs; Tue, 25 Aug 2026 01:21:38 +0000
Received: from box2192.bluehost.com ([50.87.253.143])
	by cmsmtp with ESMTPS
	id yfr5wfqxnBvN0yfr6w1ohr; Tue, 25 Aug 2026 01:21:36 +0000
X-Authority-Analysis: v=2.4 cv=JME7s9Kb c=1 sm=1 tr=0 ts=6a8cee20
 a=j14/dPpTP3/5aO8YB4ELDw==:117 a=j14/dPpTP3/5aO8YB4ELDw==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=jNmq5YGq058A:10 a=bC-a23v3AAAA:8
 a=wTo936TsAAAA:8 a=JfrnYn6hAAAA:8 a=TJSGI3GLdX_B1jmKuP0A:9 a=QEXdDO2ut3YA:10
 a=-FEs8UIgK8oA:10 a=FO4_E8m0qiDe52t0p3_H:22 a=J3I8QpufI4RFOXkfet32:22
 a=1CNFftbPRP8L7MoqJWF3:22 a=dWMlSAZEh1Dptg_Be0X5:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=cetola.net;
	s=default; h=Cc:To:Message-Id:Content-Transfer-Encoding:Content-Type:
	MIME-Version:Subject:Date:From:Sender:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=QWrb0zr3SHoY4wYJ9nFxojrFfr8LYhZ3SeA1m2fia+g=; b=Nmc0KKYEtUIgLXdP8y8Y2oPfn4
	XAcj8xShj2CF6vgB62aqqTQ6i9xwojuQPDFGcduWajBsh0M/ZnPFPIYx4T3epR8RvjTsKGpYekmvy
	OmcSu3wh57hm8xm4mhFc0zYOIrBjFjDeNPgQ2MsrhH92AFtLoWtfDoqGQ3bk9zDOXng8=;
Received: from [71.238.14.13] (port=46250 helo=ishmael.local)
	by box2192.bluehost.com with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.99.5)
	(envelope-from <stephano@cetola.net>)
	id 1wyfr5-0000000102j-2W6N;
	Mon, 24 Aug 2026 19:21:35 -0600
From: Stephano Cetola <stephano@cetola.net>
Date: Mon, 24 Aug 2026 18:21:05 -0700
Subject: [PATCH v3] spi: rockchip: initialize bus_num to -1
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260824-send-spi-rockchip-busnum-v3-1-96ef89a157f7@cetola.net>
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/42Nyw6CMBBFf4V0bQ3TIg9X/odxQcsg9dGSTiEaw
 r9bMC5cmLg8yb3nTIzQGyS2TybmcTRknI0gNwnTXW3PyE0TmYlU5GkpgBPahlNvuHf6qjvTczW
 QHe68rhQA5AhZvWPx3ntszWNVH09vpkFdUIfFtyw6Q8H559oeYdl9MuJ3ZgQOXLWVhlIWZY7ZQ
 WNwt3prMbClM4p/TSKa0jaTssi1khV8meZ5fgGPsAlzHQEAAA==
X-Change-ID: 20260821-send-spi-rockchip-busnum-a9b1116e14a5
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.15.2
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - box2192.bluehost.com
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - cetola.net
X-BWhitelist: no
X-Source-IP: 71.238.14.13
X-Source-L: No
X-Exim-ID: 1wyfr5-0000000102j-2W6N
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (ishmael.local) [71.238.14.13]:46250
X-Source-Auth: stephano@cetola.net
X-Email-Count: 3
X-Org: HG=bhshared;ORG=bluehost;
X-Source-Cap: Y2V0b2xhbmU7Y2V0b2xhbmU7Ym94MjE5Mi5ibHVlaG9zdC5jb20=
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfDuG4AsB6kVR3JDa3MQ456mVtbgwryz43qEFp5kpukm2Kx990jjmTTeGZtXrR9tZGDZbSiEdnnoFPmi/vj9v0d25SwFjr68tgKOcDfhnDzozbo2aVgWw
 eJbpaaIHMOAmnC4s4gGGJxWwY1g2cnFxHn75NaWhqIiBu+hJ58zA34EOwyCV5GekFflG3aohH6DlhZRsGQfNBm5MJcQCttz7zII=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260824_182140_720818_7A4DC797 
X-CRM114-Status: GOOD (  11.42  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  spi_register_controller() only runs the OF alias lookup when
    ctrl->bus_num is negative. This driver's kzalloc'd ctlr leaves bus_num at
    0. The lookup gets skipped. Every Rockchip SPI controller ends up [...] 
 
 Content analysis details:   (-0.4 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [35.89.44.37 listed in list.dnswl.org]
  1.3 RCVD_IN_BL_SPAMCOP_NET RBL: Received via a relay in bl.spamcop.net
                 [Blocked - see <https://www.spamcop.net/bl.shtml?35.89.44.37>]
  0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [35.89.44.37 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
  0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
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
X-Stat-Signature: k7t6iofkcxditxgfzu8ii4enames4u3d
X-Spamd-Result: default: False [-7.41 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[cetola.net];
	FORGED_SENDER_FORWARDING(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	DKIM_MIXED(0.00)[];
	FORGED_SENDER(0.00)[stephano@cetola.net,barebox-bounces@lists.infradead.org];
	R_DKIM_PERMFAIL(0.00)[cetola.net:s=default];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	TO_DN_ALL(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stephano@cetola.net,barebox-bounces@lists.infradead.org];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROM(0.00)[];
	RECEIVED_SPAMHAUS_PBL(0.00)[71.238.14.13:received];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	HAS_X_SOURCE(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[35.89.44.37:received];
	HAS_X_ANTIABUSE(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,cetola.net:~]
X-Rspamd-Queue-Id: A90B7200F47

spi_register_controller() only runs the OF alias lookup when
ctrl->bus_num is negative. This driver's kzalloc'd ctlr leaves
bus_num at 0. The lookup gets skipped. Every Rockchip SPI controller
ends up on bus 0.

Any board that enables two Rockchip SPI controllers at once hits this
bug. Both end up on bus 0. Looking one up by bus number can then
return the wrong controller.

Use -1 here to trigger the lookup from the device tree. No board board
file deliberately sets the id.

Fixes: 1efba64ba04 ("spi: add rockchip spi controller support")
Signed-off-by: Stephano Cetola <stephano@cetola.net>
---
We saw this on the MNT Pocket Reform (RK3588S). spi@feb20000 returns
the PMIC controller instead of the intended gpio-spi RP2040 bus. The
barebox spi command then does a write+read through the Rockchip SPI
driver, which programmes the hardware in XFM_RO (RX-only) mode for
the read phase. In that mode dummy TXDR writes don't generate clock
pulses, the RX FIFO never fills, and rockchip_spi_pio's while(1) loop
never exits.
---
Changes in v3:
- Initialize bus_num to -1 directly. Copying dev->id worked by
  coincidence, not by design.
- Rewrote the commit message to explain why -1 is correct, per
  Sascha's review.
- Link to v2: https://patch.msgid.link/20260822-send-spi-rockchip-busnum-v2-1-0f43376cb391@cetola.net

Changes in v2:
- Updated commit message for clarity.
- Link to v1: https://patch.msgid.link/20260822-send-spi-rockchip-busnum-v1-1-bf9c183786e4@cetola.net

To: Sascha Hauer <s.hauer@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
---
 drivers/spi/spi-rockchip.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/spi/spi-rockchip.c b/drivers/spi/spi-rockchip.c
index 1e81e9393f..0ee31c1f55 100644
--- a/drivers/spi/spi-rockchip.c
+++ b/drivers/spi/spi-rockchip.c
@@ -514,7 +514,7 @@ static int rockchip_spi_probe(struct device *dev)
 		goto err_put_ctlr;
 	}
 
-//	ctlr->bus_num = pdev->id;
+	ctlr->bus_num = -1;
 //	ctlr->mode_bits = SPI_CPOL | SPI_CPHA | SPI_LOOP | SPI_LSB_FIRST;
 
 	/*

---
base-commit: 9bc1a26592a59919d2ee8c60c273d87d3d9f2e81
change-id: 20260821-send-spi-rockchip-busnum-a9b1116e14a5



