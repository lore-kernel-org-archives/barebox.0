Delivery-date: Sat, 21 May 2022 12:33:51 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nsMQh-0048YS-Od
	for lore@lore.pengutronix.de; Sat, 21 May 2022 12:33:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nsMQg-0001P4-4q
	for lore@pengutronix.de; Sat, 21 May 2022 12:33:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Subject:Cc:
	To:From:Message-ID:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S6EdbXCCGFJlm9KNXiU/kuJcQmY33uluWnruiGj5pPk=; b=DfLVUHVzmA6mq1
	w8gppWpjnyfxat8z5/UpPXlRx+CadQaxklfJLtUd6Qh6cZeZZgZT32F1kAWu4UIdZ5Su3/S/v1aGy
	pQN7U5wvA/IqqzVWXjRAZuzqnux+Bncg6aB77Tb9ppV3nv+liviGBrDluKITSyNrD/jQ6hUt/1h1d
	DLIiNwJs9kL+r3ubACd6Rhd4CWAUNJd7yBJY2B/GPt+ioUyYr/DZIfiqsgUJiU1sObYK2rQigV7M5
	0jhFAQib+JdBfU2XuiHFDf7zuO2Ohip9rbQQlbA+tMDZj8abZ6xqEfOw5zhm34MhoQeaXVQB7/xEI
	cNcrgqmA1BvJcYwPSo6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nsMOz-00GBaK-JR; Sat, 21 May 2022 10:32:05 +0000
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nsMOu-00GBZI-5x
 for barebox@lists.infradead.org; Sat, 21 May 2022 10:32:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1653129114;
 bh=xxUNVUax5RljE5moc7UGjb/zevecrDPzDNKowcO+B84=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=OF9XLPUQke90Hi5OOOiAFw22hbAR7Dme31v4BUD1Rp2Vk6gCl6Jk+lzNB6/+ZyIU+
 Cen8POXS7PhX46lzIDMlZIH3C68UJvW/tc82ToqKxFxdzGyfWnYMttGwsZzba36sV5
 Wi7pr/HflmEjABnqA/p1Yuywj89B2v3CVxpigoj4=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [80.245.79.169] ([80.245.79.169]) by web-mail.gmx.net
 (3c-app-gmx-bs49.server.lan [172.19.170.102]) (via HTTP); Sat, 21 May 2022
 12:31:54 +0200
MIME-Version: 1.0
Message-ID: <trinity-58fee77a-48b6-48ff-99a5-8eaa6c480d0b-1653129114535@3c-app-gmx-bs49>
From: Frank Wunderlich <frank-w@public-files.de>
To: Sascha Hauer <sha@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Date: Sat, 21 May 2022 12:31:54 +0200
Importance: normal
Sensitivity: Normal
In-Reply-To: <20220519131019.GZ25578@pengutronix.de>
References: <1694C0B0-A962-420E-BA70-8061E8E9CA7F@public-files.de>
 <20220519115450.GV25578@pengutronix.de>
 <trinity-e8816284-959b-432a-bb6a-f33a6cd573df-1652964180567@3c-app-gmx-bs49>
 <e0e7cd6c-aa14-a09c-71d2-681842575398@pengutronix.de>
 <20220519131019.GZ25578@pengutronix.de>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:o9ekvoXqdpEakiFSHEK59U55lmsk8c49a1wS+PLzPmfI2B/ktdN+lV7ErgOMEkEswz6Gl
 yNvT06wZ6AZVJ0vBpdxpW8OJD8b9eYlH1VU4lQRX/sRrvqUEQp+cTmydfjs/uwDBI4PQtq41mgmT
 zoobNSjx8jj1mg8UYv5u/pUh7sx8fQden6Pyi67hGhUdF1jliyOIXAlKwHFGc2OAjp3dRjLX4AS/
 O6/0EPfojaEL07FmgfFtz9fVj99QF8x8KsD9aaokFz1hIBkg/cqBpLq4+8Uf6o1TB3ys80RcW9td
 mQ=
X-UI-Out-Filterresults: notjunk:1;V03:K0:PjLZ7hI5zfA=:XzvRtxBYiIbNsl9V0DYVUN
 IF9qHMt53/EiBflEuk/jSyv2kIq+3h7KH5Kj/ZRUgUU27bt1hkbQSl3Gygtq9DICvruvwTjC4
 DBrk2kkR0Brbl6sAAu7MAzWnI+aSuqwjbuADNYiV1fAzNapcH4bUeEJjuFK0YLqLUTjGgpR95
 j12FxjKIzt1OgybWLHKZZZyfz3ARsZzLIpI5D9dqm+/kdrnnlOwiIK7w81xlS5yXkz71ZVjlg
 swjwqBfFPa0T5nbTqJexKazpxUPPtv50C8k1I1OJMl3aRvNCtm+qK679v1Ti0zLKZ6NAOp0RP
 ZIuNXCYm+R3KXHyOBvl12TmBF7cpImNRQhQBAMmYDEw1xrmBZEVTJJVPrD5FJLdSi+SoIIluu
 aSS/IGNZf26SKbRt6YYLxJ80wctbFv658rl1McWBPU4KyHS7OFiSfKqYDR3JJ91w4VpS5VNNZ
 D+Eoe/MJXXh6m+z4Sue5cvZbD/5z6BtVlpGKrQajjW2gfJhhdHtvE98LJJD2qgbZlpT4czDWV
 rYP/ERDsohhccsqrgEtY50lYwbhJnhhr1S6NSJGf7cbiSQwB4+MyuEgw3hB1j5oOy089sDYDu
 G4i2QfWr/981QtaW/Nk4Hge/cpyRpmELMSwP1edlajedOV21pLSA/vlBINBi54RBLp1JVvGs4
 M6P32MeiRqIWvzTkoPZPxjAcLpbEpRT+m8CP6vVl8PY7PKtYHp8NRUJXV6ezwikOuGTiV0L1S
 gHtsbS93raYUow1ecHLhyc/LE3TCcRYr/wG89WJyTFgCvVcXlGOHSIHMoyJM7HuJl0NCsn4ip
 eGO394s
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220521_033200_780928_89A3BEE7 
X-CRM114-Status: UNSURE (   8.83  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Aw: Re:  Re: Driver load order
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

current state is that pmu/ldo regulators work, but not the SWITCH ones.

these are read by linux using the supply of the regulator itself

	} else if (rdev->supply) {
		ret = regulator_get_voltage_rdev(rdev->supply->rdev);

tried to port this to barebox, but regulator-struct there does not have the supply member

	} else if (rdev->supply) {
		ret = regulator_get_voltage(rdev->supply);

so i added it here:

+++ b/include/regulator.h
@@ -86,6 +86,7 @@ struct regulator_dev {
        struct regmap *regmap;
        bool boot_on;
        bool always_on;
+       struct regulator *supply;
        /* the device this regulator device belongs to */
        struct device_d *dev;

but now this needs to be set somwhere...linux set this in

set_supply(struct regulator_dev *rdev,
		      struct regulator_dev *supply_rdev)
which is called in regulator_resolve_supply (called by _regulator_get).

regards Frank


> Gesendet: Donnerstag, 19. Mai 2022 um 15:10 Uhr
> Von: "Sascha Hauer" <sha@pengutronix.de>
> I gave it a test with your rk808 driver. It just works \o/
>
> regulator_get() triggers probing of the rk808 regulator driver and
> returns a valid regulator.
>
> Sascha


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

