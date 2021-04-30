Delivery-date: Fri, 30 Apr 2021 19:58:31 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lcXPL-0005Zt-4t
	for lore@lore.pengutronix.de; Fri, 30 Apr 2021 19:58:31 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lcXPK-0003ZH-FO
	for lore@pengutronix.de; Fri, 30 Apr 2021 19:58:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KBP8xpCAs6QeBPPDCPnZU8/wjN6knYN4BQPso6tZhA8=; b=OB0e/EoazKXGDOqF/hm4PyUAn
	Vz34hJqszKoUf/ThONmMNhA53sEKcVP0VcHfwBD6OVXp5Fu73mFg+8mteuHudi908uJQ1+u6IkLvj
	49insh+EFQAeQKnWHEDtJZWtG5uF38vw2CPAAJOpqcv0mUfq2Qnv3Axfv/Dyh+43sC8O2kamRDytn
	LIgiVKwJMAP2w4TL05YJZaEuBrdDjXCU8x4qJW19MNjG4j5hK3MBSEbCpv2AzUJqF7U5d8k6b4MYM
	g0hrVqXB4NOQZzopkje8meQXDK2e8R+GXCj9RqGTg/B8yk6U42e3JS0/N8Yh0AXM1NEsl47LKKHkp
	9INRMbtBQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lcXO4-008KOE-6a; Fri, 30 Apr 2021 17:57:12 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lcXNz-008KNh-T1
 for barebox@desiato.infradead.org; Fri, 30 Apr 2021 17:57:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=3y3iWBT2q4ifeT+sLZ1CPjoEcWWD2Wn2lScTmu7un0I=; b=WekCVJnzz/QKfgEMpXFEqOUf44
 XGxpcBhzMBpaddT0V62KX6SIeVol/xjjpZNFLghqNMKnE3UPwCycJWmNFWxhq840QOBpj27OBZgZ9
 jhDm/8d8PRiwZ4WL1/ipYse2b9RUbfEZlOMKesIm7E1L47jNW0PvePdbPlza3beXCU+VvqdGnsayt
 crSBTiey0q8aQS+rGvC4skYsnZdq/j2t+/tF1VTiEKrktSFiP+nrozmY918+q3YGztGc/dJjgkGYy
 Xdn70NylMzxp/xDF46GN1JfenFxOR90bvFB470jmeCYKpib6PsfVvvql6plKYLhLykXWpxVahLXaU
 hT1CUxDw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lcXNx-001ZWg-C9
 for barebox@lists.infradead.org; Fri, 30 Apr 2021 17:57:06 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lcXNv-0003Qn-Hp; Fri, 30 Apr 2021 19:57:03 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lcXNv-0007vM-9b; Fri, 30 Apr 2021 19:57:03 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 30 Apr 2021 19:57:02 +0200
Message-Id: <20210430175702.30410-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210430132949.14617-12-a.fatoum@pengutronix.de>
References: <20210430132949.14617-12-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210430_105705_433592_BF2805D6 
X-CRM114-Status: GOOD (  11.24  )
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
Subject: [PATCH] fixup! fastboot/dfu: use system partitions as fall back
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

For configuration where DFU is disabled, opts->dfu_opts.files would
contain the system partitions and multi-gadget auto start would
fail. Ignore dfu == true when support is not compiled in.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/usbgadget.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/usbgadget.c b/common/usbgadget.c
index bdbb4d794889..489b3b801630 100644
--- a/common/usbgadget.c
+++ b/common/usbgadget.c
@@ -53,7 +53,7 @@ int usbgadget_register(bool dfu, const char *dfu_opts,
 	opts = xzalloc(sizeof(*opts));
 	opts->release = usb_multi_opts_release;
 
-	if (dfu)
+	if (IS_ENABLED(CONFIG_USB_GADGET_DFU) && dfu)
 		opts->dfu_opts.files = dfu_opts ? parse(dfu_opts)
 			: get_dfu_function();
 
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

