Delivery-date: Wed, 15 Nov 2023 17:52:22 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r3J7l-00CkRb-15
	for lore@lore.pengutronix.de;
	Wed, 15 Nov 2023 17:52:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r3J7l-0000vm-8V
	for lore@pengutronix.de; Wed, 15 Nov 2023 17:52:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:Message-ID:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=M5OmGLmOXjsvEVATqpWFeDcfe7UMa1i+wIJJBk6XQYE=; b=1Bd+gD4oirg8iO
	0My5PGlEk/LYfAB88GEw6R9BkFZ7QreCy4lviRLGJOE/+JhMSsD6jUG29ZzZAfpaXviupcbtkEXUw
	7L5mRikY2btEgnD4xvguXE8nVX4G+7LkhMZc40ZQVQn82bZffAg5O7MrC6Ar+W2cvKQ6VFIFlwXem
	h5W9p4N14rxsBdAeIL6u7yLplZZtegsRnu2jXrbYwEt6XZ9Oqawm0t4AEhngh/CsHuOKqkocRCtbj
	zT9pBONCwYRkIETkyX18NcW1hcKPJy6FTXiogZSrIL0H4gda0gtn9no2m+bBezpgwwSGjs5pdabP7
	UpI6PHYQHx1ZMt659Aeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r3J6d-001N1i-0t;
	Wed, 15 Nov 2023 16:51:11 +0000
Received: from mx0b-001ec801.pphosted.com ([148.163.140.146])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r3J6Z-001N1C-0q
	for barebox@lists.infradead.org;
	Wed, 15 Nov 2023 16:51:09 +0000
Received: from pps.filterd (m0163888.ppops.net [127.0.0.1])
	by mx0b-001ec801.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 3AFGe8Qa002791
	for <barebox@lists.infradead.org>; Wed, 15 Nov 2023 11:51:01 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com; h=
	from:to:subject:date:message-id:content-type
	:content-transfer-encoding:mime-version; s=pphost; bh=M5OmGLmOXj
	svEVATqpWFeDcfe7UMa1i+wIJJBk6XQYE=; b=lK8Pe+eJMg0t9SNLNj3qJYLQa6
	pPijIsJ4OhmGF+6EFL9fiVYb+KUzjtAagxssrJLmS6TeSimdzgx8OnK9bPiuUo7u
	X/z4ARh0zA4vX8IRUgvk2XkMvDfjrrpLQiFP9wEdnltZ8MamH5FiqNE0cM3IOU6b
	uXHQ5L6LUd4YxyYphYItq6UNFapmkr2RCDxvYVcYn0v+MsFq4/cbaOSCRPb13OZV
	WBolVXV5E6cFJNmz+JmT0GPVLSz4GqpXFKYkziLBYMnxaTOvaSF4noDNekH+bTaZ
	0SP8w+5basSga6vWt32UiGXMfvNi6DaTGaN7ch5IG3K7EEIZRtp+L7F/H5lA==
Received: from nam12-bn8-obe.outbound.protection.outlook.com (mail-bn8nam12lp2168.outbound.protection.outlook.com [104.47.55.168])
	by mx0b-001ec801.pphosted.com (PPS) with ESMTPS id 3ua72um420-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <barebox@lists.infradead.org>; Wed, 15 Nov 2023 11:51:01 -0500 (EST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FPUANhmUkUqWy4HCqC7Hh4O58GmJYSugJPYtTc0a8XsiB2XJr+iZYGI4iMnLA3NwkV3xIUHqGkFh0OzXfZG/AWq9X1pgT0ASVJkvstk4penUFMZi6gDGFoaKVxBN+3C+wj8J3L4lD4HvpK6cSWd7kvHjFbdLm/75FamS7MmoP2RNVeG0t4a1N7UmcfmomTn39TQH4rmT3/p5m5jZbSsbkxOuW3+hfVuHvhLE49klPKha8GkrnZ2dwDOXWJrY54rDtKCWXgQWsKmCz572159tRt0kzwbzWBabRmCeSSiB8WTPYz0X0g6xnwuVPAHGsFG9vcyynSgGESN/cHWZMGkDTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=M5OmGLmOXjsvEVATqpWFeDcfe7UMa1i+wIJJBk6XQYE=;
 b=LnHnZZtQQwVxW99MCTihra/xwsotlj3fs//rwDPRdeqYU6o4vI2Fxff7Yb0pobn0N6YJJKKsgpgdET0Sqr16rOo7HRsw0eKlfDRbNWXkFSY72g+OtqWR5o4J3K6noqalNbQX6h/c3xkyz9ZhHacpwL0TmHnvtkASnhSy8oO4YYQfqZaNMOvZA4GVwPD7a3CF3VeezAIdPcyvVT1IDX75KHr1JhrOp2ZpP46c5lsrzUirxqz2IMuXBysB001eBEDxXlQuitJEYPkoQv+XxsHORIbpGB7gGjNemQjLuha5/nUbMeIP449SkLtJajam1633nNxLPXu5E9HrQFItS+Jn5g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ametek.com; dmarc=pass action=none header.from=ametek.com;
 dkim=pass header.d=ametek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=M5OmGLmOXjsvEVATqpWFeDcfe7UMa1i+wIJJBk6XQYE=;
 b=X8S1GTQPy/0OcsPcH3sqHpKZ3rXZHU2K6JqUg+S9sCNs5LgFEQadV6KPjF3bNSoHp4KXJBEPVSZ/p32puPl3ZazxOthSjqGJ/kpH13BkZtE9QLPbEkO5XUVbU/lVpHjd2CSJUaSKviwjbxmCaPWVAiu7zSrvPtnOKx7Q8Rryxc0=
Received: from BL0PR07MB5665.namprd07.prod.outlook.com (2603:10b6:208:80::28)
 by MW4PR07MB9371.namprd07.prod.outlook.com (2603:10b6:303:1be::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6977.31; Wed, 15 Nov
 2023 16:50:54 +0000
Received: from BL0PR07MB5665.namprd07.prod.outlook.com
 ([fe80::deb5:2c53:7713:aa3e]) by BL0PR07MB5665.namprd07.prod.outlook.com
 ([fe80::deb5:2c53:7713:aa3e%3]) with mapi id 15.20.7002.015; Wed, 15 Nov 2023
 16:50:54 +0000
From: Renaud Barbier <Renaud.Barbier@ametek.com>
To: Barebox List <barebox@lists.infradead.org>
Thread-Topic: LS1046A PPA firmware
Thread-Index: AdoX43D464Rc1KtKQDaYtPT9vGf1Ow==
Date: Wed, 15 Nov 2023 16:50:54 +0000
Message-ID: <BL0PR07MB56659217EA475581808B70E7ECB1A@BL0PR07MB5665.namprd07.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR07MB5665:EE_|MW4PR07MB9371:EE_
x-ms-office365-filtering-correlation-id: 35b0072f-d80a-4616-68fe-08dbe5fb088f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 1gdXVKn+I51SvBIxojwpZuzmfDsCWNTv7mxjb6qxpZnlk1jYoyQw4ZJ7wcDalWK7j5Pga0GQxogsDWkl/aK3UCAgqcO1zNDoWHfDpsApfO6/a8epBM1YJcixP1SibI3eGrZmOBoCwTWGlc878UMd94GRly0nwf8HG/WFeY1kCOwF5rb+1VwGmM6Wa40ZvdMZ82+F984GDTikNmOfMrmkT9NEPZmhUBYx0Cv3eBE5663o/cE8bqv/KFHZWLH7RXoEONF+YrpcB/3BodGF0TLnyADfMBzgBvV2Cc3XR4dr77zWGBNVwQtVk0DX3ym6ATnw74lVsOLV/MYrvjHa51k344B4eLy8rJWsjHaeDiHw4VWYQvVuLTXEbMg5TxZk3hJVcjGpFP6PbFId6GjKHR3nsILpWbZ/dr95VPRL5nK5Mi+G+AGW8Evofw+G/hDHZpoNDK1QfCdjFHL3JCFIZcgPqX+2Bv4ne7FKY7f9NCVMwsQLJXzvuiNmZZN62XFPl1mxWWZ69zHneS5VcZqnA2HKpS199DbdnWQtgGmCAJS24vq4cgMeo3QK2wfvL3QXwy8azZzjfUwue4w9hSB4sZ9Ph+wAtIV80+zRbgERTi9giXPYauZZkJ43Nxkn5vSr1Zpt
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL0PR07MB5665.namprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(39860400002)(396003)(366004)(136003)(346002)(376002)(230922051799003)(1800799009)(451199024)(64100799003)(186009)(71200400001)(55016003)(7696005)(26005)(478600001)(6506007)(9686003)(5660300002)(8676002)(8936002)(2906002)(7116003)(41300700001)(52536014)(6916009)(76116006)(66476007)(66946007)(66556008)(66446008)(64756008)(86362001)(122000001)(316002)(558084003)(33656002)(38100700002)(38070700009);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?unIj9PuHVIZrMSr1tLU7odXar9PjBX0h10+6YAU4KVSuG9Xghng3dXdMPMG8?=
 =?us-ascii?Q?jAU/GxjfME+AjBz0J3ZHPJs2FFQ+iKDTkHdRJhuJI71y0nfE4M9/CYO7fSX6?=
 =?us-ascii?Q?+J2bDMzDIJHZUs9cSndqowqOowKup5RPE+J8i5ZiQKMRq9yv6ReIB2xgC+AW?=
 =?us-ascii?Q?19yn6j/8EMEja7NqStXzSFEMBxLTyDnm1mtcv68pWynXXBE3z6F8SAxEMwIP?=
 =?us-ascii?Q?dMbrP0/CsLAkXaX2B2+x0ptUHB7qc4R5aMzyyamVqhCF19C5WF9+DZ5r/5c8?=
 =?us-ascii?Q?gwAwcI8Q7cpVbeONYm2jIn0A2r//vdM7KSE2s/wtvIf706SSHNZnKcSy5mZM?=
 =?us-ascii?Q?5/ZwxDg5f+YY9x+YJlFoFuu4ssfMZzKVjzKIl6DmxpGGlA1MnUcPqmKlrIam?=
 =?us-ascii?Q?1A7SPJLtatJU/QMvyZLgfORsKJRWpzwtCIzldbjhMMiDRMGtEu+aGD1Whw6z?=
 =?us-ascii?Q?nBCHHhEPugBjZo/VEqSLubeLsgc397csNmol0m2kHn29BZomBNqEHYljgkDs?=
 =?us-ascii?Q?/RLBHkmrtQ29by8sbi8u131YnfYZKkEtj48cWN7Lb9S1c0LTuiNiJhdB21x1?=
 =?us-ascii?Q?cr3bj66a8F37/WgZ5q40mT+KZ8K2rH19Gi1xJXfEgCEi3KLzCQvtwJfq0skA?=
 =?us-ascii?Q?7wCHcf8EC1lf/e3jADSM+79bK4zmvZeveqwy3vc/Kt99PWbJcpkYz6XWaCLe?=
 =?us-ascii?Q?Q4NlM74ScMi+uyLSY8BmGX4zj4wyxRaFSecQpMfOFTAXpXDAL9+4jSwLAia5?=
 =?us-ascii?Q?CCHU+IXtiXCihTennbGzimgG1l/WxNG/as5sue6b+413pA5V0ZXBw/okHRV0?=
 =?us-ascii?Q?H+AYzcvrUbmXheHGI8uDvrLhC+h8RqH8kh6kLBUh3oD+YiANkyjJI8YchbL/?=
 =?us-ascii?Q?/GaDIJeAwL8cWQksnAmCKSwglE7MZvJs46mZI37P7JaicDtufsjgs0EI7HaL?=
 =?us-ascii?Q?lmZwf1GkzSO3WE0QuC5tVRL5cjuOMSi5LIFk4eki4q6auXobTYT7VLm4iJcX?=
 =?us-ascii?Q?FniJUkVsGL8F+47vWyexdD2gtCLCkaQ8/qGGpydftyMOwBOEgWuKuKI/V3wi?=
 =?us-ascii?Q?BNXpaF4m2PCds6Ah2jup9a9u7LRyxB/mW1SX+gCbKCNE9OOzYl3N0DYMeV5w?=
 =?us-ascii?Q?yany9c046+EC8mBkET6v4tZe3Nt6A/7XvoLMReYHkhblTYRheE4Mboexo6gj?=
 =?us-ascii?Q?3BAN3g0pBHwvXE91VfnxW8sdbRNPA+aPBu0rJsmQ+jcKCb9T+2Ernc9XXZoE?=
 =?us-ascii?Q?xanM28Rq8/YV6q5YoSEvYs2+mIBSGwB6wzH+xRV2VoqkdMGS90ugUbj/xHFy?=
 =?us-ascii?Q?uLhOQj+z8sTHFJ6eHvnRps/Oem4zEhzF2zcZ7jCTYDiQcFSnQV08adoF3kQ0?=
 =?us-ascii?Q?EZERj7K+4ayYgHfXUsC/2hNRYBtIQyzZyDTEkUoR5o26BHCjpUvGLn0IrEng?=
 =?us-ascii?Q?ta3HNFiIoA0JmRNJTpJ8h4PHH74g1jlN+Il2nqIrFLQB2uvpjnL+35x6IBZE?=
 =?us-ascii?Q?lAnj6yZh1OWgW7zqtsSD8RaTdYGQzzXvxWwE9Eg3hMicfpmuelf7HYAzcZ3S?=
 =?us-ascii?Q?zX53z6+jZ3UMIuICVGwI6KFFM1nqv46tPqtinkjuOli1aF3jvVuarV9ZAHZ+?=
 =?us-ascii?Q?3A=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: ametek.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR07MB5665.namprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 35b0072f-d80a-4616-68fe-08dbe5fb088f
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Nov 2023 16:50:54.5720
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 31a88536-e2ab-44b5-837e-5110158247ab
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WVDRj0vdP/6ubMDPILQl9GhJiot2TfE1tnJId4jZvDGCYYvLH2jVDLGnRxLgxd8lmfN47V9+g9FeAuOxyHtmd2NKQW/S6bTUS8OPM95Tsi8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR07MB9371
X-Proofpoint-GUID: vYIqTcwKAzdxy782PqVR-UkOrPNlMmpn
X-Proofpoint-ORIG-GUID: vYIqTcwKAzdxy782PqVR-UkOrPNlMmpn
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-15_16,2023-11-15_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 mlxlogscore=525 suspectscore=0 spamscore=0 malwarescore=0 clxscore=1015
 mlxscore=0 bulkscore=0 priorityscore=1501 adultscore=0 lowpriorityscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2311060001 definitions=main-2311150129
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231115_085107_792575_2E00AE9B 
X-CRM114-Status: UNSURE (   6.81  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: LS1046A PPA firmware
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

For your  information, the ppa firmware loaded for the LS1046A by Barebox d=
oes not work for the LS1026A.
The build from SDK PPA Firmware: Version LSDK-18.06 is needed to work with =
the dual core.
=20


