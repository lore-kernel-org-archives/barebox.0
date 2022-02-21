Delivery-date: Mon, 21 Feb 2022 14:53:53 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nM98R-00621m-Cb
	for lore@lore.pengutronix.de; Mon, 21 Feb 2022 14:53:53 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nM98O-0001Z6-P6
	for lore@pengutronix.de; Mon, 21 Feb 2022 14:53:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Admicqgt+TjtAm9kXmp/s8je1QvlgtbCX5TV/sGyLZ8=; b=XfcO8fKbNROlt6
	HdQLVwo1m+rih0V5D8HYt0Zs1fZhoPbfl/pVp7p8B2eyXl3WkdHkwMvtRAC6z3JHFGiv+mA4DhB56
	RU3JD9/db6DRCo/GFq4J2nVOLxc3WBCFd7Y8ZSBF7sWiMj0VZnzCN/b1IS823iFvbmQ6lY/jkFQUO
	InSHhHmzj8Oh9w4S3WkAZDScajsWNnCHm1NV+wnmKuoJbhHqHnZBBjv2JP6wUXyaZEf/pQx+gJu7T
	1KGtq0OvcVSODVDUdmDCl3Znw7Xbe8+svmo4cWqNIASv3sSJy8xFeznR+tbkj75PQVNClhQ68I7rm
	K/b8mxjK8WIyIiGBjGQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nM96U-0062Kf-U7; Mon, 21 Feb 2022 13:51:52 +0000
Received: from mail-db8eur05olkn20827.outbound.protection.outlook.com
 ([2a01:111:f400:7e1a::827]
 helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nM8bt-005rxN-Ps
 for barebox@lists.infradead.org; Mon, 21 Feb 2022 13:20:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Wdhag3/NnV5gBEG6TaVeQXGa8mJpV5zE+0CMGUxhyLp+ErYMhR276l/vDlYwkI0/U3AlfAuvtcL70IqKnQN/y/B65WvRtiSZlekHpfBVCsp9OVsLfhP3/mShd+2UOrPBU8QLKj6yUe0aCJW8bLjAmlRTKOpdWg76DRz8RvKYFeYelz/pr6zrcbyL4DiCv7LL/CXJMVogotqp05Wz9xApuSQsFE/Xoi46flCC0tMBM3LrKPpKVnlKFAv/R04eVSyW1eCLbR9DaTKI1N0gkc/1wI7MAcmiQWKKCZyU3SyKH/XKvRY6GlAdwPAFtgLu9s/PBo94eriJtCifxloEaWz0Yw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qNFfLJagSAl7i2d+v1SuClNSnGXPTCKKBLkq3ZFE21I=;
 b=g4cPNCmF7PI/a+91gc+abcji8SRrmcY9MbfvFlKl9+eJQj/UP1nt2wXkhIa4D8cqodQrM0jehSlPFJcHQZwJvUVZTS9oZwECMm+CE1GqlNsBJ4Uh1IIY1jcy6eSkcCIv44IdZs4GlQPATubsPMgIKkoMJIaHGTh4qniZBXWDZZaIPvaBVwhmpkT7xCjxO17z/AowwroatHnNmZ/QZMMWFAENA3WsahWD7zxM+4hBszuJnKTnSiDWruthfSgUPGHGygtY8/qIibuJ+Qugyk8cXRLv7gQtQRQnktf7nsW+rrlnJ7bvQhaJ9XgGPYM+A3FKzkKcgEj+s+urf7xAuAS1QQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qNFfLJagSAl7i2d+v1SuClNSnGXPTCKKBLkq3ZFE21I=;
 b=ekjMV0ypNU3NK5LM16S+qB4aKFuQcoufoYWAuwisOjHwdjUKla0YZEvyxyZpMkczNTtnecoQstNxzQndx6tIg1HtJnyyPcL+1Htrc3tNH3F4kufo228EObZTnTgHF1Lvo14B+RmWn6a5OyJG43sMPdqsb3QPV8h5PJ6kGvNqFho/ZXiCwakUjcBBm72Zyw5uQNz+XFFHO5N5JYdc/OkM5HWIVTcjtuaYznIkUg9vFU0hqb9teHm1IhTZTrWNEnUw68WxhyjeDxEy8Th/K0OwQoHqCrTRDTCOzWrNlb+V1/2OpvGQPNUY6G6RMDpFoQ0kO6XfJnDrUuLy2NHHZG0BBw==
Received: from AM9P192MB0870.EURP192.PROD.OUTLOOK.COM (2603:10a6:20b:1f2::13)
 by AM5P192MB0003.EURP192.PROD.OUTLOOK.COM (2603:10a6:203:8c::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4995.24; Mon, 21 Feb
 2022 13:04:33 +0000
Received: from AM9P192MB0870.EURP192.PROD.OUTLOOK.COM
 ([fe80::b101:2802:2eb2:504d]) by AM9P192MB0870.EURP192.PROD.OUTLOOK.COM
 ([fe80::b101:2802:2eb2:504d%6]) with mapi id 15.20.4995.027; Mon, 21 Feb 2022
 13:04:33 +0000
From: Michael Graichen <michael.graichen@hotmail.com>
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Thread-Topic: Read Barebox Infos from Linux
Thread-Index: AQHYJyMeN0T/sV2ubEezVEpnYdMKOg==
Date: Mon, 21 Feb 2022 13:04:33 +0000
Message-ID: <AM9P192MB08704D48582CC36E5B0CEFFBAB3A9@AM9P192MB0870.EURP192.PROD.OUTLOOK.COM>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
suggested_attachment_session_id: e17980f2-26a0-690b-43eb-c071e3e72ef2
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [U03J9t2HCTmDjNId7yZkwEZPvjFTUQ45]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 17237bda-3b4b-4f18-78f6-08d9f53ab46b
x-ms-traffictypediagnostic: AM5P192MB0003:EE_
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: hoXkomF9AvIP7USHxfHxr+mLpVJyKiEB2DJ0fJNbYEeXj6uFzwXN/3cFH8L6J+1AWMbGE6V1WhGn2MDqSl1434ZwA6ZLTNXtvdtwNjoQ/J6ZMVAMlFwHHJEmyRTf1R1DMsVtk/2tl/Uy74rLAH5roclW/jqYwxl2/mg2pgTqlWXFLxtWw+feE5QnlRv9fQ7xpqsFlbttVtPw4d4Yt+FSV9nzowGimNU1//yfyFvvbxnMjUrdOhua+8J9lW4GvXa1HzkiN2PTvHfpSE3QLJ8UJJQlJySVERoMnYA3TCBdJjpj0dbDTD5y+KkC8OdbxjX4ahFofmj1SJHAP4vFzWev/JFXDz5lOX+fJVUMmCxx5isRsGpse1vExL+bP0JyjV+pEPXOwhZqSx9Gv6XZPpSrcDqkwgk7niTCzsRp6yAd4I5ZduRkLT1jzfiMKt5b5GHQKCWB/uurcyOB5JAUV+RcuT4XdEH2NoXAviefj7pZOvo6heWDDi1PGgVfgdVOPm8ralKjAlaPmqISJmnkVmufh6dv/tVb0ftGEpnFEhYPh5CWaEyIQyItJpcrollzP8xxs7lfblisJuuwj5AKoHlsDg==
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: b7HBeoiGI2De3t0DK47waITa7MwwUbe6iEni5rqtdppaiQlw8p3xUQeDiI3tsCu1XBMgT3Qz7QBAzWVqNd7uLHbrfPLmJQhsBuqIe6/V3QDMZNWjyKYImKLe0SqJOBrvTuKzPcJi9RTrnj8A8LUZX9Lg90qSnwttOyqfkMxpdMGdPlI2OH/L205dFDtxEwYHIaNlr/kT6R+nMGA6E/GwmTfTtE6h+2kbUC7dTRt16hrlcmogZjSyIxJAVG9P9Icz5LpT5CK9UAzFGQNBf01IPH/P+cfiOc9A6fLz8dpDLpV3ATIOglQRS776bROVF/ebBc4SlAtlDwOOda2+biVL3uf88V9/u6UBrSmR4bGW5uOxPodpmeHMl/m2XgspeIm4Y/sSopCEoXADvTpd4daKzGwOIaoaROngmX9/ElVnpwp0UCjxULehUYVhFCtKxVHpIybUGZExMtQvno6ecaAmtFvlfl0ZUkrxhhdDSvf3uB7Pepj5v9bbWca2bRxIh5vssBDfB4W1UmMEU65qIRKS2v0GNuu478bm6euIEu+m17QetA5SjVmdhLXObpepUAl/tfWt3bs1PcqLbfj8ajSXV3CKyPdQpPUgjA6K1DHBeTfFy+DRDZAGehfVz5VNqQMNWl2C6GRw+FVAnG6NSXUe0I0bmIoJgIJrjhRgKrbfbCW5h9aMMSPdA7EULu+dmkCpblM82Wa2WxqIqEAtoHXd2kr+aeY/Y1vXiq2LuB/kHlckZFQxFE9wGbtqFjAEcuEcisRvViCuVm+bjZvNiiTdYO1iV+ofXK5tDYI3Rh3bPjGFOneLl3T0ly2mRpZGh75nC52oCsPBXfLIN4RpxlvRj3PELtL1nASYlVO3n+dYdUYRolXNrch0qyWFgbv+ALc0ES7VCU4C4P/8pgUWfNcg0rjORJCgbjbikhGZN4YMSBXjWCyoHwpmwrqL+NUd4XbZ
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-fb43a.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM9P192MB0870.EURP192.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 17237bda-3b4b-4f18-78f6-08d9f53ab46b
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Feb 2022 13:04:33.2705 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5P192MB0003
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220221_052013_880041_6CCB7083 
X-CRM114-Status: UNSURE (   6.03  )
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
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,FORGED_HOTMAIL_RCVD2,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Read Barebox Infos from Linux
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hey, 

I was just wondering if it is possibe to read the Barebox log messages or the Barebox version from within Linux?

Best regards
Michael
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

