Delivery-date: Mon, 11 Apr 2022 11:06:51 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ndq0a-00Fg5R-A7
	for lore@lore.pengutronix.de; Mon, 11 Apr 2022 11:06:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ndq0X-0001X7-70
	for lore@pengutronix.de; Mon, 11 Apr 2022 11:06:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Subject:Cc:
	To:From:Message-ID:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TaEkEy30TmpspTk7kyj+mHIVGKlYYQrT2GK6JSCiCy8=; b=IAs+xK0Acfp4K+
	ACQj3ck7im0NlO9DUPD+tXOTTxMv2ACFAhucRtrrAnBXGGQ36ei+5fU75o66ckubM1OdIhoBNmfgJ
	3NYxs1ttF+j9O8fqO4Bdj0pAHEwIdAWGzeaST0Lo0RiqTlRV0DI4RRog4Kz6Fy+bqx1yFsjMANi2w
	Tl+UFnpOfpgwaboeyz08D925GjOZnrqaPB0scR7IVuo7MCv0nJUCp7icqU9q+mxvbgbMmqpNsIT8H
	bOd60Ot/CrjzpmwZKR5nE3mA+pIom3n9pAZSipop71cp5XM8yrh/B2mIvlqcd9kMnZEbeU5gKUyi2
	gT6zSqhIQISQ2FkfGltA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ndpyi-007k1R-U2; Mon, 11 Apr 2022 09:04:57 +0000
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ndpuw-007hv1-Js
 for barebox@lists.infradead.org; Mon, 11 Apr 2022 09:01:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1649667655;
 bh=iRYblkt6qaS6paGGo87Dm1YaO5hLrHkEvEtezfvqhDY=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=h8FhRauux2Yf6ss0jfRKuWpwtO6PwrQk1UKoqA9e4sXwFup8JxIK4QkKEb7qg+LVu
 QfiQRZE4YPqWbB2RPbvevQ+kdi4C6UlLD8nLiuHtd2gmiEqlZfKrNZIhPwc25JqQhX
 2yjZnDMLMtTQq4PoupYYSI0A1GVjwftrUpVe7k00=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [80.245.79.187] ([80.245.79.187]) by web-mail.gmx.net
 (3c-app-gmx-bap51.server.lan [172.19.172.121]) (via HTTP); Mon, 11 Apr 2022
 11:00:55 +0200
MIME-Version: 1.0
Message-ID: <trinity-9f11e583-37b9-4f74-ad3b-0c3fa278e1ed-1649667655332@3c-app-gmx-bap51>
From: Frank Wunderlich <frank-w@public-files.de>
To: Trent Piepho <trent.piepho@igorinstitute.com>
Cc: Oleksij Rempel <linux@rempel-privat.de>, Ahmad Fatoum
 <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Date: Mon, 11 Apr 2022 11:00:55 +0200
Importance: normal
Sensitivity: Normal
In-Reply-To: <CAMHeXxP3OeqMFDL_Ry81X80vjKu-G8FDHtwrDJprKOmFc-pTEg@mail.gmail.com>
References: <6FA3446D-797C-4DA1-A2FA-BAC5B213A65A@public-files.de>
 <2620f87b-ec79-7184-cd8a-d29c39938001@pengutronix.de>
 <trinity-82311693-b8da-49e3-a71c-d577df7e4021-1648021632406@3c-app-gmx-bap36>
 <747cc560-0ff4-da39-6076-7348fc312052@pengutronix.de>
 <trinity-76ce1194-1e72-4cce-81ae-529407eb0ae0-1649415827026@3c-app-gmx-bap48>
 <7f97de95-9fc0-11ba-c06a-d4f38f41d521@rempel-privat.de>
 <314D87C6-FA2A-4A23-8962-5BCDC83BA9E0@public-files.de>
 <0333df9f-5ef7-fc60-4ebc-81bece1781a3@rempel-privat.de>
 <trinity-f3d7c3fc-0418-4509-8b61-8d9c0f65d56c-1649493318641@3c-app-gmx-bap35>
 <1b2a8dc2-629d-6c76-207b-d1d78de4c458@rempel-privat.de>
 <CAMHeXxNuqjfkdoJ=pLLjbv60hzqx6cT1EzegX0ryAeYTBa9vdA@mail.gmail.com>
 <286876ce-e2bb-4a67-7db4-8a4bb9ecf142@rempel-privat.de>
 <CAMHeXxP6Mam1KL3p0R3yBe0gdBj931RwUNe_M9sPV6E8NVsy+g@mail.gmail.com>
 <6e8479f5-2081-b786-5c9f-298dac95984b@rempel-privat.de>
 <CAMHeXxP3OeqMFDL_Ry81X80vjKu-G8FDHtwrDJprKOmFc-pTEg@mail.gmail.com>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:urvTQeU4UcK1EQU6o3t52aZ40YNYaOeDruoyP1C7OkjK5bu4a2ASYceBcGowMGo6PBb5y
 S+sj81+nrMw3M4j1Yo1YzrGGeardt2UE+MCXyJg/X9eix0i+eWTVlTlUpKrcXxjYYISPZWnHZg3a
 FRaHKqXsA/X33tWnEdVEOZTIXyXs82+3yLimM7gbzsLD+4swgHohXLFSPKitITXmY2tKovoyO0gz
 Y7MvB/Ao/XaE5xLDmpjhOHjCm1YKgLzh8VhrzFBxp8W38nuhCSklq9FFqLaJBvT6rehms5G9riSb
 vM=
X-UI-Out-Filterresults: notjunk:1;V03:K0:gVq/2VJc56E=:NQ3+KLr62koHDbTVud8dph
 A5srZoggSdoUMVlsj1u7huRISnNG1O5x/h/zkCtEeYghKctuYDNSQlh/pXz19LCmSFNoxDfrt
 gtJ4ILTgVK2CEZDoe5CCf9JBQ5YHW8ccVQygqB34lwVWyZQBO8fXO8+zN1THf0ww5RZ6eo06L
 dOlIsB/CsGkofeA71UsVRMbDNVCjST4RSyI2KR1hdtkk0pt2+iT2FaOBhUlYJQXEmyzIFrIoS
 aBK76I8e0Wp54FlqV8Q2fzRWbxuHXXVvpRz34tDSNn3kwZEwZ5ObxeJ/mmMT/y4JSY5oWTPQk
 sc9cUzloIY4t7tey6JwusCVxnNJM7kfHsMYRr6/py3ewk/DhK7t7FdWVbCeoxAQboBoBDB0Ov
 p/NPpx2JpcsgvSyw0aLRopPOAZL2q4DjES0n/24VhqZEGomGA1cZN5hfKAVOGimtMgq25i0GF
 eQxXpfXtblKZEW9PY5AIL9EuzH/apTeEKOyB39H1NvpZw/yivlxNuBWXA5lii0NlBPTdLl1mB
 Ry5n1ixySP+PpAS7SRsxIMl5UD0U/Fgx/a6kDhsbNaYrA0L2DjxVC3kzL94SPaOtDLS2O7XUx
 6uyZQRDbIrFVKKgSSAOvB2VdRmmTdToJsDhhxFjhAlczH+vuw11/omS3tNvAtJGID4aGBtNKM
 jtDGJxICnUNyzsMHRAwnShT44WSmTbeTtim5QrFgDcnAMWOVCqj8drIC86y4dK3sohYsOk10f
 9gYBuB8pN8+XiCkdFWKk4dybrp5EUT7VqCBHKlR1+n7OmMwNGdJO5UEd/1FJ4F+qNSrI+fosk
 C4o+xsO
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220411_020104_269524_9499E057 
X-CRM114-Status: UNSURE (   6.26  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Aw: Re: change r2pro dts to public hw version (was "Board code with
 2 dts" )
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

it turned out that my problem is not wrong setting...it was the load method.

i loaded barebox by uboot like it's documented here:

https://www.barebox.org/doc/latest/user/barebox.html#starting-barebox

except i have loaded files via fatload and not tftp.

if i flash barebox and boot directly into it, network works (also with first version of dts with rx-delay/tx-delay and rgmii phy_mode).

barebox@BPI R2PRO:/ dhcp eth1
eth1: 1000Mbps full duplex link detected
WARNING: eth1: No MAC address set. Using random address 92:26:6a:9c:ec:d5
T T T eth1: DHCP client bound to address 192.168.0.104
barebox@BPI R2PRO:/ ping 192.168.0.10
PING 192.168.0.10 (192.168.0.10)
host 192.168.0.10 is alive

so imho there are 2 possible rootcauses

- uboot has initialized anything (clocks/pinctrl/...) which barebox cannot change afterwards (due to missing reset)
- barebox skips any initialization step if it is chainloaded

i have now tested both configurations (rgmii+delays and rgmii-id without delay-properties, but delays set in driver). linux is already updated in next to the rgmii+delays part, so i would send this as update to barebox.

regards Frank

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

