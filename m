Delivery-date: Wed, 05 Jan 2022 16:22:33 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n587V-00BtFG-4T
	for lore@lore.pengutronix.de; Wed, 05 Jan 2022 16:22:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n587T-0001Dv-Vq
	for lore@pengutronix.de; Wed, 05 Jan 2022 16:22:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Subject:To:From:Message-ID:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=N3/EHGnfZtLsp6b1WDMqoMWy2mYYxVGJX4OmBTFvVN8=; b=bnG
	4V54EMNgZq/5YAnHgA3P9SGNH2JSGwevN73bqYMBfsBjdssgsBLBeUp1axD8uGWI3CXKZrRw6Nl7p
	lgCQ5gLgEl2EwLKyvDObuwRwKlnmUXV8M3zy7KtEtNtw9cNRCcmFxE1iX3hbeQiNoxG8O3ehcfaJo
	n9nKmu4hzKFjZDwT+4C1J2xWjyp4b9JmsvF/nGQIviqzGZZjToeViGyIpn8SW2AviPiZrF1+qfpvz
	XtU7uKtVBVW7rGDcePquVJ334XW086kRTBIChRkMJ5zqQM++9P7h5Z/lxT/dHDLYvKbA2+UTRmiyc
	q65zbs9IY89WX3ky2ikTPqyU0Sxtpnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n585w-00F9py-HA; Wed, 05 Jan 2022 15:20:56 +0000
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n585r-00F9pN-1U
 for barebox@lists.infradead.org; Wed, 05 Jan 2022 15:20:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1641396043;
 bh=PSpGqKSJscmRp2gonzsHxWGkBJ1mYw6BkbLllwjfI0E=;
 h=X-UI-Sender-Class:From:To:Subject:Date;
 b=HcNGXPyjTPMKMA8+NSc962/oBMBMXgEDofpJuxOOxtHM68O+XqHls23gvvfjhzsB4
 7AKWesA1pRKTsOPcCM2MmDmoUiSgbT9WDA0XXQ4t+9rKlAWY8ooFh5JPUOHXArjz5s
 YWUDlAmEuVc5k9tyLAQpbEmMTtcq26xpGrystzE4=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [80.245.79.138] ([80.245.79.138]) by web-mail.gmx.net
 (3c-app-gmx-bs58.server.lan [172.19.170.142]) (via HTTP); Wed, 5 Jan 2022
 16:20:43 +0100
MIME-Version: 1.0
Message-ID: <trinity-236a89db-cfb0-4d29-bf25-44dc71d5d143-1641396043420@3c-app-gmx-bs58>
From: Frank Wunderlich <frank-w@public-files.de>
To: barebox@lists.infradead.org
Date: Wed, 5 Jan 2022 16:20:43 +0100
Importance: normal
Sensitivity: Normal
X-Priority: 3
X-Provags-ID: V03:K1:rwPC/vlD+ffipmN3O41+Wn9/lRoA7Klv0V2TeqAzwjZSE2T+OqfTXmXoJNnNveTyZ1akc
 VQmXltlHg1YdgUci45ufvrfhgrzUoQZ3hXMjNl+OxKQ6cyVi10uB496rDbfHXgxa65NOU9GUo4DY
 mTT030GqBZNFGsSR76JKmDw1LGK+tAshugyvfSjFDgkCgAWXWv+z2DYba2QSym1Rt3NOKzSzQ5zS
 aZLT5l200rok55EGt49cWuRhB+jbha25G4RYddot3U26voySwuKu83iY4bR8gciGx4E55wWqMO7i
 Qo=
X-UI-Out-Filterresults: notjunk:1;V03:K0:TOyGphEOV84=:2t6iBwX6a/b/rX61smKqTb
 pA1NOrXToOjBdAbkukxUyON9ofFjicWOVm6EPIacbnQFByuvZXFWOUJZVQjoEsInEHWlFZMRF
 dJbtaqPKujiq28KG6S9enShaakibuX/qVfK2/0ocR2t30tjT1bZYclllMKDJ93S/VYXogMRnF
 rA802P4TuvqWBPNA+b+rtxNERMz2OsYpXlFiTLt9ZQPiDCVdMGRW3oQwTcPf9bhljld/4LJNL
 yi+peodg0X8c0SfQdzD3v0S6NbCBSve+Gcxmt6fYTvm1e/9zgLHTFmpzyhjCP747Aa5lEf5Xo
 DYucNU0D+XWD8IhvLKujp4NruFEmPPLgWBuTQd2SkAG+jQO+aa6rELw8kNkljH0W1sT5apTCZ
 Mk62sEYgbxqB5JcDoZomEwtJoRuzG3CBPHErn/TES8QPt7ZGSKCBIj2JLho2tCW5KuxxkA+sU
 xVNweIiQCuYvLKFCHlCH87QipPzfchD2Gg5tSxn4a4OVIxmE5GUoKVf5veGsDWoTBrDv2XfQW
 b2DCAywar+zlRK4kdYJdU4fEvsmN81Y1pX0ftUj1OJoK50hbt9E/kxY0Pbr/6lcMwG68XU0jW
 YAYaPJ7REANMjvlCkl+We95zGS4MYgarHAQqYudnnYJykJ0Xv1yuuqh3TQLQZztaN1Mztaw5X
 0Z3jobgCuWUPt4JrBAyJ7YQY6YGKg+BdPvfHq5T08f7ISUIDvIBHPMSeuRGLcRBCE4BRLk7ta
 eKda+tMyWuKkpT0CQ6gP2AOx8WSR2uKa7mmFsOeBJ3WVxbkaFm6sgtseIGnzFPbXEtWzSKAs2
 NwEVYeO
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220105_072051_427531_3A55EE88 
X-CRM114-Status: UNSURE (   7.07  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: barebox extending boot-scripts
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

i'm making my first steps and try to add more boot-scripts (to land in /env/boot)

i added a scipt in

arch/arm/boards/rockchip-rk3568-evb/defaultenv/mmc-linux

and set

DEFAULT_ENVIRONMENT_PATH [=arch/arm/boards/rockchip-rk3568-evb/defaultenv]

but if i boot the board /env/boot only contains the 2 default scripts

barebox@Rockchip RK3568 EVB:/ ls /env/boot/
bnet    net

so maybe the dir/config-option i used is for defining variables only right? should this point to an directory or a file?

i see this file which looks like the source of it

./defaultenv/defaultenv-2-base/boot/net

I've put them there and they appear, but this is not board specific, so if i later want to upstream one this is maybe not the right place.

./defaultenv/defaultenv-2-menu/menu/10-boot-all/net

seems to be a menu entry, but have not yet figured out how i can define one to add my scripts too

have not found anything for it in the documentation yet

btw. is there a way to use ls with wildcard without printing the path?

ls /mnt/sd.1/extlinux/
Image_5.16            Image_5.16-next.gz    Image_5.16.gz

ls /mnt/sd.1/extlinux/Image*
/mnt/sd.1/extlinux/Image_5.16
/mnt/sd.1/extlinux/Image_5.16-next.gz
/mnt/sd.1/extlinux/Image_5.16.gz

i want to list only files matching Image*, but without path....number of columns does not matter

regards Frank


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

