Delivery-date: Fri, 19 Dec 2025 11:15:48 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWXWW-00DAGI-1a
	for lore@lore.pengutronix.de;
	Fri, 19 Dec 2025 11:15:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWXWV-0002VA-Kr
	for lore@pengutronix.de; Fri, 19 Dec 2025 11:15:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=z9aeIXsuNJ3YVjVxLLuGc8ltgjIajG184GefI483+x8=; b=NWACEkLaktPO7W6JNxSAx+qO6E
	XCXi3bEET/D3/wB1H309+7EyaYmy4SSL6KjtXIvBBOr2L9QyBXSewVkaoJC2xqGpMahYY9W/F/mtD
	D+sc5QiQeV6DgMj+v44UVk2bXAJtxzePusBbCBA0RPuTxql4SojgG9KRG0q7I3l6e7VF26jF+ffek
	e7PfSodddXBXSPwsgzLj2DC+BV5fK52jFN2HO55gQQL3BPtB2wLw8cg+IubEijTIrW+IKiXe02UID
	BVst4AT/zeDYkzJEfxMrNNjwfJBobVs1DCGWUqjsUoPVc0yWp5a08B8MIRo1K+swlfopFS8L+EgTW
	CAR+d24A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWXVp-0000000A341-2iac;
	Fri, 19 Dec 2025 10:15:05 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWXVo-0000000A323-0170
	for barebox@bombadil.infradead.org;
	Fri, 19 Dec 2025 10:15:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=z9aeIXsuNJ3YVjVxLLuGc8ltgjIajG184GefI483+x8=; b=lGYHltJDdqP6xr/uReVeu5yqgp
	bYTLgdfJZOzTsRU+KP0SomAlBP9r5KdprTYX13Vij35YZcihTvySuy1oHC0VRjo8xkqu0QOtn+D7y
	rWQ0G+Np4Kh1P+yvbOlF97umLi/mmtbJqrOyciSiRX8GQj+THk4r7ya5xO5us/oWtx2Zmw416I6M4
	fpkneR//MdWvXdhiDS9444szbweJ0xeconhAli6f9Bz2tTn5hbSiXEdVcM0HhxQakGsNQAH3XJ6I2
	rs2u+J5qw4hJ/AErdFhnY2B/mRHq5o0ZPPri1alD9TmAbbqHRSe+Q16Ud2devrCmA4FjAZmm49O2U
	I77bJZMw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWWeG-0000000AYye-26p1
	for barebox@lists.infradead.org;
	Fri, 19 Dec 2025 09:19:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXVh-00022M-BB; Fri, 19 Dec 2025 11:14:57 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXVg-006RNS-37;
	Fri, 19 Dec 2025 11:14:56 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXVg-0000000320L-3d0S;
	Fri, 19 Dec 2025 11:14:56 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Maud Spierings <maud_spierings@hotmail.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 19 Dec 2025 10:20:44 +0100
Message-ID: <20251219101453.2806980-9-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251219101453.2806980-1-a.fatoum@pengutronix.de>
References: <20251219101453.2806980-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251219_091944_863857_14B6D494 
X-CRM114-Status: GOOD (  10.04  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2025.09.y 08/49] ARM: i.MX: Fix the iomux DSE defines for imx8mp
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Maud Spierings <maud_spierings@hotmail.com>

The DSE field has a deceptive layout, DSE 2 is a higher value than DSE 4

See reference manual 8.2.2.1.3 or the description of any IOMUXC_SW_PAD_X
register in 8.2.4.144+

Fixes: 3c0d42752e9a ("arm: imx: add initial imx8mp support")
Signed-off-by: Maud Spierings <maud_spierings@hotmail.com>
Link: https://lore.barebox.org/20251019-iomux-v1-1-e049726947ce@hotmail.com
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
(cherry picked from commit 7f0f37f7bc7750f31f427ca271ccfe4c9a763fde)
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/mach/imx/iomux-mx8mp.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/include/mach/imx/iomux-mx8mp.h b/include/mach/imx/iomux-mx8mp.h
index 98e340d3dad1..da5cfe3048ca 100644
--- a/include/mach/imx/iomux-mx8mp.h
+++ b/include/mach/imx/iomux-mx8mp.h
@@ -1081,8 +1081,8 @@ enum {
 };
 
 #define MX8MP_PAD_CTL_DSE1	(0 << 1)
-#define MX8MP_PAD_CTL_DSE2	(1 << 1)
-#define MX8MP_PAD_CTL_DSE4	(2 << 1)
+#define MX8MP_PAD_CTL_DSE2	(2 << 1)
+#define MX8MP_PAD_CTL_DSE4	(1 << 1)
 #define MX8MP_PAD_CTL_DSE6	(3 << 1)
 #define MX8MP_PAD_CTL_FSEL	BIT(4)
 #define MX8MP_PAD_CTL_ODE	BIT(5)
-- 
2.47.3



