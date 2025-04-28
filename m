Delivery-date: Mon, 28 Apr 2025 19:36:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u9SPX-000EtH-0X
	for lore@lore.pengutronix.de;
	Mon, 28 Apr 2025 19:36:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u9SPW-0004Vv-JM
	for lore@pengutronix.de; Mon, 28 Apr 2025 19:36:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=en6BsVPLGtjjpWiXXqO7feBYT76fjRCkeXtnsqdWSoI=; b=nRf88z6XEKI+4Qv/5SVnfvHSXd
	JiVEQvjYKWJycWBM0hL8UmdZ+fNPKfMywLpi6WEGSNPaN5msXOzvVmA5YGEmqNp4zYCKg5MUCt7Cs
	S6OCagEME9I4K8BWiGUXkoY8iEbu3h4iX5r9N8ayuH4lei1EawzQ3lGNt04XG3qJ+YMZnn2hLnoJo
	f7XTlv506wGJoVzulh64neD0uZ3JPVEWjzpG9eMY+edJ2ZlDV/A+ITfK3ZOsaxp/NiJgw29mrJQIq
	ilppxGc1NP/jYurjP9yAlTLIeYmlJzMPajzCKst7+YP25Y9OivWYFhKd9pugDSa2mdBMQXXDIqBk2
	jvktHliQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9SOj-000000076hv-1bG2;
	Mon, 28 Apr 2025 17:36:05 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9S9N-000000074ZV-14IP
	for barebox@bombadil.infradead.org;
	Mon, 28 Apr 2025 17:20:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=en6BsVPLGtjjpWiXXqO7feBYT76fjRCkeXtnsqdWSoI=; b=fttCaY8EdiebulHQGjktgiMYjr
	5RDaKhV8VsDKqtpkDbwB0ymiTZerVzUsFIzplC3wbtDZ+9fiQeGTUloiZIDSiW18xeOj3JBpZSSHD
	DeQXi4bhtuDABl3/puDc7XjocqL91QV3kvBP01Hhfl1uGof0nYJ6fLbu79IVyWWZwMUgSTJN9v10R
	7ZRLRoQE2FU42iTsGj4zyBFxP2waZ0cOtZEuzKJ+f6mmgtj0WrG4D5ZWQpnHkT7G4tIViDGpLCYKf
	l0oEeEppTXUIlnskA0iqz7onjGx737acA2P67wq3nKzl8afexIQW34uplHMORgycRtEOLkignB1cc
	/6iAsuAQ==;
Received: from mout.kundenserver.de ([212.227.126.131])
	by desiato.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u9S9K-0000000CuiY-0Kcs
	for barebox@lists.infradead.org;
	Mon, 28 Apr 2025 17:20:12 +0000
Received: from InfinityCube ([95.91.233.47]) by mrelayeu.kundenserver.de
 (mreue009 [213.165.67.97]) with ESMTPSA (Nemesis) id 1MjjGV-1uoFQN3un5-00p1Qh
 for <barebox@lists.infradead.org>; Mon, 28 Apr 2025 19:20:05 +0200
From: johannes@gnu-linux.rocks
To: barebox@lists.infradead.org
Date: Mon, 28 Apr 2025 19:20:01 +0200
Message-Id: <20250428172001.6708-1-johannes@gnu-linux.rocks>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:PKBBWVDVbzJdXLLSjn0o+JRHA2bU2dGetbFiK6wmHrbhaSwrdNo
 Q1ThiU42r2My7cOhjDFrfOH08lCFmpDUWQF+D7vhkJD6DeFuN3dc6TQ5bf9tMgDbfcLo1X9
 V79/ajDJLN0mdM6Qhgjn4B2JUH4aZjDeA1WVxGqCz6sGMk/9RTT/eUEftwF9lOXm13P8YfS
 u1bK3Q6lEgd1Lv0FPMYiQ==
UI-OutboundReport: notjunk:1;M01:P0:oeQzb+OrOEY=;1tCd10Vl9qIylj4srcAKFjpCDiK
 9dS1LX968j9NZiX4pKzmjOdfFPtkgUr03NdxVam4QKrOwJ74PNglta0sNqGKUPNkcv2c6sPHQ
 4D30QtwfaHgAiHetgt+VyLKIh7nJkanhEsFfjo0y9QK024mmaa4Gfjf4fAPrkhwKhcdBHGMsU
 Mc1G445h7vWoaEGJE4n1EbESXrJU4zoZw9xt2bDCv03Hy1Ogv8ibP1EuQWKhDYFVXeXdfJI/w
 mXrI08zDamqw6tAdsNSu7JKsaUeDUWPRQ05BSylB7qwzh7z5/7EjmAjK0zdqszSyV2vpGsvYm
 +Y+NcutZcId3bubkgFeVjL59pWsAFOcbtOLq/f7UyEld3xy4kgmyEhvzSr8KLqqeogpyt3mhI
 Sazfvq3vZ5DBmJdRBOT8a14b0wyvMWZXLulMNquphOHLAGHW4Exdn7/cH4smBKQp8bIuYYmd9
 kcFTDnXEwCbJaOcERqn1JY3AhXjOLTxP0iaJuE42dMtsi+mSiTWpPgp3n3JphRvp18YY5FVQo
 H/0daZjz3ROEGXxIlT2fSrC33PxIPrOTJNXw1iTz4b5qKvh9uG2yDyiSrtjMy9shzob8dFlqH
 iYZ5NDad/96idBGwRXJ2ScuxhnCghZCyFhOmXbAKd65YOJR4j39aAaB37n5vLQorXUtqit+9E
 EPjK+XtQzxpR80fGXoYSIzXIS8iiRpLbLuTuT6tytdROG2A9rtVGlOhKJqAi2EXff5sYwTLLD
 o2Syxrm1Mb17FvskE8M008fz5jzjRMRvezBwfh05f55iYRkvBYTSb/kpV7qqic+dnKTf21c0e
 nhXeMaCBTh34JYsEWcgypEzkpvvwLgk/bBEpIsHOpHzjsal6UeV7UpoT+K/fyWV0GOYakO7aT
 p6ysqEiH4pjEYOOkOxUsC3rEEbwSa3HovdJkiftzpsnEKp8uuP8yXNEY6e+oN4TVESYL8THgf
 0Cl0+1umbCRu2yazjndpMEcsxX3mE2uNWXcrmMFsf/ACdeYT7kQf++5m/zMJhvUwuUz/OJXP3
 qFpuxLk51PzWK9hDxTte4WTlai/Z11bmOLvOBMmHUYNDMFXhifwJ3yz6LcN40nvmB+UmjepAx
 xzfDUpm+/Dbb1khzqRAGFil6pr2hRm9aRr0i+DFdDf2eGD265Mdv0Vht817CnxGvqj9H4AZzM
 uMdXrCQxtZAEtRfoeWwwU2i3i0gRxT3myTNoSa29+i3bkQn72W3jFs1tTtHCUO92mJF83CrTQ
 mrYVWHGoo/zHeWc8sSdjcho8EgzMf+qKjgV3fyyHip2s+gudn9C3oGK5L9jlL2dy9R2GOTTKm
 ctpCTCPZIwNBEHmbXgJ5FIPzbHcc2+5NPD5eSyGDgokvsopdXqWlh3wFkUoY5D3yjTXZGHkW0
 yFX+zXIApBE7PmOpDNkVWwROHMazqB9GpvGn7nKcEjQd44HlXN1/qvh/aC
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250428_182010_316651_5DCC3854 
X-CRM114-Status: GOOD (  10.33  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Porting Cora Z7 Board to barebox
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

I have a Cora Z7 board which I want to port to barebox. The Cora Z7 embeds an
Zynq 7000 SoC with a single core Cortex-A9 and 512 MB DDR3 memory. Barebox
already supports the Zynq 7000 and the Avnet Zedboard.

I have some questions and maybe you can point me in the right direction:

When I am compiling barebox with the zynq_defconfig, as an output I get the file
barebox-avnet-zedboard.img. This file contains the PBL, barebox proper and the
device tree, right?

The Cora Z7 uses a different memory configuration compared to the Zedboard. My
first idea was to use Xilinx FSBL and let the FSBL start barebox. The FSBL can
start an ELF file. But if I use just the compiled barebox file, the device tree
is missing, right? Is there a way to hard code the UART to use for the barebox
console for barebox proper?

The Zynq on the Cora Z7 only embeds a single core Cortex A9 while the SoC on the
Zedboard embeds a dual core Cortex A9. Does this affect the cores initialization
in arch/arm/mach_zynq? 

I am looking forward to your replies. 

Thank you and best regards,
Johannes Roith


