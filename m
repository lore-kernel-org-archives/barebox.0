Delivery-date: Fri, 07 May 2021 09:29:06 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1leuv4-00040t-Pw
	for lore@lore.pengutronix.de; Fri, 07 May 2021 09:29:06 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1leuv3-0003dP-Vs
	for lore@pengutronix.de; Fri, 07 May 2021 09:29:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CB0+hHfkjfPVXp9qNzSbhU5CimqwlbxfsLAHxeAEX/o=; b=eBYFmEip9rAv77
	8xJ2FGV2Ysi/vWGV86CDhudmjoVX3kJY46BQQ2eov34n+jkeUuOVkVAE5JCJk6cZAoXLZeMxtmUam
	Y5leVtbUGOl6s8Oe+UI+NLuqtRWDNT7OBuJsUdi+Sjd92VVatwsph5Pbs4D+Zv3+cZW4bOasBs5Dt
	Gq9F3wvkqUgKwoEmvP8fjf3GjCcpDqSSB4wovmjl8U2TCv/rOob72/0biVXpkfqLP1pa0bGvKe8eR
	z8/6UzoX1n7AaZgrJNEDYF9gxLnJHwaXAJm/+je5j2bJ5XENHwWrNpdpfaL7d84LAK/olOyyTlpTF
	EYpu5ZElBz4Tc759EHIA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1leuth-006N7J-1h; Fri, 07 May 2021 07:27:41 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leutb-006N6Z-TC
 for barebox@desiato.infradead.org; Fri, 07 May 2021 07:27:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=cC48adec5Qg86d87e89vPD9l4sPCrKgAvV9Bf/Pwxig=; b=XOVho/8IM7d4sXptVntTWMxZrr
 YJCok6PBYC8lApDgvLcf5ALALhI/x/tOwJPd2oVI+KG5PhSxGcQYmPOqiZ48MHfdKJGbmFq3eC4ur
 oeg1vw64QmMruyzYc38HPjAqNe2/hp9SpHBvsx5LUWvFX4LV0IktknGC+Od8oR6ICsSdZW/OsOuFr
 h+Wpq5QDnZjSI857Sypfz2QRGHcAqrgigQK+IC5ojZApkmbBsPsLb0YOUn9SDw6kw8ovhZdvjtftK
 Lft5lj8Fx03PZvpXppC+AYww8yCHUlxnWZaOmF2CsfGNpHEtpXEkJtUoKloYTkXNkBVmqZTPQSQJH
 /6TpMgVA==;
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leutY-006eTj-U6
 for barebox@lists.infradead.org; Fri, 07 May 2021 07:27:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a1; c=relaxed/simple;
 q=dns/txt; i=@phytec.de; t=1620372445; x=1622964445;
 h=From:Sender:Reply-To:Subject:Date:Message-Id:To:Cc:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XSYoE8kLqfLg02Jm9Yj8BrH6CM7AhI/P7kfHuK7A6CA=;
 b=o7pt89SGRDrpn3HBPmlHh1qEawYOfmrVCJCvbU3IFx2AxfQJHxrDPYQIeDP7PGqK
 K9CuNXsR+fPGLwamoYQLIc7LVQ7n1NjI0qEb3PPTNs+JC4ur+tljxz1YknDs7l1E
 pH/lX0PmjHWVgkZsM/P+0lALF1DshLy7Q26EkVqAOw4=;
X-AuditID: c39127d2-330b970000001c53-8e-6094ebdd93f7
Received: from idefix.phytec.de (Unknown_Domain [172.16.0.10])
 by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id 33.44.07251.DDBE4906;
 Fri,  7 May 2021 09:27:25 +0200 (CEST)
Received: from lws-ybas.phytec.de ([172.16.21.122])
 by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
 with ESMTP id 2021050709272547-645940 ;
 Fri, 7 May 2021 09:27:25 +0200 
From: Yunus Bas <y.bas@phytec.de>
To: barebox@lists.infradead.org
Date: Fri, 7 May 2021 09:27:11 +0200
Message-Id: <20210507072711.2004235-1-y.bas@phytec.de>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August
 17, 2016) at 07.05.2021 09:27:25,
 Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 07.05.2021 09:27:25
X-TNEFEvaluated: 1
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrJJMWRmVeSWpSXmKPExsWyRoCBS/fu6ykJBp+OGFicWNzP7MDosXlJ
 fQBjFJdNSmpOZllqkb5dAldGT99d5oL13BXb3v1ibmDs4Oxi5OSQEDCReL73OmsXIxeHkMA2
 RokbXduYQRJCAucYJY4fLAKx2QQUJc7ffssKYosIyEvM3d8GZgsLZEls3/eaEcRmEVCR2N7d
 zQ5i8wqYSRw5tIodYoG8xMm1h5kg4oISJ2c+YQFZJiFwhVFi58r7bBBFQhKnF58FW8wsoC2x
 bOFr5gmMvLOQ9MxCklrAyLSKUSg3Mzk7tSgzW68go7IkNVkvJXUTIzA4Dk9Uv7SDsW+OxyFG
 Jg7GQ4wSHMxKIrynF01OEOJNSaysSi3Kjy8qzUktPsQozcGiJM67gbckTEggPbEkNTs1tSC1
 CCbLxMEp1cBYHzLL1nmbCd+1zQEb7izZ0KKsf2+GH9OHY4ItKXMScw99Web0aFWV72KXX+mb
 fh2V67i2lqn6d2pI84bTP76sl6jS8K81C/er0TI10A7TUUzJuu7quSIoL5Hr2fZm3c2Ron/P
 bzZ4ZbYuL2/nvl6boq832W/fmiXIb1k6y/ne8or47znSqySVWIozEg21mIuKEwFO3o7R/AEA
 AA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210507_002733_304694_989E7AB5 
X-CRM114-Status: UNSURE (   9.49  )
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
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] Revert "ARM: dts: phycore-imx6: change mtd-partition names
 for compatibility with kernel"
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This reverts commit 72ba815bf6feaa0a98d2496f52784dd5b4258e73.

The NVMEM name-clashing has been fixed on Linux-upstream. NVMEM devices
are now registered with the unique device names instead of the
MTD-partition names. This fix is no longer needed.
---
 arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi b/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
index 2fb920945..2c333ce8f 100644
--- a/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
+++ b/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
@@ -29,7 +29,7 @@
 
 		environment-spinor {
 			compatible = "barebox,environment";
-			device-path = &m25p80, "partname:nor.barebox-environment";
+			device-path = &m25p80, "partname:barebox-environment";
 			status = "disabled";
 		};
 	};
@@ -86,22 +86,22 @@
 		#size-cells = <1>;
 
 		partition@0 {
-			label = "nor.barebox";
+			label = "barebox";
 			reg = <0x0 0x100000>;
 		};
 
 		partition@100000 {
-			label = "nor.barebox-environment";
+			label = "barebox-environment";
 			reg = <0x100000 0x20000>;
 		};
 
 		partition@120000 {
-			label = "nor.oftree";
+			label = "oftree";
 			reg = <0x120000 0x20000>;
 		};
 
 		partition@140000 {
-			label = "nor.kernel";
+			label = "kernel";
 			reg = <0x140000 0x0>;
 		};
 	};
-- 
2.30.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

