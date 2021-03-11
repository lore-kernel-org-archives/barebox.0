Delivery-date: Thu, 11 Mar 2021 18:08:55 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lKOnv-0003Vi-BR
	for lore@lore.pengutronix.de; Thu, 11 Mar 2021 18:08:55 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lKOnu-0003H9-8v
	for lore@pengutronix.de; Thu, 11 Mar 2021 18:08:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IMO6QKag30Mo7n7MESrL43bJfb8E6wIHAWzU0Rh+/1U=; b=kdM48Ty/QggKVQ
	2t4UHM+S4dy+bw7AnQe81bPMHzc18AqcTvfHOQhEP5uyo82Iez8mXWmjTQGmZScxUJfLhZB8YKBeW
	pzOWu90JkVhMt1fMKemSus1xCvIzWh2UQjkn4dd3xUYHIMTMbXBNw1ztVrjor017zIpkACxoE7ER4
	HBNk4NwBhh7QWM2DjCJvpEFcGhYb6P5C3Y/LldLMwQl9rgCLAeIGkGsZoGg56cKixBtDiKTcbyrQL
	2XQ3b9k/B24wVP+CWBrHOeivOi8YRQ2pogcjUJQN67guIf6QaKYMLTpyJ3Aw7pfj+X4g2fAc5A56V
	5CoZEjqRwT77EfW0lfaw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lKOmp-009ejx-7i; Thu, 11 Mar 2021 17:07:47 +0000
Received: from enterprise02.smtp.diehl.com ([193.201.238.220])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lKOmY-009egC-LU
 for barebox@lists.infradead.org; Thu, 11 Mar 2021 17:07:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=diehl.com; i=@diehl.com; q=dns/txt; s=default;
 t=1615482451; x=1647018451; h=from:to:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=nYXnCUkrwSMWcyIkGB/TizLVzdOfAjn04Qm9eZZqNC0=;
 b=HUKLjxjRwn8T05DQ1jhHs/QApMuGDgsQKhbsIWco8ZcUXh8/bIaqoOrD
 TFmVweuDGgB4DJQNkove3LKygx5pULSER9LzGJYCn+yoAaqwgHj/J0EdT
 WNJ06pvnpKCV6CaQFfsiE5mQv8TRlPexC0ZhQi5wlzjnLCGZknurzQJj/
 Bs63qG29NBqHZGI5p2oilxtcl+vP9KM8hfPzXyvNEjf1N8CenXFQL2Nsg
 eL3HyakDzII5JGRx/av76N/QtextxmbJkmBRkkGJ/MDyl4PzsgFNLJJpt
 JVEBq/qo7jZnYPyg/U1ecfwz+QT2WtIYLjuZwhHLd6LMoJO3b3eGrA2yL A==;
IronPort-SDR: 9Vblb6U7FkXBt4z5CsQoNhN32KsaZJFjhGXhk1ZHs/4nQBiA42wdnHpWoYC2yEvRrQQwo6oSjV
 81FRcdPpX2/tiQoADcU43lXSifsi3p0jpSLu5HpcPZ+tkWyBey5WiN8/5+buBrIHR6QTKpDpz8
 whhJ1UF8N4AU9U7dqA8IfbvWsAHwHRCkeaeteZbseXdnR5i1FXtugW2xZl/Uv2kuTHoyOkqpQb
 Z1QdfM9YRK4vcn0aix5xSRLyCavTiBJqS9j8tmiVLGpe0ErlIjtfTJ4fok2W++bjMNV9VgVpzD
 LOc=
IronPort-HdrOrdr: A9a23:FUC4ZKzqj2rmn3VWfYFsKrPxYeskLtp033Aq2lEZdDV+dMuEm8
 ey2MkKzBOcslcscVwDufTFAqmPRnvA6YV4iLN7V4uKcQH6tAKTXeJfxKT4xTmIIUDD38tcz7
 olT69lFNbrB0N7hsqS2njfL/8F4P2qtJ+lnv3fyXAFd29XQoVt9R1wBAreMmAefmV7LKE0Hp
 ad+cZLzgDIEUg/VciiGnkfU6z5q9fKjZLrZgNDOBYj6ATLtzOu4rKSKWng4j4lTzhNzb0+mF
 KrryXF4MyY082T+1v412jQ45l3n5/Kz9NYHqW3+6ooAwSprwauZohte7rHnD1dmpDJ1H8a1P
 zNpBUtMuR1r07cenixqQbgsjOQtQoG2jvGyVibjXbCpoj3TzdSMbskub5k
X-IronPort-AV: E=Sophos;i="5.81,241,1610406000"; 
   d="scan'208";a="5802796"
From: Denis Osterland-Heim <denis.osterland@diehl.com>
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Thread-Topic: [PATCH] scripts: imx: add support for additional hab Blocks
Thread-Index: AQHXFpj/U18JbvZyj0aAm1Nb7R19NA==
Date: Thu, 11 Mar 2021 17:07:20 +0000
Message-ID: <20210311170249.22520-1-denis.osterland@diehl.com>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5-0ubuntu0.18.04.2 
x-ms-exchange-messagesentrepresentingtype: 1
x-disclaimerprocessed: True
MIME-Version: 1.0
X-GBS-PROC: PkB65aL1SqtESF35r/jQn0uDQCb7Hke6m5GyzI61qokFmljCPIvVbU5pHkH4gwEE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210311_170730_933382_79737E20 
X-CRM114-Status: GOOD (  12.87  )
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
Subject: [PATCH] scripts: imx: add support for additional hab Blocks
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Denis Osterland-Heim <Denis.Osterland@diehl.com>

This allows to specifiy additional singed blocks
in the format `offset+size@address` within the imximg.

It is needed by the uuu tool, which loads the image different to
the imx-usb-loader. It loads the DCD always to 0x910000 in the OCRAM.
So this area have to be signed as well.

In my case this needs `hab_blocks 0x42c+0x1f0@0x910000`.

It supports to remove quotes to support Kconfig variable here.

Signed-off-by: Denis Osterland-Heim <Denis.Osterland@diehl.com>
---
 scripts/imx/imx.c | 62 +++++++++++++++++++++++++++++++++++++++++++++--
 1 file changed, 60 insertions(+), 2 deletions(-)

diff --git a/scripts/imx/imx.c b/scripts/imx/imx.c
index 6b8dabd04..d37e200ca 100644
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
@@ -365,10 +366,67 @@ static int do_hab_blocks(struct config_data *data, in=
t argc, char *argv[])
 return -ENOMEM;

 ret =3D hab_add_str(data, str);
+free(str);
 if (ret)
 return ret;

-return 0;
+for (i =3D 1; i < argc; i++)
+{
+uint32_t addr;
+uint32_t off;
+uint32_t size;
+char *b;
+char *e;
+
+b =3D argv[i];
+if (b[0] =3D=3D '"') // remove qoutes
+{
+b++;
+for (e =3D b; *e; e++)
+/* find end of string */;
+e--;
+if (*e =3D=3D '"')
+*e =3D '\0';
+else
+fprintf(stderr, "warning: no '\"' at the end of '%s' [b=3D%p'%s', e=3D%p'%=
s']\n", argv[i], b, b, e, e);
+}
+if (!*b)
+continue; // skip if empty
+
+e =3D strchr(b, '+');
+if (!e)
+{
+fprintf(stderr, "failed to find '+' in '%s'\n", b);
+fprintf(stderr, "format off+size@addr expected, but given: %s\n", argv[i]);
+return -EINVAL;
+}
+*e =3D '\0';
+off =3D strtoul(b, NULL, 0);
+
+b =3D e + 1;
+e =3D strchr(b, '@');
+if (!e)
+{
+fprintf(stderr, "failed to find '@' in '%s'\n", b);
+fprintf(stderr, "format off+size@addr expected, but given: %s", argv[i]);
+return -EINVAL;
+}
+*e =3D '\0';
+size =3D strtoul(b, NULL, 0);
+
+addr =3D strtoul(e + 1, NULL, 0);
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

