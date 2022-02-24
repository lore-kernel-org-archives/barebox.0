Delivery-date: Thu, 24 Feb 2022 15:46:31 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nNFO3-008nTb-5Q
	for lore@lore.pengutronix.de; Thu, 24 Feb 2022 15:46:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nNFO1-00022V-NH
	for lore@pengutronix.de; Thu, 24 Feb 2022 15:46:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=esCHq7XjkI7mxe3CRnCz1KGgmKg9v2j2mRn/9XoQ2Ss=; b=jPwZgrMggd93hJ
	glI7edDwu6oqgkKn1cfWZpQ5FUXWan78XWxWW1R4ATSyVh5vTVRGLAU1PJQid2Mv0faxJRE3AwBC1
	D//CdJcYuMKBV0XTKSiItx+BMaS66neoi+P3+yMfwF4k3NHx+LSDSmdbKGEVo25EA6btv8NUFK71W
	sflnsvE+tCTOEzF3/eXfgltL2S7pJV3V+pSvVzH7vAsWVmpdUaVMt7cDceakaLgK7YUKvCdnOAhCb
	5elINkC32yhz4O8QVQsuCb0T5FDOTWWShjBQbaVtbTMMLrQxaAsOUYHV46/oL/q5gjBX6bP2LZHRL
	g0cdZcaZ1Uk3/M/i+SkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nNFMZ-0019HH-Ez; Thu, 24 Feb 2022 14:44:59 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nNFMT-0019Gl-Ny
 for barebox@lists.infradead.org; Thu, 24 Feb 2022 14:44:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1nNFMQ-0001hM-Cn; Thu, 24 Feb 2022 15:44:50 +0100
Received: from [2a0a:edc0:0:900:1d::4e] (helo=lupine)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1nNFMQ-0012Ac-CX; Thu, 24 Feb 2022 15:44:49 +0100
Received: from pza by lupine with local (Exim 4.94.2)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1nNFMJ-0009O9-Dr; Thu, 24 Feb 2022 15:44:43 +0100
Message-ID: <3c32434087f62cdea5502a721bfce9cea26c49c2.camel@pengutronix.de>
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Date: Thu, 24 Feb 2022 15:44:43 +0100
In-Reply-To: <20220224135246.257871-1-a.fatoum@pengutronix.de>
References: <20220224135246.257871-1-a.fatoum@pengutronix.de>
User-Agent: Evolution 3.38.3-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220224_064453_798440_4DEF4B8E 
X-CRM114-Status: UNSURE (   7.27  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] RISC-V: virt: riscvemu: add interactive tutorial
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Ahmad,

On Do, 2022-02-24 at 14:52 +0100, Ahmad Fatoum wrote:
[...]
diff --git a/arch/riscv/boards/riscvemu/defaultenv-
riscvemu/data/tutorial/04-cs0 b/arch/riscv/boards/riscvemu/defaultenv-
riscvemu/data/tutorial/04-cs0
new file mode 100644
index 000000000000..0ac452d1b3b5
--- /dev/null
+++ b/arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/04-
cs0
@@ -0,0 +1,11 @@
+
+In this tree, you will find 40010000.virtio@40010000.of, the
+device corresponding to the device tree node we've just seen.
+Devices can themself have child devices. [...]

I'd change that to "Devices can have child devices themselves."

regards
Philipp

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

