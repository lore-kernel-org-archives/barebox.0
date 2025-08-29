Delivery-date: Sat, 30 Aug 2025 02:49:19 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1us9mS-0060K0-16
	for lore@lore.pengutronix.de;
	Sat, 30 Aug 2025 02:49:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1us9mR-0003YS-6q
	for lore@pengutronix.de; Sat, 30 Aug 2025 02:49:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:
	To:From:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IZxtw3z/9CaxWzHuOMx6eYG39iga0noJxPVFtMhYG7k=; b=CPpak/am7SL3jx
	lIT9B4me9D9UXqqVyYpOcdeJ+h7B2JamKpe+G9+MrG8HA52q5BHUejDZm/8RTgvMFMbB7SyQf3C2Y
	sf5A+id5w7akpWEq7HgQgsbTdUYBDCKWOkJr1480LZadideNzGFoIYH/ARNphCzAeEQdyLxf5MhSN
	G2TEbUSxj1PKN2WjxdmOuQAlb/C5KbaES9KVYk+Txkcv5GvIOE4o9goQhS9ragtkoelLv1Xmw0I2L
	GoswmPWQ2bJcR2RxCif/+xQq0S99u4nZPKA8VCw8ldC8u3efXDBb0f9lkeqcbJsEKfRLVSToxIbjP
	Zq8kYbpDsjXU0DF1uyDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1us9lj-00000007Ac8-1Xdl;
	Sat, 30 Aug 2025 00:48:35 +0000
Received: from mail.notificacionesdecoperu.com ([190.116.59.194])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1us30f-00000006Y3A-0nwV
	for barebox@lists.infradead.org;
	Fri, 29 Aug 2025 17:35:34 +0000
Received: from localhost (localhost [127.0.0.1])
	by mail.notificacionesdecoperu.com (Postfix) with ESMTP id E24431CD6799
	for <barebox@lists.infradead.org>; Fri, 29 Aug 2025 12:24:23 -0500 (-05)
Received: from mail.notificacionesdecoperu.com ([127.0.0.1])
 by localhost (mail.notificacionesdecoperu.com [127.0.0.1]) (amavis, port 10032)
 with ESMTP id 0YTS36GyGVfi for <barebox@lists.infradead.org>;
 Fri, 29 Aug 2025 12:24:23 -0500 (-05)
Received: from localhost (localhost [127.0.0.1])
	by mail.notificacionesdecoperu.com (Postfix) with ESMTP id 9F6C21CD679D
	for <barebox@lists.infradead.org>; Fri, 29 Aug 2025 12:24:23 -0500 (-05)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.notificacionesdecoperu.com 9F6C21CD679D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=notificacionesbys.com; s=804FB474-00E8-11EF-9D29-D8BF0EF47FA2;
	t=1756488263; bh=IZxtw3z/9CaxWzHuOMx6eYG39iga0noJxPVFtMhYG7k=;
	h=From:To:Date:Message-ID:MIME-Version;
	b=GLsdew1+Xcl4hQUMIAc/jXKUyzCIz+GQqC6zXcXxuiJpy8OF4ZgrbSrfoPrViqGKt
	 3OW+FK9uIlNl6nwxuq0qH9RNXlr3dV3LiXek02iEpck/DG0op3pwo2I8YOzgWoloAW
	 3GZKYkr3Su7+DvenvJhcsHKtWtyLU8L2x5k7KBuYXopDr6eIVAbbvOOWYcEAPZbBJy
	 LCh2ddHAtCcX8RGFeFCbrXv6SS/LZ1Hl4RPakVlBhL3TmCDDJX9LHmVkq9UOaQIy48
	 YOoLO8SgtE3hp6DxReFuzp6Nhx+bjSUy/J9eoPNXFz+oGybmolH//qpiPyoBm/11UI
	 daf1RrpOm0jPw==
X-Virus-Scanned: amavis at notificacionesdecoperu.com
Received: from mail.notificacionesdecoperu.com ([127.0.0.1])
 by localhost (mail.notificacionesdecoperu.com [127.0.0.1]) (amavis, port 10026)
 with ESMTP id 9fWAgaw6Bx1H for <barebox@lists.infradead.org>;
 Fri, 29 Aug 2025 12:24:23 -0500 (-05)
Received: from [45.250.255.20] (unknown [45.250.255.30])
	by mail.notificacionesdecoperu.com (Postfix) with ESMTPSA id 0452F1CD6797
	for <barebox@lists.infradead.org>; Fri, 29 Aug 2025 12:24:21 -0500 (-05)
From: Luis Fernandez Consultant <test@notificacionesbys.com>
To: barebox@lists.infradead.org
Date: 29 Aug 2025 19:25:10 +0200
Message-ID: <20250829192510.B63DF97C82F66372@notificacionesbys.com>
MIME-Version: 1.0
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable
X-Bad-Reply: 'Re:' in Subject but no References or In-Reply-To headers
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250829_103533_367829_B32E2723 
X-CRM114-Status: UNSURE (  -3.47  )
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
Reply-To: luisfernandezconsultant@gmail.com
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	SUBJECT_IN_BLACKLIST,SUBJECT_IN_BLOCKLIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re:Good Investment Proposal
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Good Day, 


My name is Luis Fernandez, I am contacting you because we have investors th=
at have the capacity to invest in any massive project in your country or in=
vest in your existing project that requires funding. Kindly get back to me =
for more details. 


Best Regards,=20

Luis Fernandez


