Delivery-date: Thu, 11 Mar 2021 18:08:52 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lKOns-0003VM-Kf
	for lore@lore.pengutronix.de; Thu, 11 Mar 2021 18:08:52 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lKOnr-0003Gh-Ta
	for lore@pengutronix.de; Thu, 11 Mar 2021 18:08:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aS5/zy8yz0cpFNZ2Oo22qcU6xovA/wEheV480kOhE/g=; b=KppaFdAMKUTWTA
	NLAObNJIE9NgclBn2LGJzGRQ3dYNie7VNbwT6GOC9XvaRWsW/6NPehEKkTfpkWOMxNkCbPyQgH/uM
	9YjzxINEUPerHOTxB1cpKVtPHVAtESYb0e9AFnsuf2ri39YWHTUFu53TYecbqaDZsnjpR2xW4MdHO
	RhrBGTtkOJ/eE7caFU1DHgKme3qTZr8VaHaxORXOUfQfh8os2T4OBdeBcGauWMrq6KFPbtuSsLGnI
	yJ1kGj4vCGFY1mQPJW2ELmcvIYnHLEZH1WJfHOfXpPBF9hfi7TM73U//OsLfVK5gpdoo2/T4xlmeI
	Fn7L1xeEVLIRnPyHJIbg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lKOmd-009eiC-5M; Thu, 11 Mar 2021 17:07:35 +0000
Received: from enterprise02.smtp.diehl.com ([193.201.238.220])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lKOmU-009egC-Fn
 for barebox@lists.infradead.org; Thu, 11 Mar 2021 17:07:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=diehl.com; i=@diehl.com; q=dns/txt; s=default;
 t=1615482447; x=1647018447; h=from:to:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=h5gcPZWxLIeHM+dKpBcXhbELRKlKmt0KqnkHkL4DKUU=;
 b=OKdGqshlO4eYY5rojiyDLhNn3ZmfY77VTKktZzWU1K24bKaHQxVcqDge
 dSJI/OUel36en7etqWGIxD1MpimwKxg21CKDikxiGwyVWmibe6XFf1uWB
 gn8yLRjkPsTJLr3feGeRlEfk/kvlluJax6Q1fiiUSv1lJ3tPT1GqDRtPe
 f+HHXQqJgKZAE6BZjHkGCYUQZWpOzsHg7lheAAVFTjj5DQl49ySy2WfR3
 bhf5NJ6m/x1+1xxdNFqKTWSxhNyxFKvBSfDXgqcy5jgy4VVcIxdXTY9ir
 bhFCRRusykthOUWW02vcK0XnA9XOnfeyBbxGw/oC3yBhGZPU27cMC02SF w==;
IronPort-SDR: Bi65OCOIYJ/m8gosVOy8UVt33dAU9rV807NroVxv1ehfu+1qfwbA9Xrer8JUJH42l+ajHeGX1N
 5EbI03CcS9A+mAj6uHCrywyKNl5B1MdAEx+l98YHn9aCKhNDQ1juQsOkOgKJ88bNsDU/LDkI7i
 c+cZu59XB8zHs8HJs0UyH4UwrF17Tt9HtTm7wbOBjFFvDzL3e6TQa4JiSz6qw4zItDuBPQz+F9
 oVANrZO4UlkwaAADjfl0vg9/b0lcS6NpyWN0NfwJJR4HAxdOqTgJq4ue02VS0QK12IIKOqyl6g
 cSE=
IronPort-HdrOrdr: A9a23:GPQCS63Y/fonIyaqUtfnEgqjBf9yeYIsi2QD101hICF9WMqeis
 yogbAnxQb54QxxZFgMu/ClfJOBT3TV6IJv7eAqVt2fdSTvpWfAFvAA0aLM2DvlcheSysd51b
 18N5R4EsH6F1Jgjc33iTPIdeoI5Pmi3OSWifzFz3FrJDsFV4hF4x1iAgiWVm1aLTMrObMDGJ
 CR5tVKqlObEBwqR/+2HmUEROSGnNHAlIvnbRkaQyEu7QmCyQmp77T3eiLopys2aS9Fwrsp7A
 H+/DDR26PLiZGG4y6Z8m/V7ZhauNyk4N5KHtbksLl2FhzcziOpY4ZsVp2E+BA5ydvfj2oCoZ
 3ooxAjM8lS7DftcmWtpBPx12DboVMTwk6n7F+eg3fvgcu8Szk+YvAx4b5kTg==
X-IronPort-AV: E=Sophos;i="5.81,241,1610406000"; 
   d="scan'208";a="5802794"
From: Denis Osterland-Heim <denis.osterland@diehl.com>
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Thread-Topic: [PATCH] arch: arm: mach-imx: print HAB ROM code version
Thread-Index: AQHXFpj//SmYagvV2Ea73pcSD91H7Q==
Date: Thu, 11 Mar 2021 17:07:20 +0000
Message-ID: <20210311170137.22411-1-denis.osterland@diehl.com>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5-0ubuntu0.18.04.2 
x-ms-exchange-messagesentrepresentingtype: 1
x-disclaimerprocessed: True
MIME-Version: 1.0
X-GBS-PROC: 5x5xXKsZ7k4sJw6jWwvS4p3Trid70NcCAfrXWeuS2B+hQG57V0jq5/wQBmwGCiGS
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210311_170726_815641_9268A2D5 
X-CRM114-Status: UNSURE (   7.85  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-103.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED,
	USER_IN_WELCOMELIST,USER_IN_WHITELIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] arch: arm: mach-imx: print HAB ROM code version
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Denis Osterland-Heim <Denis.Osterland@diehl.com>

Add the two missing function pointers according to HAB4_API.pdf
from cst-3.1.0 and print the version of ROM code.

Signed-off-by: Denis Osterland-Heim <Denis.Osterland@diehl.com>
---
 drivers/hab/habv4.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/hab/habv4.c b/drivers/hab/habv4.c
index c2acb8136..f30e5d68c 100644
--- a/drivers/hab/habv4.c
+++ b/drivers/hab/habv4.c
@@ -161,6 +161,7 @@ struct hab_header {
 uint8_t par;
 } __packed;

+typedef void (*hab_image_entry_fn)(void);
 typedef enum hab_status hab_loader_callback_fn(void **start, uint32_t *byt=
es, const void *boot_data);

 struct habv4_rvt {
@@ -175,6 +176,8 @@ struct habv4_rvt {
 enum hab_status (*report_event)(enum hab_status status, uint32_t index, vo=
id *event, uint32_t *bytes);
 enum hab_status (*report_status)(enum hab_config *config, enum hab_state *=
state);
 void (*failsafe)(void);
+hab_image_entry_fn (*authenticate_image_no_dcd)(uint8_t cid, ptrdiff_t ivt=
_offset, void **start, size_t *bytes, hab_loader_callback_fn loader);
+uint32_t (*get_version)(void);
 } __packed;

 #define FSL_SIP_HAB             0xC2000007
@@ -528,6 +531,7 @@ static int habv4_get_status(const struct habv4_rvt *rvt)
 uint8_t *data;
 uint32_t len;
 int i;
+uint32_t version;
 enum hab_status status;
 enum hab_config config =3D 0x0;
 enum hab_state state =3D 0x0;
@@ -537,6 +541,9 @@ static int habv4_get_status(const struct habv4_rvt *rvt)
 return -EINVAL;
 }

+version =3D rvt->get_version();
+pr_info("version: %u.%u.%u\n", (version >> 16), ((version >> 8) & 0xff), (=
version & 0xff));
+
 status =3D rvt->report_status(&config, &state);
 pr_info("Status: %s (0x%02x)\n", habv4_get_status_str(status), status);
 pr_info("Config: %s (0x%02x)\n", habv4_get_config_str(config), config);
--
2.30.2

Diehl Connectivity Solutions GmbH
Gesch=E4ftsf=FChrung: Horst Leonberger
Sitz der Gesellschaft: N=FCrnberg - Registergericht: Amtsgericht
N=FCrnberg: HRB 32315

________________________________

Der Inhalt der vorstehenden E-Mail ist nicht rechtlich bindend. Diese E-Mai=
l enthaelt vertrauliche und/oder rechtlich geschuetzte Informationen.
Informieren Sie uns bitte, wenn Sie diese E-Mail faelschlicherweise erhalte=
n haben. Bitte loeschen Sie in diesem Fall die Nachricht.
Jede unerlaubte Form der Reproduktion, Bekanntgabe, Aenderung, Verteilung u=
nd/oder Publikation dieser E-Mail ist strengstens untersagt.

- Informationen zum Datenschutz, insbesondere zu Ihren Rechten, erhalten Si=
e unter:

https://www.diehl.com/group/de/transparenz-und-informationspflichten/

The contents of the above mentioned e-mail is not legally binding. This e-m=
ail contains confidential and/or legally protected information. Please info=
rm us if you have received this e-mail by
mistake and delete it in such a case. Each unauthorized reproduction, discl=
osure, alteration, distribution and/or publication of this e-mail is strict=
ly prohibited.

- For general information on data protection and your respective rights ple=
ase visit:

https://www.diehl.com/group/en/transparency-and-information-obligations/



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

