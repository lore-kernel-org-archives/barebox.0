Delivery-date: Mon, 22 Mar 2021 13:07:02 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lOJKo-0003bd-Q2
	for lore@lore.pengutronix.de; Mon, 22 Mar 2021 13:07:02 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lOJKn-0003Jb-Tv
	for lore@pengutronix.de; Mon, 22 Mar 2021 13:07:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ztU4SDYRsZFCFO7GCRSVpAqvnocdd86PFRhCmnZeRLw=; b=PTgIE+W1VSg6tP
	zaMTgHMpHYMr5+/qwfYKScZcxYWZD+8JQfsUqS0GQ62c3nvMP6Tw2+Kh35RUctaMh+Grm6lxS1NwP
	BlduemH5+epPcbddpTOLViEV3v8LRDovqXb1HSv+au0KQD0oCMp2XVzS3E3lGz+U02dwBm0dVusIC
	cBRI4pdl4dwQMdkWAWGYdaaZaxutnW2DGQWvqpKRc88pE8DQ8M628Tpj+pHpFvw/xtHHVId1MVLKK
	/GoRXhxYVo08/iXwRLY38Zzei8kj/4LqXj2aG+/EfqdH26FuLweeukWtO8oR28XU2FsX7B4lmJzOf
	zpKRc7n2f4lIB7SPxtOw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lOJJe-00BXHC-Ne; Mon, 22 Mar 2021 12:05:50 +0000
Received: from enterprise01.smtp.diehl.com ([193.201.238.219])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lOJJS-00BXGV-Kj
 for barebox@lists.infradead.org; Mon, 22 Mar 2021 12:05:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=diehl.com; i=@diehl.com; q=dns/txt; s=default;
 t=1616414739; x=1647950739; h=from:to:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=O87mL9zPTs7IczHu0pV9hx7Z39udOpfDXrt8ihUMYIE=;
 b=MyoI11uJaWdQo4hnhC7prndO6BdKV3aX2vGe/r0FALE/OfoZ2ZS+0tJC
 G5vkMEcOaKUQqnUNTjJNyNtucptIkMB3wg1xio1lxN1WVh0qJbn+GMhdT
 sDFRrsIR9nPfdCr0LoVvJT3nFROipufyrln8oT1LzyNGKEH491dWOG2fv
 gxu2bqRFbhnMX/lCCOMg+BoH1VRa1iLbrCfam1dFLfMq4SwfVvSXC0osn
 s644yr/iAOJxonASFY6lFfoi357F5WoM8OpDSf92d4MP+kRlzNEeAEPaB
 58plEj3kMZvmqGf2YazG7lfz13+7TX6b6cja0qlT0pKO6hwwN+yTrm4ee g==;
IronPort-SDR: HlgkfPzyquU9BVesByQSkqxy47obt7LoZKRQP5p96O7SnNI7INGiNMAKp2QhpLYWRpqmKXpsQr
 k90F3guW7ShLKXPGmwWznTTwxy8xTPjO0EHmcvHk3g3KBiKP0YoXFhVU3MoxZr1aGtecSrJGmy
 zfznuV0d/jeDjnX2ZEXiuS2VnHzpnfK4ddRbFGGZxR6OOc45xeja2Iw931DftHqW2z8cSiAnXe
 /lVS2VojTn/lWnzCMyXSazEp0XbnjpfrlGCWe1WOfLVVZVL8I73FxGxSPxLlg072cPk2TRgtdY
 ysA=
IronPort-HdrOrdr: A9a23:Y8wrn6wwuCu/0hG88GHMKrPwo71zdoIgy1knxilNYDZSddGVkN
 3roeQD2XbP+VAscVwDufTFAqmPRnvA6YV4iLN6AZ6OVBTr0VHYS71KwofvzjbpES+71sM178
 ZdWodkDtmYNykese/e4BOkV+om2sWN6qqyhezTpk0AcShPS4VNqzh0ERyaFEoefmd7LL40Do
 CV6MYChxfIQxsqR/+2DHUEQOTPzuej/P/bSCULHhs2rDSJ5AnYi4LSKBSEwgwYFwpG3LZKyw
 P4ujbk7aauuezT8G6/60bv6f1t6b/c4+oGI/a34/J0FgnR
X-IronPort-AV: E=Sophos;i="5.81,268,1610406000"; 
   d="scan'208";a="6707484"
From: Denis Osterland-Heim <denis.osterland@diehl.com>
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Thread-Topic: [PATCH] scripts: imx: add support for additional hab Blocks
Thread-Index: AQHXHxOqNUvgkQ1VrEag377mUrVUmg==
Date: Mon, 22 Mar 2021 12:05:35 +0000
Message-ID: <20210322120222.29957-1-denis.osterland@diehl.com>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5-0ubuntu0.18.04.2 
x-ms-exchange-messagesentrepresentingtype: 1
x-disclaimerprocessed: True
MIME-Version: 1.0
X-GBS-PROC: 5x5xXKsZ7k4sJw6jWwvS4tvC3iKApo8N8GU9qYgaKMPfvgIayMGNHsnIuSjQujAB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210322_120538_929616_0A960A07 
X-CRM114-Status: GOOD (  12.61  )
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
X-Spam-Status: No, score=-103.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,USER_IN_WELCOMELIST,
	USER_IN_WHITELIST autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] scripts: imx: add support for additional hab Blocks
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This allows to specifiy additional signed blocks
in the format `offset+size@address` within the imximg.

It is needed by the uuu tool, which loads the image different to
the imx-usb-loader. It loads the DCD always to 0x910000 in the OCRAM.
So this area have to be signed as well.

In my case this needs `hab_blocks 0x42c+0x1f0@0x910000`.

It supports to remove quotes to support Kconfig variable here.

Signed-off-by: Denis Osterland-Heim <denis.osterland@diehl.com>
---
 scripts/imx/imx.c | 52 +++++++++++++++++++++++++++++++++++++++++++++--
 1 file changed, 50 insertions(+), 2 deletions(-)

diff --git a/scripts/imx/imx.c b/scripts/imx/imx.c
index 6b8dabd04..ce18778f5 100644
--- a/scripts/imx/imx.c
+++ b/scripts/imx/imx.c
@@ -328,6 +328,7 @@ static int do_hab_blocks(struct config_data *data, int =
argc, char *argv[])
 {
 char *str;
 int ret;
+int i;
 uint32_t signed_size =3D data->load_size;
 uint32_t offset =3D data->image_ivt_offset;

@@ -352,7 +353,7 @@ static int do_hab_blocks(struct config_data *data, int =
argc, char *argv[])
 }

 if (signed_size > 0) {
-ret =3D asprintf(&str, "Blocks =3D 0x%08x 0x%08x 0x%08x \"%s\"\n",
+ret =3D asprintf(&str, "Blocks =3D 0x%08x 0x%08x 0x%08x \"%s\"",
 data->image_load_addr + data->image_ivt_offset, offset,
 signed_size - data->image_ivt_offset, data->outfile);
 } else {
@@ -365,10 +366,57 @@ static int do_hab_blocks(struct config_data *data, in=
t argc, char *argv[])
 return -ENOMEM;

 ret =3D hab_add_str(data, str);
+free(str);
 if (ret)
 return ret;

-return 0;
+for (i =3D 1; i < argc; i++) {
+uint32_t addr;
+uint32_t off;
+uint32_t size;
+char *b;
+char *e;
+
+b =3D argv[i];
+if (*b =3D=3D '"') // remove leading qoute
+b++;
+if (!*b || *b =3D=3D '"')
+continue; // skip if empty
+
+off =3D strtoul(b, &e, 0);
+if (*e !=3D '+') {
+fprintf(stderr, "failed to find '+' in '%s'\n", b);
+fprintf(stderr, "format off+size@addr expected, but given: %s\n", argv[i]);
+return -EINVAL;
+}
+
+b =3D e + 1;
+size =3D strtoul(b, &e, 0);
+if (*e !=3D '@') {
+fprintf(stderr, "failed to find '@' in '%s'\n", b);
+fprintf(stderr, "format off+size@addr expected, but given: %s\n", argv[i]);
+return -EINVAL;
+}
+
+b =3D e + 1;
+addr =3D strtoul(b, &e, 0);
+if (*e && *e !=3D '"') { // ignore trailing qoute
+fprintf(stderr, "unexpected char at the end: '%c'\n", *e);
+fprintf(stderr, "format off+size@addr expected, but given: %s\n", argv[i]);
+return -EINVAL;
+}
+
+ret =3D asprintf(&str, ", 0x%08x 0x%08x 0x%08x \"%s\"", addr, off, size, d=
ata->outfile);
+if (ret < 0)
+return -ENOMEM;
+
+ret =3D hab_add_str(data, str);
+free(str);
+if (ret)
+return ret;
+}
+
+return hab_add_str(data, "\n");
 }

 static int do_hab_encrypt(struct config_data *data, int argc, char *argv[])
--
2.31.0

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

