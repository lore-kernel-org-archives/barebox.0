Delivery-date: Sat, 05 Feb 2022 15:18:10 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nGLtC-006Tmn-1F
	for lore@lore.pengutronix.de; Sat, 05 Feb 2022 15:18:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nGLtA-0007rS-IX
	for lore@pengutronix.de; Sat, 05 Feb 2022 15:18:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Subject:To:From:Message-ID:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=u/9YRiRV0YPGtGK/RyNMBSa+oVjMabZIqR422ZCJTEs=; b=OPh
	Sm1J7KiQM6cnncF1aAAtg8bPe2fLKq5l63x3Nlba4Fwcvd59orVfuiB0Zmq/iLTXPuQppNpt9S6Nj
	HjKif+6P2VwyJtp8FOvL5teZgcoSOhUrlHu4GcYr9KTStNtO2kBlZ0Lz4NNlr1py5acXYLgkxlKgy
	f6n7k713ZhHkYPdpS6lCYSn9ZIPBdiv+snNhPQbvv/oaxAvhQuHDx/FdZvI+CWR/Ax+SkrW5Ec1gv
	Yhyxp8qt+97ttcl5Ri17KIimHh13dADoj7zDsksrsr0U9I4sXuzawe7DoPuvRgvpH6FpUKu1vZSqL
	0qnyYzeEs/5BYUinob9GRODL0cI2Pzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nGLrw-006dRJ-TY; Sat, 05 Feb 2022 14:16:53 +0000
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nGLrs-006dQB-1P
 for barebox@lists.infradead.org; Sat, 05 Feb 2022 14:16:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1644070603;
 bh=Yvy6ubce+q4WqGyLDtTvkuiXHdP+VZ/grmSrArCKPw8=;
 h=X-UI-Sender-Class:From:To:Subject:Date;
 b=iJWHDeqHHWYFVP5GmWanKxT+hzvNEcKFzMQmRMG1qf2CA+lUVN8ZWiVKizFi0vgi/
 j7JJJ+2wCBgqui9+Ev9a5/ctwVkcXeW995oFgKuW2BtlrYuhw//6TPSpm6R3/Wa5sB
 b4zimhNuZO3rVRzu2fVloN1DISyA/MKyGD9c04mo=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [80.245.75.80] ([80.245.75.80]) by web-mail.gmx.net
 (3c-app-gmx-bs06.server.lan [172.19.170.55]) (via HTTP); Sat, 5 Feb 2022
 15:16:43 +0100
MIME-Version: 1.0
Message-ID: <trinity-455847f3-e03d-45aa-be41-64395a88bb28-1644070603514@3c-app-gmx-bs06>
From: Frank Wunderlich <frank-w@public-files.de>
To: barebox@lists.infradead.org
Date: Sat, 5 Feb 2022 15:16:43 +0100
Importance: normal
Sensitivity: Normal
X-Priority: 3
X-Provags-ID: V03:K1:MiZFy/+gymt/Wp0grN4fauhTiWpj7zr2YTCL8XVvPD+jhyk2kFniYlwHBSOevD1+WayqW
 dzQAzxLc4KIf3K7Pv3JZ+15Jdd8Ej2x6oTLU188rmyTWLN3C6RghEEYs4I2D11L2KZ9tG1R1vEzX
 /49zr2UUdSj/MHfKY7TH8ElwUgmr9yKMxXd4H/9SiHaI6rbY/qWDaLY26ECJWpH6QvR+HLvmqEIx
 l84qwnZ9GL48S2hJjOhe4thjejDfjkmbO+g19fsoYKFNdNA/h7KPm8DsCkUo7gwriiSdVc0NNpvE
 UI=
X-UI-Out-Filterresults: notjunk:1;V03:K0:YWXfA0AXgIE=:RCA39t0sHnKypFJuw9u6tM
 UTYGO7yhemmZmT90XmzCLWDcTnjAo+PBTGgaTWINJGREaW/ksNk0L4cJfy3i1z88JGPCiy+1M
 jS33X++WMy/Xz1v3fI7QZfCGQFg1xE6uqRQpvXLPPOB8YQQEAmSC/dBj+kLhBS5pq/ruBMDhg
 NkXf8H0hB2e/nioKpYbXhO9lCMrTEpVy0dRI+VCatkWeejR1nwtSi+2GsCKH0gqJs+c49NvC2
 YnqpKr6gYYnSkDxO5AESoXyX3+u68ylrQmAHhhPVaQ+mIvwGudski2kPJEQbD9wqUreekC32i
 fEHty/l/3VnrMOIruPuxzpOJZuJh6kj2akjNTaWgKiMHjf1VeqaO0QYW5dvast7/6uZjlGnTq
 iWE57s8nEbr3g0hSZjfDG5811PPKbHCcM/XTa8blqxsjxVevo9ttxSughMQXhT9ZUI8ZsJuXV
 kj8jWRg3PUJ3UJ9U4kQ7osbn+50Rif7VGmDa0S5YM2B07GBbov9sW57oNU7CMuS43bJQAFvD5
 Z/tvu6k9cXZUGZ+RO9Th2BPYwGj7xLdvUXHO2tM7wZYXRQXtHo9JXoXqoE5GgMaP53ggX+yHG
 6xvoGVrQ5Rd1VCPligfhLKRk2qxns6GNC0rxP97KmlpsH9ZVGXbJs5Y1Wai6ABfpJb7qwGAr/
 S5b/UgkVkOqQJZTjDxdfZCDAxU1TiEcp2XE2SqIIIr+IRM53xQXeU4Dk8twgmvvyUtvUAy7t8
 5MuFdKj6i5StptaMFAk0ZS2FBpK7tKrbGRTj66u3cebWgy6btCC4uYgex3EEONHj09xKjR5QT
 ex2aXME
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220205_061648_451789_2B8875C2 
X-CRM114-Status: UNSURE (   3.67  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: chainload barebox from uboot
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

documentation says that barebox can be loaded from uboot:

https://www.barebox.org/doc/latest/user/barebox.html#starting-barebox

i tried the ./barebox.bin and the barebox-rk3568-*.img, both are not working in uboot.

=> fatload mmc 1:2 ${scriptaddr} barebox-rk3568-bpi-r2pro.img
reading barebox-rk3568-bpi-r2pro.img
768000 bytes read in 68 ms (10.8 MiB/s)
=> bootm ${scriptaddr}
Fdt Ramdisk skip relocation
Wrong Image Format for bootm command
ERROR: can't get kernel image!

=> fatload mmc 1:2 ${scriptaddr} barebox.bin
reading barebox.bin
860784 bytes read in 76 ms (10.8 MiB/s)
=> bootm ${scriptaddr}
Fdt Ramdisk skip relocation
Wrong Image Format for bootm command
ERROR: can't get kernel image!

documation talkes about a "arch/$ARCH/pbl/zbarebox.bin" but i have no such file. Symbol PBL_IMAGE is already set to y

for testing i used my vendors uboot

=> version
U-Boot 2017.09 (Nov 21 2021 - 14:25:03 +0100)

isn't it possible to chainload barebox from uboot or do i miss any config-option to get the right image?

regards Frank


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

