Delivery-date: Mon, 04 Dec 2023 16:06:21 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rAAWa-002vJ7-2J
	for lore@lore.pengutronix.de;
	Mon, 04 Dec 2023 16:06:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rAAWa-0002Av-IH
	for lore@pengutronix.de; Mon, 04 Dec 2023 16:06:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:Message-ID:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=c6n9zd0w8Xtyesk512Cd8+DbHFeZzdYV7GM1Sh1icSw=; b=PEzN7TyhsL09GJ
	kl5Rz0hpojxf3+k13FY7w5ISwYeqlbB2adE1EEVyW47n2D4rtX0NsBicf0QDBmS112loMI9p0CmvN
	BDz9CMII/fgK75tDtGYwIRqFBAQ8FyUEY/kyaracsqOpMkVFWOej0R/2+APUnA6956WwqaFBWo708
	3q2BDlQf9EtIS+e4JzG/tMMAFIw/sPN9pmLGamcyQJrtevy+PByLSrYK8LOHc7QNxIzqUDngKRiZM
	EQfU9ww/LTssCjE7VT6QhBkbdzvjPPrt66c5SlMVjhmU8vCodBIclycC2c8IBWycm37vNLXK5dCwG
	jX41Mnyf3xhZO5pcJ1bg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rAAV9-004ttL-05;
	Mon, 04 Dec 2023 15:04:51 +0000
Received: from mail-dbaeur03on2061e.outbound.protection.outlook.com ([2a01:111:f400:fe1a::61e] helo=EUR03-DBA-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rAAV4-004tsA-07
	for barebox@lists.infradead.org;
	Mon, 04 Dec 2023 15:04:47 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DCQt7W9rif19J86JRySby8i4tspD/HiRvRd7t+e0yJ9xEcZb6ggJiT8qbkVSyPH0JoAjNHC+F87aS5qzmoKRxcQeC6Ike21lU3m6nskP+91PzsI7qMGFrbGIBqCPoGDmve55G/0TTovkyA6WENQLmHaVOqItmGMYphBUJufMO06qqOlBf2F7PpCiaj8ytEy19GvvWdwVWcojGBxrG/56CpQoK/zbBQ586WsrJyMudQNRmrQpXnSlZ6cudjEpr81dMsGwA74HqLidX1jjLHDR1mN2HIeuti14kQtj6571I3pwNPUUZrllvpgqSiI0zP002JUO8fv8LnSdpjMnisEl9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=c6n9zd0w8Xtyesk512Cd8+DbHFeZzdYV7GM1Sh1icSw=;
 b=b1ZswURd82kE8vm8WcfajLH3yKlmjk9kv+61VgkrpgWgAwFM5poRs2w4TDRCzNntIH6aNpRwxvxALPf3uOUVOnFM9mdkJ9I7YjV25i0DAQjUtt+BthrzOyOUR98r/gzUYFW+33sJzxaYpVWWrwSxXe6tnq4TgAkYMkYGyOlVq+orimd1cxEJYWme8pPv2ri6B7ptmvziBq3B/LGTSRkZSHr3M3SYc7HbUsVs4m2QIlQGxxbLpP+uPzeaSOhmklLV0bod3uNCiKCmNv2ri21J8652BZbdDwWTpd1HBzHi24xhOrwWBiSnx2qZ+BOSpUzgO5CsqwdHipuXy/ijcmaftg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=witekio.com; dmarc=pass action=none header.from=witekio.com;
 dkim=pass header.d=witekio.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=witekio.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=c6n9zd0w8Xtyesk512Cd8+DbHFeZzdYV7GM1Sh1icSw=;
 b=IaQyNbARhFQ58R0RCT6lvaAUQ0w1/MEygxYR60/6P/3S/EWV+cHnfWUtycr875gY0fUy+J5GNAyT0UlmVSghzqHFoVEJkYTQyh8Yt8cSIflEthCkRZ814MGSNOZ30Bipdv+SrUyHs2s5lhB5oA3/IVrAitENn5YOWV+bJK6ClwFDiARioMacz0Qx+7b5W1WrIUowBLcYDUw5n6Hfssn/REmoZ/GzsmHV3HBKQBZVA7JltOGjv72hr0DqcUl9kj3F4pugtverFBBzG0r0dHGOdUSLxLlCxTSrzYMQLUVlLBCGMCoIzZ8oYrDryjUpGEtmgQE1jurJ1Hx5iTqA9VHxqA==
Received: from PAXP192MB1245.EURP192.PROD.OUTLOOK.COM (2603:10a6:102:1a5::17)
 by AM7P192MB0691.EURP192.PROD.OUTLOOK.COM (2603:10a6:20b:177::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7046.33; Mon, 4 Dec
 2023 15:04:37 +0000
Received: from PAXP192MB1245.EURP192.PROD.OUTLOOK.COM
 ([fe80::9322:63ca:da96:dd60]) by PAXP192MB1245.EURP192.PROD.OUTLOOK.COM
 ([fe80::9322:63ca:da96:dd60%3]) with mapi id 15.20.7046.033; Mon, 4 Dec 2023
 15:04:37 +0000
From: Victor BERTIN <vbertin@witekio.com>
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Thread-Topic: Fail to register logical partition because it overlaps with the
 extended partition 
Thread-Index: AQHaJr5MWIatlLS81Eax0U9G0EVSRA==
Date: Mon, 4 Dec 2023 15:04:37 +0000
Message-ID: <PAXP192MB12457D6FCCD50380EA71D63FA786A@PAXP192MB1245.EURP192.PROD.OUTLOOK.COM>
Accept-Language: fr-FR, en-US
Content-Language: fr-FR
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=witekio.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PAXP192MB1245:EE_|AM7P192MB0691:EE_
x-ms-office365-filtering-correlation-id: b2c4f781-2b01-4102-014b-08dbf4da5539
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: hlVbBoIeUjgSc3fp8/GTK8tiI048Ha55Amtxm42iOsVfLIZzbaij4XOTdOQP1rF2+1Ie2MstJQ39pPbBfvySpt60wZWzOfAgHbtnvcA/mln3JKt7Xro+GOEPp7SBJr4d6S+hugUTuA7a9WTH1rwTsVHHFn7HDjSCGayEaYj4JXJpqDBoPSFLYK5Y5lwofjBA/NU/nwCJJ10wQoHLaMBC9by5CxRJ5XkQvevzdz+TxEfVdXUliyl5i2tklOvC+ea+zYshyeFBLy2qzWRQZpjc+AJAke+E20hf6R/nVrIqQsGLQt3IopDSKYCPRxb0dcMbZfhQjWgxwaeMiJzyMViOUd7qCFZJhuIRS9PVaJeJmo5BWSa8Rqa1k+kKXdO3bBaMK8XylY7uHO34GJ0lRrFLeZx8E+WXhx0IwZaDMdaKvSQqHkH4yNrzBvpzBd20ptZSElJip5tUGagulaOkJzVDP1Io4HdlmYgWkY+aA+QmAHy3EQMaTPpgxegTO84CGYIqRH7n4993/XhCON7sSyh6+oggQH0J1v6+CSc6MbKkfR3XpBkbU04fHE42YLUWsg5MgVWT9ad7OqCDYe5hXqc9+4J3sWdCZOh3TGnD6BJx+kTkAPSdWuL6aKMZGx05o4YsGa/QrELH5ysQKGhIEJshfA==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXP192MB1245.EURP192.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(376002)(346002)(396003)(136003)(366004)(39840400004)(230922051799003)(1800799012)(64100799003)(451199024)(186009)(478600001)(83380400001)(4743002)(7696005)(71200400001)(9686003)(6506007)(316002)(91956017)(6916009)(66476007)(66446008)(64756008)(76116006)(66946007)(66556008)(122000001)(38100700002)(55016003)(5660300002)(52536014)(66899024)(86362001)(8936002)(8676002)(2906002)(41300700001)(33656002)(38070700009)(573474002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?BfMuyH+TDVhf/FsatIu7B4mm/e2OmcNIbVXRsDRDbhnaHK2EbPekGu5aNz?=
 =?iso-8859-1?Q?71Cuvr9ubVAfwIsEemlha7yqUv8ro/peEah/7L4M6Rf/9yNzXeJHbuO57K?=
 =?iso-8859-1?Q?k8IG2NFD8wn7l3jt4potjNvjoI67piSyfiYbXV8g5G458xuq49EvQRgF59?=
 =?iso-8859-1?Q?16HRQQ9q/sMbfHwoMxJlosfFJEnJgSPnR9OpSFfb5lz6nx4aKkMlcev7IH?=
 =?iso-8859-1?Q?jqb957kE2udtBSaicaKMS5Ff7kH4sSlrJ4WPhnMJxLRMykxlEgpPSnnKwa?=
 =?iso-8859-1?Q?5pHBLBZKs1xxrPPgGA5Pcw4FlFlI0+JJMnB+GnRvk2Zhdi+yp3EXNJCQcT?=
 =?iso-8859-1?Q?ktFU2CIk7FpQjfJsbXyxU1o698dtPSwy5UMNQ9URiK295eUiKs0SfyFMy8?=
 =?iso-8859-1?Q?CmGDvDnNMSJi9neYRW6mvHQi+P6GLvoVon8E9Ut+sd5PBxrNarrKlEQey0?=
 =?iso-8859-1?Q?LjvF2FAnahhSOrwFcVJBBgAklfUtkMF1V9VxF2t8Ww8L+Sa/1nc9OSZjNF?=
 =?iso-8859-1?Q?97asnLh1ij2gme5fwhe8+y34O/KSwigqyl1NQy5Hbn9rCko6UmqxL9ncHB?=
 =?iso-8859-1?Q?PillmuO/H+QpsI2GYhk4J0qpPAg0JENDhSMXG1c17ycFzqAfb+9Jv9a55Z?=
 =?iso-8859-1?Q?Q9CCR2fF4as4IlY5V27t0FGPhXk2F6q6/TnvM/ZdtAt/XWPAYcfRD5zGy2?=
 =?iso-8859-1?Q?jR82nlD5NxHB0VbWOSB+vmIaHkrPUE/4L702EO4qSoeVl5QkLIk71WHcI9?=
 =?iso-8859-1?Q?SlvIXCe26QgP/KxLwZfwEmp4B27XNdb0tjmZoiHrSsSxtgYkecFJklsFrl?=
 =?iso-8859-1?Q?36hA+crEMwLEcwPnAS421p2cnO3LLwc0qNpwhgtZI5OxPtPBYG3ZkiczXg?=
 =?iso-8859-1?Q?PNjJfIXwkmwq4Snko+amQQoCmn/ZwlQ9U60hrlt0OrZaYWSjtvFAJUz+bC?=
 =?iso-8859-1?Q?b02Zx4mB6j13FAGWGWLZLbw4nSqT7sXkxlQSWaO9mE2KAMNHY4nFsk7DRN?=
 =?iso-8859-1?Q?1y2uXVq2HwxcgX/1Y7vWunwuoLYRXgBJFyeKRBtSteuWWaVM9LWEFf+lJK?=
 =?iso-8859-1?Q?P9joSw7DxnX2FMChzXI3e6Ux47q4NbagRrmKvTibUfAfqjdRMWHRuj2JtH?=
 =?iso-8859-1?Q?GXiN02YY9NtJ8hmpwHPaPckcQpb2BZo1/7mOxmcum32WQI7x/9lAhXL6+v?=
 =?iso-8859-1?Q?H4lOTMAXDnEeeoi0NbRzVVOA/1PEuXmB/HaRkg2yZTog8/Dmhh9C16UCO4?=
 =?iso-8859-1?Q?zbdGC9/e5bTnHFHeotF9QrQZAvt4S4O9iqBZ2sZ/nEKB/Cjr2dw1H4Z6w5?=
 =?iso-8859-1?Q?fov5nauzyhEg1F+ayQi6Z+arODNhtb8tWesmuyeSb8Xbr/BWcxnK8rnO5t?=
 =?iso-8859-1?Q?aZl2Be9xIKLTxwA5CHygs1lZBPBjSjX232xDZo7vM5ETwYPLsCs67MFFjs?=
 =?iso-8859-1?Q?G3/2buumuLYb2Awfh64gOLvBwaCLILosD2+AD9+YUmr9GiT/+Z6RG+L2hv?=
 =?iso-8859-1?Q?rdHO6t9zVoK6A9pL2maoU7duRvHB0NK7Yuk/OHt1SE7cI7Qo1fVLt6K5H5?=
 =?iso-8859-1?Q?85w0PhEBoHQ/KnQtQSJhD+M0VNgjES2FGp4MWKmZook8WLcSFIngSO/uJB?=
 =?iso-8859-1?Q?T76rGxqeoN4fmy0l/FhMlEVfRFgez8HmqlVQBFhoZp02s1V5eeHtI7N7/E?=
 =?iso-8859-1?Q?FO279NBF9s3g2jXb9Fw=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: witekio.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PAXP192MB1245.EURP192.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: b2c4f781-2b01-4102-014b-08dbf4da5539
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Dec 2023 15:04:37.2702
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 317e086a-301a-49af-9ea4-48a1c458b903
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oE7rJIpNvzEle+c4ghCA9X2MBCPzaex4KIzx2HIom+rr/MHhcwHxssNg+7cWJi+7RErq+uTWzG8y/dLxtTot0Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7P192MB0691
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231204_070446_144500_758112A4 
X-CRM114-Status: GOOD (  11.06  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Fail to register logical partition because it overlaps with the
 extended partition 
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello All,

We are using Barebox v2022.12.0 on a MSC SM2S-IMX8MP SoM.

We witness an error happening when registering the first logical partition =
of our extended partition :
ERROR: New partition mmc2.4 (0x46600400-0xc68003ff) on mmc2 overlaps with p=
artition mmc2.3 (0x46600200-0x466005ff), not creating it
ERROR: mmc2: Failed to register partition 4 on mmc2 (-22)

However, Linux does not complain and all partitions are properly registered=
 :
[root@imx8-evo:~]# lsblk
NAME         MAJ:MIN RM  SIZE RO TYPE MOUNTPOINTS
mmcblk2      179:0    0 14.6G  0 disk
|-mmcblk2p1  179:1    0   66M  0 part
|-mmcblk2p2  179:2    0    1G  0 part /
|-mmcblk2p3  179:3    0   34M  0 part /rwdisk/systemrw
|-mmcblk2p4  179:4    0    1K  0 part
|-mmcblk2p5  179:5    0    2G  0 part /rwdisk/app
|-mmcblk2p6  179:6    0  130M  0 part /var/log
`-mmcblk2p7  179:7    0   32M  0 part /rwdisk/conf
mmcblk2boot0 179:32   0    4M  1 disk
mmcblk2boot1 179:64   0    4M  1 disk

Since 84ea37e4580cabc2a49edc4e2c62b45a752771fc, extended partitions are reg=
istered with a size of 2 sectors. Our extended partition still manages to o=
verlap with the first logical partition that it contains.
A simple trick is to reduce the registration size to 1 sector, however we a=
re not sure of the side effects of such change.

Any idea why such issue could happen ?

Thanks in advance for your help,

Victor Bertin

Witekio GmbH is registered in Frankfurt. Registered office: Am Wartfeld 7 -=
 61169 Friedberg. Registered company number: HRB 95432. VAT number DE287400=
071
This message contains confidential information and is intended only for the=
 individual(s) addressed in the message. If you aren't the named addressee,=
 you should not disseminate, distribute, or copy this e-mail.

We continuously commit to comply with the applicable data protection laws a=
nd ensure fair and transparent processing of your personal data. Please rea=
d our privacy statement including an information notice and data protection=
 policy for detailed information on our website.


