Delivery-date: Thu, 16 Nov 2023 17:03:34 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r3eq6-00DyRo-05
	for lore@lore.pengutronix.de;
	Thu, 16 Nov 2023 17:03:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r3eq6-0007HJ-2g
	for lore@pengutronix.de; Thu, 16 Nov 2023 17:03:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-ID:Content-Type:Message-ID:Date:Subject:To:
	From:Reply-To:Cc:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=QiKB8Tapw3gZJzOagX8x+groXe6XpFwY71dGM4Lqr6M=; b=maQ97qKXb3j0OcS2/DVr3sbZiB
	ptaZlUDa6HMynUNWK3U0OATGoTvxNWzCMy4CbHULCKvscHneVj1iZyHA5J7f+UmSLxV+7fXnO1xKA
	B11yuyQodvK4rOlqMj7qB6I2h10JbtIVOrB+AdUteYp4xdO1CIhV77Nice4hdajMa0WfICwumX+Nc
	HrDsbmtup3ZBe/C3hTysSEz/Lwe9ej2gMxOtTd50uMMDXUITH5W5mLira8HyHPSWMc88l4Yd7rO30
	USjfKcEMcV6mWlPij1WhFqjGe7tNsygN+2m1A9wOyaSaGjV2jF8WLwj6fFvx4DntRGdDiR1UOaGkz
	3VHksMlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r3eoM-003tkc-2C;
	Thu, 16 Nov 2023 16:01:46 +0000
Received: from mickerik.phytec.de ([91.26.50.163])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r3eoJ-003tk1-04
	for barebox@lists.infradead.org;
	Thu, 16 Nov 2023 16:01:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a4; c=relaxed/simple;
	q=dns/txt; i=@phytec.de; t=1700150497; x=1702742497;
	h=From:Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=QiKB8Tapw3gZJzOagX8x+groXe6XpFwY71dGM4Lqr6M=;
	b=Ab1Ytc1+2JyK7om0lRgVc8AzUmM/s3HVoyeYxbS2ThJxT0u5pFvN0F4ofNbx0FBV
	CNf9IwruSLN3ufebLZjPd4JQa1z1lEomOIfal9VI/7/X2BR3wlDBxMf46nRWraYf
	0owUSBYB5hFRa36IGhmLUC9iakijAXsSO/dDleMKhSY=;
X-AuditID: ac14000a-fbefe7000000290d-f3-65563ce18db2
Received: from Diagnostix.phytec.de (Diagnostix.phytec.de [172.25.0.14])
	(using TLS with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(Client did not present a certificate)
	by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id 7B.6C.10509.1EC36556; Thu, 16 Nov 2023 17:01:37 +0100 (CET)
Received: from Florix.phytec.de (172.25.0.13) by Diagnostix.phytec.de
 (172.25.0.14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.6; Thu, 16 Nov
 2023 17:01:37 +0100
Received: from Florix.phytec.de ([fe80::a802:84f9:c56c:4c6d]) by
 florix.phytec.de ([fe80::a802:84f9:c56c:4c6d%5]) with mapi id 15.01.2507.006;
 Thu, 16 Nov 2023 17:01:37 +0100
From: Steffen Hemer <S.Hemer@phytec.de>
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Thread-Topic: Compile with CONSOLE_NONE
Thread-Index: AQHaGKYt3bIrHlbWX0WPj4CQqwvGNQ==
Date: Thu, 16 Nov 2023 16:01:37 +0000
Message-ID: <49b721a9-cd86-49c0-bc04-6cfae0e2ea20@phytec.de>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.25.0.11]
Content-Type: text/plain; charset="utf-8"
Content-ID: <1889B0E894BCB94FA2D6E8D5DD7D23D8@phytec.de>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrALMWRmVeSWpSXmKPExsWyRpKBT/ehTViqwf7pRhYnFvczOzB6bF5S
	H8AYxWWTkpqTWZZapG+XwJXxZm8Dc0EbZ8Xtm+uZGxhfcHQxcnJICJhIfGu+wtjFyMUhJLCW
	SeLIzWYo5zGjxOEPu9khnE2MEouvbmUDaWETUJf48vEiE4gtImAv0bNvP5gtLKAkcXb6Zqi4
	usTSXa/YIGw9iffzljKD2CwCqhKX5s1jBbF5BWwkjvXfZgexGQVkJTZsOA9WwywgLrHp2XdW
	iPMEJJbsgYhLCIhKvHz8DyouL3Hi1jSgXRxA9ZoS63fpQ7RaSEy7dZkVwlaUmNL9kB1ilaDE
	yZlPWCYwisxCsmEWQvcsJN2zkHTPQtK9gJF1FaNQbmZydmpRZrZeQUZlSWqyXkrqJkZQLIgw
	cO1g7JvjcYiRiYPxEKMEB7OSCK+5XEiqEG9KYmVValF+fFFpTmrxIUZpDhYlcd7VHcGpQgLp
	iSWp2ampBalFMFkmDk6pBsYc93XrVWb+15RitJ3lHKt8vm7/8qx+oT9Mh+9zKO4puvv3u9rW
	md8Pr/B0PuLmGaiVFd+fuGxyiOuvzS2XwuZ/mu5QdrYqcv/TvRs2d68pehhcv3bHQpOPV0VD
	Qy7POcv/7PvSKXqZXf0rTU+oZ33+dEWv86Mp196yKc6nNiS1aXAyTJAzX/lCiaU4I9FQi7mo
	OBEAxQ+9j3MCAAA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231116_080143_533828_85DF104E 
X-CRM114-Status: UNSURE (   6.83  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Compile with CONSOLE_NONE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

SGV5IGV2ZXJ5b25lLA0KDQpkaWQgc29tZWJvZHkgcmVjZW50bHkgY29tcGlsZSB3aXRoIENPTkZJ
R19DT05TT0xFX05PTkUgc2V0Pz8NCkZvciBhbiBhbTMzNXggYnVpbGQgKHNvIHdpdGggb21hcF9k
ZWZjb25maWcpLCBJIGdldCBhIGxpbmtlciBlcnJvciBmb3IgDQpib3RoIHYyMDIyLjA5LjAgYW5k
IHJlY2VudDoNCg0KYXJtLWxpbnV4LWdudWVhYmloZi1sZDogY29tbW9uL2Jvb3RtLm86IGluIGZ1
bmN0aW9uIGBib290bV9ib290JzoNCmJhcmVib3gvY29tbW9uL2Jvb3RtLmM6NTg0OiB1bmRlZmlu
ZWQgcmVmZXJlbmNlIHRvIGBjb25zb2xlX2xpc3QnDQoNCkkgZm91bmQgdGhhdCB0aGlzIGNvbmZp
ZyB3YXMgcm90dGVuIGFscmVhZHkgb25jZToNCg0KaHR0cHM6Ly9sb3JlLmJhcmVib3gub3JnL2Jh
cmVib3gvQ0FOdlRrTll3dUN1R1FNWTQwVkM9ZEp4elc4cmhCakRBX0hFX01iOEF1VjlpZXA3c1l3
QG1haWwuZ21haWwuY29tL3QvDQoNCk1heSB0aGF0IGJlIHRoZSBjYXNlIGFnYWluPw0KDQpSZWdh
cmRzDQoNClN0ZWZmZW4NCg0KLS0gDQpNLlNjLiBTdGVmZmVuIEhlbWVyDQotU29mdHdhcmUgRGV2
ZWxvcGVyL0ZBRS0NCg0KUEhZVEVDIE1lc3N0ZWNobmlrIEdtYkggfCBCYXJjZWxvbmEtQWxsZWUg
MSB8IDU1MTI5IE1haW56LCBHZXJtYW55DQoNCkdlc2Now6RmdHNmw7xocmVyOiBEaXBsLi1Jbmcu
IE1pY2hhZWwgTWl0ZXpraSwgRGlwbC4tSW5nLiBCb2RvIEh1YmVyLCANCkRpcGwuLUluZy4gKEZI
KSBNYXJjdXMgTGlja2VzIHwgSGFuZGVsc3JlZ2lzdGVyIE1haW56IEhSQiA0NjU2IHwgDQpGaW5h
bnphbXQgTWFpbnogfCBTdC5Oci4gMjY2NTAwNjA4LCBERSAxNDkwNTk4NTUNCg==


