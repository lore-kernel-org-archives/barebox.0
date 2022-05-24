Delivery-date: Tue, 24 May 2022 11:14:59 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ntQd1-007NOj-KD
	for lore@lore.pengutronix.de; Tue, 24 May 2022 11:14:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ntQd0-0001g3-6g
	for lore@pengutronix.de; Tue, 24 May 2022 11:14:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Subject:Cc:
	To:From:Message-ID:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v0YbGnknVrtdcnw5u7VMtf/7sWNBYiPlzjYxPh9Xda4=; b=NrxM0yRXLCPXeE
	yOjKXdPJiydK7B+mtsq3C6BEWOsP2oDs/3bFk4jA+MvLQtpUoGNQhtEgYlsl0pM/FzZAgwg7MIRUp
	L1q5sVudaShDaoCxO+XciaETPu6LDigUI+9u3STUn4LQHgCUOscs9FZ03CXhQYHKgJZUilkLeAYVW
	VwOrj4piCvxSGlsrK6PXSeKswJ9GNNOw4yG9E4LDMINEzP66wdqFgbqla7PHNqMXLVk+rff7gxFNE
	Sy+ynOO/IelP06FPUP1QkHHggjbRZexNXaXWA5oDq1dbYj98D234FE8usC9Iq/MW071XQVyge1sVJ
	1JpPnQqRRUsLvQnGHPqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ntQbZ-007Ndp-OQ; Tue, 24 May 2022 09:13:29 +0000
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ntQbT-007Nc1-VI
 for barebox@lists.infradead.org; Tue, 24 May 2022 09:13:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1653383588;
 bh=zjfMeVqRxfWZxkjW3s8m4nWJ/cM16UZrrxAboHIa/os=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=IVeGN0kiXmi2TwOMnbHE9L1nhx1wslPRn428h530vNsIxMjFwHUgmEDjBqF0Fc5Qu
 ZFXdiLTcyq5C0aQr2ueqoufLwHnNNt0sDDby+uzldZMg6JWxhTVdyZpxUHpJQRbUtY
 m+BjO/A7tAX/s/i8q1z0X/tCh0FqXeHQOl/qNonM=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [80.245.78.120] ([80.245.78.120]) by web-mail.gmx.net
 (3c-app-gmx-bs50.server.lan [172.19.170.103]) (via HTTP); Tue, 24 May 2022
 11:13:08 +0200
MIME-Version: 1.0
Message-ID: <trinity-f7ff0d03-ce5d-4ce6-811b-aa7adc2a9179-1653383588438@3c-app-gmx-bs50>
From: Frank Wunderlich <frank-w@public-files.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Sascha Hauer <sha@pengutronix.de>, barebox@lists.infradead.org
Date: Tue, 24 May 2022 11:13:08 +0200
Importance: normal
Sensitivity: Normal
In-Reply-To: <da75544b-8a44-9c0e-f3bc-1bf216523ed2@pengutronix.de>
References: <1694C0B0-A962-420E-BA70-8061E8E9CA7F@public-files.de>
 <20220519115450.GV25578@pengutronix.de>
 <trinity-e8816284-959b-432a-bb6a-f33a6cd573df-1652964180567@3c-app-gmx-bs49>
 <e0e7cd6c-aa14-a09c-71d2-681842575398@pengutronix.de>
 <20220519131019.GZ25578@pengutronix.de>
 <trinity-58fee77a-48b6-48ff-99a5-8eaa6c480d0b-1653129114535@3c-app-gmx-bs49>
 <da75544b-8a44-9c0e-f3bc-1bf216523ed2@pengutronix.de>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:3FGezPS5eEirKYlLchVCYoAgz99oHFB8EZ7VFqsA38dfBll4O4w6AP83UfCFcWbhRSaqz
 n7Ov0Y0v2vcJkQA0zzFsM1BZiOPk4SH7qUwMbIFQM4e738qM8aziir/AaJHUdu2bClPP5YJkj3FD
 3jrgZdHbt3eL3sH0+HFBGX7ehMDqF49iDHyG8hMXdSFHHcHfFQYHv+NX9q4qlitOhR5n7n2+1cQi
 Gv57uqweQPoI1teocigmU8slqjseP1ywViDLrB4w2eVkLCOC4UnJrvuEPHwBj0L/Ct9/hkonln15
 WQ=
X-UI-Out-Filterresults: notjunk:1;V03:K0:I4P7Jv0iUGs=:AuHGZQtrPdpRYd0HEeVcG7
 lZAUGLnkFk9GwbWA8CjXl5Ae8TGQSVYXdlcFhj0eQIMZiJd7kxVmXpiyM3ynE/fDG68SJhvmv
 SfmWxRtQvZiYus9MmEF3SwUJt/Ves1p7AlMpqL83i8c9O4ZRYy5COTzh2KCk0NnuTMa4c3dp8
 OzGTrIRQIBAf6nM8lXaclH9fWYOTJfezy7uHbzjp/AujiHzZ2NiaR+ivmt/5ykI4pqOfEofKP
 3hb9ISMDlxIc/5zSCBOj7rz0hKPDzfZvSt0yKnoCwhgS9UcR7UmYHCwFlxNIxmCzXbnR9yuWO
 XFqeqZQ3ZYUUkjiqWb0BIK5Xc1/11MZhHAuq3cQvFSi+GGDoS4ajuLjKZO6Kina/Kq5nxm3jd
 lrC/kW+Jy9gMt7hzNQHQIDp7d86fYoHG3vikwsvIpgs7bzE4g2sZ/7kI7sKpya10AyoKY+HgB
 qgnBLfXVfDy0mBPpeYz0N7mU5dWScRpHqRgEsjhDgp1gUf9u7r1md25UwEustc3mVejxz2WjL
 51KPClmAkswpXQufAd1quIv75/5BgpzZUu3ziE1F852GA9PaphVqugC7/42Hwerpaaec1p5sX
 vekjGyUCWInWXXEgQ5uG23HYzWQU4c7/3EWXRzNgk91tT99EJzjOHhTa6cyV3oy+/0ghPzkG+
 TqWIvENRnk12eIe/+WJWtLMXdRin9W1yufRmUVv97iameQh3B3DZiz//2yLJBipa4r5V8z4ok
 O/uJ0VGD9r1jcnc2YxIz6zbizGgpSBQd/ygcSQEOoD3dHKOqDvNm2stguNs8FztnD6XFx6brK
 TpIG2jz
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220524_021324_573892_7FD448A5 
X-CRM114-Status: GOOD (  30.12  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Aw: Re:  Re: Re: Driver load order
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

as far as i looked into the linux driver and the binding-conversion [1] i think adding those fields is not enough
as the supply needs to be set from the upper values (vccX-supply) of the rk808 pmic.

in core it seems that this recursion is not implemented yet (like the check for rdev->supply)

from binding i mean this part:

vcc1-supply:  The input supply for DCDC_REG1
vcc2-supply:  The input supply for DCDC_REG2
vcc3-supply:  The input supply for DCDC_REG3
vcc4-supply:  The input supply for DCDC_REG4
vcc6-supply:  The input supply for LDO_REG1 and LDO_REG2
vcc7-supply:  The input supply for LDO_REG3 and LDO_REG7
vcc8-supply:  The input supply for SWITCH_REG1
vcc9-supply:  The input supply for LDO_REG4 and LDO_REG5
vcc10-supply: The input supply for LDO_REG6
vcc11-supply: The input supply for LDO_REG8

regards Frank

[1] https://patchwork.kernel.org/project/linux-rockchip/patch/20220519161731.1168-1-macroalpha82@gmail.com/

> Gesendet: Dienstag, 24. Mai 2022 um 10:53 Uhr
> Von: "Ahmad Fatoum" <a.fatoum@pengutronix.de>
> An: "Frank Wunderlich" <frank-w@public-files.de>, "Sascha Hauer" <sha@pengutronix.de>
> Cc: barebox@lists.infradead.org
> Betreff: Re: Aw: Re: Re: Driver load order
>
> Hello Frank,
>
> On 21.05.22 12:31, Frank Wunderlich wrote:
> > Hi,
> >
> > current state is that pmu/ldo regulators work, but not the SWITCH ones.
> >
> > these are read by linux using the supply of the regulator itself
> >
> > 	} else if (rdev->supply) {
> > 		ret = regulator_get_voltage_rdev(rdev->supply->rdev);
> >
> > tried to port this to barebox, but regulator-struct there does not have the supply member
> >
> > 	} else if (rdev->supply) {
> > 		ret = regulator_get_voltage(rdev->supply);
> >
> > so i added it here:
> >
> > +++ b/include/regulator.h
> > @@ -86,6 +86,7 @@ struct regulator_dev {
> >         struct regmap *regmap;
> >         bool boot_on;
> >         bool always_on;
> > +       struct regulator *supply;
>
> I think this should go into struct regulator_internal instead?
> (You'll need to rename the current const char *supply there).
>
> >         /* the device this regulator device belongs to */
> >         struct device_d *dev;
> >
> > but now this needs to be set somwhere...linux set this in
> >
> > set_supply(struct regulator_dev *rdev,
> > 		      struct regulator_dev *supply_rdev)
> > which is called in regulator_resolve_supply (called by _regulator_get).
>
> Ah, I missed b8074eba2a6b ("regulator: RK808: Add proper input supplies
> for rk808"). I recall now that I had ported an older version of the Linux
> driver to make porting work easier.
>
> You should probably add a supply_name member into struct regulator_desc
> and then propagate this to core, so core can request it.
>
> Cheers,
> Ahmad
>
> >
> > regards Frank
> >
> >
> >> Gesendet: Donnerstag, 19. Mai 2022 um 15:10 Uhr
> >> Von: "Sascha Hauer" <sha@pengutronix.de>
> >> I gave it a test with your rk808 driver. It just works \o/
> >>
> >> regulator_get() triggers probing of the rk808 regulator driver and
> >> returns a valid regulator.
> >>
> >> Sascha
> >
> >
>
>
> --
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
>

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

