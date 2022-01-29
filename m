Delivery-date: Sat, 29 Jan 2022 11:42:17 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nDlBR-00H4YD-Jc
	for lore@lore.pengutronix.de; Sat, 29 Jan 2022 11:42:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nDlBQ-0000yA-9q
	for lore@pengutronix.de; Sat, 29 Jan 2022 11:42:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Subject:Cc:
	To:From:Message-ID:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zk2dmI7X1gLw9lUhIh91pogLUNqt7EcFDiSoBjHi5/4=; b=Atq6ssmqX2W9n3
	5rm5qqFn9mQ2UBgmPjD/RqT9g2+AVipbF/5fSXU4QpVgJ9CEYeyTu/GY1BGhdyFs0o6KuS9n3T3Dg
	UWk1T5MrBz8ZuZ3l8YEd+8nvj2ZUEpN6f4InaGU+LjXAsw3SdqeArF7Oh8V7ZeYneOcpdYvY67UHc
	28isMA7O+/bB7hPHa031Xga4PLuO9tiy31/GA7cCsqtX7NsnRYCRjVQPoZykLLNAUc4O5cSaZRzYp
	QQ0a30qoSrSY+UWHkhEfmim0xpV/C9pEot0IetxHx3TF2lrCtGoqGuQ+yHWhleQ08gQVHw1xNz5S8
	1Nal1xGoZcE2LAQBKs8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nDl9b-004U7N-CT; Sat, 29 Jan 2022 10:40:23 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nDl9V-004U6v-E6
 for barebox@lists.infradead.org; Sat, 29 Jan 2022 10:40:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1643452808;
 bh=af0VuFZcllVkhoZtg6fTJQlZp3gGpwqQa7GDoythSD0=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=Wvx1xyJa/c/xuQJouaNRcqOHvu+KBDXG+p+zwiH9fAhm4UomMpod05WQIpN645/pY
 uXuPe+SeYmNr6LwhqZK0JH5qDvEhywmNHMZfmzrI8jmlhLE3ooSWsEWesJ0dhM6lCI
 Kdx+7pWUhnUMMUeU2jep9u3CTelL1BWWWSrw377I=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [157.180.226.119] ([157.180.226.119]) by web-mail.gmx.net
 (3c-app-gmx-bs07.server.lan [172.19.170.56]) (via HTTP); Sat, 29 Jan 2022
 11:40:08 +0100
MIME-Version: 1.0
Message-ID: <trinity-eba130ad-1bd5-46a1-95bd-4a2ee29c1f96-1643452807981@3c-app-gmx-bs07>
From: Frank Wunderlich <frank-w@public-files.de>
To: Sascha Hauer <sha@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Date: Sat, 29 Jan 2022 11:40:08 +0100
Importance: normal
Sensitivity: Normal
In-Reply-To: <20220106080838.GV6003@pengutronix.de>
References: <trinity-236a89db-cfb0-4d29-bf25-44dc71d5d143-1641396043420@3c-app-gmx-bs58>
 <65c439c2-d82a-5cc7-133b-aae7df21b610@pengutronix.de>
 <trinity-48d6bfb8-862a-4bdf-9146-e208983a61b5-1641406402672@3c-app-gmx-bs58>
 <20220106080838.GV6003@pengutronix.de>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:OqSb+IGkdu9ehBJFg29Bgw6wWGMuiZjwVBNCHIkAak9q1nI9bpK4PqDnTCT7Kqp+Gvanh
 va6JpWBx97vwMNKVZyq3DKJe/lbPILNpJCtmYGhOZbWIBdNXmCfgEq9IetCBJyXQkLltOkcm5h2f
 tTQmFE+wxESAY6wrSEOoG4E3z4NmgQC4kJGYFwFofTOh0wn7y88V9GfJaMA4Jy/TNi1XPNxC2D9D
 z+5CPfgoFXRzhTf7+iKwjiryJXzSB+R/MhG6/gV87Sl1zK0QSEVkgPRXe6szCIgErmqbx/vJcOqn
 os=
X-UI-Out-Filterresults: notjunk:1;V03:K0:ta3+Uvmysrk=:wLY1SPIXusOxshiU2eJUF2
 VPDquefg9tMWvgBLqwBHizfVwWww0etw5oBdL+FcH1erXJ9DsmitKv9x2VXd5fY07vgB4weZb
 fQrqAowgqQD4B1fzn92PKSqwOA9NOCrZHPicw36xh5Z4bsbeh3D0YK0MKTWL5HqcgXIXCO8fW
 sTxcCXvIopSghH9iLXEvNU/6v2nIJrQHXgsO5LjEih54gsij2uviQ0Nxd2/HevADVimNEzMyL
 aPRsgHnMfXeo81y3yNgP0diRKXj7IBKGHizStclRfF89XW273V1BDdEduti65RgY12KxPTDmS
 +BbW1kgX8+OsSH/0HfigN5mrUFUwtJRjE/F1iFy1ilSO7KSRNnO0yc9U6TPyluPFIps9oAejY
 0XSop7FZ2mMTB55eYPtqxKAF4134skJDN4/vCbHbhRrIyu0JQRWZUml9f615XJapqguLBMKdM
 7oLA1w87u4wKjxnKT3HxSJ7Gb/5NBaL7YYBtesVdy7NW/Z87LCRQf/7IHz//G3ZX/MQLHhaTc
 c6MOjzvaCSvVnaHJLzAHUPa/NcJ0yzdN/1zh1SpM0DuKRYOCxpEXpq6piUZ85CUuAiuIe4ozS
 aMup+EMQIsR6lQCFcdnTI2seJMfWWtFpvNZHk/6olQncTvCOLjqRhDn4nfr7ymRo47LKdwADu
 IGAHTQ5HRtZqxy3lu3Z8IWIf1YJ06mfQtfXkySzrp+QBXKv+Nmo81k5FDMqJbtVOJ3VoK5JY3
 6khzyioAkh1f6P69/nUlQs7DFtKR3DYigFyFCFVjkrolbKVcuNGulxE9B5zGn/sqD3+j3sEXp
 J/+hpBU
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220129_024017_853380_CE748659 
X-CRM114-Status: UNSURE (   8.33  )
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
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Aw: Re: Re: barebox extending boot-scripts
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,
> Gesendet: Donnerstag, 06. Januar 2022 um 09:08 Uhr
> Von: "Sascha Hauer" <sha@pengutronix.de>

> It works for example with:
>
> for i in /mnt/sd.1/extlinux/Image*; do basename $i b; echo $b; done

this works with full path, but not if using a var for dir var

barebox@BPI R2PRO:/ i=0;for f in /mnt/sd.1/extlinux/Image*; do basename $f b; echo "$i:$b";let i++; done
0:Image_5.16
1:Image_5.16-next.gz
2:Image_5.16.gz
3:Image_5.16.gz.bak
4:Image_5.16_q64
5:Image_bpi
barebox@BPI R2PRO:/ imgdir=/mnt/sd.1/extlinux/
barebox@BPI R2PRO:/ i=0;for f in $imgdir/Image*; do basename $f b; echo "$i:$b";let i++; done

basename - strip directory and suffix from filenames

Usage: basename PATH VAR

Remove directory part from the PATH and store result into variable VAR.

0:Image_bpi
barebox@BPI R2PRO:/

any idea how to get it working with variable path?

i can do a cd before and drop the basename

cd $imgdir
for f in Image*; do echo $f;done
Image_5.16
Image_5.16-next.gz
Image_5.16.gz
Image_5.16.gz.bak
Image_5.16_q64
Image_bpi


but then i need to restore the path again (something like prevdir=$(pwd);cd $prevdir) if script fails

regards Frank

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

