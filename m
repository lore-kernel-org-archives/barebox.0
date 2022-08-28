Delivery-date: Sun, 28 Aug 2022 09:02:05 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oSCJ2-00CoXT-Q2
	for lore@lore.pengutronix.de; Sun, 28 Aug 2022 09:02:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oSCJ0-0006tm-F0
	for lore@pengutronix.de; Sun, 28 Aug 2022 09:02:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-ID:
	Content-Type:MIME-Version:Date:Subject:To:From:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=y3OFySkbtH3RVArObciDAOl9fOrhWbReT0UpJYlBwHM=; b=zKWy1jIjK42ETeHipq9xV/xgCL
	7xCH2ValfEgqBjqXz4iMBrVUW7VfuoVU+4aEqVUAzpmhrwSlLEbcw+fSRS75Os3PTfff1Pzsit1s4
	m3bIvVipzh+IpdhQq/M2WZLoHDqfj3E6GQ8Pxm1q1tfj4hu6R+MW3HYPEJrMHudjQKyRFAgXYA0mg
	/x1WoYfGYwdoXez+CNP9YYTjJOsfbro9j3lEYibBD0enOCm2Zg+imAMHOgKmYIP6vD6GM+eUffHoh
	h42aBazxWfMBCAMPA6Uc8w6O/1a/SOniCopIRAaoVqGbU4CBbD9gII2XgME7hpotlKNwozckWEVbL
	rofQwjow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSCGk-00Eyco-JR; Sun, 28 Aug 2022 06:59:42 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSCGe-00Ey1e-UO
	for barebox@bombadil.infradead.org; Sun, 28 Aug 2022 06:59:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Message-ID:Content-Type:MIME-Version:
	Date:Subject:To:Reply-To:From:Sender:Cc:Content-Transfer-Encoding:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=y3OFySkbtH3RVArObciDAOl9fOrhWbReT0UpJYlBwHM=; b=FsoLfsxCvIkwoQ6Sm6o5yUJwgL
	Fgg5STBnmxogaN127VP4MbvuhCeBbW0bTwXJHljpCMbp3Zy89YtnBnsv/aaKO9luFXuEKG8OBCj1C
	dwUHXk5OEXGcRwcJfTiTgVtPRy33olxTR0CooMfXOzSnhNK2a0Zs+x+1S6NuXacQ6Fk1tYw4jRju6
	nwOwSXB8w8IiQdNpbHi9Wu3zIdZX4yaet1FvdeK3xMGwV9S8t9qAxVZf7Rg5gHITsC2xo7WjO/NTV
	38A7qIMJpytU71PQsylyeeo/a4mbUE+jR2rSO+Z7DW7kUTXpSLneLETyopQXH38+n/oXV3ZZ6Jggg
	9aV1rlrg==;
Received: from ip106.ip-167-114-95.net ([167.114.95.106] helo=m2te6.cn)
	by desiato.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSBoc-0070DN-N7
	for barebox@lists.infradead.org; Sun, 28 Aug 2022 06:30:44 +0000
Received: from DESKTOP-ILB9POM (unknown [113.116.136.81])
	by m2te6.cn (Postfix) with ESMTPA id A5612AE95AE
	for <barebox@lists.infradead.org>; Sun, 28 Aug 2022 06:22:28 +0000 (UTC)
From: ts7@m2te6.cn
To: barebox@lists.infradead.org
Date: Sun, 28 Aug 2022 14:22:27 +0800
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="Mark=_144603537572301768785"
Importance: High
X-Priority: 1
X-Mailer: Foxmail 7, 2,53,  22[cn]
Message-ID: <5630BFAF081C0E161B3B7F2C7FE58E@DESKTOP-ILB9POM>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220828_073042_506270_E10A0E53 
X-CRM114-Status: UNSURE (  -2.06  )
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
Reply-To: 2213932187@qq.com
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.1 required=4.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_REPLYTO_END_DIGIT,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,
	SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: =?UTF-8?Q?=E5=BE=88=E5=A4=9A=E8=A1=8C=E4=B8=9A=E9=83=BD=E9=81=AD?=
	=?UTF-8?Q?=E5=8F=97=E7=96=AB=E6=83=85=E6=89=93=E5=87=BB=EF=BC=8C?=
	=?UTF-8?Q?=E5=A6=82=E4=BD=95=E8=BF=87=E6=B8=A1=E5=AF=92=E5=86=AC?=
	=?UTF-8?Q?=EF=BC=9F?=
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This is a multi-part message in MIME format.

--Mark=_144603537572301768785
Content-Type: multipart/related; type="multipart/alternative";
	boundary="Mark=_1446035375723017687400"


--Mark=_1446035375723017687400
Content-Type: multipart/alternative;
	boundary="Mark=_1446035375723017687721"


--Mark=_1446035375723017687721
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

=E7=96=AB=E6=83=85=E4=B9=8B=E4=B8=8B=EF=BC=8C=E6=9C=89=E4=BA=BA=E8=BD=AC=
=E8=A1=8C=E5=81=9A=E5=8F=A3=E7=BD=A9=EF=BC=8C=E6=9C=89=E4=BA=BA=E8=BD=AC=
=E5=9E=8B=E5=81=9A=E5=86=85=E8=B4=B8=EF=BC=8C=E4=BD=86=E6=98=AF=E6=9B=B4=
=E5=A4=9A=E7=9A=84=E8=BF=98=E6=98=AF=E4=B8=93=E6=B3=A8=E5=81=9A=E5=A5=BD=
=E6=9C=AC=E8=A1=8C=E3=80=82
=E8=BD=AC=E8=A1=8C=E8=A7=81=E6=95=88=E5=BF=AB=EF=BC=8C=E4=BD=86=E6=94=B6=
=E7=9B=8A=E6=97=B6=E9=97=B4=E7=9F=AD=E6=9A=82=E3=80=82=E8=B6=81=E7=9D=80=
=E5=90=8C=E8=A1=8C=E6=94=B6=E7=BC=A9=E4=B8=9A=E5=8A=A1=EF=BC=8C=E5=9C=A8=
=E6=9C=AC=E8=A1=8C=E4=B8=9A=E6=9B=B4=E5=8A=AA=E5=8A=9B=E7=9A=84=E5=BC=80=
=E5=8F=91=EF=BC=8C=E8=BF=BD=E6=B1=82=E7=9A=84=E6=98=AF=E9=95=BF=E4=B9=85=
=E6=94=B6=E7=9B=8A=E3=80=82


Wechat=EF=BC=9A 13266762417=EF=BC=88=E6=89=8B=E6=9C=BA=E5=90=8C=E5=8F=B7=
=EF=BC=89
QQ=EF=BC=9A2213932187
=E6=AC=A2=E8=BF=8E=E5=89=8D=E6=9D=A5=E5=92=A8=E8=AF=A2=E4=BD=93=E9=AA=8C=

--Mark=_1446035375723017687721--

--Mark=_1446035375723017687400--

--Mark=_144603537572301768785--


